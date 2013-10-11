.class public Lcom/sec/knox/container/contentprovider/ContainerStorageHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "ContainerStorageHelper.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field static mInstance:Lcom/sec/knox/container/contentprovider/ContainerStorageHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "ContainerStorageHelper"

    sput-object v0, Lcom/sec/knox/container/contentprovider/ContainerStorageHelper;->TAG:Ljava/lang/String;

    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/knox/container/contentprovider/ContainerStorageHelper;->mInstance:Lcom/sec/knox/container/contentprovider/ContainerStorageHelper;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/database/DatabaseErrorHandler;)V
    .locals 6
    .parameter "context"
    .parameter "mEcppDbErrorHandler"

    .prologue
    .line 46
    const-string v2, "/data/system/container/databases/container.db"

    const/4 v3, 0x0

    const/16 v4, 0x8

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)V

    .line 47
    sget-object v0, Lcom/sec/knox/container/contentprovider/ContainerStorageHelper;->TAG:Ljava/lang/String;

    const-string v1, "Created container DB Helper with version 8"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Landroid/database/DatabaseErrorHandler;)Lcom/sec/knox/container/contentprovider/ContainerStorageHelper;
    .locals 6
    .parameter "context"
    .parameter "mEcppDbErrorHandler"

    .prologue
    .line 25
    const-class v3, Lcom/sec/knox/container/contentprovider/ContainerStorageHelper;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/sec/knox/container/contentprovider/ContainerStorageHelper;->mInstance:Lcom/sec/knox/container/contentprovider/ContainerStorageHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 27
    :try_start_1
    new-instance v0, Ljava/io/File;

    const-string v2, "/data/system/container/databases/"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 28
    .local v0, containerDatabasePath:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    .line 29
    sget-object v2, Lcom/sec/knox/container/contentprovider/ContainerStorageHelper;->TAG:Ljava/lang/String;

    const-string v4, "Creating container database directory"

    invoke-static {v2, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 35
    .end local v0           #containerDatabasePath:Ljava/io/File;
    :cond_0
    :goto_0
    :try_start_2
    new-instance v2, Lcom/sec/knox/container/contentprovider/ContainerStorageHelper;

    invoke-direct {v2, p0, p1}, Lcom/sec/knox/container/contentprovider/ContainerStorageHelper;-><init>(Landroid/content/Context;Landroid/database/DatabaseErrorHandler;)V

    sput-object v2, Lcom/sec/knox/container/contentprovider/ContainerStorageHelper;->mInstance:Lcom/sec/knox/container/contentprovider/ContainerStorageHelper;

    .line 37
    :cond_1
    sget-object v2, Lcom/sec/knox/container/contentprovider/ContainerStorageHelper;->mInstance:Lcom/sec/knox/container/contentprovider/ContainerStorageHelper;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v3

    return-object v2

    .line 32
    :catch_0
    move-exception v1

    .line 33
    .local v1, ex:Ljava/lang/Exception;
    :try_start_3
    sget-object v2, Lcom/sec/knox/container/contentprovider/ContainerStorageHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Create container database directory exception. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 25
    .end local v1           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1

    .prologue
    .line 42
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    monitor-exit p0

    return-void

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 52
    sget-object v0, Lcom/sec/knox/container/contentprovider/ContainerStorageHelper;->TAG:Ljava/lang/String;

    const-string v1, "onCreate container DB Helper"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    sget-object v0, Lcom/sec/knox/container/contentprovider/DBConstants;->createTableContainerAssociatedPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 54
    sget-object v0, Lcom/sec/knox/container/contentprovider/DBConstants;->createTableContainerActive:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 55
    sget-object v0, Lcom/sec/knox/container/contentprovider/DBConstants;->createTableCertificateManager:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 56
    sget-object v0, Lcom/sec/knox/container/contentprovider/ContainerStorageHelper;->TAG:Ljava/lang/String;

    const-string v1, "onCreate container DB Helper end"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 62
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 4
    .parameter "db"
    .parameter "oldVer"
    .parameter "newVer"

    .prologue
    .line 67
    sget-object v1, Lcom/sec/knox/container/contentprovider/ContainerStorageHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUpgrade container DB Helper from version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const/4 v1, 0x2

    if-ge p2, v1, :cond_0

    .line 69
    sget-object v1, Lcom/sec/knox/container/contentprovider/DBConstants;->upgradeTableContainerActive:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 71
    :cond_0
    const/4 v1, 0x5

    if-ge p2, v1, :cond_1

    .line 72
    sget-object v1, Lcom/sec/knox/container/contentprovider/DBConstants;->upgradeTableContainerActivePassExpired:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 75
    :try_start_0
    sget-object v1, Lcom/sec/knox/container/contentprovider/DBConstants;->upgradeTableContainerActiveAdminUid:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_0
    :try_start_1
    sget-object v1, Lcom/sec/knox/container/contentprovider/DBConstants;->upgradeTableContainerLockType:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 87
    :goto_1
    :try_start_2
    sget-object v1, Lcom/sec/knox/container/contentprovider/DBConstants;->upgradeTableContainerType:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 92
    :cond_1
    :goto_2
    const/4 v1, 0x6

    if-ge p2, v1, :cond_2

    .line 93
    sget-object v1, Lcom/sec/knox/container/contentprovider/DBConstants;->upgradeTableContainerActiveFailedPassAttemps:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 94
    sget-object v1, Lcom/sec/knox/container/contentprovider/DBConstants;->createTableCertificateManager:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 96
    :cond_2
    const/4 v1, 0x7

    if-ge p2, v1, :cond_3

    .line 98
    :try_start_3
    sget-object v1, Lcom/sec/knox/container/contentprovider/DBConstants;->upgradeTableScreenlock:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    .line 103
    :cond_3
    :goto_3
    const/16 v1, 0x8

    if-ge p2, v1, :cond_4

    .line 105
    :try_start_4
    sget-object v1, Lcom/sec/knox/container/contentprovider/DBConstants;->upgradeTableFirmwareVersion:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    .line 110
    :cond_4
    :goto_4
    return-void

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, e:Ljava/lang/Throwable;
    sget-object v1, Lcom/sec/knox/container/contentprovider/ContainerStorageHelper;->TAG:Ljava/lang/String;

    const-string v2, "onUpgrade: AdminUid field was already created"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 82
    .end local v0           #e:Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 83
    .restart local v0       #e:Ljava/lang/Throwable;
    sget-object v1, Lcom/sec/knox/container/contentprovider/ContainerStorageHelper;->TAG:Ljava/lang/String;

    const-string v2, "onUpgrade: Locktype field was already created"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 88
    .end local v0           #e:Ljava/lang/Throwable;
    :catch_2
    move-exception v0

    .line 89
    .restart local v0       #e:Ljava/lang/Throwable;
    sget-object v1, Lcom/sec/knox/container/contentprovider/ContainerStorageHelper;->TAG:Ljava/lang/String;

    const-string v2, "onUpgrade: Locktype field was already created"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 99
    .end local v0           #e:Ljava/lang/Throwable;
    :catch_3
    move-exception v0

    .line 100
    .restart local v0       #e:Ljava/lang/Throwable;
    sget-object v1, Lcom/sec/knox/container/contentprovider/ContainerStorageHelper;->TAG:Ljava/lang/String;

    const-string v2, "onUpgrade: Screenlock field was already created"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 106
    .end local v0           #e:Ljava/lang/Throwable;
    :catch_4
    move-exception v0

    .line 107
    .restart local v0       #e:Ljava/lang/Throwable;
    sget-object v1, Lcom/sec/knox/container/contentprovider/ContainerStorageHelper;->TAG:Ljava/lang/String;

    const-string v2, "onUpgrade: Firmware version was already created"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method
