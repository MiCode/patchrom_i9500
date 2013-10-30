.class public Lcom/nuance/swype/connect/manager/LicenseManager;
.super Lcom/nuance/swype/connect/manager/AbstractCommandManager;
.source "LicenseManager.java"


# static fields
.field public static final COMMAND_FAMILY:Ljava/lang/String; = "license"

.field public static final COMMAND_FETCH:Ljava/lang/String; = "fetch"

.field public static final COMMAND_REQUEST:Ljava/lang/String; = "request"

.field public static final COMMAND_VERSION:I = 0x4

.field public static final LICENSE_FETCH:Ljava/lang/String; = "LICENSE_FETCH"

.field public static final LICENSE_RETRY:Ljava/lang/String; = "LICENSE_RETRY"

.field public static final LICENSE_STATE_INVALID:I = 0x2

.field public static final LICENSE_STATE_UNKNOWN:I = 0x0

.field public static final LICENSE_STATE_VALID:I = 0x1

.field public static final LICENSE_STATUS_DISABLED:Ljava/lang/String; = "LOCKED"

.field public static final MANAGER_NAME:Ljava/lang/String; = "license"

.field private static final MESSAGES_HANDLED:[I = null

.field public static final REQUEST_LICENSE:Ljava/lang/String; = "REQUEST_LICENSE"


# instance fields
.field private isGettingLicense:Z

.field protected lastFetch:J

.field private licenseCheckThreshold:J

.field private licenseExpiration:J

.field private licenseFile:Ljava/io/File;

.field private licenseFileChecksum:Ljava/lang/String;

.field private licenseStatus:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/nuance/swype/connect/manager/LicenseManager;->MESSAGES_HANDLED:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xcft 0x0t 0x0t 0x0t
        0xd0t 0x0t 0x0t 0x0t
        0xcet 0x0t 0x0t 0x0t
        0xdat 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/nuance/swype/connect/ConnectClient;)V
    .locals 7
    .parameter "ctx"

    .prologue
    const-wide/high16 v5, -0x8000

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 68
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager;-><init>(Lcom/nuance/swype/connect/ConnectClient;)V

    .line 41
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/nuance/swype/connect/manager/LicenseManager;->lastFetch:J

    .line 43
    iput-wide v5, p0, Lcom/nuance/swype/connect/manager/LicenseManager;->licenseExpiration:J

    .line 44
    iput-wide v5, p0, Lcom/nuance/swype/connect/manager/LicenseManager;->licenseCheckThreshold:J

    .line 49
    iput-boolean v4, p0, Lcom/nuance/swype/connect/manager/LicenseManager;->isGettingLicense:Z

    .line 69
    const/4 v0, 0x4

    iput v0, p0, Lcom/nuance/swype/connect/manager/LicenseManager;->version:I

    .line 70
    const-string v0, "license"

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/LicenseManager;->commandFamily:Ljava/lang/String;

    .line 71
    sget-object v0, Lcom/nuance/swype/connect/manager/LicenseManager;->MESSAGES_HANDLED:[I

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/LicenseManager;->messages:[I

    .line 73
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/LicenseManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "request"

    new-array v2, v3, [I

    aput v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 74
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/LicenseManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "fetch"

    new-array v2, v3, [I

    aput v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 75
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/LicenseManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "ack"

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 76
    return-void

    .line 75
    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private ackLicenseFileChecksum(Ljava/lang/String;)V
    .locals 0
    .parameter "checksum"

    .prologue
    .line 490
    iput-object p1, p0, Lcom/nuance/swype/connect/manager/LicenseManager;->licenseFileChecksum:Ljava/lang/String;

    .line 491
    return-void
.end method

.method private isLicenseExpirationThresholdReached()Z
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    const-wide/high16 v3, -0x8000

    .line 440
    const/4 v0, 0x0

    .line 441
    .local v0, licenseNeedsUpdating:Z
    iget-wide v1, p0, Lcom/nuance/swype/connect/manager/LicenseManager;->licenseExpiration:J

    cmp-long v1, v1, v5

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lcom/nuance/swype/connect/manager/LicenseManager;->licenseCheckThreshold:J

    cmp-long v1, v1, v5

    if-nez v1, :cond_2

    .line 442
    :cond_0
    const/4 v0, 0x1

    .line 448
    :cond_1
    :goto_0
    return v0

    .line 443
    :cond_2
    iget-wide v1, p0, Lcom/nuance/swype/connect/manager/LicenseManager;->licenseExpiration:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    iget-wide v1, p0, Lcom/nuance/swype/connect/manager/LicenseManager;->licenseCheckThreshold:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 444
    invoke-static {}, Lcom/nuance/swype/connect/util/TimeConversion;->getCurrentTime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/nuance/swype/connect/manager/LicenseManager;->licenseExpiration:J

    iget-wide v5, p0, Lcom/nuance/swype/connect/manager/LicenseManager;->licenseCheckThreshold:J

    sub-long/2addr v3, v5

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 445
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isLicenseValid(Landroid/content/SharedPreferences;)I
    .locals 5
    .parameter "prefs"

    .prologue
    const-wide/high16 v3, -0x8000

    .line 421
    const-string v2, "LICENSE_LICENSE_EXPIRATION"

    invoke-interface {p0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 422
    .local v0, exp:J
    cmp-long v2, v0, v3

    if-nez v2, :cond_0

    .line 423
    const/4 v2, 0x0

    .line 430
    :goto_0
    return v2

    .line 426
    :cond_0
    invoke-static {}, Lcom/nuance/swype/connect/util/TimeConversion;->getCurrentTime()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 427
    const/4 v2, 0x1

    goto :goto_0

    .line 430
    :cond_1
    const/4 v2, 0x2

    goto :goto_0
.end method

.method private loadPreferences()V
    .locals 6

    .prologue
    const-wide/high16 v4, -0x8000

    const/4 v3, 0x0

    .line 395
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/LicenseManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v1}, Lcom/nuance/swype/connect/ConnectClient;->getDataStore()Lcom/nuance/swype/connect/store/PersistentDataStore;

    move-result-object v0

    .line 396
    .local v0, prefs:Lcom/nuance/swype/connect/store/PersistentDataStore;
    const-string v1, "LICENSE_TRANSID"

    invoke-interface {v0, v1, v3}, Lcom/nuance/swype/connect/store/PersistentDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/connect/manager/LicenseManager;->transactionId:Ljava/lang/String;

    .line 397
    const-string v1, "LICENSE_LICENSE_EXPIRATION"

    invoke-interface {v0, v1, v4, v5}, Lcom/nuance/swype/connect/store/PersistentDataStore;->readLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/nuance/swype/connect/manager/LicenseManager;->licenseExpiration:J

    .line 398
    const-string v1, "LICENSE_CHECK_THRESHOLD"

    invoke-interface {v0, v1, v4, v5}, Lcom/nuance/swype/connect/store/PersistentDataStore;->readLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/nuance/swype/connect/manager/LicenseManager;->licenseCheckThreshold:J

    .line 399
    const-string v1, "LICENSE_STATUS"

    invoke-interface {v0, v1, v3}, Lcom/nuance/swype/connect/store/PersistentDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/connect/manager/LicenseManager;->licenseStatus:Ljava/lang/String;

    .line 400
    return-void
.end method

.method private processLicenseFileFetchResponse(Lcom/nuance/swype/connect/util/Response;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 319
    const/16 v0, 0x9

    invoke-virtual {p0, p1, v0}, Lcom/nuance/swype/connect/manager/LicenseManager;->preProcessResponse(Lcom/nuance/swype/connect/util/Response;I)Z

    .line 320
    return-void
.end method

.method private processLicenseFileResponse(Lcom/nuance/swype/connect/util/Response;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 330
    iget-object v0, p1, Lcom/nuance/swype/connect/util/Response;->file:Ljava/io/File;

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/LicenseManager;->licenseFile:Ljava/io/File;

    .line 331
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/LicenseManager;->licenseFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/connect/util/EncryptUtils;->getBytesOfFile(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/connect/util/EncryptUtils;->md5([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/LicenseManager;->licenseFileChecksum:Ljava/lang/String;

    .line 333
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/LicenseManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v1, 0x4d

    iget-object v2, p1, Lcom/nuance/swype/connect/util/Response;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(ILjava/lang/String;)V

    .line 334
    return-void
.end method

.method private processRequestLicenseResponse(Lcom/nuance/swype/connect/util/Response;)V
    .locals 4
    .parameter "response"

    .prologue
    const-wide/high16 v2, -0x8000

    .line 275
    const/16 v0, 0x9

    invoke-virtual {p0, p1, v0}, Lcom/nuance/swype/connect/manager/LicenseManager;->preProcessResponse(Lcom/nuance/swype/connect/util/Response;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 276
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/connect/manager/LicenseManager;->isGettingLicense:Z

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 280
    :cond_1
    iget v0, p1, Lcom/nuance/swype/connect/util/Response;->status:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 281
    iget-object v0, p1, Lcom/nuance/swype/connect/util/Response;->transactionId:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/LicenseManager;->transactionId:Ljava/lang/String;

    .line 282
    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/LicenseManager;->fetchLicense()V

    .line 284
    iput-wide v2, p0, Lcom/nuance/swype/connect/manager/LicenseManager;->licenseCheckThreshold:J

    .line 285
    iput-wide v2, p0, Lcom/nuance/swype/connect/manager/LicenseManager;->licenseExpiration:J

    goto :goto_0
.end method

.method private savePreferences()V
    .locals 4

    .prologue
    .line 406
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/LicenseManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v1}, Lcom/nuance/swype/connect/ConnectClient;->getDataStore()Lcom/nuance/swype/connect/store/PersistentDataStore;

    move-result-object v0

    .line 407
    .local v0, prefs:Lcom/nuance/swype/connect/store/PersistentDataStore;
    const-string v1, "LICENSE_TRANSID"

    iget-object v2, p0, Lcom/nuance/swype/connect/manager/LicenseManager;->transactionId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/nuance/swype/connect/store/PersistentDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 408
    const-string v1, "LICENSE_CHECK_THRESHOLD"

    iget-wide v2, p0, Lcom/nuance/swype/connect/manager/LicenseManager;->licenseCheckThreshold:J

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/swype/connect/store/PersistentDataStore;->saveLong(Ljava/lang/String;J)Z

    .line 409
    const-string v1, "LICENSE_LICENSE_EXPIRATION"

    iget-wide v2, p0, Lcom/nuance/swype/connect/manager/LicenseManager;->licenseExpiration:J

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/swype/connect/store/PersistentDataStore;->saveLong(Ljava/lang/String;J)Z

    .line 410
    const-string v1, "LICENSE_STATUS"

    iget-object v2, p0, Lcom/nuance/swype/connect/manager/LicenseManager;->licenseStatus:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/nuance/swype/connect/store/PersistentDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 411
    return-void
.end method

.method private setAlarmForLicense()V
    .locals 7

    .prologue
    const-wide/high16 v5, -0x8000

    .line 502
    iget-wide v3, p0, Lcom/nuance/swype/connect/manager/LicenseManager;->licenseExpiration:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    iget-wide v3, p0, Lcom/nuance/swype/connect/manager/LicenseManager;->licenseCheckThreshold:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    .line 503
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/LicenseManager;->isLicenseExpirationThresholdReached()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 504
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/nuance/swype/connect/manager/LicenseManager;->requestLicense(Z)V

    .line 516
    :cond_0
    :goto_0
    return-void

    .line 506
    :cond_1
    iget-wide v3, p0, Lcom/nuance/swype/connect/manager/LicenseManager;->licenseExpiration:J

    iget-wide v5, p0, Lcom/nuance/swype/connect/manager/LicenseManager;->licenseCheckThreshold:J

    sub-long v1, v3, v5

    .line 508
    .local v1, triggerTime:J
    new-instance v3, Lcom/nuance/swype/connect/util/Alarm$Builder;

    iget-object v4, p0, Lcom/nuance/swype/connect/manager/LicenseManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v4}, Lcom/nuance/swype/connect/ConnectClient;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/nuance/swype/connect/manager/LicenseManager;

    const-string v6, "REQUEST_LICENSE"

    invoke-direct {v3, v4, v5, v6}, Lcom/nuance/swype/connect/util/Alarm$Builder;-><init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Lcom/nuance/swype/connect/util/Alarm$Builder;->triggerTime(J)Lcom/nuance/swype/connect/util/Alarm$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/connect/util/Alarm$Builder;->build()Lcom/nuance/swype/connect/util/Alarm;

    move-result-object v0

    .line 512
    .local v0, alarm:Lcom/nuance/swype/connect/util/Alarm;
    invoke-virtual {v0}, Lcom/nuance/swype/connect/util/Alarm;->set()V

    .line 513
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAlarmForLicense() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/connect/util/Logger;->v(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setLicenseCheckThreshold(Ljava/lang/String;)V
    .locals 3
    .parameter "threshold"

    .prologue
    .line 477
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/nuance/swype/connect/util/TimeConversion;->convertSecondsToMillis(J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/nuance/swype/connect/manager/LicenseManager;->licenseCheckThreshold:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 481
    :goto_0
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/LicenseManager;->savePreferences()V

    .line 482
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/LicenseManager;->setAlarmForLicense()V

    .line 483
    return-void

    .line 478
    :catch_0
    move-exception v0

    .line 479
    .local v0, ex:Ljava/lang/NumberFormatException;
    const-wide/high16 v1, -0x8000

    iput-wide v1, p0, Lcom/nuance/swype/connect/manager/LicenseManager;->licenseCheckThreshold:J

    goto :goto_0
.end method

.method private setLicenseExpiration(Ljava/lang/String;)V
    .locals 3
    .parameter "expiration"

    .prologue
    .line 459
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/nuance/swype/connect/util/TimeConversion;->convertSecondsToMillis(J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/nuance/swype/connect/manager/LicenseManager;->licenseExpiration:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 463
    :goto_0
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/LicenseManager;->savePreferences()V

    .line 464
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/LicenseManager;->setAlarmForLicense()V

    .line 465
    return-void

    .line 460
    :catch_0
    move-exception v0

    .line 461
    .local v0, ex:Ljava/lang/NumberFormatException;
    const-wide/high16 v1, -0x8000

    iput-wide v1, p0, Lcom/nuance/swype/connect/manager/LicenseManager;->licenseExpiration:J

    goto :goto_0
.end method


# virtual methods
.method public ackLicenseFile()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 342
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/LicenseManager;->transactionId:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nuance/swype/connect/manager/LicenseManager;->licenseFileChecksum:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 343
    :cond_0
    const-string v2, "Connect"

    const-string v3, "ackLicenseFile() Missing transactionId or licenseFileChecksum!!!"

    invoke-static {v2, v3}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    iput-boolean v4, p0, Lcom/nuance/swype/connect/manager/LicenseManager;->isGettingLicense:Z

    .line 345
    invoke-virtual {p0, v4}, Lcom/nuance/swype/connect/manager/LicenseManager;->requestLicense(Z)V

    .line 355
    :goto_0
    return-void

    .line 349
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 350
    .local v1, parameters:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "10"

    iget-object v3, p0, Lcom/nuance/swype/connect/manager/LicenseManager;->licenseFileChecksum:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    const-string v2, "ack"

    invoke-virtual {p0, v2, v1}, Lcom/nuance/swype/connect/manager/LicenseManager;->createCommand(Ljava/lang/String;Ljava/util/HashMap;)Lcom/nuance/swype/connect/util/Command;

    move-result-object v0

    .line 352
    .local v0, command:Lcom/nuance/swype/connect/util/Command;
    iput-boolean v4, v0, Lcom/nuance/swype/connect/util/Command;->allowDuplicateOfCommand:Z

    .line 353
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/LicenseManager;->transactionId:Ljava/lang/String;

    iput-object v2, v0, Lcom/nuance/swype/connect/util/Command;->transactionId:Ljava/lang/String;

    .line 354
    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/manager/LicenseManager;->sendCommand(Lcom/nuance/swype/connect/util/Command;)V

    goto :goto_0
.end method

.method public alarmNotification(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .parameter "type"
    .parameter "data"

    .prologue
    .line 214
    const-string v0, "REQUEST_LICENSE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "LICENSE_RETRY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    :cond_0
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/nuance/swype/connect/manager/LicenseManager;->lastFetch:J

    .line 216
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/manager/LicenseManager;->requestLicense(Z)V

    .line 218
    :cond_1
    return-void
.end method

.method public destroy()V
    .locals 4

    .prologue
    const-wide/high16 v2, -0x8000

    .line 96
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/LicenseManager;->licenseFile:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/LicenseManager;->licenseFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/connect/manager/LicenseManager;->licenseFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LicenseManager.destroy() unable to delete file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/connect/manager/LicenseManager;->licenseFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    .line 101
    :cond_0
    iput-wide v2, p0, Lcom/nuance/swype/connect/manager/LicenseManager;->licenseExpiration:J

    .line 102
    iput-wide v2, p0, Lcom/nuance/swype/connect/manager/LicenseManager;->licenseCheckThreshold:J

    .line 103
    invoke-super {p0}, Lcom/nuance/swype/connect/manager/AbstractCommandManager;->destroy()V

    .line 104
    return-void
.end method

.method public fetchLicense()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 297
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/LicenseManager;->transactionId:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 298
    const-string v1, "Connect"

    const-string v2, "fetchLicense() Missing transactionId!!!"

    invoke-static {v1, v2}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/nuance/swype/connect/manager/LicenseManager;->lastFetch:J

    .line 300
    iput-boolean v3, p0, Lcom/nuance/swype/connect/manager/LicenseManager;->isGettingLicense:Z

    .line 301
    invoke-virtual {p0, v3}, Lcom/nuance/swype/connect/manager/LicenseManager;->requestLicense(Z)V

    .line 308
    :goto_0
    return-void

    .line 304
    :cond_0
    const-string v1, "fetch"

    invoke-virtual {p0, v1}, Lcom/nuance/swype/connect/manager/LicenseManager;->createCommand(Ljava/lang/String;)Lcom/nuance/swype/connect/util/Command;

    move-result-object v0

    .line 305
    .local v0, command:Lcom/nuance/swype/connect/util/Command;
    iput-boolean v3, v0, Lcom/nuance/swype/connect/util/Command;->allowDuplicateOfCommand:Z

    .line 306
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/LicenseManager;->transactionId:Ljava/lang/String;

    iput-object v1, v0, Lcom/nuance/swype/connect/util/Command;->transactionId:Ljava/lang/String;

    .line 307
    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/manager/LicenseManager;->sendCommand(Lcom/nuance/swype/connect/util/Command;)V

    goto :goto_0
.end method

.method public getDependencies()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 91
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "device"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "session"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public init()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/LicenseManager;->loadPreferences()V

    .line 80
    return-void
.end method

.method public onFileResponse(Lcom/nuance/swype/connect/util/Response;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 201
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/LicenseManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "fetch"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/swype/connect/util/Response;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    invoke-static {}, Lcom/nuance/swype/connect/util/TimeConversion;->getCurrentTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nuance/swype/connect/manager/LicenseManager;->lastFetch:J

    .line 203
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/manager/LicenseManager;->processLicenseFileResponse(Lcom/nuance/swype/connect/util/Response;)V

    .line 206
    :cond_0
    return-void
.end method

.method public onHandleMessage(Landroid/os/Message;)Z
    .locals 6
    .parameter "message"

    .prologue
    .line 129
    const/4 v0, 0x0

    .line 130
    .local v0, handled:Z
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 180
    :goto_0
    return v0

    .line 132
    :sswitch_0
    const-string v3, "Message: Command License Request"

    invoke-static {v3}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "DEFAULT_KEY"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 134
    .local v1, immediate:Z
    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/LicenseManager;->getManagerStartState()Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    move-result-object v3

    sget-object v4, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;->STARTED:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    if-ne v3, v4, :cond_0

    .line 135
    invoke-virtual {p0, v1}, Lcom/nuance/swype/connect/manager/LicenseManager;->requestLicense(Z)V

    .line 140
    :goto_1
    const/4 v0, 0x1

    .line 141
    goto :goto_0

    .line 137
    :cond_0
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v2

    .line 138
    .local v2, m:Landroid/os/Message;
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/LicenseManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const-wide/16 v4, 0x5dc

    invoke-virtual {v3, v2, v4, v5}, Lcom/nuance/swype/connect/ConnectClient;->postMessageDelayed(Landroid/os/Message;J)V

    goto :goto_1

    .line 144
    .end local v1           #immediate:Z
    .end local v2           #m:Landroid/os/Message;
    :sswitch_1
    const-string v3, "Message: Command License Fetch"

    invoke-static {v3}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/LicenseManager;->fetchLicense()V

    .line 146
    const/4 v0, 0x1

    .line 147
    goto :goto_0

    .line 150
    :sswitch_2
    const-string v3, "Message: Command License Ack"

    invoke-static {v3}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/LicenseManager;->ackLicenseFile()V

    .line 152
    const/4 v0, 0x1

    .line 153
    goto :goto_0

    .line 156
    :sswitch_3
    const-string v3, "Message: Receive License Expiration"

    invoke-static {v3}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "DEFAULT_KEY"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/nuance/swype/connect/manager/LicenseManager;->setLicenseExpiration(Ljava/lang/String;)V

    .line 158
    const/4 v0, 0x1

    .line 159
    goto :goto_0

    .line 162
    :sswitch_4
    const-string v3, "Message: Receive License Checksum"

    invoke-static {v3}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "DEFAULT_KEY"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/nuance/swype/connect/manager/LicenseManager;->ackLicenseFileChecksum(Ljava/lang/String;)V

    .line 164
    const/4 v0, 0x1

    .line 165
    goto :goto_0

    .line 168
    :sswitch_5
    const-string v3, "Message: Receive License Check Threshold"

    invoke-static {v3}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "DEFAULT_KEY"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/nuance/swype/connect/manager/LicenseManager;->setLicenseCheckThreshold(Ljava/lang/String;)V

    .line 170
    const/4 v0, 0x1

    .line 171
    goto :goto_0

    .line 174
    :sswitch_6
    const-string v3, "Message: Receive License Status"

    invoke-static {v3}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "DEFAULT_KEY"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/nuance/swype/connect/manager/LicenseManager;->setLicenseCheckThreshold(Ljava/lang/String;)V

    .line 176
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 130
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_1
        0xb -> :sswitch_2
        0xce -> :sswitch_5
        0xcf -> :sswitch_3
        0xd0 -> :sswitch_4
        0xda -> :sswitch_6
    .end sparse-switch
.end method

.method public onResponse(Lcom/nuance/swype/connect/util/Response;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 185
    iget-object v0, p1, Lcom/nuance/swype/connect/util/Response;->transactionId:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/LicenseManager;->transactionId:Ljava/lang/String;

    .line 187
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/LicenseManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "request"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/swype/connect/util/Response;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/manager/LicenseManager;->processRequestLicenseResponse(Lcom/nuance/swype/connect/util/Response;)V

    .line 196
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/LicenseManager;->savePreferences()V

    .line 197
    return-void

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/LicenseManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "ack"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/swype/connect/util/Response;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 190
    invoke-virtual {p0, p1}, Lcom/nuance/swype/connect/manager/LicenseManager;->processRequestLicenseAckResponse(Lcom/nuance/swype/connect/util/Response;)V

    goto :goto_0

    .line 191
    :cond_2
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/LicenseManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "fetch"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/swype/connect/util/Response;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    invoke-static {}, Lcom/nuance/swype/connect/util/TimeConversion;->getCurrentTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nuance/swype/connect/manager/LicenseManager;->lastFetch:J

    .line 193
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/manager/LicenseManager;->processLicenseFileFetchResponse(Lcom/nuance/swype/connect/util/Response;)V

    goto :goto_0
.end method

.method public postUpgrade()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 112
    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/LicenseManager;->getManagerStartState()Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    move-result-object v3

    sget-object v4, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;->STARTED:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    if-ne v3, v4, :cond_0

    .line 113
    invoke-virtual {p0, v5}, Lcom/nuance/swype/connect/manager/LicenseManager;->requestLicense(Z)V

    .line 122
    :goto_0
    return-void

    .line 115
    :cond_0
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/LicenseManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v3}, Lcom/nuance/swype/connect/ConnectClient;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 116
    .local v1, h:Landroid/os/Handler;
    const/16 v3, 0x9

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 117
    .local v2, m:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 118
    .local v0, b:Landroid/os/Bundle;
    const-string v3, "DEFAULT_KEY"

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 119
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 120
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/LicenseManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const-wide/16 v4, 0x5dc

    invoke-virtual {v3, v2, v4, v5}, Lcom/nuance/swype/connect/ConnectClient;->postMessageDelayed(Landroid/os/Message;J)V

    goto :goto_0
.end method

.method protected processRequestLicenseAckResponse(Lcom/nuance/swype/connect/util/Response;)V
    .locals 3
    .parameter "response"

    .prologue
    const/4 v2, 0x0

    .line 365
    iput-boolean v2, p0, Lcom/nuance/swype/connect/manager/LicenseManager;->isGettingLicense:Z

    .line 366
    const/16 v0, 0x9

    invoke-virtual {p0, p1, v0}, Lcom/nuance/swype/connect/manager/LicenseManager;->preProcessResponse(Lcom/nuance/swype/connect/util/Response;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 389
    :cond_0
    :goto_0
    return-void

    .line 370
    :cond_1
    iget v0, p1, Lcom/nuance/swype/connect/util/Response;->status:I

    packed-switch v0, :pswitch_data_0

    .line 382
    :goto_1
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/LicenseManager;->licenseFile:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/LicenseManager;->licenseFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/connect/manager/LicenseManager;->licenseFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LicenseManager.destroy() unable to delete file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/connect/manager/LicenseManager;->licenseFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 372
    :pswitch_0
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/LicenseManager;->setAlarmForLicense()V

    .line 373
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/LicenseManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v1, 0x4e

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(I)V

    .line 374
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/LicenseManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v1, 0x4c

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(I)V

    .line 375
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/LicenseManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v1, 0x4b

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(I)V

    goto :goto_0

    .line 379
    :pswitch_1
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/nuance/swype/connect/manager/LicenseManager;->lastFetch:J

    .line 380
    invoke-virtual {p0, v2}, Lcom/nuance/swype/connect/manager/LicenseManager;->requestLicense(Z)V

    goto :goto_1

    .line 370
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized requestLicense(Z)V
    .locals 10
    .parameter "immediate"

    .prologue
    const-wide/16 v6, -0x1

    .line 226
    monitor-enter p0

    :try_start_0
    iget-boolean v4, p0, Lcom/nuance/swype/connect/manager/LicenseManager;->isGettingLicense:Z

    if-eqz v4, :cond_0

    .line 227
    const-string v4, "We are in the process of getting a new license.  Let\'s not interfere."

    invoke-static {v4}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    :goto_0
    monitor-exit p0

    return-void

    .line 230
    :cond_0
    if-eqz p1, :cond_1

    .line 232
    const-wide/16 v4, -0x1

    :try_start_1
    iput-wide v4, p0, Lcom/nuance/swype/connect/manager/LicenseManager;->lastFetch:J

    .line 235
    :cond_1
    iget-object v4, p0, Lcom/nuance/swype/connect/manager/LicenseManager;->licenseFile:Ljava/io/File;

    if-eqz v4, :cond_2

    .line 236
    iget-object v4, p0, Lcom/nuance/swype/connect/manager/LicenseManager;->licenseFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/nuance/swype/connect/manager/LicenseManager;->licenseFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 237
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requestLicense() unable to delete file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/swype/connect/manager/LicenseManager;->licenseFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    .line 240
    :cond_2
    iget-object v4, p0, Lcom/nuance/swype/connect/manager/LicenseManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const-string v5, "DEFAULT_DELAY"

    invoke-virtual {v4, v5}, Lcom/nuance/swype/connect/ConnectClient;->getConfigurationIntValue(Ljava/lang/String;)I

    move-result v2

    .line 241
    .local v2, defaultDelay:I
    iget-wide v4, p0, Lcom/nuance/swype/connect/manager/LicenseManager;->lastFetch:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/nuance/swype/connect/util/TimeConversion;->getCurrentTime()J

    move-result-wide v4

    int-to-long v6, v2

    iget-wide v8, p0, Lcom/nuance/swype/connect/manager/LicenseManager;->lastFetch:J

    invoke-static {v6, v7, v8, v9}, Lcom/nuance/swype/connect/util/TimeConversion;->convertSecondsToTimeStamp(JJ)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_3

    .line 246
    new-instance v4, Lcom/nuance/swype/connect/util/Alarm$Builder;

    iget-object v5, p0, Lcom/nuance/swype/connect/manager/LicenseManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v5}, Lcom/nuance/swype/connect/ConnectClient;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/nuance/swype/connect/manager/LicenseManager;

    const-string v7, "LICENSE_RETRY"

    invoke-direct {v4, v5, v6, v7}, Lcom/nuance/swype/connect/util/Alarm$Builder;-><init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Lcom/nuance/swype/connect/util/Alarm$Builder;->seconds(I)Lcom/nuance/swype/connect/util/Alarm$Builder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/nuance/swype/connect/util/Alarm$Builder;->wakeDevice(Z)Lcom/nuance/swype/connect/util/Alarm$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/connect/util/Alarm$Builder;->build()Lcom/nuance/swype/connect/util/Alarm;

    move-result-object v0

    .line 251
    .local v0, alarm:Lcom/nuance/swype/connect/util/Alarm;
    invoke-virtual {v0}, Lcom/nuance/swype/connect/util/Alarm;->set()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 226
    .end local v0           #alarm:Lcom/nuance/swype/connect/util/Alarm;
    .end local v2           #defaultDelay:I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 253
    .restart local v2       #defaultDelay:I
    :cond_3
    const/4 v4, 0x1

    :try_start_2
    iput-boolean v4, p0, Lcom/nuance/swype/connect/manager/LicenseManager;->isGettingLicense:Z

    .line 255
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/nuance/swype/connect/manager/LicenseManager;->lastFetch:J

    .line 256
    const-string v4, ""

    iput-object v4, p0, Lcom/nuance/swype/connect/manager/LicenseManager;->licenseFileChecksum:Ljava/lang/String;

    .line 257
    const-wide/high16 v4, -0x8000

    iput-wide v4, p0, Lcom/nuance/swype/connect/manager/LicenseManager;->licenseExpiration:J

    .line 258
    const-wide/high16 v4, -0x8000

    iput-wide v4, p0, Lcom/nuance/swype/connect/manager/LicenseManager;->licenseCheckThreshold:J

    .line 259
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/nuance/swype/connect/manager/LicenseManager;->licenseFile:Ljava/io/File;

    .line 261
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 262
    .local v3, parameters:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "35"

    iget-wide v5, p0, Lcom/nuance/swype/connect/manager/LicenseManager;->licenseExpiration:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    const-string v4, "request"

    invoke-virtual {p0, v4, v3}, Lcom/nuance/swype/connect/manager/LicenseManager;->createCommand(Ljava/lang/String;Ljava/util/HashMap;)Lcom/nuance/swype/connect/util/Command;

    move-result-object v1

    .line 264
    .local v1, command:Lcom/nuance/swype/connect/util/Command;
    const/4 v4, 0x0

    iput-boolean v4, v1, Lcom/nuance/swype/connect/util/Command;->allowDuplicateOfCommand:Z

    .line 265
    invoke-virtual {p0, v1}, Lcom/nuance/swype/connect/manager/LicenseManager;->sendCommand(Lcom/nuance/swype/connect/util/Command;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public start()V
    .locals 2

    .prologue
    .line 83
    sget-object v0, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;->STARTING:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/LicenseManager;->managerStartState:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/connect/manager/LicenseManager;->isGettingLicense:Z

    .line 85
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/LicenseManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v1, 0x4c

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(I)V

    .line 86
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/LicenseManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v1, 0x4b

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(I)V

    .line 87
    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/LicenseManager;->managerStartComplete()V

    .line 88
    return-void
.end method
