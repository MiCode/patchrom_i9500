.class public Lcom/android/server/ssrm/SLSISysFALImpl;
.super Ljava/lang/Object;
.source "SLSISysFALImpl.java"

# interfaces
.implements Lcom/android/server/ssrm/SysFileAbstraction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ssrm/SLSISysFALImpl$1;,
        Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;,
        Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;
    }
.end annotation


# static fields
.field private static final ADONIS_GPU_TABLE:[I = null

.field private static final BASE_MODEL:Ljava/lang/String; = "ja"

.field private static CPUS_ONLINE_MAX_LIMIT_1:I = 0x0

.field private static CPUS_ONLINE_MAX_LIMIT_2:I = 0x0

.field private static CPUS_ONLINE_MAX_LIMIT_3:I = 0x0

.field private static CPUS_ONLINE_MAX_LIMIT_4:I = 0x0

.field private static CPUS_ONLINE_MAX_LIMIT_MAX:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final FUSION_GPU_TABLE:[I = null

.field private static final MSM8064_CORE_NUM_TABLE:[I = null

.field private static final PEGA_BUS_TABLE:[I = null

.field private static final PEGA_PRIME_BUS_TABLE:[I = null

.field private static SYSFS:Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath; = null

.field private static final TAG:Ljava/lang/String; = "SysFALImpl"

.field private static final UTF8:Ljava/lang/String; = "UTF-8"

.field public static mApeOppPath:Z

.field public static mDdrOppPath:Z

.field private static mPerfCoreMaxLock:Lorg/codeaurora/Performance;

.field private static mPerfCoreMinLock:Lorg/codeaurora/Performance;

.field public static mPlatformType:Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0x7fb

    const/4 v6, 0x6

    const/4 v5, 0x4

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 19
    const-string v1, "eng"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/ssrm/SLSISysFALImpl;->DEBUG:Z

    .line 25
    sput-object v3, Lcom/android/server/ssrm/SLSISysFALImpl;->SYSFS:Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;

    .line 27
    const-string v1, "ro.board.platform"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 29
    .local v0, mPlatformInfo:Ljava/lang/String;
    const-string v1, "msm8960"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 30
    sget-object v1, Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;->MSM8064:Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;

    sput-object v1, Lcom/android/server/ssrm/SLSISysFALImpl;->mPlatformType:Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;

    .line 39
    :goto_0
    new-instance v1, Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;

    sget-object v2, Lcom/android/server/ssrm/SLSISysFALImpl;->mPlatformType:Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;

    invoke-direct {v1, v2}, Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;-><init>(Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;)V

    sput-object v1, Lcom/android/server/ssrm/SLSISysFALImpl;->SYSFS:Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;

    .line 117
    sput-boolean v4, Lcom/android/server/ssrm/SLSISysFALImpl;->mDdrOppPath:Z

    .line 118
    sput-boolean v4, Lcom/android/server/ssrm/SLSISysFALImpl;->mApeOppPath:Z

    .line 316
    sput-object v3, Lcom/android/server/ssrm/SLSISysFALImpl;->mPerfCoreMinLock:Lorg/codeaurora/Performance;

    .line 351
    const/16 v1, 0x7fe

    sput v1, Lcom/android/server/ssrm/SLSISysFALImpl;->CPUS_ONLINE_MAX_LIMIT_1:I

    .line 352
    const/16 v1, 0x7fd

    sput v1, Lcom/android/server/ssrm/SLSISysFALImpl;->CPUS_ONLINE_MAX_LIMIT_2:I

    .line 353
    const/16 v1, 0x7fc

    sput v1, Lcom/android/server/ssrm/SLSISysFALImpl;->CPUS_ONLINE_MAX_LIMIT_3:I

    .line 354
    sput v7, Lcom/android/server/ssrm/SLSISysFALImpl;->CPUS_ONLINE_MAX_LIMIT_4:I

    .line 355
    sput v7, Lcom/android/server/ssrm/SLSISysFALImpl;->CPUS_ONLINE_MAX_LIMIT_MAX:I

    .line 356
    sput-object v3, Lcom/android/server/ssrm/SLSISysFALImpl;->mPerfCoreMaxLock:Lorg/codeaurora/Performance;

    .line 419
    new-array v1, v5, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/server/ssrm/SLSISysFALImpl;->MSM8064_CORE_NUM_TABLE:[I

    .line 420
    const/4 v1, 0x5

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    sput-object v1, Lcom/android/server/ssrm/SLSISysFALImpl;->ADONIS_GPU_TABLE:[I

    .line 421
    new-array v1, v5, [I

    fill-array-data v1, :array_2

    sput-object v1, Lcom/android/server/ssrm/SLSISysFALImpl;->FUSION_GPU_TABLE:[I

    .line 422
    new-array v1, v6, [I

    fill-array-data v1, :array_3

    sput-object v1, Lcom/android/server/ssrm/SLSISysFALImpl;->PEGA_PRIME_BUS_TABLE:[I

    .line 423
    new-array v1, v6, [I

    fill-array-data v1, :array_4

    sput-object v1, Lcom/android/server/ssrm/SLSISysFALImpl;->PEGA_BUS_TABLE:[I

    return-void

    .line 31
    :cond_0
    const-string v1, "ja"

    const-string v2, "ja"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 32
    sget-object v1, Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;->ADONIS:Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;

    sput-object v1, Lcom/android/server/ssrm/SLSISysFALImpl;->mPlatformType:Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;

    goto :goto_0

    .line 33
    :cond_1
    const-string v1, "exynos4"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 34
    sget-object v1, Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;->EXYNOS4:Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;

    sput-object v1, Lcom/android/server/ssrm/SLSISysFALImpl;->mPlatformType:Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;

    goto :goto_0

    .line 36
    :cond_2
    sget-object v1, Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;->NONE:Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;

    sput-object v1, Lcom/android/server/ssrm/SLSISysFALImpl;->mPlatformType:Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;

    goto :goto_0

    .line 419
    nop

    :array_0
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 420
    :array_1
    .array-data 0x4
        0x14t 0x2t 0x0t 0x0t
        0xe0t 0x1t 0x0t 0x0t
        0x5et 0x1t 0x0t 0x0t
        0xat 0x1t 0x0t 0x0t
        0xb1t 0x0t 0x0t 0x0t
    .end array-data

    .line 421
    :array_2
    .array-data 0x4
        0xc2t 0x1t 0x0t 0x0t
        0x40t 0x1t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
    .end array-data

    .line 422
    :array_3
    .array-data 0x4
        0x9ct 0xb7t 0x6t 0x0t
        0x64t 0x79t 0x4t 0x0t
        0x38t 0x79t 0x4t 0x0t
        0x30t 0xb0t 0x2t 0x0t
        0xcbt 0x3et 0x2t 0x0t
        0x1et 0xaet 0x1t 0x0t
    .end array-data

    .line 423
    :array_4
    .array-data 0x4
        0x48t 0x1bt 0x6t 0x0t
        0xc0t 0x13t 0x4t 0x0t
        0x98t 0x13t 0x4t 0x0t
        0xa0t 0x71t 0x2t 0x0t
        0xdt 0x8t 0x2t 0x0t
        0x4t 0x87t 0x1t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method private static acquirePerfCoreMaxLock(I)V
    .locals 4
    .parameter "coreNum"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 358
    if-lt p0, v2, :cond_0

    const/4 v0, 0x4

    if-le p0, v0, :cond_1

    .line 389
    :cond_0
    :goto_0
    return-void

    .line 363
    :cond_1
    sget-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->mPerfCoreMaxLock:Lorg/codeaurora/Performance;

    if-eqz v0, :cond_2

    .line 364
    const-string v0, "SysFALImpl"

    const-string v1, "acquirePerfCoreMaxLock:: create new Performance instance"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SLSISysFALImpl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    sget-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->mPerfCoreMaxLock:Lorg/codeaurora/Performance;

    invoke-virtual {v0}, Lorg/codeaurora/Performance;->perfLockRelease()I

    .line 366
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->mPerfCoreMaxLock:Lorg/codeaurora/Performance;

    .line 370
    :cond_2
    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 382
    :pswitch_0
    const-string v0, "SysFALImpl"

    const-string v1, "acquirePerfCoreMaxLock:: perfLockAcquire(CPUS_ONLINE_MAX_LIMIT_1)"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SLSISysFALImpl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    new-instance v0, Lorg/codeaurora/Performance;

    invoke-direct {v0}, Lorg/codeaurora/Performance;-><init>()V

    sput-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->mPerfCoreMaxLock:Lorg/codeaurora/Performance;

    .line 384
    sget-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->mPerfCoreMaxLock:Lorg/codeaurora/Performance;

    new-array v1, v2, [I

    sget v2, Lcom/android/server/ssrm/SLSISysFALImpl;->CPUS_ONLINE_MAX_LIMIT_1:I

    aput v2, v1, v3

    invoke-virtual {v0, v3, v1}, Lorg/codeaurora/Performance;->perfLockAcquire(I[I)I

    goto :goto_0

    .line 372
    :pswitch_1
    const-string v0, "SysFALImpl"

    const-string v1, "acquirePerfCoreMaxLock:: perfLockAcquire(CPUS_ONLINE_MAX_LIMIT_3)"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SLSISysFALImpl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    new-instance v0, Lorg/codeaurora/Performance;

    invoke-direct {v0}, Lorg/codeaurora/Performance;-><init>()V

    sput-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->mPerfCoreMaxLock:Lorg/codeaurora/Performance;

    .line 374
    sget-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->mPerfCoreMaxLock:Lorg/codeaurora/Performance;

    new-array v1, v2, [I

    sget v2, Lcom/android/server/ssrm/SLSISysFALImpl;->CPUS_ONLINE_MAX_LIMIT_3:I

    aput v2, v1, v3

    invoke-virtual {v0, v3, v1}, Lorg/codeaurora/Performance;->perfLockAcquire(I[I)I

    goto :goto_0

    .line 377
    :pswitch_2
    const-string v0, "SysFALImpl"

    const-string v1, "acquirePerfCoreMaxLock:: perfLockAcquire(CPUS_ONLINE_MAX_LIMIT_2)"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SLSISysFALImpl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    new-instance v0, Lorg/codeaurora/Performance;

    invoke-direct {v0}, Lorg/codeaurora/Performance;-><init>()V

    sput-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->mPerfCoreMaxLock:Lorg/codeaurora/Performance;

    .line 379
    sget-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->mPerfCoreMaxLock:Lorg/codeaurora/Performance;

    new-array v1, v2, [I

    sget v2, Lcom/android/server/ssrm/SLSISysFALImpl;->CPUS_ONLINE_MAX_LIMIT_2:I

    aput v2, v1, v3

    invoke-virtual {v0, v3, v1}, Lorg/codeaurora/Performance;->perfLockAcquire(I[I)I

    goto :goto_0

    .line 370
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static acquirePerfCoreMinLock(I)V
    .locals 4
    .parameter "coreNum"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 318
    if-lt p0, v2, :cond_0

    const/4 v0, 0x4

    if-le p0, v0, :cond_1

    .line 349
    :cond_0
    :goto_0
    return-void

    .line 323
    :cond_1
    sget-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->mPerfCoreMinLock:Lorg/codeaurora/Performance;

    if-eqz v0, :cond_2

    .line 324
    const-string v0, "SysFALImpl"

    const-string v1, "acquirePerfCoreMinLock:: create new Performance instance"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SLSISysFALImpl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    sget-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->mPerfCoreMinLock:Lorg/codeaurora/Performance;

    invoke-virtual {v0}, Lorg/codeaurora/Performance;->perfLockRelease()I

    .line 326
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->mPerfCoreMinLock:Lorg/codeaurora/Performance;

    .line 330
    :cond_2
    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 342
    :pswitch_0
    const-string v0, "SysFALImpl"

    const-string v1, "acquirePerfCoreMinLock:: perfLockAcquire(CPUS_ON_2)"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SLSISysFALImpl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    new-instance v0, Lorg/codeaurora/Performance;

    invoke-direct {v0}, Lorg/codeaurora/Performance;-><init>()V

    sput-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->mPerfCoreMinLock:Lorg/codeaurora/Performance;

    .line 344
    sget-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->mPerfCoreMinLock:Lorg/codeaurora/Performance;

    new-array v1, v2, [I

    const/16 v2, 0x702

    aput v2, v1, v3

    invoke-virtual {v0, v3, v1}, Lorg/codeaurora/Performance;->perfLockAcquire(I[I)I

    goto :goto_0

    .line 332
    :pswitch_1
    const-string v0, "SysFALImpl"

    const-string v1, "acquirePerfCoreMinLock:: perfLockAcquire(CPUS_ON_MAX)"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SLSISysFALImpl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    new-instance v0, Lorg/codeaurora/Performance;

    invoke-direct {v0}, Lorg/codeaurora/Performance;-><init>()V

    sput-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->mPerfCoreMinLock:Lorg/codeaurora/Performance;

    .line 334
    sget-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->mPerfCoreMinLock:Lorg/codeaurora/Performance;

    new-array v1, v2, [I

    const/16 v2, 0x704

    aput v2, v1, v3

    invoke-virtual {v0, v3, v1}, Lorg/codeaurora/Performance;->perfLockAcquire(I[I)I

    goto :goto_0

    .line 337
    :pswitch_2
    const-string v0, "SysFALImpl"

    const-string v1, "acquirePerfCoreMinLock:: perfLockAcquire(CPUS_ON_3)"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SLSISysFALImpl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    new-instance v0, Lorg/codeaurora/Performance;

    invoke-direct {v0}, Lorg/codeaurora/Performance;-><init>()V

    sput-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->mPerfCoreMinLock:Lorg/codeaurora/Performance;

    .line 339
    sget-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->mPerfCoreMinLock:Lorg/codeaurora/Performance;

    new-array v1, v2, [I

    const/16 v2, 0x703

    aput v2, v1, v3

    invoke-virtual {v0, v3, v1}, Lorg/codeaurora/Performance;->perfLockAcquire(I[I)I

    goto :goto_0

    .line 330
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static adjustValueToSysfsValue(II)I
    .locals 4
    .parameter "type"
    .parameter "value"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x3

    .line 281
    const-string v0, "jf"

    const-string v1, "ja"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 282
    if-eq p0, v2, :cond_0

    if-ne p0, v3, :cond_1

    .line 283
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 297
    const/4 p1, 0x0

    .line 313
    :cond_1
    :goto_0
    return p1

    .line 285
    :sswitch_0
    const/4 p1, 0x0

    .line 286
    goto :goto_0

    .line 288
    :sswitch_1
    const/4 p1, 0x1

    .line 289
    goto :goto_0

    .line 291
    :sswitch_2
    const/4 p1, 0x2

    .line 292
    goto :goto_0

    .line 294
    :sswitch_3
    const/4 p1, 0x3

    .line 295
    goto :goto_0

    .line 301
    :cond_2
    sget-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->mPlatformType:Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;

    sget-object v1, Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;->ADONIS:Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;

    if-ne v0, v1, :cond_1

    .line 302
    if-eq p0, v2, :cond_3

    if-ne p0, v3, :cond_1

    .line 303
    :cond_3
    sparse-switch p1, :sswitch_data_1

    goto :goto_0

    .line 306
    :sswitch_4
    const/4 p1, 0x0

    .line 307
    goto :goto_0

    .line 283
    nop

    :sswitch_data_0
    .sparse-switch
        0x80 -> :sswitch_3
        0xc8 -> :sswitch_2
        0x140 -> :sswitch_1
        0x1c2 -> :sswitch_0
    .end sparse-switch

    .line 303
    :sswitch_data_1
    .sparse-switch
        -0x1 -> :sswitch_4
        0x214 -> :sswitch_4
    .end sparse-switch
.end method

.method private checkFileExistence(Ljava/lang/String;)Z
    .locals 2
    .parameter "filePath"

    .prologue
    .line 490
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 491
    .local v0, filePtr:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isPegaPrime()Z
    .locals 13

    .prologue
    .line 463
    const-string v0, "/sys/devices/system/cpu/busfreq/curr_freq"

    .line 464
    .local v0, BUS_FREQ_PATH:Ljava/lang/String;
    const/4 v2, 0x0

    .line 465
    .local v2, buf:Ljava/io/BufferedReader;
    const-string v8, ""

    .line 467
    .local v8, result:Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    invoke-direct {v9, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 468
    .end local v2           #buf:Ljava/io/BufferedReader;
    .local v3, buf:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v8

    .line 473
    if-eqz v3, :cond_0

    .line 474
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_0
    :goto_0
    move-object v2, v3

    .line 481
    .end local v3           #buf:Ljava/io/BufferedReader;
    .restart local v2       #buf:Ljava/io/BufferedReader;
    :cond_1
    :goto_1
    sget-object v1, Lcom/android/server/ssrm/SLSISysFALImpl;->PEGA_PRIME_BUS_TABLE:[I

    .local v1, arr$:[I
    array-length v7, v1

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_2
    if-ge v6, v7, :cond_4

    aget v5, v1, v6

    .line 482
    .local v5, freq:I
    if-eqz v8, :cond_3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 483
    const/4 v9, 0x1

    .line 486
    .end local v5           #freq:I
    :goto_3
    return v9

    .line 469
    .end local v1           #arr$:[I
    .end local v6           #i$:I
    .end local v7           #len$:I
    :catch_0
    move-exception v4

    .line 470
    .local v4, e:Ljava/lang/Exception;
    :goto_4
    :try_start_3
    const-string v9, "SysFALImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isPegaPrime:: e = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/ssrm/SLSISysFALImpl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 473
    if-eqz v2, :cond_1

    .line 474
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 476
    :catch_1
    move-exception v4

    .line 477
    .local v4, e:Ljava/io/IOException;
    const-string v9, "SysFALImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isPegaPrime:: e = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/ssrm/SLSISysFALImpl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 472
    .end local v4           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 473
    :goto_5
    if-eqz v2, :cond_2

    .line 474
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 472
    :cond_2
    :goto_6
    throw v9

    .line 481
    .restart local v1       #arr$:[I
    .restart local v5       #freq:I
    .restart local v6       #i$:I
    .restart local v7       #len$:I
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 486
    .end local v5           #freq:I
    :cond_4
    const/4 v9, 0x0

    goto :goto_3

    .line 476
    .end local v1           #arr$:[I
    .end local v6           #i$:I
    .end local v7           #len$:I
    :catch_2
    move-exception v4

    .line 477
    .restart local v4       #e:Ljava/io/IOException;
    const-string v10, "SysFALImpl"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isPegaPrime:: e = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/ssrm/SLSISysFALImpl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 476
    .end local v2           #buf:Ljava/io/BufferedReader;
    .end local v4           #e:Ljava/io/IOException;
    .restart local v3       #buf:Ljava/io/BufferedReader;
    :catch_3
    move-exception v4

    .line 477
    .restart local v4       #e:Ljava/io/IOException;
    const-string v9, "SysFALImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isPegaPrime:: e = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/ssrm/SLSISysFALImpl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 472
    .end local v4           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v9

    move-object v2, v3

    .end local v3           #buf:Ljava/io/BufferedReader;
    .restart local v2       #buf:Ljava/io/BufferedReader;
    goto :goto_5

    .line 469
    .end local v2           #buf:Ljava/io/BufferedReader;
    .restart local v3       #buf:Ljava/io/BufferedReader;
    :catch_4
    move-exception v4

    move-object v2, v3

    .end local v3           #buf:Ljava/io/BufferedReader;
    .restart local v2       #buf:Ljava/io/BufferedReader;
    goto/16 :goto_4
.end method

.method public static logOnAll(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 495
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    return-void
.end method

.method public static logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 499
    sget-boolean v0, Lcom/android/server/ssrm/SLSISysFALImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 500
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    :cond_0
    return-void
.end method

.method private parseCpuCoreTable()[I
    .locals 11

    .prologue
    .line 538
    const-string v7, "SysFALImpl"

    const-string v8, "parseCpuCoreTable"

    invoke-static {v7, v8}, Lcom/android/server/ssrm/SLSISysFALImpl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    const/4 v5, 0x0

    .line 540
    .local v5, supportedCpuCore:[I
    const/4 v0, 0x0

    .line 542
    .local v0, buf:Ljava/io/BufferedReader;
    :try_start_0
    sget-object v7, Lcom/android/server/ssrm/SLSISysFALImpl;->SYSFS:Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;

    iget-object v7, v7, Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;->CPU_CORE_TABLE_PATH:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/android/server/ssrm/SLSISysFALImpl;->checkFileExistence(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 543
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    sget-object v8, Lcom/android/server/ssrm/SLSISysFALImpl;->SYSFS:Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;

    iget-object v8, v8, Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;->CPU_CORE_TABLE_PATH:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #buf:Ljava/io/BufferedReader;
    .local v1, buf:Ljava/io/BufferedReader;
    move-object v0, v1

    .line 545
    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    :cond_0
    if-nez v0, :cond_2

    .line 561
    if-eqz v0, :cond_1

    .line 562
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    :cond_1
    :goto_0
    move-object v6, v5

    .line 568
    .end local v5           #supportedCpuCore:[I
    .local v6, supportedCpuCore:[I
    :goto_1
    return-object v6

    .line 548
    .end local v6           #supportedCpuCore:[I
    .restart local v5       #supportedCpuCore:[I
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 549
    .local v4, strSupportedCpuCore:[Ljava/lang/String;
    array-length v7, v4

    new-array v5, v7, [I

    .line 550
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    array-length v7, v4

    if-ge v3, v7, :cond_6

    .line 551
    aget-object v7, v4, v3

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aput v7, v5, v3

    .line 552
    const-string v7, "SysFALImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parseCpuCoreTable:: supportedCpuCore = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v9, v5, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/ssrm/SLSISysFALImpl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 550
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 554
    .end local v3           #i:I
    .end local v4           #strSupportedCpuCore:[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 555
    .local v2, e:Ljava/lang/Exception;
    :try_start_3
    sget-boolean v7, Lcom/android/server/ssrm/SLSISysFALImpl;->DEBUG:Z

    if-eqz v7, :cond_3

    .line 556
    const-string v7, "SysFALImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parseCpuCoreTable:: failed by Exception, msg = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 558
    :cond_3
    const/4 v5, 0x0

    .line 561
    if-eqz v0, :cond_4

    .line 562
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .end local v2           #e:Ljava/lang/Exception;
    :cond_4
    :goto_3
    move-object v6, v5

    .line 568
    .end local v5           #supportedCpuCore:[I
    .restart local v6       #supportedCpuCore:[I
    goto :goto_1

    .line 560
    .end local v6           #supportedCpuCore:[I
    .restart local v5       #supportedCpuCore:[I
    :catchall_0
    move-exception v7

    .line 561
    if-eqz v0, :cond_5

    .line 562
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 560
    :cond_5
    :goto_4
    throw v7

    .line 564
    :catch_1
    move-exception v2

    .line 565
    .local v2, e:Ljava/io/IOException;
    const-string v8, "SysFALImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parseCpuCoreTable:: failed by IOException, msg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 564
    .local v2, e:Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 565
    .local v2, e:Ljava/io/IOException;
    const-string v7, "SysFALImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parseCpuCoreTable:: failed by IOException, msg = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_5
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 564
    .end local v2           #e:Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 565
    .restart local v2       #e:Ljava/io/IOException;
    const-string v7, "SysFALImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parseCpuCoreTable:: failed by IOException, msg = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 561
    .end local v2           #e:Ljava/io/IOException;
    .restart local v3       #i:I
    .restart local v4       #strSupportedCpuCore:[Ljava/lang/String;
    :cond_6
    if-eqz v0, :cond_4

    .line 562
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_3

    .line 564
    :catch_4
    move-exception v2

    .line 565
    .restart local v2       #e:Ljava/io/IOException;
    const-string v7, "SysFALImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parseCpuCoreTable:: failed by IOException, msg = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_5
.end method

.method private parseSystemBusTable()[I
    .locals 11

    .prologue
    .line 504
    const-string v7, "SysFALImpl"

    const-string v8, "parseSystemBusTable"

    invoke-static {v7, v8}, Lcom/android/server/ssrm/SLSISysFALImpl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    const/4 v5, 0x0

    .line 506
    .local v5, supportedFrequency:[I
    const/4 v0, 0x0

    .line 508
    .local v0, buf:Ljava/io/BufferedReader;
    :try_start_0
    sget-object v7, Lcom/android/server/ssrm/SLSISysFALImpl;->SYSFS:Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;

    iget-object v7, v7, Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;->BUS_TABLE_PATH:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/android/server/ssrm/SLSISysFALImpl;->checkFileExistence(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 509
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    sget-object v8, Lcom/android/server/ssrm/SLSISysFALImpl;->SYSFS:Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;

    iget-object v8, v8, Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;->BUS_TABLE_PATH:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #buf:Ljava/io/BufferedReader;
    .local v1, buf:Ljava/io/BufferedReader;
    move-object v0, v1

    .line 511
    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    :cond_0
    if-nez v0, :cond_2

    .line 527
    if-eqz v0, :cond_1

    .line 528
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    :cond_1
    :goto_0
    move-object v6, v5

    .line 534
    .end local v5           #supportedFrequency:[I
    .local v6, supportedFrequency:[I
    :goto_1
    return-object v6

    .line 514
    .end local v6           #supportedFrequency:[I
    .restart local v5       #supportedFrequency:[I
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 515
    .local v4, strSupportedFreq:[Ljava/lang/String;
    array-length v7, v4

    new-array v5, v7, [I

    .line 516
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    array-length v7, v4

    if-ge v3, v7, :cond_6

    .line 517
    aget-object v7, v4, v3

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aput v7, v5, v3

    .line 518
    const-string v7, "SysFALImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parseSystemBusTable:: supportedFrequency = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v9, v5, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/ssrm/SLSISysFALImpl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 516
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 520
    .end local v3           #i:I
    .end local v4           #strSupportedFreq:[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 521
    .local v2, e:Ljava/lang/Exception;
    :try_start_3
    sget-boolean v7, Lcom/android/server/ssrm/SLSISysFALImpl;->DEBUG:Z

    if-eqz v7, :cond_3

    .line 522
    const-string v7, "SysFALImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parseSystemBusTable:: failed by Exception, msg = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 524
    :cond_3
    const/4 v5, 0x0

    .line 527
    if-eqz v0, :cond_4

    .line 528
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .end local v2           #e:Ljava/lang/Exception;
    :cond_4
    :goto_3
    move-object v6, v5

    .line 534
    .end local v5           #supportedFrequency:[I
    .restart local v6       #supportedFrequency:[I
    goto :goto_1

    .line 526
    .end local v6           #supportedFrequency:[I
    .restart local v5       #supportedFrequency:[I
    :catchall_0
    move-exception v7

    .line 527
    if-eqz v0, :cond_5

    .line 528
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 526
    :cond_5
    :goto_4
    throw v7

    .line 530
    :catch_1
    move-exception v2

    .line 531
    .local v2, e:Ljava/io/IOException;
    const-string v8, "SysFALImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parseSystemBusTable:: failed by IOException, msg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 530
    .local v2, e:Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 531
    .local v2, e:Ljava/io/IOException;
    const-string v7, "SysFALImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parseSystemBusTable:: failed by IOException, msg = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_5
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 530
    .end local v2           #e:Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 531
    .restart local v2       #e:Ljava/io/IOException;
    const-string v7, "SysFALImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parseSystemBusTable:: failed by IOException, msg = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 527
    .end local v2           #e:Ljava/io/IOException;
    .restart local v3       #i:I
    .restart local v4       #strSupportedFreq:[Ljava/lang/String;
    :cond_6
    if-eqz v0, :cond_4

    .line 528
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_3

    .line 530
    :catch_4
    move-exception v2

    .line 531
    .restart local v2       #e:Ljava/io/IOException;
    const-string v7, "SysFALImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parseSystemBusTable:: failed by IOException, msg = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_5
.end method


# virtual methods
.method public checkNodeExistence(I)Z
    .locals 2
    .parameter "type"

    .prologue
    .line 393
    packed-switch p1, :pswitch_data_0

    .line 416
    :cond_0
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 396
    :pswitch_1
    sget-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->mPlatformType:Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;

    sget-object v1, Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;->MSM8064:Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;

    if-ne v0, v1, :cond_1

    .line 398
    const/4 v0, 0x1

    goto :goto_0

    .line 399
    :cond_1
    sget-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->mPlatformType:Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;

    sget-object v1, Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;->EXYNOS4:Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;

    if-ne v0, v1, :cond_0

    .line 400
    sget-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->SYSFS:Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;

    iget-object v0, v0, Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;->CPU_CORE_MIN_PATH:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/ssrm/SLSISysFALImpl;->checkFileExistence(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 404
    :pswitch_2
    sget-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->SYSFS:Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;

    iget-object v0, v0, Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;->CPU_CORE_MIN_PATH:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/ssrm/SLSISysFALImpl;->checkFileExistence(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 406
    :pswitch_3
    sget-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->SYSFS:Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;

    iget-object v0, v0, Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;->GPU_MIN_PATH:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/ssrm/SLSISysFALImpl;->checkFileExistence(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 408
    :pswitch_4
    sget-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->SYSFS:Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;

    iget-object v0, v0, Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;->BUS_MIN_PATH:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/ssrm/SLSISysFALImpl;->checkFileExistence(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 410
    :pswitch_5
    sget-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->SYSFS:Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;

    iget-object v0, v0, Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;->BUS_MAX_PATH:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/ssrm/SLSISysFALImpl;->checkFileExistence(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 412
    :pswitch_6
    sget-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->SYSFS:Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;

    iget-object v0, v0, Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;->LCD_FRAME_RATE_PATH:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/ssrm/SLSISysFALImpl;->checkFileExistence(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 393
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public initSupportedFrequency(I)[I
    .locals 2
    .parameter "type"

    .prologue
    .line 427
    packed-switch p1, :pswitch_data_0

    .line 459
    :cond_0
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 430
    :pswitch_1
    sget-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->mPlatformType:Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;

    sget-object v1, Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;->ADONIS:Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;

    if-ne v0, v1, :cond_1

    .line 431
    sget-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->ADONIS_GPU_TABLE:[I

    goto :goto_0

    .line 432
    :cond_1
    const-string v0, "jf"

    const-string v1, "ja"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    sget-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->FUSION_GPU_TABLE:[I

    goto :goto_0

    .line 438
    :pswitch_2
    sget-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->mPlatformType:Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;

    sget-object v1, Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;->MSM8064:Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;

    if-ne v0, v1, :cond_2

    .line 439
    sget-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->MSM8064_CORE_NUM_TABLE:[I

    goto :goto_0

    .line 440
    :cond_2
    sget-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->mPlatformType:Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;

    sget-object v1, Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;->EXYNOS4:Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;

    if-ne v0, v1, :cond_0

    .line 441
    invoke-direct {p0}, Lcom/android/server/ssrm/SLSISysFALImpl;->parseCpuCoreTable()[I

    move-result-object v0

    goto :goto_0

    .line 446
    :pswitch_3
    sget-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->mPlatformType:Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;

    sget-object v1, Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;->ADONIS:Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;

    if-ne v0, v1, :cond_3

    .line 447
    invoke-direct {p0}, Lcom/android/server/ssrm/SLSISysFALImpl;->parseSystemBusTable()[I

    move-result-object v0

    goto :goto_0

    .line 448
    :cond_3
    sget-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->mPlatformType:Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;

    sget-object v1, Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;->EXYNOS4:Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;

    if-ne v0, v1, :cond_0

    .line 449
    invoke-static {}, Lcom/android/server/ssrm/SLSISysFALImpl;->isPegaPrime()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 450
    sget-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->PEGA_PRIME_BUS_TABLE:[I

    goto :goto_0

    .line 452
    :cond_4
    sget-object v0, Lcom/android/server/ssrm/SLSISysFALImpl;->PEGA_BUS_TABLE:[I

    goto :goto_0

    .line 427
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public modifyToValues(II)Z
    .locals 9
    .parameter "type"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 207
    const/4 v4, 0x0

    .line 208
    .local v4, successFlag:Z
    const/4 v1, 0x0

    .line 209
    .local v1, filePtr:Ljava/io/File;
    packed-switch p1, :pswitch_data_0

    .line 248
    :pswitch_0
    const/4 v4, 0x0

    move v5, v4

    .line 277
    :goto_0
    return v5

    .line 211
    :pswitch_1
    sget-object v6, Lcom/android/server/ssrm/SLSISysFALImpl;->mPlatformType:Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;

    sget-object v7, Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;->MSM8064:Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;

    if-ne v6, v7, :cond_0

    .line 212
    invoke-static {p2}, Lcom/android/server/ssrm/SLSISysFALImpl;->acquirePerfCoreMinLock(I)V

    goto :goto_0

    .line 214
    :cond_0
    sget-object v5, Lcom/android/server/ssrm/SLSISysFALImpl;->mPlatformType:Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;

    sget-object v6, Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;->EXYNOS4:Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;

    if-ne v5, v6, :cond_1

    .line 215
    new-instance v1, Ljava/io/File;

    .end local v1           #filePtr:Ljava/io/File;
    sget-object v5, Lcom/android/server/ssrm/SLSISysFALImpl;->SYSFS:Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;

    iget-object v5, v5, Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;->CPU_CORE_MIN_PATH:Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 251
    .restart local v1       #filePtr:Ljava/io/File;
    :cond_1
    :goto_1
    invoke-static {p1, p2}, Lcom/android/server/ssrm/SLSISysFALImpl;->adjustValueToSysfsValue(II)I

    move-result p2

    .line 253
    sget-boolean v5, Lcom/android/server/ssrm/SLSISysFALImpl;->DEBUG:Z

    if-eqz v5, :cond_2

    .line 254
    const-string v5, "SysFALImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "modifyToValues:: path = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", value = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_2
    if-eqz v1, :cond_3

    .line 258
    const/4 v2, 0x0

    .line 260
    .local v2, fos:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .local v3, fos:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 262
    const/4 v4, 0x1

    .line 269
    if-eqz v3, :cond_3

    .line 270
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .end local v3           #fos:Ljava/io/FileOutputStream;
    :cond_3
    :goto_2
    move v5, v4

    .line 277
    goto :goto_0

    .line 219
    :pswitch_2
    sget-object v6, Lcom/android/server/ssrm/SLSISysFALImpl;->mPlatformType:Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;

    sget-object v7, Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;->MSM8064:Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;

    if-ne v6, v7, :cond_1

    .line 220
    invoke-static {p2}, Lcom/android/server/ssrm/SLSISysFALImpl;->acquirePerfCoreMaxLock(I)V

    goto :goto_0

    .line 225
    :pswitch_3
    new-instance v1, Ljava/io/File;

    .end local v1           #filePtr:Ljava/io/File;
    sget-object v5, Lcom/android/server/ssrm/SLSISysFALImpl;->SYSFS:Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;

    iget-object v5, v5, Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;->CPU_CORE_MIN_PATH:Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 226
    .restart local v1       #filePtr:Ljava/io/File;
    goto :goto_1

    .line 228
    :pswitch_4
    new-instance v1, Ljava/io/File;

    .end local v1           #filePtr:Ljava/io/File;
    sget-object v5, Lcom/android/server/ssrm/SLSISysFALImpl;->SYSFS:Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;

    iget-object v5, v5, Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;->GPU_MIN_PATH:Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 229
    .restart local v1       #filePtr:Ljava/io/File;
    goto :goto_1

    .line 231
    :pswitch_5
    new-instance v1, Ljava/io/File;

    .end local v1           #filePtr:Ljava/io/File;
    sget-object v5, Lcom/android/server/ssrm/SLSISysFALImpl;->SYSFS:Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;

    iget-object v5, v5, Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;->GPU_MAX_PATH:Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 232
    .restart local v1       #filePtr:Ljava/io/File;
    goto :goto_1

    .line 234
    :pswitch_6
    new-instance v1, Ljava/io/File;

    .end local v1           #filePtr:Ljava/io/File;
    sget-object v5, Lcom/android/server/ssrm/SLSISysFALImpl;->SYSFS:Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;

    iget-object v5, v5, Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;->BUS_MIN_PATH:Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 235
    .restart local v1       #filePtr:Ljava/io/File;
    goto :goto_1

    .line 237
    :pswitch_7
    new-instance v1, Ljava/io/File;

    .end local v1           #filePtr:Ljava/io/File;
    sget-object v5, Lcom/android/server/ssrm/SLSISysFALImpl;->SYSFS:Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;

    iget-object v5, v5, Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;->BUS_MAX_PATH:Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 238
    .restart local v1       #filePtr:Ljava/io/File;
    goto/16 :goto_1

    .line 240
    :pswitch_8
    new-instance v1, Ljava/io/File;

    .end local v1           #filePtr:Ljava/io/File;
    sget-object v5, Lcom/android/server/ssrm/SLSISysFALImpl;->SYSFS:Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;

    iget-object v5, v5, Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;->LCD_FRAME_RATE_PATH:Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 241
    .restart local v1       #filePtr:Ljava/io/File;
    const/16 v5, 0x28

    if-eq p2, v5, :cond_4

    const/16 v5, 0x33

    if-eq p2, v5, :cond_4

    const/16 v5, 0x32

    if-ne p2, v5, :cond_5

    .line 242
    :cond_4
    const/4 p2, 0x1

    goto/16 :goto_1

    .line 243
    :cond_5
    const/16 v5, 0x3c

    if-ne p2, v5, :cond_1

    .line 244
    const/4 p2, 0x0

    goto/16 :goto_1

    .line 263
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 264
    .local v0, e:Ljava/io/IOException;
    :goto_3
    :try_start_3
    sget-boolean v5, Lcom/android/server/ssrm/SLSISysFALImpl;->DEBUG:Z

    if-eqz v5, :cond_6

    .line 265
    const-string v5, "SysFALImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "modifyToValues:: failed by IOException, msg = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 269
    :cond_6
    if-eqz v2, :cond_3

    .line 270
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_2

    .line 272
    :catch_1
    move-exception v0

    .line 273
    const-string v5, "SysFALImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "modifyToValues:: failed by IOException, msg = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .end local v2           #fos:Ljava/io/FileOutputStream;
    :goto_4
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 268
    .end local v0           #e:Ljava/io/IOException;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v5

    .line 269
    :goto_5
    if-eqz v2, :cond_7

    .line 270
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 268
    :cond_7
    :goto_6
    throw v5

    .line 272
    :catch_2
    move-exception v0

    .line 273
    .restart local v0       #e:Ljava/io/IOException;
    const-string v6, "SysFALImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "modifyToValues:: failed by IOException, msg = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 272
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v0

    .line 273
    .restart local v0       #e:Ljava/io/IOException;
    const-string v5, "SysFALImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "modifyToValues:: failed by IOException, msg = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    .line 268
    .end local v0           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_5

    .line 263
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v2, v3

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto/16 :goto_3

    .line 209
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public revertToDefault(I)Z
    .locals 10
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x1

    .line 122
    const/4 v5, 0x0

    .line 123
    .local v5, successFlag:Z
    const/4 v1, 0x0

    .line 124
    .local v1, filePtr:Ljava/io/File;
    const/4 v4, -0x1

    .line 126
    .local v4, revertValue:I
    packed-switch p1, :pswitch_data_0

    .line 173
    :pswitch_0
    const/4 v5, 0x0

    move v6, v5

    .line 199
    :goto_0
    return v6

    .line 128
    :pswitch_1
    sget-object v7, Lcom/android/server/ssrm/SLSISysFALImpl;->mPlatformType:Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;

    sget-object v8, Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;->MSM8064:Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;

    if-ne v7, v8, :cond_0

    .line 129
    sget-object v7, Lcom/android/server/ssrm/SLSISysFALImpl;->mPerfCoreMinLock:Lorg/codeaurora/Performance;

    if-eqz v7, :cond_1

    .line 130
    sget-object v7, Lcom/android/server/ssrm/SLSISysFALImpl;->mPerfCoreMinLock:Lorg/codeaurora/Performance;

    invoke-virtual {v7}, Lorg/codeaurora/Performance;->perfLockRelease()I

    .line 131
    sput-object v9, Lcom/android/server/ssrm/SLSISysFALImpl;->mPerfCoreMinLock:Lorg/codeaurora/Performance;

    goto :goto_0

    .line 134
    :cond_0
    sget-object v6, Lcom/android/server/ssrm/SLSISysFALImpl;->mPlatformType:Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;

    sget-object v7, Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;->EXYNOS4:Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;

    if-ne v6, v7, :cond_1

    .line 135
    new-instance v1, Ljava/io/File;

    .end local v1           #filePtr:Ljava/io/File;
    sget-object v6, Lcom/android/server/ssrm/SLSISysFALImpl;->SYSFS:Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;

    iget-object v6, v6, Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;->CPU_CORE_MIN_PATH:Ljava/lang/String;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 136
    .restart local v1       #filePtr:Ljava/io/File;
    sget-object v6, Lcom/android/server/ssrm/SLSISysFALImpl;->SYSFS:Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;

    iget v4, v6, Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;->CPU_DEFAULT_CORE:I

    .line 176
    :cond_1
    :goto_1
    sget-boolean v6, Lcom/android/server/ssrm/SLSISysFALImpl;->DEBUG:Z

    if-eqz v6, :cond_2

    .line 177
    const-string v6, "SysFALImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "revertToDefault:: path = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", revertValue = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_2
    if-eqz v1, :cond_3

    .line 180
    const/4 v2, 0x0

    .line 182
    .local v2, fos:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .local v3, fos:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 184
    const/4 v5, 0x1

    .line 191
    if-eqz v3, :cond_3

    .line 192
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .end local v3           #fos:Ljava/io/FileOutputStream;
    :cond_3
    :goto_2
    move v6, v5

    .line 199
    goto :goto_0

    .line 140
    :pswitch_2
    sget-object v7, Lcom/android/server/ssrm/SLSISysFALImpl;->mPlatformType:Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;

    sget-object v8, Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;->MSM8064:Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;

    if-ne v7, v8, :cond_1

    .line 141
    sget-object v7, Lcom/android/server/ssrm/SLSISysFALImpl;->mPerfCoreMaxLock:Lorg/codeaurora/Performance;

    if-eqz v7, :cond_1

    .line 142
    sget-object v7, Lcom/android/server/ssrm/SLSISysFALImpl;->mPerfCoreMaxLock:Lorg/codeaurora/Performance;

    invoke-virtual {v7}, Lorg/codeaurora/Performance;->perfLockRelease()I

    .line 143
    sput-object v9, Lcom/android/server/ssrm/SLSISysFALImpl;->mPerfCoreMaxLock:Lorg/codeaurora/Performance;

    goto :goto_0

    .line 149
    :pswitch_3
    new-instance v1, Ljava/io/File;

    .end local v1           #filePtr:Ljava/io/File;
    sget-object v6, Lcom/android/server/ssrm/SLSISysFALImpl;->SYSFS:Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;

    iget-object v6, v6, Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;->CPU_CORE_MIN_PATH:Ljava/lang/String;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 150
    .restart local v1       #filePtr:Ljava/io/File;
    sget-object v6, Lcom/android/server/ssrm/SLSISysFALImpl;->SYSFS:Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;

    iget v4, v6, Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;->CPU_DEFAULT_CORE:I

    .line 151
    goto :goto_1

    .line 153
    :pswitch_4
    new-instance v1, Ljava/io/File;

    .end local v1           #filePtr:Ljava/io/File;
    sget-object v6, Lcom/android/server/ssrm/SLSISysFALImpl;->SYSFS:Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;

    iget-object v6, v6, Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;->GPU_MIN_PATH:Ljava/lang/String;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 154
    .restart local v1       #filePtr:Ljava/io/File;
    sget-object v6, Lcom/android/server/ssrm/SLSISysFALImpl;->SYSFS:Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;

    iget v4, v6, Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;->GPU_DEFAULT_FREQUENCY:I

    .line 155
    goto :goto_1

    .line 157
    :pswitch_5
    new-instance v1, Ljava/io/File;

    .end local v1           #filePtr:Ljava/io/File;
    sget-object v6, Lcom/android/server/ssrm/SLSISysFALImpl;->SYSFS:Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;

    iget-object v6, v6, Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;->GPU_MAX_PATH:Ljava/lang/String;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 158
    .restart local v1       #filePtr:Ljava/io/File;
    sget-object v6, Lcom/android/server/ssrm/SLSISysFALImpl;->SYSFS:Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;

    iget v4, v6, Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;->GPU_DEFAULT_FREQUENCY:I

    .line 159
    goto/16 :goto_1

    .line 161
    :pswitch_6
    new-instance v1, Ljava/io/File;

    .end local v1           #filePtr:Ljava/io/File;
    sget-object v6, Lcom/android/server/ssrm/SLSISysFALImpl;->SYSFS:Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;

    iget-object v6, v6, Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;->BUS_MIN_PATH:Ljava/lang/String;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 162
    .restart local v1       #filePtr:Ljava/io/File;
    sget-object v6, Lcom/android/server/ssrm/SLSISysFALImpl;->SYSFS:Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;

    iget v4, v6, Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;->BUS_DEFAULT_FREQUENCY:I

    .line 163
    goto/16 :goto_1

    .line 165
    :pswitch_7
    new-instance v1, Ljava/io/File;

    .end local v1           #filePtr:Ljava/io/File;
    sget-object v6, Lcom/android/server/ssrm/SLSISysFALImpl;->SYSFS:Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;

    iget-object v6, v6, Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;->BUS_MAX_PATH:Ljava/lang/String;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 166
    .restart local v1       #filePtr:Ljava/io/File;
    sget-object v6, Lcom/android/server/ssrm/SLSISysFALImpl;->SYSFS:Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;

    iget v4, v6, Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;->BUS_DEFAULT_FREQUENCY:I

    .line 167
    goto/16 :goto_1

    .line 169
    :pswitch_8
    new-instance v1, Ljava/io/File;

    .end local v1           #filePtr:Ljava/io/File;
    sget-object v6, Lcom/android/server/ssrm/SLSISysFALImpl;->SYSFS:Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;

    iget-object v6, v6, Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;->LCD_FRAME_RATE_PATH:Ljava/lang/String;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 170
    .restart local v1       #filePtr:Ljava/io/File;
    sget-object v6, Lcom/android/server/ssrm/SLSISysFALImpl;->SYSFS:Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;

    iget v4, v6, Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;->LCD_FRAME_RATE_DEFAULT:I

    .line 171
    goto/16 :goto_1

    .line 185
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 186
    .local v0, e:Ljava/io/IOException;
    :goto_3
    :try_start_3
    sget-boolean v6, Lcom/android/server/ssrm/SLSISysFALImpl;->DEBUG:Z

    if-eqz v6, :cond_4

    .line 187
    const-string v6, "SysFALImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "revertToDefault:: failed by IOException, msg = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 191
    :cond_4
    if-eqz v2, :cond_3

    .line 192
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_2

    .line 194
    :catch_1
    move-exception v0

    .line 195
    const-string v6, "SysFALImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "revertToDefault:: failed by IOException, msg = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .end local v2           #fos:Ljava/io/FileOutputStream;
    :goto_4
    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 190
    .end local v0           #e:Ljava/io/IOException;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v6

    .line 191
    :goto_5
    if-eqz v2, :cond_5

    .line 192
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 190
    :cond_5
    :goto_6
    throw v6

    .line 194
    :catch_2
    move-exception v0

    .line 195
    .restart local v0       #e:Ljava/io/IOException;
    const-string v7, "SysFALImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "revertToDefault:: failed by IOException, msg = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 194
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v0

    .line 195
    .restart local v0       #e:Ljava/io/IOException;
    const-string v6, "SysFALImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "revertToDefault:: failed by IOException, msg = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    .line 190
    .end local v0           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_5

    .line 185
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v2, v3

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto/16 :goto_3

    .line 126
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
