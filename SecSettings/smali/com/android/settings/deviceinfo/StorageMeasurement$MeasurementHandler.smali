.class Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;
.super Landroid/os/Handler;
.source "StorageMeasurement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/deviceinfo/StorageMeasurement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MeasurementHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler$StatsObserver;
    }
.end annotation


# static fields
.field public static final MSG_COMPLETED:I = 0x4

.field public static final MSG_CONNECTED:I = 0x2

.field public static final MSG_DISCONNECT:I = 0x3

.field public static final MSG_INVALIDATE:I = 0x5

.field public static final MSG_MEASURE:I = 0x1


# instance fields
.field private volatile mBound:Z

.field private final mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final mDefContainerConn:Landroid/content/ServiceConnection;

.field private mDefaultContainer:Lcom/android/internal/app/IMediaContainerService;

.field private mLock:Ljava/lang/Object;

.field private volatile mMeasured:Z

.field private mStatsObserver:Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler$StatsObserver;

.field final synthetic this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;Landroid/content/Context;Landroid/os/Looper;)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "looper"

    .prologue
    const/4 v1, 0x0

    .line 277
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    .line 278
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 250
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->mLock:Ljava/lang/Object;

    .line 254
    iput-boolean v1, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->mBound:Z

    .line 256
    iput-boolean v1, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->mMeasured:Z

    .line 262
    new-instance v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler$1;-><init>(Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;)V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->mDefContainerConn:Landroid/content/ServiceConnection;

    .line 279
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    .line 280
    return-void
.end method

.method static synthetic access$002(Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 239
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->mDefaultContainer:Lcom/android/internal/app/IMediaContainerService;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 239
    iput-boolean p1, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->mBound:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;)Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler$StatsObserver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->mStatsObserver:Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler$StatsObserver;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 239
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->onInternalMeasurementComplete()V

    return-void
.end method

.method private measureApproximateStorage()V
    .locals 19

    .prologue
    .line 447
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v13}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/Context;

    move-object v6, v13

    .line 448
    .local v6, context:Landroid/content/Context;
    :goto_0
    if-nez v6, :cond_1

    .line 489
    :goto_1
    return-void

    .line 447
    .end local v6           #context:Landroid/content/Context;
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 452
    .restart local v6       #context:Landroid/content/Context;
    :cond_1
    const-wide/16 v4, 0x0

    .line 453
    .local v4, blockSize:J
    const-wide/16 v11, 0x0

    .line 454
    .local v11, totalBlocks:J
    const-wide/16 v2, 0x0

    .line 456
    .local v2, availableBlocks:J
    :try_start_0
    new-instance v10, Landroid/os/StatFs;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    #getter for: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mStorageVolume:Landroid/os/storage/StorageVolume;
    invoke-static {v13}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$700(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;)Landroid/os/storage/StorageVolume;

    move-result-object v13

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    #getter for: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mStorageVolume:Landroid/os/storage/StorageVolume;
    invoke-static {v13}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$700(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;)Landroid/os/storage/StorageVolume;

    move-result-object v13

    invoke-virtual {v13}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v13

    :goto_2
    invoke-direct {v10, v13}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 458
    .local v10, stat:Landroid/os/StatFs;
    invoke-virtual {v10}, Landroid/os/StatFs;->getBlockSize()I

    move-result v13

    int-to-long v4, v13

    .line 459
    invoke-virtual {v10}, Landroid/os/StatFs;->getBlockCount()I

    move-result v13

    int-to-long v11, v13

    .line 460
    invoke-virtual {v10}, Landroid/os/StatFs;->getAvailableBlocks()I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    int-to-long v2, v13

    .line 464
    .end local v10           #stat:Landroid/os/StatFs;
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    mul-long v14, v11, v4

    #setter for: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mTotalSize:J
    invoke-static {v13, v14, v15}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$802(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;J)J

    .line 465
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    mul-long v14, v2, v4

    #setter for: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mAvailSize:J
    invoke-static {v13, v14, v15}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$902(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;J)J

    .line 470
    const-string v13, "VZW"

    invoke-static {}, Lcom/android/settings_ex/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0c0022

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v13

    if-eqz v13, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    #getter for: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mIsPrimary:Z
    invoke-static {v13}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$1000(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 471
    const-string v13, "StorageMeasurement"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "StorageMeasurement - measureApproximateStorage() is called.(before Calculate) - mTotalSize: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    #getter for: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mTotalSize:J
    invoke-static {v15}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$800(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;)J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " / mMiscSize: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    #getter for: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mMiscSize:J
    invoke-static {v15}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$1100(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;)J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    const/4 v9, 0x3

    .line 474
    .local v9, power:I
    const-wide/16 v7, 0x0

    .line 476
    .local v7, mTempTotalSize:J
    :goto_4
    const-wide/32 v13, 0x40000000

    const-wide/high16 v15, 0x4000

    int-to-double v0, v9

    move-wide/from16 v17, v0

    invoke-static/range {v15 .. v18}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v15

    double-to-long v15, v15

    mul-long v7, v13, v15

    .line 477
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    #getter for: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mTotalSize:J
    invoke-static {v13}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$800(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;)J

    move-result-wide v13

    cmp-long v13, v13, v7

    if-gtz v13, :cond_5

    .line 482
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    #getter for: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mTotalSize:J
    invoke-static {v14}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$800(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;)J

    move-result-wide v14

    sub-long v14, v7, v14

    #setter for: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mSystemMemSize:J
    invoke-static {v13, v14, v15}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$1202(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;J)J

    .line 483
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    #setter for: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mTotalSize:J
    invoke-static {v13, v7, v8}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$802(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;J)J

    .line 485
    const-string v13, "StorageMeasurement"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "StorageMeasurement - measureApproximateStorage() is called.(after Calculate) - mTotalSize: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    #getter for: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mTotalSize:J
    invoke-static {v15}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$800(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;)J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " / mMiscSize: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    #getter for: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mMiscSize:J
    invoke-static {v15}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$1100(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;)J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    .end local v7           #mTempTotalSize:J
    .end local v9           #power:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    #calls: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->sendInternalApproximateUpdate()V
    invoke-static {v13}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$1300(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;)V

    goto/16 :goto_1

    .line 456
    :cond_4
    :try_start_1
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->getPath()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v13

    goto/16 :goto_2

    .line 480
    .restart local v7       #mTempTotalSize:J
    .restart local v9       #power:I
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_4

    .line 461
    .end local v7           #mTempTotalSize:J
    .end local v9           #power:I
    :catch_0
    move-exception v13

    goto/16 :goto_3
.end method

.method private measureApproximateStorage(Lcom/android/internal/app/IMediaContainerService;)V
    .locals 13
    .parameter "imcs"

    .prologue
    .line 407
    iget-object v7, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Context;

    move-object v0, v7

    .line 408
    .local v0, context:Landroid/content/Context;
    :goto_0
    if-nez v0, :cond_1

    .line 444
    :goto_1
    return-void

    .line 407
    .end local v0           #context:Landroid/content/Context;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 412
    .restart local v0       #context:Landroid/content/Context;
    :cond_1
    iget-object v7, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    #getter for: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mStorageVolume:Landroid/os/storage/StorageVolume;
    invoke-static {v7}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$700(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;)Landroid/os/storage/StorageVolume;

    move-result-object v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    #getter for: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mStorageVolume:Landroid/os/storage/StorageVolume;
    invoke-static {v7}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$700(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;)Landroid/os/storage/StorageVolume;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 415
    .local v4, path:Ljava/lang/String;
    :goto_2
    :try_start_0
    invoke-interface {p1, v4}, Lcom/android/internal/app/IMediaContainerService;->getFileSystemStats(Ljava/lang/String;)[J

    move-result-object v6

    .line 416
    .local v6, stats:[J
    iget-object v7, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    const/4 v8, 0x0

    aget-wide v8, v6, v8

    #setter for: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mTotalSize:J
    invoke-static {v7, v8, v9}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$802(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;J)J

    .line 417
    iget-object v7, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    const/4 v8, 0x1

    aget-wide v8, v6, v8

    #setter for: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mAvailSize:J
    invoke-static {v7, v8, v9}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$902(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 425
    .end local v6           #stats:[J
    :goto_3
    const-string v7, "VZW"

    invoke-static {}, Lcom/android/settings_ex/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0022

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_2
    iget-object v7, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    #getter for: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mIsPrimary:Z
    invoke-static {v7}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$1000(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 426
    const-string v7, "StorageMeasurement"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "StorageMeasurement - measureApproximateStorage() is called.(before Calculate) - mTotalSize: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    #getter for: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mTotalSize:J
    invoke-static {v9}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$800(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " / mMiscSize: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    #getter for: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mMiscSize:J
    invoke-static {v9}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$1100(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    const/4 v5, 0x3

    .line 429
    .local v5, power:I
    const-wide/16 v2, 0x0

    .line 431
    .local v2, mTempTotalSize:J
    :goto_4
    const-wide/32 v7, 0x40000000

    const-wide/high16 v9, 0x4000

    int-to-double v11, v5

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    double-to-long v9, v9

    mul-long v2, v7, v9

    .line 432
    iget-object v7, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    #getter for: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mTotalSize:J
    invoke-static {v7}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$800(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;)J

    move-result-wide v7

    cmp-long v7, v7, v2

    if-gtz v7, :cond_5

    .line 437
    iget-object v7, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    iget-object v8, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    #getter for: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mTotalSize:J
    invoke-static {v8}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$800(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;)J

    move-result-wide v8

    sub-long v8, v2, v8

    #setter for: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mSystemMemSize:J
    invoke-static {v7, v8, v9}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$1202(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;J)J

    .line 438
    iget-object v7, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    #setter for: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mTotalSize:J
    invoke-static {v7, v2, v3}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$802(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;J)J

    .line 440
    const-string v7, "StorageMeasurement"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "StorageMeasurement - measureApproximateStorage() is called.(after Calculate) - mTotalSize: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    #getter for: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mTotalSize:J
    invoke-static {v9}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$800(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " / mMiscSize: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    #getter for: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mMiscSize:J
    invoke-static {v9}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$1100(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    .end local v2           #mTempTotalSize:J
    .end local v5           #power:I
    :cond_3
    iget-object v7, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    #calls: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->sendInternalApproximateUpdate()V
    invoke-static {v7}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$1300(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;)V

    goto/16 :goto_1

    .line 412
    .end local v4           #path:Ljava/lang/String;
    :cond_4
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2

    .line 418
    .restart local v4       #path:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 419
    .local v1, e:Ljava/lang/Exception;
    const-string v7, "StorageMeasurement"

    const-string v8, "Problem in container service"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 435
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #mTempTotalSize:J
    .restart local v5       #power:I
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4
.end method

.method private measureExactStorage(Lcom/android/internal/app/IMediaContainerService;)V
    .locals 16
    .parameter "imcs"

    .prologue
    .line 492
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    if-eqz v11, :cond_1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v11}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/Context;

    move-object v2, v11

    .line 493
    .local v2, context:Landroid/content/Context;
    :goto_0
    if-nez v2, :cond_2

    .line 591
    :cond_0
    :goto_1
    return-void

    .line 492
    .end local v2           #context:Landroid/content/Context;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 497
    .restart local v2       #context:Landroid/content/Context;
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    const-wide/16 v12, 0x0

    #setter for: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->totalMediaSize:J
    invoke-static {v11, v12, v13}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$1402(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;J)J

    .line 499
    const/4 v6, 0x0

    .local v6, i:I
    :goto_2
    sget-object v11, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->sMediaCategories:[Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory$MediaCategory;

    array-length v11, v11

    if-ge v6, v11, :cond_5

    .line 500
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    #getter for: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mIsPrimary:Z
    invoke-static {v11}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$1000(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 501
    sget-object v11, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->sMediaCategories:[Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory$MediaCategory;

    aget-object v11, v11, v6

    iget-object v4, v11, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory$MediaCategory;->mDirPaths:[Ljava/lang/String;

    .line 502
    .local v4, dirs:[Ljava/lang/String;
    array-length v8, v4

    .line 503
    .local v8, length:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    #getter for: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mMediaSizes:[J
    invoke-static {v11}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$1500(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;)[J

    move-result-object v11

    const-wide/16 v12, 0x0

    aput-wide v12, v11, v6

    .line 504
    const/4 v3, 0x0

    .local v3, d:I
    :goto_3
    if-ge v3, v8, :cond_4

    .line 505
    aget-object v9, v4, v3

    .line 506
    .local v9, path:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    #getter for: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mMediaSizes:[J
    invoke-static {v11}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$1500(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;)[J

    move-result-object v11

    aget-wide v12, v11, v6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    move-object/from16 v0, p1

    #calls: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->getDirectorySize(Lcom/android/internal/app/IMediaContainerService;Ljava/lang/String;)J
    invoke-static {v14, v0, v9}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$1600(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;Lcom/android/internal/app/IMediaContainerService;Ljava/lang/String;)J

    move-result-wide v14

    add-long/2addr v12, v14

    aput-wide v12, v11, v6

    .line 504
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 510
    .end local v3           #d:I
    .end local v4           #dirs:[Ljava/lang/String;
    .end local v8           #length:I
    .end local v9           #path:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    #getter for: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mMediaSizes:[J
    invoke-static {v11}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$1500(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;)[J

    move-result-object v11

    const-wide/16 v12, 0x0

    aput-wide v12, v11, v6

    .line 512
    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    #getter for: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mMediaSizes:[J
    invoke-static {v12}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$1500(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;)[J

    move-result-object v12

    aget-wide v12, v12, v6

    invoke-static {v11, v12, v13}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$1414(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;J)J

    .line 499
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 546
    :cond_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    #getter for: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mIsPrimary:Z
    invoke-static {v11}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$1000(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 547
    sget-object v11, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v11}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 549
    .local v5, downloadsPath:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    move-object/from16 v0, p1

    #calls: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->getDirectorySize(Lcom/android/internal/app/IMediaContainerService;Ljava/lang/String;)J
    invoke-static {v12, v0, v5}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$1600(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;Lcom/android/internal/app/IMediaContainerService;Ljava/lang/String;)J

    move-result-wide v12

    #setter for: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mDownloadsSize:J
    invoke-static {v11, v12, v13}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$1702(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;J)J

    .line 555
    .end local v5           #downloadsPath:Ljava/lang/String;
    :goto_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    const-wide/16 v12, 0x0

    #setter for: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mMiscSize:J
    invoke-static {v11, v12, v13}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$1102(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;J)J

    .line 556
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    #getter for: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mIsPrimary:Z
    invoke-static {v11}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$1000(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 557
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    move-object/from16 v0, p1

    #calls: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->measureSizesOfMisc(Lcom/android/internal/app/IMediaContainerService;)V
    invoke-static {v11, v0}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$1800(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;Lcom/android/internal/app/IMediaContainerService;)V

    .line 562
    :cond_6
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 563
    .local v10, pm:Landroid/content/pm/PackageManager;
    if-eqz v10, :cond_0

    .line 567
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    #getter for: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mIsPrimary:Z
    invoke-static {v11}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$1000(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;)Z

    move-result v11

    if-nez v11, :cond_7

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    #getter for: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mIsInternal:Z
    invoke-static {v11}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$400(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 568
    :cond_7
    const/16 v11, 0x2200

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    .line 575
    .local v1, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :goto_5
    if-eqz v1, :cond_b

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_b

    .line 577
    new-instance v11, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler$StatsObserver;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v12}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler$StatsObserver;-><init>(Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;Lcom/android/settings_ex/deviceinfo/StorageMeasurement$1;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->mStatsObserver:Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler$StatsObserver;

    .line 578
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->mStatsObserver:Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler$StatsObserver;

    #getter for: Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler$StatsObserver;->mAppsList:Ljava/util/List;
    invoke-static {v11}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler$StatsObserver;->access$2000(Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler$StatsObserver;)Ljava/util/List;

    move-result-object v12

    monitor-enter v12

    .line 579
    const/4 v6, 0x0

    :goto_6
    :try_start_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    if-ge v6, v11, :cond_a

    .line 580
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ApplicationInfo;

    .line 581
    .local v7, info:Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->mStatsObserver:Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler$StatsObserver;

    iget-object v13, v7, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v13}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler$StatsObserver;->queuePackageMeasurementLocked(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 579
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 551
    .end local v1           #apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v7           #info:Landroid/content/pm/ApplicationInfo;
    .end local v10           #pm:Landroid/content/pm/PackageManager;
    :cond_8
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    const-wide/16 v12, 0x0

    #setter for: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mDownloadsSize:J
    invoke-static {v11, v12, v13}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$1702(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;J)J

    goto :goto_4

    .line 572
    .restart local v10       #pm:Landroid/content/pm/PackageManager;
    :cond_9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .restart local v1       #apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    goto :goto_5

    .line 583
    :cond_a
    :try_start_1
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 585
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->requestQueuedMeasurementsLocked(Landroid/content/pm/PackageManager;)V

    goto/16 :goto_1

    .line 583
    :catchall_0
    move-exception v11

    :try_start_2
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v11

    .line 589
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->onInternalMeasurementComplete()V

    goto/16 :goto_1
.end method

.method private onInternalMeasurementComplete()V
    .locals 1

    .prologue
    .line 403
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 404
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 284
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 340
    :cond_0
    :goto_0
    return-void

    .line 286
    :pswitch_0
    iget-boolean v3, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->mMeasured:Z

    if-eqz v3, :cond_1

    .line 287
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    #calls: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->sendExactUpdate()V
    invoke-static {v3}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$200(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;)V

    goto :goto_0

    .line 291
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    move-object v0, v3

    .line 292
    .local v0, context:Landroid/content/Context;
    :cond_2
    if-eqz v0, :cond_0

    .line 296
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->measureApproximateStorage()V

    .line 298
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 299
    :try_start_0
    iget-boolean v3, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->mBound:Z

    if-eqz v3, :cond_3

    .line 300
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 301
    const/4 v3, 0x2

    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->mDefaultContainer:Lcom/android/internal/app/IMediaContainerService;

    invoke-virtual {p0, v3, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 307
    :goto_1
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 303
    :cond_3
    :try_start_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    sget-object v5, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 304
    .local v2, service:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->mDefContainerConn:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {v0, v2, v3, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 311
    .end local v0           #context:Landroid/content/Context;
    .end local v2           #service:Landroid/content/Intent;
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/app/IMediaContainerService;

    .line 312
    .local v1, imcs:Lcom/android/internal/app/IMediaContainerService;
    invoke-direct {p0, v1}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->measureApproximateStorage(Lcom/android/internal/app/IMediaContainerService;)V

    .line 313
    invoke-direct {p0, v1}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->measureExactStorage(Lcom/android/internal/app/IMediaContainerService;)V

    goto :goto_0

    .line 317
    .end local v1           #imcs:Lcom/android/internal/app/IMediaContainerService;
    :pswitch_2
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 318
    :try_start_2
    iget-boolean v3, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->mBound:Z

    if-eqz v3, :cond_6

    .line 319
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    move-object v0, v3

    .line 320
    .restart local v0       #context:Landroid/content/Context;
    :cond_4
    if-nez v0, :cond_5

    .line 321
    monitor-exit v4

    goto :goto_0

    .line 327
    .end local v0           #context:Landroid/content/Context;
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .line 324
    .restart local v0       #context:Landroid/content/Context;
    :cond_5
    const/4 v3, 0x0

    :try_start_3
    iput-boolean v3, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->mBound:Z

    .line 325
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->mDefContainerConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 327
    .end local v0           #context:Landroid/content/Context;
    :cond_6
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 331
    :pswitch_3
    iput-boolean v5, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->mMeasured:Z

    .line 332
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    #calls: Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->sendExactUpdate()V
    invoke-static {v3}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->access$200(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;)V

    goto :goto_0

    .line 336
    :pswitch_4
    iput-boolean v4, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->mMeasured:Z

    goto/16 :goto_0

    .line 284
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public requestQueuedMeasurementsLocked(Landroid/content/pm/PackageManager;)V
    .locals 5
    .parameter "pm"

    .prologue
    .line 348
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->mStatsObserver:Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler$StatsObserver;

    invoke-virtual {v3}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler$StatsObserver;->getAppsList()[Ljava/lang/String;

    move-result-object v1

    .line 349
    .local v1, appsList:[Ljava/lang/String;
    array-length v0, v1

    .line 350
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 351
    aget-object v3, v1, v2

    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->mStatsObserver:Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler$StatsObserver;

    invoke-virtual {p1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V

    .line 350
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 353
    :cond_0
    return-void
.end method
