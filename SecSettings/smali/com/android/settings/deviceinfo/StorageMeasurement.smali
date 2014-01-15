.class public Lcom/android/settings_ex/deviceinfo/StorageMeasurement;
.super Ljava/lang/Object;
.source "StorageMeasurement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/deviceinfo/StorageMeasurement$1;,
        Lcom/android/settings_ex/deviceinfo/StorageMeasurement$FileInfo;,
        Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;,
        Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementReceiver;
    }
.end annotation


# static fields
.field public static final APPS_USED:Ljava/lang/String; = "apps_used"

.field public static final AVAIL_SIZE:Ljava/lang/String; = "avail_size"

.field public static final DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName; = null

.field private static final DEFAULT_CONTAINER_PACKAGE:Ljava/lang/String; = "com.android.defcontainer"

.field public static final DOWNLOADS_SIZE:Ljava/lang/String; = "downloads_size"

.field private static final LOCAL_LOGV:Z = true

#the value of this static final field might be set in the static constructor
.field static final LOGV:Z = false

.field public static final MEDIA_SIZES:Ljava/lang/String; = "media_sizes"

.field public static final MISC_SIZE:Ljava/lang/String; = "misc_size"

.field private static final SYSTEM_MEMORY_128GB_REAL_SIZE:J = 0x1d1ec00000L

.field private static final SYSTEM_MEMORY_16GB_REAL_SIZE:J = 0x3ab400000L

.field private static final SYSTEM_MEMORY_32GB_REAL_SIZE:J = 0x747c00000L

.field private static final SYSTEM_MEMORY_4GB_REAL_SIZE:J = 0xec000000L

.field private static final SYSTEM_MEMORY_64GB_REAL_SIZE:J = 0xe8f800000L

.field private static final SYSTEM_MEMORY_8GB_REAL_SIZE:J = 0x1d2000000L

.field private static final SYSTEM_MEMORY_REAL_SIZE:J = 0x3ab400000L

.field private static final SYSTEM_MEMORY_UNIT_GB:J = 0x40000000L

.field public static final SYSTEM_SIZE:Ljava/lang/String; = "system_size"

.field private static final TAG:Ljava/lang/String; = "StorageMeasurement"

.field public static final TOTAL_SIZE:Ljava/lang/String; = "total_size"

.field private static sInstances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/os/storage/StorageVolume;",
            "Lcom/android/settings_ex/deviceinfo/StorageMeasurement;",
            ">;"
        }
    .end annotation
.end field

.field private static sInternalInstance:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;


# instance fields
.field private _context:Landroid/content/Context;

.field private mAppsSize:J

.field private mAvailSize:J

.field private mDownloadsSize:J

.field mFileInfoForMisc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/deviceinfo/StorageMeasurement$FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;

.field private final mIsInternal:Z

.field private final mIsPrimary:Z

.field private mMediaSizes:[J

.field private mMiscSize:J

.field private volatile mReceiver:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final mStorageVolume:Landroid/os/storage/StorageVolume;

.field private mSystemMemSize:J

.field private mTotalSize:J

.field private totalMediaSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 77
    const-string v0, "StorageMeasurement"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->LOGV:Z

    .line 95
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.defcontainer"

    const-string v2, "com.android.defcontainer.DefaultContainerService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    .line 100
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->sInstances:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/storage/StorageVolume;Z)V
    .locals 6
    .parameter "context"
    .parameter "storageVolume"
    .parameter "isPrimary"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    sget-object v1, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->sMediaCategories:[Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory$MediaCategory;

    array-length v1, v1

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mMediaSizes:[J

    .line 113
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->totalMediaSize:J

    .line 141
    iput-object p2, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mStorageVolume:Landroid/os/storage/StorageVolume;

    .line 142
    if-nez p2, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mIsInternal:Z

    .line 143
    iget-boolean v1, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mIsInternal:Z

    if-nez v1, :cond_1

    if-eqz p3, :cond_1

    :goto_1
    iput-boolean v2, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mIsPrimary:Z

    .line 145
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->_context:Landroid/content/Context;

    .line 148
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MemoryMeasurement"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 149
    .local v0, handlerThread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 150
    new-instance v1, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, p1, v2}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;-><init>(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mHandler:Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;

    .line 151
    return-void

    .end local v0           #handlerThread:Landroid/os/HandlerThread;
    :cond_0
    move v1, v3

    .line 142
    goto :goto_0

    :cond_1
    move v2, v3

    .line 143
    goto :goto_1
.end method

.method static synthetic access$1000(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mIsPrimary:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mMiscSize:J

    return-wide v0
.end method

.method static synthetic access$1102(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-wide p1, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mMiscSize:J

    return-wide p1
.end method

.method static synthetic access$1202(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-wide p1, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mSystemMemSize:J

    return-wide p1
.end method

.method static synthetic access$1300(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->sendInternalApproximateUpdate()V

    return-void
.end method

.method static synthetic access$1402(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-wide p1, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->totalMediaSize:J

    return-wide p1
.end method

.method static synthetic access$1414(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;J)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->totalMediaSize:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->totalMediaSize:J

    return-wide v0
.end method

.method static synthetic access$1500(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;)[J
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mMediaSizes:[J

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;Lcom/android/internal/app/IMediaContainerService;Ljava/lang/String;)J
    .locals 2
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->getDirectorySize(Lcom/android/internal/app/IMediaContainerService;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1702(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-wide p1, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mDownloadsSize:J

    return-wide p1
.end method

.method static synthetic access$1800(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;Lcom/android/internal/app/IMediaContainerService;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->measureSizesOfMisc(Lcom/android/internal/app/IMediaContainerService;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->sendExactUpdate()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mIsInternal:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-wide p1, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mAppsSize:J

    return-wide p1
.end method

.method static synthetic access$700(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;)Landroid/os/storage/StorageVolume;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mStorageVolume:Landroid/os/storage/StorageVolume;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mTotalSize:J

    return-wide v0
.end method

.method static synthetic access$802(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-wide p1, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mTotalSize:J

    return-wide p1
.end method

.method static synthetic access$902(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-wide p1, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mAvailSize:J

    return-wide p1
.end method

.method private getDirectorySize(Lcom/android/internal/app/IMediaContainerService;Ljava/lang/String;)J
    .locals 4
    .parameter "imcs"
    .parameter "dir"

    .prologue
    .line 596
    :try_start_0
    invoke-interface {p1, p2}, Lcom/android/internal/app/IMediaContainerService;->calculateDirectorySize(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 599
    :goto_0
    return-wide v1

    .line 597
    :catch_0
    move-exception v0

    .line 598
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "StorageMeasurement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not read memory from default container service for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 599
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;Landroid/os/storage/StorageVolume;Z)Lcom/android/settings_ex/deviceinfo/StorageMeasurement;
    .locals 3
    .parameter "context"
    .parameter "storageVolume"
    .parameter "isPrimary"

    .prologue
    .line 161
    if-nez p1, :cond_1

    .line 162
    sget-object v1, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->sInternalInstance:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    if-nez v1, :cond_0

    .line 163
    new-instance v1, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;-><init>(Landroid/content/Context;Landroid/os/storage/StorageVolume;Z)V

    sput-object v1, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->sInternalInstance:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    .line 166
    :cond_0
    sget-object v1, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->sInternalInstance:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    .line 174
    :goto_0
    return-object v1

    .line 168
    :cond_1
    sget-object v1, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->sInstances:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 169
    sget-object v1, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->sInstances:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    goto :goto_0

    .line 171
    :cond_2
    new-instance v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;-><init>(Landroid/content/Context;Landroid/os/storage/StorageVolume;Z)V

    .line 173
    .local v0, storageMeasurement:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;
    sget-object v1, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->sInstances:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 174
    goto :goto_0
.end method

.method private measureSizesOfMisc(Lcom/android/internal/app/IMediaContainerService;)V
    .locals 26
    .parameter "imcs"

    .prologue
    .line 608
    new-instance v25, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 609
    .local v25, top:Ljava/io/File;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mFileInfoForMisc:Ljava/util/List;

    .line 610
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v21

    .line 611
    .local v21, files:[Ljava/io/File;
    if-nez v21, :cond_1

    .line 657
    :cond_0
    :goto_0
    return-void

    .line 612
    :cond_1
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v23, v0

    .line 614
    .local v23, len:I
    const-wide/16 v6, 0x0

    .line 615
    .local v6, counter:J
    const/16 v22, 0x0

    .local v22, i:I
    :goto_1
    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_5

    .line 616
    aget-object v2, v21, v22

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 617
    .local v3, path:Ljava/lang/String;
    sget-object v2, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->sPathsExcludedForMisc:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 615
    :cond_2
    :goto_2
    add-int/lit8 v22, v22, 0x1

    goto :goto_1

    .line 620
    :cond_3
    aget-object v2, v21, v22

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 621
    aget-object v2, v21, v22

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 622
    .local v4, fileSize:J
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mFileInfoForMisc:Ljava/util/List;

    new-instance v2, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$FileInfo;

    const-wide/16 v14, 0x1

    add-long v18, v6, v14

    .end local v6           #counter:J
    .local v18, counter:J
    invoke-direct/range {v2 .. v7}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$FileInfo;-><init>(Ljava/lang/String;JJ)V

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 623
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mMiscSize:J

    add-long/2addr v8, v4

    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mMiscSize:J

    move-wide/from16 v6, v18

    .line 624
    .end local v18           #counter:J
    .restart local v6       #counter:J
    goto :goto_2

    .end local v4           #fileSize:J
    :cond_4
    aget-object v2, v21, v22

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 626
    const-string v2, "/mnt/sdcard/extStorages"

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 631
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->getDirectorySize(Lcom/android/internal/app/IMediaContainerService;Ljava/lang/String;)J

    move-result-wide v10

    .line 632
    .local v10, dirSize:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mFileInfoForMisc:Ljava/util/List;

    new-instance v8, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$FileInfo;

    const-wide/16 v14, 0x1

    add-long v18, v6, v14

    .end local v6           #counter:J
    .restart local v18       #counter:J
    move-object v9, v3

    move-wide v12, v6

    invoke-direct/range {v8 .. v13}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$FileInfo;-><init>(Ljava/lang/String;JJ)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 633
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mMiscSize:J

    add-long/2addr v8, v10

    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mMiscSize:J

    move-wide/from16 v6, v18

    .end local v18           #counter:J
    .restart local v6       #counter:J
    goto :goto_2

    .line 640
    .end local v3           #path:Ljava/lang/String;
    .end local v10           #dirSize:J
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mFileInfoForMisc:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 644
    const-string v2, "VZW"

    invoke-static {}, Lcom/android/settings_ex/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 646
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 647
    .local v24, mTempList:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings_ex/deviceinfo/StorageMeasurement$FileInfo;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "/"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 648
    .local v20, externalStorageDirPrefix:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->_context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f091010

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 650
    .local v13, systemMemPath:Ljava/lang/String;
    new-instance v12, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$FileInfo;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mSystemMemSize:J

    const-wide/16 v8, 0x1

    add-long v18, v6, v8

    .end local v6           #counter:J
    .restart local v18       #counter:J
    move-wide/from16 v16, v6

    invoke-direct/range {v12 .. v17}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$FileInfo;-><init>(Ljava/lang/String;JJ)V

    move-object/from16 v0, v24

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 651
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mFileInfoForMisc:Ljava/util/List;

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 652
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mFileInfoForMisc:Ljava/util/List;

    .line 653
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mMiscSize:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mSystemMemSize:J

    add-long/2addr v8, v14

    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mMiscSize:J

    .line 655
    const-string v2, "StorageMeasurement"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "StorageMeasurement - measureSizesOfMisc() is called. mTotalSize: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mTotalSize:J

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " / mMiscSize: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mMiscSize:J

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-wide/from16 v6, v18

    .end local v18           #counter:J
    .restart local v6       #counter:J
    goto/16 :goto_0
.end method

.method private sendExactUpdate()V
    .locals 8

    .prologue
    .line 214
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementReceiver;

    move-object v3, v4

    .line 215
    .local v3, receiver:Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementReceiver;
    :goto_0
    if-nez v3, :cond_2

    .line 216
    sget-boolean v4, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->LOGV:Z

    if-eqz v4, :cond_0

    .line 217
    const-string v4, "StorageMeasurement"

    const-string v5, "measurements dropped because receiver is null! wasted effort"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_0
    :goto_1
    return-void

    .line 214
    .end local v3           #receiver:Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementReceiver;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 222
    .restart local v3       #receiver:Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementReceiver;
    :cond_2
    iget-wide v4, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mTotalSize:J

    iget-wide v6, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mAvailSize:J

    sub-long/2addr v4, v6

    iget-wide v6, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mAppsSize:J

    sub-long/2addr v4, v6

    iget-wide v6, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mDownloadsSize:J

    sub-long/2addr v4, v6

    iget-wide v6, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mMiscSize:J

    sub-long/2addr v4, v6

    iget-wide v6, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mSystemMemSize:J

    sub-long/2addr v4, v6

    iget-wide v6, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->totalMediaSize:J

    sub-long v1, v4, v6

    .line 223
    .local v1, metaSize:J
    const-string v4, "VZW"

    invoke-static {}, Lcom/android/settings_ex/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->_context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0022

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 224
    iget-wide v4, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mMiscSize:J

    add-long/2addr v4, v1

    iput-wide v4, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mMiscSize:J

    .line 227
    :cond_3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 228
    .local v0, bundle:Landroid/os/Bundle;
    const-string v4, "total_size"

    iget-wide v5, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mTotalSize:J

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 229
    const-string v4, "avail_size"

    iget-wide v5, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mAvailSize:J

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 230
    const-string v4, "apps_used"

    iget-wide v5, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mAppsSize:J

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 231
    const-string v4, "downloads_size"

    iget-wide v5, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mDownloadsSize:J

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 232
    const-string v4, "misc_size"

    iget-wide v5, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mMiscSize:J

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 233
    const-string v4, "system_size"

    iget-wide v5, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mSystemMemSize:J

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 234
    const-string v4, "media_sizes"

    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mMediaSizes:[J

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 236
    invoke-interface {v3, v0}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementReceiver;->updateExact(Landroid/os/Bundle;)V

    goto :goto_1
.end method

.method private sendInternalApproximateUpdate()V
    .locals 5

    .prologue
    .line 201
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementReceiver;

    move-object v1, v2

    .line 202
    .local v1, receiver:Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementReceiver;
    :goto_0
    if-nez v1, :cond_1

    .line 211
    :goto_1
    return-void

    .line 201
    .end local v1           #receiver:Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementReceiver;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 206
    .restart local v1       #receiver:Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementReceiver;
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 207
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "total_size"

    iget-wide v3, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mTotalSize:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 208
    const-string v2, "avail_size"

    iget-wide v3, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mAvailSize:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 210
    invoke-interface {v1, v0}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementReceiver;->updateApproximate(Landroid/os/Bundle;)V

    goto :goto_1
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    .line 191
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    .line 192
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mHandler:Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 193
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mHandler:Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 194
    return-void
.end method

.method getMiscSize()J
    .locals 2

    .prologue
    .line 604
    iget-wide v0, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mMiscSize:J

    return-wide v0
.end method

.method public invalidate()V
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mHandler:Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 198
    return-void
.end method

.method isExternalSDCard()Z
    .locals 1

    .prologue
    .line 686
    iget-boolean v0, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mIsPrimary:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mIsInternal:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public measure()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 185
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mHandler:Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mHandler:Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 188
    :cond_0
    return-void
.end method

.method public setReceiver(Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementReceiver;)V
    .locals 1
    .parameter "receiver"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 180
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    .line 182
    :cond_1
    return-void
.end method
