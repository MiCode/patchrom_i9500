.class public Lcom/android/server/analytics/data/collection/LogCollectionManager;
.super Ljava/lang/Object;
.source "LogCollectionManager.java"

# interfaces
.implements Lcom/sec/analytics/data/collection/serviceif/LogCollector$LogCollectorCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/analytics/data/collection/LogCollectionManager$LogClient;
    }
.end annotation


# static fields
.field private static final ANALYTICS_FOLDER:Ljava/lang/String; = "/data/system/analytics/"

.field private static final APPLICATION_LOG_FILE:Ljava/lang/String; = "application.log"

.field private static final BROWSER_LOG_FILE:Ljava/lang/String; = "browser.log"

.field private static final INPUT_LOG_FILE:Ljava/lang/String; = "input.log"

.field public static final LINE_SEPARATOR:Ljava/lang/String; = null

.field private static final LOG_GROUPS:[I = null

.field private static final TAG:Ljava/lang/String; = "LogCollectionManager"

.field private static final mLogCollectorSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sec/analytics/data/collection/serviceif/LogCollector;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActiveGroups:I

.field private final mClientGroupMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/analytics/data/collection/LogCollectionManager$LogClient;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 112
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/analytics/data/collection/LogCollectionManager;->LOG_GROUPS:[I

    .line 118
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/analytics/data/collection/LogCollectionManager;->LINE_SEPARATOR:Ljava/lang/String;

    .line 121
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/analytics/data/collection/LogCollectionManager;->mLogCollectorSet:Ljava/util/Set;

    .line 124
    invoke-static {}, Lcom/android/server/analytics/data/collection/LogCollectionManager;->init()V

    .line 126
    sget-object v0, Lcom/android/server/analytics/data/collection/LogCollectionManager;->mLogCollectorSet:Ljava/util/Set;

    new-instance v1, Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector;

    invoke-direct {v1}, Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 127
    sget-object v0, Lcom/android/server/analytics/data/collection/LogCollectionManager;->mLogCollectorSet:Ljava/util/Set;

    new-instance v1, Lcom/android/server/analytics/data/collection/input/InputEventDataCollector;

    invoke-direct {v1}, Lcom/android/server/analytics/data/collection/input/InputEventDataCollector;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 128
    return-void

    .line 112
    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/analytics/data/collection/LogCollectionManager;->mClientGroupMap:Ljava/util/Map;

    .line 196
    iput-object p1, p0, Lcom/android/server/analytics/data/collection/LogCollectionManager;->mContext:Landroid/content/Context;

    .line 197
    invoke-static {}, Lcom/android/server/analytics/data/collection/LogCollectionManager;->init()V

    .line 198
    return-void
.end method

.method static synthetic access$000(Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-static {p0}, Lcom/android/server/analytics/data/collection/LogCollectionManager;->closeOutputStream(Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/analytics/data/collection/LogCollectionManager;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/server/analytics/data/collection/LogCollectionManager;->mClientGroupMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/analytics/data/collection/LogCollectionManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/server/analytics/data/collection/LogCollectionManager;->reconcileLogCollection()V

    return-void
.end method

.method private static closeOutputStream(Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;)V
    .locals 2
    .parameter "acos"

    .prologue
    .line 336
    :try_start_0
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->sync()V
    :try_end_1
    .catch Ljava/io/SyncFailedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 348
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 352
    :goto_2
    return-void

    .line 337
    :catch_0
    move-exception v0

    .line 338
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 342
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 343
    .local v0, e:Ljava/io/SyncFailedException;
    invoke-virtual {v0}, Ljava/io/SyncFailedException;->printStackTrace()V

    goto :goto_1

    .line 344
    .end local v0           #e:Ljava/io/SyncFailedException;
    :catch_2
    move-exception v0

    .line 345
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 349
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 350
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method private static getMissingGroups(II)I
    .locals 2
    .parameter "existing"
    .parameter "fresh"

    .prologue
    .line 155
    and-int v0, p0, p1

    .line 156
    .local v0, mask:I
    xor-int v1, v0, p1

    return v1
.end method

.method private declared-synchronized getOutputStreams(I)Ljava/util/Set;
    .locals 5
    .parameter "logGroup"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set",
            "<",
            "Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 226
    monitor-enter p0

    :try_start_0
    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    .line 227
    .local v3, set:Ljava/util/Set;,"Ljava/util/Set<Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;>;"
    iget-object v4, p0, Lcom/android/server/analytics/data/collection/LogCollectionManager;->mClientGroupMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/analytics/data/collection/LogCollectionManager$LogClient;

    .line 228
    .local v1, client:Lcom/android/server/analytics/data/collection/LogCollectionManager$LogClient;
    #getter for: Lcom/android/server/analytics/data/collection/LogCollectionManager$LogClient;->files:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/android/server/analytics/data/collection/LogCollectionManager$LogClient;->access$300(Lcom/android/server/analytics/data/collection/LogCollectionManager$LogClient;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    .line 229
    .local v0, acos:Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;
    if-eqz v0, :cond_0

    .line 230
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 226
    .end local v0           #acos:Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;
    .end local v1           #client:Lcom/android/server/analytics/data/collection/LogCollectionManager$LogClient;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #set:Ljava/util/Set;,"Ljava/util/Set<Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 232
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #set:Ljava/util/Set;,"Ljava/util/Set<Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;>;"
    :cond_1
    monitor-exit p0

    return-object v3
.end method

.method private static init()V
    .locals 3

    .prologue
    .line 216
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/analytics/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 218
    .local v0, directory:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 219
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 221
    :cond_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Finished creating directories"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 222
    return-void
.end method

.method private static isValidLogGroups(I)I
    .locals 5
    .parameter "logGroups"

    .prologue
    .line 166
    sget-object v0, Lcom/android/server/analytics/data/collection/LogCollectionManager;->LOG_GROUPS:[I

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget v1, v0, v2

    .line 167
    .local v1, group:I
    xor-int/lit8 v4, v1, -0x1

    and-int/2addr p0, v4

    .line 166
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 169
    .end local v1           #group:I
    :cond_0
    return p0
.end method

.method private static logGroupCount(I)I
    .locals 6
    .parameter "logGroups"

    .prologue
    .line 179
    const/4 v1, 0x0

    .line 180
    .local v1, count:I
    sget-object v0, Lcom/android/server/analytics/data/collection/LogCollectionManager;->LOG_GROUPS:[I

    .local v0, arr$:[I
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget v2, v0, v3

    .line 181
    .local v2, group:I
    and-int v5, v2, p0

    if-eqz v5, :cond_0

    .line 182
    add-int/lit8 v1, v1, 0x1

    .line 180
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 184
    .end local v2           #group:I
    :cond_1
    return v1
.end method

.method private declared-synchronized reconcileLogCollection()V
    .locals 8

    .prologue
    .line 238
    monitor-enter p0

    const/4 v4, 0x0

    .line 239
    .local v4, newEffGrps:I
    :try_start_0
    iget-object v7, p0, Lcom/android/server/analytics/data/collection/LogCollectionManager;->mClientGroupMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/analytics/data/collection/LogCollectionManager$LogClient;

    .line 240
    .local v1, client:Lcom/android/server/analytics/data/collection/LogCollectionManager$LogClient;
    iget v7, v1, Lcom/android/server/analytics/data/collection/LogCollectionManager$LogClient;->logGroups:I

    or-int/2addr v4, v7

    goto :goto_0

    .line 243
    .end local v1           #client:Lcom/android/server/analytics/data/collection/LogCollectionManager$LogClient;
    :cond_0
    iget v7, p0, Lcom/android/server/analytics/data/collection/LogCollectionManager;->mActiveGroups:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v4, v7, :cond_1

    .line 274
    :goto_1
    monitor-exit p0

    return-void

    .line 256
    :cond_1
    :try_start_1
    sget-object v7, Lcom/android/server/analytics/data/collection/LogCollectionManager;->mLogCollectorSet:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/analytics/data/collection/serviceif/LogCollector;

    .line 257
    .local v2, collector:Lcom/sec/analytics/data/collection/serviceif/LogCollector;
    invoke-interface {v2}, Lcom/sec/analytics/data/collection/serviceif/LogCollector;->getSupportedLogGroups()I

    move-result v6

    .line 258
    .local v6, supported:I
    invoke-interface {v2}, Lcom/sec/analytics/data/collection/serviceif/LogCollector;->getActiveLogGroups()I

    move-result v0

    .line 260
    .local v0, active:I
    and-int v5, v4, v6

    .line 262
    .local v5, start:I
    if-nez v5, :cond_3

    if-eqz v0, :cond_3

    .line 263
    invoke-interface {v2, p0}, Lcom/sec/analytics/data/collection/serviceif/LogCollector;->unregisterLogCollectorCallback(Lcom/sec/analytics/data/collection/serviceif/LogCollector$LogCollectorCallback;)V

    .line 264
    invoke-interface {v2}, Lcom/sec/analytics/data/collection/serviceif/LogCollector;->stopLogCollection()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 238
    .end local v0           #active:I
    .end local v2           #collector:Lcom/sec/analytics/data/collection/serviceif/LogCollector;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #start:I
    .end local v6           #supported:I
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 265
    .restart local v0       #active:I
    .restart local v2       #collector:Lcom/sec/analytics/data/collection/serviceif/LogCollector;
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v5       #start:I
    .restart local v6       #supported:I
    :cond_3
    if-eqz v5, :cond_4

    if-nez v0, :cond_4

    .line 266
    :try_start_2
    invoke-interface {v2, p0}, Lcom/sec/analytics/data/collection/serviceif/LogCollector;->registerLogCollectorCallback(Lcom/sec/analytics/data/collection/serviceif/LogCollector$LogCollectorCallback;)V

    .line 267
    invoke-interface {v2, v5}, Lcom/sec/analytics/data/collection/serviceif/LogCollector;->startLogCollection(I)V

    goto :goto_2

    .line 268
    :cond_4
    if-eq v5, v0, :cond_2

    .line 269
    invoke-interface {v2, v5}, Lcom/sec/analytics/data/collection/serviceif/LogCollector;->restartLogCollection(I)V

    goto :goto_2

    .line 273
    .end local v0           #active:I
    .end local v2           #collector:Lcom/sec/analytics/data/collection/serviceif/LogCollector;
    .end local v5           #start:I
    .end local v6           #supported:I
    :cond_5
    iput v4, p0, Lcom/android/server/analytics/data/collection/LogCollectionManager;->mActiveGroups:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized disableLogCollection(Lcom/sec/analytics/data/collection/serviceif/IDataCollectionManagerCb;ILandroid/os/ParcelFileDescriptor;)V
    .locals 8
    .parameter "cb"
    .parameter "logGroups"
    .parameter "file"

    .prologue
    .line 299
    monitor-enter p0

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 300
    :cond_0
    :try_start_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Arguments are either null or 0."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 303
    :cond_1
    :try_start_1
    invoke-static {p2}, Lcom/android/server/analytics/data/collection/LogCollectionManager;->isValidLogGroups(I)I

    move-result v3

    .local v3, invalid:I
    if-eqz v3, :cond_2

    .line 304
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " log groups not supported."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 306
    :cond_2
    invoke-static {p2}, Lcom/android/server/analytics/data/collection/LogCollectionManager;->logGroupCount(I)I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_3

    .line 307
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Only single log group should be disabled at a time."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 311
    :cond_3
    iget-object v5, p0, Lcom/android/server/analytics/data/collection/LogCollectionManager;->mClientGroupMap:Ljava/util/Map;

    invoke-interface {p1}, Lcom/sec/analytics/data/collection/serviceif/IDataCollectionManagerCb;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 312
    iget-object v5, p0, Lcom/android/server/analytics/data/collection/LogCollectionManager;->mClientGroupMap:Ljava/util/Map;

    invoke-interface {p1}, Lcom/sec/analytics/data/collection/serviceif/IDataCollectionManagerCb;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/analytics/data/collection/LogCollectionManager$LogClient;

    .line 313
    .local v1, client:Lcom/android/server/analytics/data/collection/LogCollectionManager$LogClient;
    iget v2, v1, Lcom/android/server/analytics/data/collection/LogCollectionManager$LogClient;->logGroups:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 315
    .local v2, existingGroups:I
    and-int v4, v2, p2

    .line 316
    .local v4, stopGroups:I
    if-nez v4, :cond_5

    .line 332
    .end local v1           #client:Lcom/android/server/analytics/data/collection/LogCollectionManager$LogClient;
    .end local v2           #existingGroups:I
    .end local v4           #stopGroups:I
    :cond_4
    :goto_0
    monitor-exit p0

    return-void

    .line 319
    .restart local v1       #client:Lcom/android/server/analytics/data/collection/LogCollectionManager$LogClient;
    .restart local v2       #existingGroups:I
    .restart local v4       #stopGroups:I
    :cond_5
    xor-int/lit8 v5, p2, -0x1

    and-int/2addr v5, v2

    :try_start_2
    iput v5, v1, Lcom/android/server/analytics/data/collection/LogCollectionManager$LogClient;->logGroups:I

    .line 321
    #getter for: Lcom/android/server/analytics/data/collection/LogCollectionManager$LogClient;->files:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/android/server/analytics/data/collection/LogCollectionManager$LogClient;->access$300(Lcom/android/server/analytics/data/collection/LogCollectionManager$LogClient;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    .line 322
    .local v0, acos:Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;
    invoke-static {v0}, Lcom/android/server/analytics/data/collection/LogCollectionManager;->closeOutputStream(Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;)V

    .line 323
    #getter for: Lcom/android/server/analytics/data/collection/LogCollectionManager$LogClient;->files:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/android/server/analytics/data/collection/LogCollectionManager$LogClient;->access$300(Lcom/android/server/analytics/data/collection/LogCollectionManager$LogClient;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 325
    iget v5, v1, Lcom/android/server/analytics/data/collection/LogCollectionManager$LogClient;->logGroups:I

    if-nez v5, :cond_6

    .line 326
    invoke-interface {p1}, Lcom/sec/analytics/data/collection/serviceif/IDataCollectionManagerCb;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v1, v6}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 327
    iget-object v5, p0, Lcom/android/server/analytics/data/collection/LogCollectionManager;->mClientGroupMap:Ljava/util/Map;

    invoke-interface {p1}, Lcom/sec/analytics/data/collection/serviceif/IDataCollectionManagerCb;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    :cond_6
    invoke-direct {p0}, Lcom/android/server/analytics/data/collection/LogCollectionManager;->reconcileLogCollection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized enableLogCollection(Lcom/sec/analytics/data/collection/serviceif/IDataCollectionManagerCb;ILandroid/os/ParcelFileDescriptor;)V
    .locals 10
    .parameter "cb"
    .parameter "logGroups"
    .parameter "file"

    .prologue
    .line 362
    monitor-enter p0

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 363
    :cond_0
    :try_start_0
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Arguments are either null or 0."

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 362
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 366
    :cond_1
    :try_start_1
    invoke-static {p2}, Lcom/android/server/analytics/data/collection/LogCollectionManager;->isValidLogGroups(I)I

    move-result v4

    .local v4, invalid:I
    if-eqz v4, :cond_2

    .line 367
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " log groups not supported."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 369
    :cond_2
    invoke-static {p2}, Lcom/android/server/analytics/data/collection/LogCollectionManager;->logGroupCount(I)I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_3

    .line 370
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Only single log group should be enabled at a time."

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 374
    :cond_3
    :try_start_2
    new-instance v6, Ljava/lang/SecurityManager;

    invoke-direct {v6}, Ljava/lang/SecurityManager;-><init>()V

    .line 375
    .local v6, sm:Ljava/lang/SecurityManager;
    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/SecurityManager;->checkWrite(Ljava/io/FileDescriptor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0

    .line 382
    :try_start_3
    iget-object v7, p0, Lcom/android/server/analytics/data/collection/LogCollectionManager;->mClientGroupMap:Ljava/util/Map;

    invoke-interface {p1}, Lcom/sec/analytics/data/collection/serviceif/IDataCollectionManagerCb;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 383
    iget-object v7, p0, Lcom/android/server/analytics/data/collection/LogCollectionManager;->mClientGroupMap:Ljava/util/Map;

    invoke-interface {p1}, Lcom/sec/analytics/data/collection/serviceif/IDataCollectionManagerCb;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/analytics/data/collection/LogCollectionManager$LogClient;

    .line 384
    .local v0, client:Lcom/android/server/analytics/data/collection/LogCollectionManager$LogClient;
    iget v3, v0, Lcom/android/server/analytics/data/collection/LogCollectionManager$LogClient;->logGroups:I

    .line 386
    .local v3, existingGroups:I
    invoke-static {v3, p2}, Lcom/android/server/analytics/data/collection/LogCollectionManager;->getMissingGroups(II)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v7

    if-nez v7, :cond_4

    .line 409
    .end local v3           #existingGroups:I
    :goto_0
    monitor-exit p0

    return-void

    .line 376
    .end local v0           #client:Lcom/android/server/analytics/data/collection/LogCollectionManager$LogClient;
    .end local v6           #sm:Ljava/lang/SecurityManager;
    :catch_0
    move-exception v2

    .line 377
    .local v2, ex:Ljava/lang/SecurityException;
    :try_start_4
    const-string v7, "LogCollectionManager"

    const-string v8, "can\'t write to file descriptor"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    throw v2

    .line 390
    .end local v2           #ex:Ljava/lang/SecurityException;
    .restart local v0       #client:Lcom/android/server/analytics/data/collection/LogCollectionManager$LogClient;
    .restart local v3       #existingGroups:I
    .restart local v6       #sm:Ljava/lang/SecurityManager;
    :cond_4
    invoke-static {v3, p2}, Lcom/android/server/analytics/data/collection/LogCollectionManager;->getMissingGroups(II)I

    move-result v5

    .line 391
    .local v5, missingGroups:I
    or-int v7, v3, v5

    iput v7, v0, Lcom/android/server/analytics/data/collection/LogCollectionManager$LogClient;->logGroups:I

    .line 392
    #getter for: Lcom/android/server/analytics/data/collection/LogCollectionManager$LogClient;->files:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/server/analytics/data/collection/LogCollectionManager$LogClient;->access$300(Lcom/android/server/analytics/data/collection/LogCollectionManager$LogClient;)Landroid/util/SparseArray;

    move-result-object v7

    new-instance v8, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v8, p3}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-virtual {v7, p2, v8}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 393
    iget-object v7, p0, Lcom/android/server/analytics/data/collection/LogCollectionManager;->mClientGroupMap:Ljava/util/Map;

    invoke-interface {p1}, Lcom/sec/analytics/data/collection/serviceif/IDataCollectionManagerCb;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    invoke-direct {p0}, Lcom/android/server/analytics/data/collection/LogCollectionManager;->reconcileLogCollection()V

    goto :goto_0

    .line 398
    .end local v0           #client:Lcom/android/server/analytics/data/collection/LogCollectionManager$LogClient;
    .end local v3           #existingGroups:I
    .end local v5           #missingGroups:I
    :cond_5
    new-instance v0, Lcom/android/server/analytics/data/collection/LogCollectionManager$LogClient;

    invoke-interface {p1}, Lcom/sec/analytics/data/collection/serviceif/IDataCollectionManagerCb;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-direct {v0, p0, v7}, Lcom/android/server/analytics/data/collection/LogCollectionManager$LogClient;-><init>(Lcom/android/server/analytics/data/collection/LogCollectionManager;Landroid/os/IBinder;)V

    .line 399
    .restart local v0       #client:Lcom/android/server/analytics/data/collection/LogCollectionManager$LogClient;
    iput p2, v0, Lcom/android/server/analytics/data/collection/LogCollectionManager$LogClient;->logGroups:I

    .line 400
    #getter for: Lcom/android/server/analytics/data/collection/LogCollectionManager$LogClient;->files:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/server/analytics/data/collection/LogCollectionManager$LogClient;->access$300(Lcom/android/server/analytics/data/collection/LogCollectionManager$LogClient;)Landroid/util/SparseArray;

    move-result-object v7

    new-instance v8, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v8, p3}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-virtual {v7, p2, v8}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 401
    iget-object v7, p0, Lcom/android/server/analytics/data/collection/LogCollectionManager;->mClientGroupMap:Ljava/util/Map;

    invoke-interface {p1}, Lcom/sec/analytics/data/collection/serviceif/IDataCollectionManagerCb;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 403
    :try_start_5
    invoke-interface {p1}, Lcom/sec/analytics/data/collection/serviceif/IDataCollectionManagerCb;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v7, v0, v8}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 407
    :goto_1
    :try_start_6
    invoke-direct {p0}, Lcom/android/server/analytics/data/collection/LogCollectionManager;->reconcileLogCollection()V

    goto :goto_0

    .line 404
    :catch_1
    move-exception v1

    .line 405
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1
.end method

.method public processLog(ILjava/lang/String;)V
    .locals 5
    .parameter "logGroup"
    .parameter "log"

    .prologue
    .line 413
    invoke-direct {p0, p1}, Lcom/android/server/analytics/data/collection/LogCollectionManager;->getOutputStreams(I)Ljava/util/Set;

    move-result-object v3

    .line 415
    .local v3, outputStreams:Ljava/util/Set;,"Ljava/util/Set<Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    .line 417
    .local v0, acos:Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->write([B)V

    .line 418
    sget-object v4, Lcom/android/server/analytics/data/collection/LogCollectionManager;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 419
    :catch_0
    move-exception v1

    .line 420
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 423
    .end local v0           #acos:Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;
    .end local v1           #e:Ljava/io/IOException;
    :cond_0
    return-void
.end method
