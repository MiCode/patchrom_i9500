.class public Lcom/nuance/swype/connect/util/InstallMetadata;
.super Ljava/lang/Object;
.source "InstallMetadata.java"


# static fields
.field public static final INSTALL_AVAILABLE:I = 0x0

.field public static final INSTALL_CANCELED:I = 0x8

.field public static final INSTALL_DOWNLOAD:I = 0x3

.field public static final INSTALL_DOWNLOAD_COMPLETE:I = 0x4

.field public static final INSTALL_DOWNLOAD_VERIFIED:I = 0x5

.field public static final INSTALL_FAILED:I = 0x9

.field public static final INSTALL_INSTALLED:I = 0x7

.field public static final INSTALL_PENDING:I = 0x1

.field public static final INSTALL_PENDING_LICENSING:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final INSTALL_REMOVED:I = 0xa

.field public static final INSTALL_REQUEST:I = 0x2

.field public static final INSTALL_UNKNOWN:I = 0xb


# instance fields
.field private context:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/nuance/swype/connect/ConnectClient;",
            ">;"
        }
    .end annotation
.end field

.field private dataStoreKey:Ljava/lang/String;

.field private flagTransaction:Z

.field private installMetadata:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private metadataChanged:Z

.field private rwLock:[I

.field private final transactionLock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method public constructor <init>(Lcom/nuance/swype/connect/ConnectClient;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "persistentStorageKey"

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/nuance/swype/connect/util/InstallMetadata;->rwLock:[I

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/connect/util/InstallMetadata;->installMetadata:Ljava/util/HashMap;

    .line 111
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/connect/util/InstallMetadata;->transactionLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 122
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/nuance/swype/connect/util/InstallMetadata;->context:Ljava/lang/ref/WeakReference;

    .line 123
    iput-object p2, p0, Lcom/nuance/swype/connect/util/InstallMetadata;->dataStoreKey:Ljava/lang/String;

    .line 124
    invoke-direct {p0}, Lcom/nuance/swype/connect/util/InstallMetadata;->loadMetadata()V

    .line 125
    return-void
.end method

.method private getPackageList(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter
    .parameter "rowSeparator"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 779
    .local p1, steps:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 780
    .local v2, list:Ljava/lang/StringBuilder;
    const-string v4, ""

    .line 781
    .local v4, separator:Ljava/lang/String;
    if-nez p2, :cond_0

    .line 782
    const-string p2, ","

    .line 784
    :cond_0
    invoke-virtual {p0, p1}, Lcom/nuance/swype/connect/util/InstallMetadata;->listFromSteps(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 785
    .local v3, matches:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 786
    .local v1, lang:Ljava/lang/String;
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 787
    move-object v4, p2

    goto :goto_0

    .line 789
    .end local v1           #lang:Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private loadMetadata()V
    .locals 3

    .prologue
    .line 179
    iget-object v2, p0, Lcom/nuance/swype/connect/util/InstallMetadata;->rwLock:[I

    monitor-enter v2

    .line 180
    :try_start_0
    iget-object v1, p0, Lcom/nuance/swype/connect/util/InstallMetadata;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/connect/ConnectClient;

    .line 181
    .local v0, client:Lcom/nuance/swype/connect/ConnectClient;
    if-eqz v0, :cond_0

    .line 182
    invoke-direct {p0, v0}, Lcom/nuance/swype/connect/util/InstallMetadata;->loadPersistentData(Lcom/nuance/swype/connect/ConnectClient;)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/connect/util/InstallMetadata;->installMetadata:Ljava/util/HashMap;

    .line 184
    :cond_0
    monitor-exit v2

    .line 185
    return-void

    .line 184
    .end local v0           #client:Lcom/nuance/swype/connect/ConnectClient;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private loadPersistentData(Lcom/nuance/swype/connect/ConnectClient;)Ljava/util/HashMap;
    .locals 5
    .parameter "client"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/swype/connect/ConnectClient;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 198
    invoke-virtual {p1}, Lcom/nuance/swype/connect/ConnectClient;->getDataStore()Lcom/nuance/swype/connect/store/PersistentDataStore;

    move-result-object v1

    .line 199
    .local v1, store:Lcom/nuance/swype/connect/store/PersistentDataStore;
    iget-object v3, p0, Lcom/nuance/swype/connect/util/InstallMetadata;->dataStoreKey:Ljava/lang/String;

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Lcom/nuance/swype/connect/store/PersistentDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/connect/util/Data;->unserializeObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 200
    .local v2, temp:Ljava/lang/Object;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 201
    .local v0, meta:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz v2, :cond_0

    move-object v0, v2

    .line 202
    check-cast v0, Ljava/util/HashMap;

    .line 204
    :cond_0
    return-object v0
.end method

.method private propWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .parameter "packageName"
    .parameter "property"
    .parameter "value"
    .parameter "save"

    .prologue
    .line 408
    iget-object v2, p0, Lcom/nuance/swype/connect/util/InstallMetadata;->rwLock:[I

    monitor-enter v2

    .line 409
    :try_start_0
    iget-object v1, p0, Lcom/nuance/swype/connect/util/InstallMetadata;->installMetadata:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 411
    invoke-virtual {p0, p1}, Lcom/nuance/swype/connect/util/InstallMetadata;->getProps(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 412
    .local v0, props:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    iget-object v1, p0, Lcom/nuance/swype/connect/util/InstallMetadata;->installMetadata:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    .end local v0           #props:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 416
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nuance/swype/connect/util/InstallMetadata;->metadataChanged:Z

    .line 417
    if-eqz p4, :cond_1

    .line 418
    invoke-virtual {p0}, Lcom/nuance/swype/connect/util/InstallMetadata;->saveMetadata()V

    .line 420
    :cond_1
    return-void

    .line 415
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private testPackageInstallsInRange(II)Z
    .locals 7
    .parameter "start"
    .parameter "end"

    .prologue
    .line 742
    const/4 v2, 0x0

    .line 743
    .local v2, inRange:Z
    if-le p1, p2, :cond_0

    .line 744
    move v4, p1

    .line 745
    .local v4, tmp:I
    move p1, p2

    .line 746
    move p2, v4

    .line 748
    .end local v4           #tmp:I
    :cond_0
    iget-object v5, p0, Lcom/nuance/swype/connect/util/InstallMetadata;->installMetadata:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 749
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    const-string v6, "STEP"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 750
    .local v3, step:I
    if-lt v3, p1, :cond_1

    if-gt v3, p2, :cond_1

    .line 751
    const/4 v2, 0x1

    goto :goto_0

    .line 754
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v3           #step:I
    :cond_2
    return v2
.end method


# virtual methods
.method public addPackage(Ljava/lang/String;)Z
    .locals 6
    .parameter "packageName"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 230
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 231
    .local v0, props:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/nuance/swype/connect/util/InstallMetadata;->installMetadata:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 243
    :goto_0
    return v1

    .line 236
    :cond_0
    iget-object v3, p0, Lcom/nuance/swype/connect/util/InstallMetadata;->rwLock:[I

    monitor-enter v3

    .line 237
    :try_start_0
    const-string v1, "STARTED"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    const-string v1, "STEP"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    iget-object v1, p0, Lcom/nuance/swype/connect/util/InstallMetadata;->installMetadata:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    iput-boolean v2, p0, Lcom/nuance/swype/connect/util/InstallMetadata;->metadataChanged:Z

    .line 242
    invoke-virtual {p0}, Lcom/nuance/swype/connect/util/InstallMetadata;->saveMetadata()V

    move v1, v2

    .line 243
    goto :goto_0

    .line 240
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public allPackages()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 270
    iget-object v0, p0, Lcom/nuance/swype/connect/util/InstallMetadata;->installMetadata:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public beginTransaction()V
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/connect/util/InstallMetadata;->flagTransaction:Z

    .line 148
    iget-object v0, p0, Lcom/nuance/swype/connect/util/InstallMetadata;->transactionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 149
    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 819
    iget-object v1, p0, Lcom/nuance/swype/connect/util/InstallMetadata;->rwLock:[I

    monitor-enter v1

    .line 820
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/connect/util/InstallMetadata;->installMetadata:Ljava/util/HashMap;

    .line 821
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 822
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/connect/util/InstallMetadata;->metadataChanged:Z

    .line 823
    invoke-virtual {p0}, Lcom/nuance/swype/connect/util/InstallMetadata;->saveMetadata()V

    .line 824
    return-void

    .line 821
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public commitTransaction()V
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/connect/util/InstallMetadata;->flagTransaction:Z

    .line 157
    invoke-virtual {p0}, Lcom/nuance/swype/connect/util/InstallMetadata;->saveMetadata()V

    .line 158
    iget-object v0, p0, Lcom/nuance/swype/connect/util/InstallMetadata;->transactionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 159
    return-void
.end method

.method public getAllMetadata()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 615
    iget-object v0, p0, Lcom/nuance/swype/connect/util/InstallMetadata;->installMetadata:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    return-object v0
.end method

.method public getBoolProp(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "packageName"
    .parameter "property"

    .prologue
    .line 362
    invoke-virtual {p0, p1, p2}, Lcom/nuance/swype/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getInstalledPackageList()Ljava/lang/String;
    .locals 3

    .prologue
    .line 762
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, ","

    invoke-direct {p0, v0, v1}, Lcom/nuance/swype/connect/util/InstallMetadata;->getPackageList(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIntProp(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "packageName"
    .parameter "property"

    .prologue
    .line 330
    const/high16 v0, -0x8000

    .line 332
    .local v0, value:I
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/nuance/swype/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 337
    :goto_0
    return v0

    .line 333
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getLongProp(Ljava/lang/String;Ljava/lang/String;)J
    .locals 3
    .parameter "packageName"
    .parameter "property"

    .prologue
    .line 351
    const-wide/high16 v0, -0x8000

    .line 353
    .local v0, value:J
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/nuance/swype/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 358
    :goto_0
    return-wide v0

    .line 354
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "packageName"
    .parameter "property"

    .prologue
    .line 284
    const/4 v0, 0x0

    .line 285
    .local v0, value:Ljava/lang/String;
    iget-object v1, p0, Lcom/nuance/swype/connect/util/InstallMetadata;->installMetadata:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 286
    iget-object v1, p0, Lcom/nuance/swype/connect/util/InstallMetadata;->installMetadata:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #value:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 288
    .restart local v0       #value:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getProps(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 2
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 300
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 301
    .local v0, values:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/nuance/swype/connect/util/InstallMetadata;->installMetadata:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 302
    iget-object v1, p0, Lcom/nuance/swype/connect/util/InstallMetadata;->installMetadata:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #values:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    check-cast v0, Ljava/util/HashMap;

    .line 304
    .restart local v0       #values:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-object v0
.end method

.method public getStep(Ljava/lang/String;)I
    .locals 1
    .parameter "packageName"

    .prologue
    .line 316
    const-string v0, "STEP"

    invoke-virtual {p0, p1, v0}, Lcom/nuance/swype/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public hasMoreInstalls()Z
    .locals 3

    .prologue
    .line 701
    const/4 v1, 0x1

    const/4 v2, 0x5

    invoke-direct {p0, v1, v2}, Lcom/nuance/swype/connect/util/InstallMetadata;->testPackageInstallsInRange(II)Z

    move-result v0

    .line 703
    .local v0, moreInstalls:Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasMoreInstalls() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 704
    return v0
.end method

.method public hasMoreRemoves()Z
    .locals 3

    .prologue
    const/16 v1, 0xa

    .line 713
    invoke-direct {p0, v1, v1}, Lcom/nuance/swype/connect/util/InstallMetadata;->testPackageInstallsInRange(II)Z

    move-result v0

    .line 714
    .local v0, moreRemoves:Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasMoreRemoves() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 715
    return v0
.end method

.method public hasPackage(Ljava/lang/String;)Z
    .locals 1
    .parameter "packageName"

    .prologue
    .line 216
    iget-object v0, p0, Lcom/nuance/swype/connect/util/InstallMetadata;->installMetadata:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasPackages()Z
    .locals 1

    .prologue
    .line 724
    iget-object v0, p0, Lcom/nuance/swype/connect/util/InstallMetadata;->installMetadata:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAvailable(Ljava/lang/String;)Z
    .locals 2
    .parameter "packageName"

    .prologue
    .line 623
    const/4 v0, 0x0

    .line 624
    .local v0, available:Z
    invoke-virtual {p0, p1}, Lcom/nuance/swype/connect/util/InstallMetadata;->getStep(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 625
    const/4 v0, 0x1

    .line 627
    :cond_0
    return v0
.end method

.method public isDownloading(Ljava/lang/String;)Z
    .locals 3
    .parameter "packageName"

    .prologue
    .line 640
    const/4 v0, 0x0

    .line 641
    .local v0, downloading:Z
    invoke-virtual {p0, p1}, Lcom/nuance/swype/connect/util/InstallMetadata;->getStep(Ljava/lang/String;)I

    move-result v1

    .line 642
    .local v1, status:I
    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    const/4 v2, 0x5

    if-gt v1, v2, :cond_0

    .line 643
    const/4 v0, 0x1

    .line 645
    :cond_0
    return v0
.end method

.method public isInstalled(Ljava/lang/String;)Z
    .locals 3
    .parameter "packageName"

    .prologue
    .line 673
    const/4 v0, 0x0

    .line 674
    .local v0, installed:Z
    invoke-virtual {p0, p1}, Lcom/nuance/swype/connect/util/InstallMetadata;->getStep(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    .line 675
    const/4 v0, 0x1

    .line 677
    :cond_0
    return v0
.end method

.method public isInstalling()Z
    .locals 3

    .prologue
    .line 688
    const/4 v1, 0x2

    const/4 v2, 0x5

    invoke-direct {p0, v1, v2}, Lcom/nuance/swype/connect/util/InstallMetadata;->testPackageInstallsInRange(II)Z

    move-result v0

    .line 689
    .local v0, installing:Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isInstalling() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 690
    return v0
.end method

.method public isInstalling(Ljava/lang/String;)Z
    .locals 3
    .parameter "packageName"

    .prologue
    .line 657
    const/4 v0, 0x0

    .line 658
    .local v0, installing:Z
    invoke-virtual {p0, p1}, Lcom/nuance/swype/connect/util/InstallMetadata;->getStep(Ljava/lang/String;)I

    move-result v1

    .line 659
    .local v1, status:I
    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    const/4 v2, 0x7

    if-ge v1, v2, :cond_0

    .line 660
    const/4 v0, 0x1

    .line 662
    :cond_0
    return v0
.end method

.method public listFromSteps(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 803
    .local p1, steps:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 804
    .local v2, l:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/nuance/swype/connect/util/InstallMetadata;->rwLock:[I

    monitor-enter v5

    .line 805
    :try_start_0
    iget-object v4, p0, Lcom/nuance/swype/connect/util/InstallMetadata;->installMetadata:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 806
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    const-string v6, "STEP"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 807
    .local v3, step:I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 808
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 811
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #step:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 812
    return-object v2
.end method

.method public propsWrite(Ljava/lang/String;Ljava/util/HashMap;Z)V
    .locals 2
    .parameter "packageName"
    .parameter
    .parameter "save"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 485
    .local p2, props:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/nuance/swype/connect/util/InstallMetadata;->rwLock:[I

    monitor-enter v1

    .line 486
    :try_start_0
    iget-object v0, p0, Lcom/nuance/swype/connect/util/InstallMetadata;->installMetadata:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/nuance/swype/connect/util/InstallMetadata;->installMetadata:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 491
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/connect/util/InstallMetadata;->metadataChanged:Z

    .line 492
    if-eqz p3, :cond_1

    .line 493
    invoke-virtual {p0}, Lcom/nuance/swype/connect/util/InstallMetadata;->saveMetadata()V

    .line 495
    :cond_1
    return-void

    .line 490
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public removeProp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"
    .parameter "property"

    .prologue
    .line 431
    iget-object v2, p0, Lcom/nuance/swype/connect/util/InstallMetadata;->rwLock:[I

    monitor-enter v2

    .line 432
    :try_start_0
    iget-object v1, p0, Lcom/nuance/swype/connect/util/InstallMetadata;->installMetadata:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 434
    invoke-virtual {p0, p1}, Lcom/nuance/swype/connect/util/InstallMetadata;->getProps(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 435
    .local v0, props:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    iget-object v1, p0, Lcom/nuance/swype/connect/util/InstallMetadata;->installMetadata:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    .end local v0           #props:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 439
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nuance/swype/connect/util/InstallMetadata;->metadataChanged:Z

    .line 440
    invoke-virtual {p0}, Lcom/nuance/swype/connect/util/InstallMetadata;->saveMetadata()V

    .line 441
    return-void

    .line 438
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public saveMetadata()V
    .locals 5

    .prologue
    .line 165
    iget-object v1, p0, Lcom/nuance/swype/connect/util/InstallMetadata;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/connect/ConnectClient;

    .line 166
    .local v0, client:Lcom/nuance/swype/connect/ConnectClient;
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/nuance/swype/connect/util/InstallMetadata;->flagTransaction:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/nuance/swype/connect/util/InstallMetadata;->metadataChanged:Z

    if-eqz v1, :cond_0

    .line 167
    iget-object v2, p0, Lcom/nuance/swype/connect/util/InstallMetadata;->rwLock:[I

    monitor-enter v2

    .line 168
    :try_start_0
    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectClient;->getDataStore()Lcom/nuance/swype/connect/store/PersistentDataStore;

    move-result-object v1

    iget-object v3, p0, Lcom/nuance/swype/connect/util/InstallMetadata;->dataStoreKey:Ljava/lang/String;

    iget-object v4, p0, Lcom/nuance/swype/connect/util/InstallMetadata;->installMetadata:Ljava/util/HashMap;

    invoke-static {v4}, Lcom/nuance/swype/connect/util/Data;->serializeObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/nuance/swype/connect/store/PersistentDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 170
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/nuance/swype/connect/util/InstallMetadata;->metadataChanged:Z

    .line 171
    monitor-exit v2

    .line 173
    :cond_0
    return-void

    .line 171
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setProp(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "packageName"
    .parameter "property"
    .parameter "value"

    .prologue
    .line 535
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/nuance/swype/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    return-void
.end method

.method public setProp(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1
    .parameter "packageName"
    .parameter "property"
    .parameter "value"

    .prologue
    .line 565
    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/nuance/swype/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    return-void
.end method

.method public setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"
    .parameter "property"
    .parameter "value"

    .prologue
    .line 376
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/nuance/swype/connect/util/InstallMetadata;->propWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 377
    return-void
.end method

.method public setProp(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .parameter "packageName"
    .parameter "property"
    .parameter "value"

    .prologue
    .line 595
    invoke-static {p3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/nuance/swype/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    return-void
.end method

.method public setProps(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 1
    .parameter "packageName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 454
    .local p2, props:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/nuance/swype/connect/util/InstallMetadata;->propsWrite(Ljava/lang/String;Ljava/util/HashMap;Z)V

    .line 455
    return-void
.end method

.method public setStep(Ljava/lang/String;I)V
    .locals 1
    .parameter "packageName"
    .parameter "step"

    .prologue
    .line 507
    const-string v0, "STEP"

    invoke-virtual {p0, p1, v0, p2}, Lcom/nuance/swype/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;I)V

    .line 508
    return-void
.end method

.method public setUnsavedProp(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "packageName"
    .parameter "property"
    .parameter "value"

    .prologue
    .line 550
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/nuance/swype/connect/util/InstallMetadata;->setUnsavedProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    return-void
.end method

.method public setUnsavedProp(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1
    .parameter "packageName"
    .parameter "property"
    .parameter "value"

    .prologue
    .line 580
    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/nuance/swype/connect/util/InstallMetadata;->setUnsavedProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    return-void
.end method

.method public setUnsavedProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"
    .parameter "property"
    .parameter "value"

    .prologue
    .line 393
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/nuance/swype/connect/util/InstallMetadata;->propWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 394
    return-void
.end method

.method public setUnsavedProp(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .parameter "packageName"
    .parameter "property"
    .parameter "value"

    .prologue
    .line 610
    invoke-static {p3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/nuance/swype/connect/util/InstallMetadata;->setUnsavedProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    return-void
.end method

.method public setUnsavedProps(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 1
    .parameter "packageName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 470
    .local p2, props:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/nuance/swype/connect/util/InstallMetadata;->propsWrite(Ljava/lang/String;Ljava/util/HashMap;Z)V

    .line 471
    return-void
.end method

.method public setUnsavedStep(Ljava/lang/String;I)V
    .locals 1
    .parameter "packageName"
    .parameter "step"

    .prologue
    .line 520
    const-string v0, "STEP"

    invoke-virtual {p0, p1, v0, p2}, Lcom/nuance/swype/connect/util/InstallMetadata;->setUnsavedProp(Ljava/lang/String;Ljava/lang/String;I)V

    .line 521
    return-void
.end method

.method public uninstallPackage(Ljava/lang/String;)V
    .locals 4
    .parameter "packageName"

    .prologue
    const/4 v3, 0x0

    .line 254
    invoke-virtual {p0, p1}, Lcom/nuance/swype/connect/util/InstallMetadata;->getProps(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 255
    .local v0, props:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "STEP"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    const-string v1, "CHECKSUM"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    const-string v1, "FILE_LOCATION"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    const-string v1, "TRANSACTION_ID"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    const-string v1, "URL"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    invoke-virtual {p0, p1, v0}, Lcom/nuance/swype/connect/util/InstallMetadata;->setProps(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 261
    return-void
.end method
