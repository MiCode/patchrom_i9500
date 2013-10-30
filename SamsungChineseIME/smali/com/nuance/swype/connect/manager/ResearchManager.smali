.class public Lcom/nuance/swype/connect/manager/ResearchManager;
.super Lcom/nuance/swype/connect/manager/AbstractCommandManager;
.source "ResearchManager.java"


# static fields
.field public static final COMMAND_FAMILY:Ljava/lang/String; = "research"

.field public static final COMMAND_UDBUPLOAD:Ljava/lang/String; = "udbupload"

.field public static final COMMAND_VERIFY:Ljava/lang/String; = "verify"

.field public static final COMMAND_VERSION:I = 0x4

.field public static final MANAGER_NAME:Ljava/lang/String; = "research"

.field private static final MESSAGES_HANDLED:[I = null

.field private static final PREF_LAST_UPLOAD_TIME:Ljava/lang/String; = "LAST_UPLOAD_TIME"

.field private static final PREF_UDB_UPLOAD_FEATURE_ENABLED:Ljava/lang/String; = "UDB_UPLOAD_FEATURE_ENABLED"

.field private static final PREF_UDB_UPLOAD_OPTED_IN_BY_USER:Ljava/lang/String; = "UDB_UPLOAD_OPTED_IN_BY_USER"

.field public static final UDB_UPLOAD:Ljava/lang/String; = "UDB_UPLOAD"


# instance fields
.field private lastUploadTime:J

.field private udbUploadEnableByUser:Z

.field private udbUploadFeatureEnabled:Z

.field private uploadFrequencyChangeListener:Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;

.field private uploadInterval:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/nuance/swype/connect/manager/ResearchManager;->MESSAGES_HANDLED:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0xf1t 0x0t 0x0t 0x0t
        0xf2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/nuance/swype/connect/ConnectClient;)V
    .locals 4
    .parameter "ctx"

    .prologue
    const/4 v3, 0x2

    .line 118
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager;-><init>(Lcom/nuance/swype/connect/ConnectClient;)V

    .line 92
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lcom/nuance/swype/connect/manager/ResearchManager;->lastUploadTime:J

    .line 103
    new-instance v0, Lcom/nuance/swype/connect/manager/ResearchManager$1;

    invoke-direct {v0, p0}, Lcom/nuance/swype/connect/manager/ResearchManager$1;-><init>(Lcom/nuance/swype/connect/manager/ResearchManager;)V

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/ResearchManager;->uploadFrequencyChangeListener:Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;

    .line 119
    const/4 v0, 0x4

    iput v0, p0, Lcom/nuance/swype/connect/manager/ResearchManager;->version:I

    .line 120
    const-string v0, "research"

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/ResearchManager;->commandFamily:Ljava/lang/String;

    .line 121
    sget-object v0, Lcom/nuance/swype/connect/manager/ResearchManager;->MESSAGES_HANDLED:[I

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/ResearchManager;->messages:[I

    .line 123
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/ResearchManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "verify"

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 127
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/ResearchManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "udbupload"

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 131
    return-void

    .line 123
    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 127
    :array_1
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$002(Lcom/nuance/swype/connect/manager/ResearchManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput p1, p0, Lcom/nuance/swype/connect/manager/ResearchManager;->uploadInterval:I

    return p1
.end method

.method static synthetic access$100(Lcom/nuance/swype/connect/manager/ResearchManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/ResearchManager;->determineNextUpload()V

    return-void
.end method

.method private cleanupTempFiles()V
    .locals 8

    .prologue
    .line 398
    iget-object v7, p0, Lcom/nuance/swype/connect/manager/ResearchManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v7}, Lcom/nuance/swype/connect/ConnectClient;->getCacheDir()Ljava/io/File;

    move-result-object v1

    .line 399
    .local v1, cacheDir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 400
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    .line 401
    .local v3, fileList:[Ljava/lang/String;
    move-object v0, v3

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v2, v0, v4

    .line 402
    .local v2, file:Ljava/lang/String;
    const-string v7, "res_"

    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 403
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 404
    .local v6, tempFile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v7

    if-nez v7, :cond_0

    .line 405
    const-string v7, "Research: Unable to delete temporary file."

    invoke-static {v7}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    .line 401
    .end local v6           #tempFile:Ljava/io/File;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 410
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #file:Ljava/lang/String;
    .end local v3           #fileList:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_1
    return-void
.end method

.method private determineNextUpload()V
    .locals 7

    .prologue
    .line 346
    const-string v3, "ResearchManager.determineNextUpload()"

    invoke-static {v3}, Lcom/nuance/swype/connect/util/Logger;->v(Ljava/lang/String;)V

    .line 347
    iget-wide v3, p0, Lcom/nuance/swype/connect/manager/ResearchManager;->lastUploadTime:J

    const-wide/high16 v5, -0x8000

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 350
    invoke-static {}, Lcom/nuance/swype/connect/util/TimeConversion;->getCurrentTime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/nuance/swype/connect/manager/ResearchManager;->lastUploadTime:J

    .line 351
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/ResearchManager;->savePreferences()V

    .line 353
    :cond_0
    iget v3, p0, Lcom/nuance/swype/connect/manager/ResearchManager;->uploadInterval:I

    int-to-long v3, v3

    iget-wide v5, p0, Lcom/nuance/swype/connect/manager/ResearchManager;->lastUploadTime:J

    invoke-static {v3, v4, v5, v6}, Lcom/nuance/swype/connect/util/TimeConversion;->convertSecondsToTimeStamp(JJ)J

    move-result-wide v1

    .line 354
    .local v1, nextRun:J
    iget v3, p0, Lcom/nuance/swype/connect/manager/ResearchManager;->uploadInterval:I

    if-lez v3, :cond_2

    .line 355
    invoke-static {}, Lcom/nuance/swype/connect/util/TimeConversion;->getCurrentTime()J

    move-result-wide v3

    cmp-long v3, v1, v3

    if-gtz v3, :cond_1

    .line 356
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/ResearchManager;->initiateUdbUpload()V

    .line 374
    :goto_0
    return-void

    .line 358
    :cond_1
    new-instance v3, Lcom/nuance/swype/connect/util/Alarm$Builder;

    iget-object v4, p0, Lcom/nuance/swype/connect/manager/ResearchManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v4}, Lcom/nuance/swype/connect/ConnectClient;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/nuance/swype/connect/manager/ResearchManager;

    const-string v6, "UDB_UPLOAD"

    invoke-direct {v3, v4, v5, v6}, Lcom/nuance/swype/connect/util/Alarm$Builder;-><init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Lcom/nuance/swype/connect/util/Alarm$Builder;->triggerTime(J)Lcom/nuance/swype/connect/util/Alarm$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/connect/util/Alarm$Builder;->build()Lcom/nuance/swype/connect/util/Alarm;

    move-result-object v0

    .line 362
    .local v0, alarm:Lcom/nuance/swype/connect/util/Alarm;
    invoke-virtual {v0}, Lcom/nuance/swype/connect/util/Alarm;->cancel()V

    .line 364
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Next UDB upload: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/connect/util/Logger;->v(Ljava/lang/String;)V

    .line 365
    invoke-virtual {v0}, Lcom/nuance/swype/connect/util/Alarm;->set()V

    goto :goto_0

    .line 368
    .end local v0           #alarm:Lcom/nuance/swype/connect/util/Alarm;
    :cond_2
    const-string v3, "Upload has been disabled by setting interval to a negative value."

    invoke-static {v3}, Lcom/nuance/swype/connect/util/Logger;->v(Ljava/lang/String;)V

    .line 369
    new-instance v3, Lcom/nuance/swype/connect/util/Alarm$Builder;

    iget-object v4, p0, Lcom/nuance/swype/connect/manager/ResearchManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v4}, Lcom/nuance/swype/connect/ConnectClient;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/nuance/swype/connect/manager/ResearchManager;

    const-string v6, "UDB_UPLOAD"

    invoke-direct {v3, v4, v5, v6}, Lcom/nuance/swype/connect/util/Alarm$Builder;-><init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/nuance/swype/connect/util/Alarm$Builder;->build()Lcom/nuance/swype/connect/util/Alarm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/connect/util/Alarm;->cancel()V

    goto :goto_0
.end method

.method private initiateUdbUpload()V
    .locals 2

    .prologue
    .line 381
    const-string v0, "ResearchManager.initiateUdbUpload()"

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->v(Ljava/lang/String;)V

    .line 382
    invoke-static {}, Lcom/nuance/swype/connect/util/TimeConversion;->getCurrentTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nuance/swype/connect/manager/ResearchManager;->lastUploadTime:J

    .line 383
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/ResearchManager;->savePreferences()V

    .line 385
    iget-boolean v0, p0, Lcom/nuance/swype/connect/manager/ResearchManager;->udbUploadEnableByUser:Z

    if-eqz v0, :cond_0

    .line 386
    const-string v0, "initiating upload sequence"

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->v(Ljava/lang/String;)V

    .line 387
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/ResearchManager;->sendVerify()V

    .line 391
    :goto_0
    return-void

    .line 389
    :cond_0
    const-string v0, "Upload aborted, user did not opt-in to provide research data."

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->v(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isWifiUp()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 418
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/ResearchManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Lcom/nuance/swype/connect/ConnectClient;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 419
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 420
    .local v1, nwi:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private loadPreferences()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 322
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/ResearchManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectClient;->getDataStore()Lcom/nuance/swype/connect/store/PersistentDataStore;

    move-result-object v0

    const-string v1, "UDB_UPLOAD_FEATURE_ENABLED"

    invoke-interface {v0, v1, v2}, Lcom/nuance/swype/connect/store/PersistentDataStore;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/swype/connect/manager/ResearchManager;->udbUploadFeatureEnabled:Z

    .line 324
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/ResearchManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectClient;->getDataStore()Lcom/nuance/swype/connect/store/PersistentDataStore;

    move-result-object v0

    const-string v1, "UDB_UPLOAD_OPTED_IN_BY_USER"

    invoke-interface {v0, v1, v2}, Lcom/nuance/swype/connect/store/PersistentDataStore;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/swype/connect/manager/ResearchManager;->udbUploadEnableByUser:Z

    .line 326
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/ResearchManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectClient;->getDataStore()Lcom/nuance/swype/connect/store/PersistentDataStore;

    move-result-object v0

    const-string v1, "LAST_UPLOAD_TIME"

    const-wide/high16 v2, -0x8000

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/swype/connect/store/PersistentDataStore;->readLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nuance/swype/connect/manager/ResearchManager;->lastUploadTime:J

    .line 327
    return-void
.end method

.method private onResponseUdbUpload(Lcom/nuance/swype/connect/util/Response;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 304
    const-string v0, "ResearchManager.onResponseUdbUpload()"

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->v(Ljava/lang/String;)V

    .line 305
    iget v0, p1, Lcom/nuance/swype/connect/util/Response;->status:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 306
    const-string v0, "Anonymous usage data uploaded successfully."

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 310
    :goto_0
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/ResearchManager;->cleanupTempFiles()V

    .line 311
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/ResearchManager;->determineNextUpload()V

    .line 312
    return-void

    .line 308
    :cond_0
    const-string v0, "Anonymous usage data failed to upload."

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onResponseVerify(Lcom/nuance/swype/connect/util/Response;)V
    .locals 4
    .parameter "response"

    .prologue
    const/4 v0, 0x1

    .line 241
    const-string v2, "ResearchManager.onResponseVerify()"

    invoke-static {v2}, Lcom/nuance/swype/connect/util/Logger;->v(Ljava/lang/String;)V

    .line 242
    iget v2, p1, Lcom/nuance/swype/connect/util/Response;->status:I

    if-eq v2, v0, :cond_0

    iget v2, p1, Lcom/nuance/swype/connect/util/Response;->status:I

    if-nez v2, :cond_1

    .line 244
    :cond_0
    iget v2, p1, Lcom/nuance/swype/connect/util/Response;->status:I

    if-ne v2, v0, :cond_2

    .line 245
    .local v0, enabled:Z
    :goto_0
    iget-object v2, p1, Lcom/nuance/swype/connect/util/Response;->initialCommand:Lcom/nuance/swype/connect/util/Command;

    iget-object v2, v2, Lcom/nuance/swype/connect/util/Command;->parameters:Ljava/util/HashMap;

    const-string v3, "70"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 246
    .local v1, feature:Ljava/lang/String;
    const-string v2, "udbupload"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 247
    iput-boolean v0, p0, Lcom/nuance/swype/connect/manager/ResearchManager;->udbUploadFeatureEnabled:Z

    .line 248
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/ResearchManager;->savePreferences()V

    .line 249
    if-eqz v0, :cond_1

    .line 250
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/ResearchManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v3, 0x7e

    invoke-virtual {v2, v3}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(I)V

    .line 254
    .end local v0           #enabled:Z
    .end local v1           #feature:Ljava/lang/String;
    :cond_1
    return-void

    .line 244
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private savePreferences()V
    .locals 4

    .prologue
    .line 333
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/ResearchManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectClient;->getDataStore()Lcom/nuance/swype/connect/store/PersistentDataStore;

    move-result-object v0

    const-string v1, "UDB_UPLOAD_FEATURE_ENABLED"

    iget-boolean v2, p0, Lcom/nuance/swype/connect/manager/ResearchManager;->udbUploadFeatureEnabled:Z

    invoke-interface {v0, v1, v2}, Lcom/nuance/swype/connect/store/PersistentDataStore;->saveBoolean(Ljava/lang/String;Z)Z

    .line 334
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/ResearchManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectClient;->getDataStore()Lcom/nuance/swype/connect/store/PersistentDataStore;

    move-result-object v0

    const-string v1, "UDB_UPLOAD_OPTED_IN_BY_USER"

    iget-boolean v2, p0, Lcom/nuance/swype/connect/manager/ResearchManager;->udbUploadEnableByUser:Z

    invoke-interface {v0, v1, v2}, Lcom/nuance/swype/connect/store/PersistentDataStore;->saveBoolean(Ljava/lang/String;Z)Z

    .line 335
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/ResearchManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectClient;->getDataStore()Lcom/nuance/swype/connect/store/PersistentDataStore;

    move-result-object v0

    const-string v1, "LAST_UPLOAD_TIME"

    iget-wide v2, p0, Lcom/nuance/swype/connect/manager/ResearchManager;->lastUploadTime:J

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/swype/connect/store/PersistentDataStore;->saveLong(Ljava/lang/String;J)Z

    .line 336
    return-void
.end method

.method private sendUdbUpload(Ljava/lang/String;)V
    .locals 5
    .parameter "udbFile"

    .prologue
    const/4 v4, 0x0

    .line 276
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendUdbUpload("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/connect/util/Logger;->v(Ljava/lang/String;)V

    .line 277
    iget-boolean v2, p0, Lcom/nuance/swype/connect/manager/ResearchManager;->udbUploadEnableByUser:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/nuance/swype/connect/manager/ResearchManager;->udbUploadFeatureEnabled:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/nuance/swype/connect/manager/ResearchManager;->uploadInterval:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/ResearchManager;->isWifiUp()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 278
    invoke-static {p1}, Lcom/nuance/swype/connect/util/EncryptUtils;->getBytesOfFile(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/connect/util/EncryptUtils;->md5([B)Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, checksum:Ljava/lang/String;
    const-string v2, "udbupload"

    invoke-virtual {p0, v2}, Lcom/nuance/swype/connect/manager/ResearchManager;->createCommand(Ljava/lang/String;)Lcom/nuance/swype/connect/util/Command;

    move-result-object v1

    .line 280
    .local v1, command:Lcom/nuance/swype/connect/util/Command;
    iput-boolean v4, v1, Lcom/nuance/swype/connect/util/Command;->requireDevice:Z

    .line 281
    iput-boolean v4, v1, Lcom/nuance/swype/connect/util/Command;->requireSession:Z

    .line 282
    const-string v2, "PUT"

    iput-object v2, v1, Lcom/nuance/swype/connect/util/Command;->method:Ljava/lang/String;

    .line 283
    iput-object p1, v1, Lcom/nuance/swype/connect/util/Command;->fileLocation:Ljava/lang/String;

    .line 284
    iget-object v2, v1, Lcom/nuance/swype/connect/util/Command;->parameters:Ljava/util/HashMap;

    const-string v3, "10"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/ResearchManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v2, v1}, Lcom/nuance/swype/connect/ConnectClient;->sendCommand(Lcom/nuance/swype/connect/util/Command;)V

    .line 290
    .end local v0           #checksum:Ljava/lang/String;
    .end local v1           #command:Lcom/nuance/swype/connect/util/Command;
    :goto_0
    return-void

    .line 287
    :cond_0
    const-string v2, "Anonymous udb data will not be sent due to blocking condition."

    invoke-static {v2}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 288
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/ResearchManager;->cleanupTempFiles()V

    goto :goto_0
.end method

.method private sendVerify()V
    .locals 4

    .prologue
    .line 222
    const-string v1, "ResearchManager.sendVerify()"

    invoke-static {v1}, Lcom/nuance/swype/connect/util/Logger;->v(Ljava/lang/String;)V

    .line 223
    const-string v1, "verify"

    invoke-virtual {p0, v1}, Lcom/nuance/swype/connect/manager/ResearchManager;->createCommand(Ljava/lang/String;)Lcom/nuance/swype/connect/util/Command;

    move-result-object v0

    .line 224
    .local v0, command:Lcom/nuance/swype/connect/util/Command;
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/nuance/swype/connect/util/Command;->requireDevice:Z

    .line 225
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/nuance/swype/connect/util/Command;->requireSession:Z

    .line 226
    iget-object v1, v0, Lcom/nuance/swype/connect/util/Command;->parameters:Ljava/util/HashMap;

    const-string v2, "70"

    const-string v3, "udbupload"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/ResearchManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v1, v0}, Lcom/nuance/swype/connect/ConnectClient;->sendCommand(Lcom/nuance/swype/connect/util/Command;)V

    .line 228
    return-void
.end method


# virtual methods
.method public alarmNotification(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .parameter "type"
    .parameter "data"

    .prologue
    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResearchManager.alarmNotification("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->v(Ljava/lang/String;)V

    .line 205
    const-string v0, "UDB_UPLOAD"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/ResearchManager;->determineNextUpload()V

    .line 208
    :cond_0
    return-void
.end method

.method public getDependencies()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 138
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "session"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public init()V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/ResearchManager;->loadPreferences()V

    .line 146
    return-void
.end method

.method public onHandleMessage(Landroid/os/Message;)Z
    .locals 4
    .parameter "message"

    .prologue
    .line 163
    const/4 v1, 0x0

    .line 164
    .local v1, handled:Z
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 186
    :cond_0
    :goto_0
    return v1

    .line 166
    :pswitch_0
    const-string v3, "ResearchManager.onHandleMessage(MESSAGE_CLIENT_RESEARCH_SET_UDB_SETTING)"

    invoke-static {v3}, Lcom/nuance/swype/connect/util/Logger;->v(Ljava/lang/String;)V

    .line 167
    const/4 v1, 0x1

    .line 168
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 169
    .local v0, b:Landroid/os/Bundle;
    const-string v3, "DEFAULT_KEY"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/nuance/swype/connect/manager/ResearchManager;->udbUploadEnableByUser:Z

    .line 170
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/ResearchManager;->savePreferences()V

    .line 171
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/ResearchManager;->determineNextUpload()V

    .line 172
    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/ResearchManager;->managerStartComplete()V

    goto :goto_0

    .line 176
    .end local v0           #b:Landroid/os/Bundle;
    :pswitch_1
    const-string v3, "ResearchManager.onHandleMessage(MESSAGE_CLIENT_RESEARCH_SEND_UDB)"

    invoke-static {v3}, Lcom/nuance/swype/connect/util/Logger;->v(Ljava/lang/String;)V

    .line 177
    const/4 v1, 0x1

    .line 178
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 179
    .restart local v0       #b:Landroid/os/Bundle;
    const-string v3, "DEFAULT_KEY"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 180
    .local v2, udbFile:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 181
    invoke-direct {p0, v2}, Lcom/nuance/swype/connect/manager/ResearchManager;->sendUdbUpload(Ljava/lang/String;)V

    goto :goto_0

    .line 164
    nop

    :pswitch_data_0
    .packed-switch 0xf1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onResponse(Lcom/nuance/swype/connect/util/Response;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 195
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/ResearchManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "verify"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/swype/connect/util/Response;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 196
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/manager/ResearchManager;->onResponseVerify(Lcom/nuance/swype/connect/util/Response;)V

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/ResearchManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "udbupload"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/swype/connect/util/Response;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/manager/ResearchManager;->onResponseUdbUpload(Lcom/nuance/swype/connect/util/Response;)V

    goto :goto_0
.end method

.method public start()V
    .locals 4

    .prologue
    .line 150
    sget-object v0, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;->STARTING:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/ResearchManager;->managerStartState:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    .line 151
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/ResearchManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(I)V

    .line 153
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/ResearchManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectClient;->getConfiguration()Lcom/nuance/swype/connect/configuration/ConnectConfiguration;

    move-result-object v0

    const-string v1, "UDB_UPLOAD_FREQUENCY"

    iget-object v2, p0, Lcom/nuance/swype/connect/manager/ResearchManager;->uploadFrequencyChangeListener:Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->setConfigurationListener(Ljava/lang/String;Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;Z)V

    .line 155
    return-void
.end method
