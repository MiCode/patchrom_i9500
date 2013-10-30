.class public Lcom/nuance/swype/connect/manager/UpgradeManager;
.super Lcom/nuance/swype/connect/manager/AbstractCommandManager;
.source "UpgradeManager.java"


# static fields
.field public static final ALARM_UNIQUE_ID:I = 0x4808ba5

.field public static final COMMAND_CHECK:Ljava/lang/String; = "check"

.field public static final COMMAND_FAMILY:Ljava/lang/String; = "upgrade"

.field public static final COMMAND_VERSION:I = 0x2

.field public static final MANAGER_NAME:Ljava/lang/String; = "upgrade"

.field private static final MESSAGES_HANDLED:[I = null

.field public static final SETTINGS_DOWNLOAD_NOW_PREFERENCE:Ljava/lang/String; = "upgradeDownloadNowPreference"

.field public static final SETTINGS_INSTALL_NOW_PREFERENCE:Ljava/lang/String; = "upgradeInstallnowPreference"

.field public static final UPGRADE_FILE_PREFERENCE:Ljava/lang/String; = "upgradeFilePreference"

.field public static final UPGRADE_FILE_SD_PREFERENCE:Ljava/lang/String; = "upgradeFileSDPreference"

.field public static final UPGRADE_FILE_SIZE:Ljava/lang/String; = "upgradeFileSize"

.field public static final UPGRADE_FILE_TRANSACTION_PREFERENCE:Ljava/lang/String; = "upgradeFileTransactionPreference"


# instance fields
.field protected apkURL:Ljava/lang/String;

.field private downloadNow:Z

.field private downloadPercent:Lcom/nuance/swype/connect/util/DownloadPercentPreprocessor;

.field private installNow:Z

.field private possibleUpgrade:Z

.field private upgradeAPK:Ljava/io/File;

.field private upgradeAPKChecksum:Ljava/lang/String;

.field private upgradeNotified:Z

.field private upgradeSDAPK:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/nuance/swype/connect/manager/UpgradeManager;->MESSAGES_HANDLED:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0xd4t 0x0t 0x0t 0x0t
        0xd5t 0x0t 0x0t 0x0t
        0x41t 0x0t 0x0t 0x0t
        0x40t 0x0t 0x0t 0x0t
        0x12t 0x1t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/nuance/swype/connect/ConnectClient;)V
    .locals 6
    .parameter "ctx"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 73
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager;-><init>(Lcom/nuance/swype/connect/ConnectClient;)V

    .line 51
    iput-boolean v4, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->downloadNow:Z

    .line 52
    iput-boolean v4, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->installNow:Z

    .line 53
    iput-boolean v4, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->possibleUpgrade:Z

    .line 57
    iput-boolean v4, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->upgradeNotified:Z

    .line 74
    const/4 v1, 0x2

    iput v1, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->version:I

    .line 75
    const-string v1, "upgrade"

    iput-object v1, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->commandFamily:Ljava/lang/String;

    .line 76
    sget-object v1, Lcom/nuance/swype/connect/manager/UpgradeManager;->MESSAGES_HANDLED:[I

    iput-object v1, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->messages:[I

    .line 77
    iput-boolean v5, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->trackSentCommands:Z

    .line 80
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v2, "check"

    new-array v3, v5, [I

    aput v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 83
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v2, "download"

    new-array v3, v5, [I

    aput v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 86
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v2, "ack"

    new-array v3, v5, [I

    aput v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 89
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v2, "status"

    new-array v3, v5, [I

    aput v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 94
    iput-boolean v4, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->downloadNow:Z

    .line 95
    iput-boolean v4, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->installNow:Z

    .line 96
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v1}, Lcom/nuance/swype/connect/ConnectClient;->getDataStore()Lcom/nuance/swype/connect/store/PersistentDataStore;

    move-result-object v0

    .line 97
    .local v0, prefs:Lcom/nuance/swype/connect/store/PersistentDataStore;
    const-string v1, "upgradeDownloadNowPreference"

    iget-boolean v2, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->downloadNow:Z

    invoke-interface {v0, v1, v2}, Lcom/nuance/swype/connect/store/PersistentDataStore;->saveBoolean(Ljava/lang/String;Z)Z

    .line 98
    const-string v1, "upgradeInstallnowPreference"

    iget-boolean v2, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->installNow:Z

    invoke-interface {v0, v1, v2}, Lcom/nuance/swype/connect/store/PersistentDataStore;->saveBoolean(Ljava/lang/String;Z)Z

    .line 100
    new-instance v1, Lcom/nuance/swype/connect/util/DownloadPercentPreprocessor;

    invoke-direct {v1, p0, p1}, Lcom/nuance/swype/connect/util/DownloadPercentPreprocessor;-><init>(Lcom/nuance/swype/connect/manager/AbstractCommandManager;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->downloadPercent:Lcom/nuance/swype/connect/util/DownloadPercentPreprocessor;

    .line 101
    return-void
.end method

.method private disableAutoDownload()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 551
    iput-boolean v2, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->downloadNow:Z

    .line 552
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectClient;->getDataStore()Lcom/nuance/swype/connect/store/PersistentDataStore;

    move-result-object v0

    const-string v1, "upgradeDownloadNowPreference"

    invoke-interface {v0, v1, v2}, Lcom/nuance/swype/connect/store/PersistentDataStore;->saveBoolean(Ljava/lang/String;Z)Z

    .line 553
    return-void
.end method

.method private loadPreferences()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 701
    const-string v5, "UpgradeManager.loadPreferences()"

    invoke-static {v5}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 702
    iget-object v5, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v5}, Lcom/nuance/swype/connect/ConnectClient;->getDataStore()Lcom/nuance/swype/connect/store/PersistentDataStore;

    move-result-object v1

    .line 704
    .local v1, prefs:Lcom/nuance/swype/connect/store/PersistentDataStore;
    const-string v5, "upgradeFilePreference"

    invoke-interface {v1, v5, v7}, Lcom/nuance/swype/connect/store/PersistentDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 705
    .local v2, upgradeAPKPath:Ljava/lang/String;
    const-string v5, "upgradeFileSDPreference"

    invoke-interface {v1, v5, v7}, Lcom/nuance/swype/connect/store/PersistentDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 706
    .local v4, upgradeSDAPKPath:Ljava/lang/String;
    const-string v5, "upgradeDownloadNowPreference"

    invoke-interface {v1, v5, v6}, Lcom/nuance/swype/connect/store/PersistentDataStore;->readBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->downloadNow:Z

    .line 707
    const-string v5, "upgradeInstallnowPreference"

    invoke-interface {v1, v5, v6}, Lcom/nuance/swype/connect/store/PersistentDataStore;->readBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->installNow:Z

    .line 708
    const-string v5, "upgradeFileTransactionPreference"

    invoke-interface {v1, v5, v7}, Lcom/nuance/swype/connect/store/PersistentDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->transactionId:Ljava/lang/String;

    .line 710
    if-eqz v4, :cond_0

    .line 712
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 713
    .local v3, upgradeSDAPK:Ljava/io/File;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 715
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 720
    :goto_0
    const-string v5, "upgradeFileSDPreference"

    invoke-interface {v1, v5}, Lcom/nuance/swype/connect/store/PersistentDataStore;->delete(Ljava/lang/String;)Z

    .line 725
    .end local v3           #upgradeSDAPK:Ljava/io/File;
    :cond_0
    if-eqz v2, :cond_2

    .line 726
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    .line 728
    iget-object v5, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    if-eqz v5, :cond_2

    .line 730
    :try_start_1
    iget-object v5, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->canRead()Z

    move-result v5

    if-nez v5, :cond_2

    .line 731
    :cond_1
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    .line 732
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->downloadNow:Z

    .line 733
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->installNow:Z

    .line 734
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/UpgradeManager;->savePreferences()V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 744
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->transactionId:Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 745
    iget-boolean v5, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->installNow:Z

    if-eqz v5, :cond_3

    .line 746
    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/UpgradeManager;->upgrade()V

    .line 749
    :cond_3
    return-void

    .line 716
    .restart local v3       #upgradeSDAPK:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 717
    .local v0, ex:Ljava/lang/SecurityException;
    const-string v5, "Unable to delete APK from SD card"

    invoke-static {v5}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 736
    .end local v0           #ex:Ljava/lang/SecurityException;
    .end local v3           #upgradeSDAPK:Ljava/io/File;
    :catch_1
    move-exception v0

    .line 737
    .restart local v0       #ex:Ljava/lang/SecurityException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Security Exception while trying to read upgrade file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 739
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/UpgradeManager;->savePreferences()V

    goto :goto_1
.end method

.method private processUpgradeAPKResponse(Lcom/nuance/swype/connect/util/Response;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 624
    const-string v0, "UpgradeManager.processUpgradeAPKResponse()"

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 626
    iget-object v0, p1, Lcom/nuance/swype/connect/util/Response;->file:Ljava/io/File;

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    .line 627
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    invoke-static {v0}, Lcom/nuance/swype/connect/util/EncryptUtils;->md5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->upgradeAPKChecksum:Ljava/lang/String;

    .line 629
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/UpgradeManager;->savePreferences()V

    .line 631
    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/UpgradeManager;->ackUpgradeFile()V

    .line 632
    return-void
.end method

.method private savePreferences()V
    .locals 7

    .prologue
    .line 651
    const-string v4, "UpgradeManager.savePreferences() "

    invoke-static {v4}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 652
    iget-object v4, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v4}, Lcom/nuance/swype/connect/ConnectClient;->getDataStore()Lcom/nuance/swype/connect/store/PersistentDataStore;

    move-result-object v3

    .line 654
    .local v3, prefs:Lcom/nuance/swype/connect/store/PersistentDataStore;
    const/4 v1, 0x0

    .line 655
    .local v1, filePath:Ljava/lang/String;
    const/4 v2, 0x0

    .line 658
    .local v2, filePathSD:Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 659
    iget-object v4, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 662
    :cond_0
    iget-object v4, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->upgradeSDAPK:Ljava/io/File;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->upgradeSDAPK:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 663
    iget-object v4, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->upgradeSDAPK:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 669
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->transactionId:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 670
    const-string v4, "upgradeFileTransactionPreference"

    invoke-interface {v3, v4}, Lcom/nuance/swype/connect/store/PersistentDataStore;->delete(Ljava/lang/String;)Z

    .line 676
    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 677
    const-string v4, "upgradeFilePreference"

    invoke-interface {v3, v4, v1}, Lcom/nuance/swype/connect/store/PersistentDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 678
    const-string v4, "upgradeFileSize"

    iget-object v5, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/nuance/swype/connect/store/PersistentDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 684
    :goto_2
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    .line 685
    const-string v4, "upgradeFileSDPreference"

    invoke-interface {v3, v4, v2}, Lcom/nuance/swype/connect/store/PersistentDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 690
    :goto_3
    const-string v4, "upgradeDownloadNowPreference"

    iget-boolean v5, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->downloadNow:Z

    invoke-interface {v3, v4, v5}, Lcom/nuance/swype/connect/store/PersistentDataStore;->saveBoolean(Ljava/lang/String;Z)Z

    .line 691
    const-string v4, "upgradeInstallnowPreference"

    iget-boolean v5, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->installNow:Z

    invoke-interface {v3, v4, v5}, Lcom/nuance/swype/connect/store/PersistentDataStore;->saveBoolean(Ljava/lang/String;Z)Z

    .line 692
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UpgradeManager.savePreferences() UPGRADE_FILE_TRANSACTION_PREFERENCE: ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->transactionId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 694
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UpgradeManager.savePreferences() UPGRADE_FILE_PREFERENCE: ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 695
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UpgradeManager.savePreferences() UPGRADE_FILE_SD_PREFERENCE: ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 698
    return-void

    .line 665
    :catch_0
    move-exception v0

    .line 666
    .local v0, ex:Ljava/lang/SecurityException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Security Exception while trying to read upgrade file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 672
    .end local v0           #ex:Ljava/lang/SecurityException;
    :cond_2
    const-string v4, "upgradeFileTransactionPreference"

    iget-object v5, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->transactionId:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Lcom/nuance/swype/connect/store/PersistentDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 680
    :cond_3
    const-string v4, "upgradeFilePreference"

    invoke-interface {v3, v4}, Lcom/nuance/swype/connect/store/PersistentDataStore;->delete(Ljava/lang/String;)Z

    .line 681
    const-string v4, "upgradeFileSize"

    invoke-interface {v3, v4}, Lcom/nuance/swype/connect/store/PersistentDataStore;->delete(Ljava/lang/String;)Z

    goto/16 :goto_2

    .line 687
    :cond_4
    const-string v4, "upgradeFileSDPreference"

    invoke-interface {v3, v4}, Lcom/nuance/swype/connect/store/PersistentDataStore;->delete(Ljava/lang/String;)Z

    goto/16 :goto_3
.end method

.method private sendHostUpgradeStatus()V
    .locals 2

    .prologue
    .line 812
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 813
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v1, 0x54

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(I)V

    .line 817
    :cond_0
    :goto_0
    return-void

    .line 814
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->transactionId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 815
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v1, 0x53

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(I)V

    goto :goto_0
.end method

.method private sendSDCardNotification()V
    .locals 4

    .prologue
    .line 823
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 824
    .local v1, state:Ljava/lang/String;
    const-string v0, "INSUFFICIENT_SPACE_SDCARD"

    .line 825
    .local v0, id:Ljava/lang/String;
    const-string v2, "mounted_ro"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 826
    const-string v0, "SDCARD_READONLY"

    .line 835
    :cond_0
    :goto_0
    new-instance v2, Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;

    iget-object v3, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-direct {v2, v3}, Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;-><init>(Lcom/nuance/swype/connect/ConnectClient;)V

    invoke-virtual {v2, v0}, Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;->setMessageId(Ljava/lang/String;)Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;->setFlagMultiline(Z)Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;->send()Lcom/nuance/swype/connect/util/StatusBarNotification;

    .line 836
    return-void

    .line 827
    :cond_1
    const-string v2, "bad_removal"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "nofs"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "removed"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "shared"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "unmountable"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "unmounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 832
    :cond_2
    const-string v0, "SDCARD_REQUIRED"

    goto :goto_0
.end method

.method private upgradeSwype()V
    .locals 20

    .prologue
    .line 387
    const-string v17, "UpgradeManager.upgradeSwype()"

    invoke-static/range {v17 .. v17}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 389
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nuance/swype/connect/manager/UpgradeManager;->downloadNow:Z

    .line 390
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nuance/swype/connect/manager/UpgradeManager;->installNow:Z

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/connect/manager/UpgradeManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/nuance/swype/connect/ConnectClient;->getDataStore()Lcom/nuance/swype/connect/store/PersistentDataStore;

    move-result-object v17

    const-string v18, "upgradeInstallnowPreference"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Lcom/nuance/swype/connect/store/PersistentDataStore;->saveBoolean(Ljava/lang/String;Z)Z

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/connect/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 396
    .local v6, fileName:Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/download/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 397
    .local v3, downloadExternalStorage:Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 399
    .local v5, file:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v17

    if-nez v17, :cond_0

    .line 400
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    move-result v15

    .line 402
    .local v15, makeDirectory:Z
    if-nez v15, :cond_0

    .line 403
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Unable to create download directory: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "; Can\'t upgrade this build"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    .line 405
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/connect/manager/UpgradeManager;->sendSDCardNotification()V

    .line 464
    .end local v15           #makeDirectory:Z
    :goto_0
    return-void

    .line 410
    :cond_0
    new-instance v17, Ljava/io/File;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nuance/swype/connect/manager/UpgradeManager;->upgradeSDAPK:Ljava/io/File;

    .line 412
    const/4 v7, 0x1

    .line 416
    .local v7, fileWorked:Z
    const/4 v8, 0x0

    .line 417
    .local v8, fos:Ljava/io/FileOutputStream;
    const/4 v12, 0x0

    .line 419
    .local v12, is:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v9, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/connect/manager/UpgradeManager;->upgradeSDAPK:Ljava/io/File;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 420
    .end local v8           #fos:Ljava/io/FileOutputStream;
    .local v9, fos:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v13, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/connect/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v13, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 422
    .end local v12           #is:Ljava/io/FileInputStream;
    .local v13, is:Ljava/io/FileInputStream;
    const/16 v17, 0x400

    :try_start_2
    move/from16 v0, v17

    new-array v2, v0, [B

    .line 423
    .local v2, buffer:[B
    const/4 v14, 0x0

    .line 424
    .local v14, len1:I
    :goto_1
    invoke-virtual {v13, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v14

    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v14, v0, :cond_1

    .line 425
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v9, v2, v0, v14}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 429
    .end local v2           #buffer:[B
    .end local v14           #len1:I
    :catchall_0
    move-exception v17

    move-object v12, v13

    .end local v13           #is:Ljava/io/FileInputStream;
    .restart local v12       #is:Ljava/io/FileInputStream;
    move-object v8, v9

    .end local v9           #fos:Ljava/io/FileOutputStream;
    .restart local v8       #fos:Ljava/io/FileOutputStream;
    :goto_2
    :try_start_3
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 430
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V

    throw v17
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 432
    :catch_0
    move-exception v4

    .line 433
    .local v4, ex:Ljava/io/FileNotFoundException;
    :goto_3
    const/4 v7, 0x0

    .line 439
    .end local v4           #ex:Ljava/io/FileNotFoundException;
    .end local v8           #fos:Ljava/io/FileOutputStream;
    :goto_4
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "New File goes here: ["

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "] actual: ["

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "]"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 441
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "new file actual actual: ["

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/connect/manager/UpgradeManager;->upgradeSDAPK:Ljava/io/File;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "] Worked: ["

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "]"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 444
    if-eqz v7, :cond_2

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/connect/manager/UpgradeManager;->upgradeSDAPK:Ljava/io/File;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->deleteOnExit()V

    .line 447
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/connect/manager/UpgradeManager;->savePreferences()V

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/connect/manager/UpgradeManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/nuance/swype/connect/ConnectClient;->onPrepareForUpgrade()V

    .line 454
    new-instance v11, Landroid/content/Intent;

    const-string v17, "android.intent.action.VIEW"

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 455
    .local v11, installIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/connect/manager/UpgradeManager;->upgradeSDAPK:Ljava/io/File;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v16

    .line 456
    .local v16, uri:Landroid/net/Uri;
    const-string v17, "application/vnd.android.package-archive"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 457
    const/high16 v17, 0x1080

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/connect/manager/UpgradeManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lcom/nuance/swype/connect/ConnectClient;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 429
    .end local v11           #installIntent:Landroid/content/Intent;
    .end local v12           #is:Ljava/io/FileInputStream;
    .end local v16           #uri:Landroid/net/Uri;
    .restart local v2       #buffer:[B
    .restart local v9       #fos:Ljava/io/FileOutputStream;
    .restart local v13       #is:Ljava/io/FileInputStream;
    .restart local v14       #len1:I
    :cond_1
    :try_start_4
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    .line 430
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v12, v13

    .line 437
    .end local v13           #is:Ljava/io/FileInputStream;
    .restart local v12       #is:Ljava/io/FileInputStream;
    goto/16 :goto_4

    .line 434
    .end local v12           #is:Ljava/io/FileInputStream;
    .restart local v13       #is:Ljava/io/FileInputStream;
    :catch_1
    move-exception v10

    move-object v12, v13

    .end local v13           #is:Ljava/io/FileInputStream;
    .restart local v12       #is:Ljava/io/FileInputStream;
    move-object v8, v9

    .line 435
    .end local v2           #buffer:[B
    .end local v9           #fos:Ljava/io/FileOutputStream;
    .end local v14           #len1:I
    .restart local v8       #fos:Ljava/io/FileOutputStream;
    .local v10, iex:Ljava/io/IOException;
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/connect/manager/UpgradeManager;->sendSDCardNotification()V

    .line 436
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 461
    .end local v8           #fos:Ljava/io/FileOutputStream;
    .end local v10           #iex:Ljava/io/IOException;
    :cond_2
    const-string v17, "Unable to create download file on SDCARD when it was missing, we can\'t upgrade this build"

    invoke-static/range {v17 .. v17}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 434
    .restart local v8       #fos:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v10

    goto :goto_5

    .line 432
    .end local v8           #fos:Ljava/io/FileOutputStream;
    .end local v12           #is:Ljava/io/FileInputStream;
    .restart local v2       #buffer:[B
    .restart local v9       #fos:Ljava/io/FileOutputStream;
    .restart local v13       #is:Ljava/io/FileInputStream;
    .restart local v14       #len1:I
    :catch_3
    move-exception v4

    move-object v12, v13

    .end local v13           #is:Ljava/io/FileInputStream;
    .restart local v12       #is:Ljava/io/FileInputStream;
    move-object v8, v9

    .end local v9           #fos:Ljava/io/FileOutputStream;
    .restart local v8       #fos:Ljava/io/FileOutputStream;
    goto/16 :goto_3

    .line 429
    .end local v2           #buffer:[B
    .end local v14           #len1:I
    :catchall_1
    move-exception v17

    goto/16 :goto_2

    .end local v8           #fos:Ljava/io/FileOutputStream;
    .restart local v9       #fos:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v17

    move-object v8, v9

    .end local v9           #fos:Ljava/io/FileOutputStream;
    .restart local v8       #fos:Ljava/io/FileOutputStream;
    goto/16 :goto_2
.end method


# virtual methods
.method public ackUpgradeFile()V
    .locals 4

    .prologue
    .line 339
    const-string v2, "UpgradeManager.ackUpgradeFile()"

    invoke-static {v2}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 341
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->upgradeAPKChecksum:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->upgradeAPKChecksum:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 353
    :cond_0
    :goto_0
    return-void

    .line 347
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 348
    .local v1, parameters:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "10"

    iget-object v3, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->upgradeAPKChecksum:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    const-string v2, "ack"

    invoke-virtual {p0, v2, v1}, Lcom/nuance/swype/connect/manager/UpgradeManager;->createCommand(Ljava/lang/String;Ljava/util/HashMap;)Lcom/nuance/swype/connect/util/Command;

    move-result-object v0

    .line 351
    .local v0, command:Lcom/nuance/swype/connect/util/Command;
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->transactionId:Ljava/lang/String;

    iput-object v2, v0, Lcom/nuance/swype/connect/util/Command;->transactionId:Ljava/lang/String;

    .line 352
    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/manager/UpgradeManager;->sendCommand(Lcom/nuance/swype/connect/util/Command;)V

    goto :goto_0
.end method

.method public alarmNotification(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .parameter "type"
    .parameter "data"

    .prologue
    .line 636
    const-string v1, "UpgradeManager has recieved an alarm."

    invoke-static {v1}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 637
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    invoke-virtual {v1, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->hasName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 638
    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/UpgradeManager;->checkForUpgrade()V

    .line 641
    :cond_0
    const-string v1, "UPDATE_DOWNLOAD_PERCENT"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 642
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 643
    .local v0, b:Landroid/os/Bundle;
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->downloadPercent:Lcom/nuance/swype/connect/util/DownloadPercentPreprocessor;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/nuance/swype/connect/util/DownloadPercentPreprocessor;->updateInitialDownloadPercent(Landroid/os/Bundle;)I

    .line 644
    const-string v1, "download"

    iget-object v2, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->downloadPercent:Lcom/nuance/swype/connect/util/DownloadPercentPreprocessor;

    invoke-virtual {v2}, Lcom/nuance/swype/connect/util/DownloadPercentPreprocessor;->getCurrentPercent()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 645
    const-string v1, "total"

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 646
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v2, 0x55

    invoke-virtual {v1, v2, v0}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(ILandroid/os/Bundle;)V

    .line 648
    .end local v0           #b:Landroid/os/Bundle;
    :cond_1
    return-void
.end method

.method public checkForUpgrade()V
    .locals 2

    .prologue
    .line 285
    const-string v1, "UpgradeManager.checkForUpgrade()"

    invoke-static {v1}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 287
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->transactionId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 288
    const-string v1, "Not running check for upgrade since we already know about our upgrade."

    invoke-static {v1}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 295
    :goto_0
    return-void

    .line 292
    :cond_0
    const-string v1, "check"

    invoke-virtual {p0, v1}, Lcom/nuance/swype/connect/manager/UpgradeManager;->createCommand(Ljava/lang/String;)Lcom/nuance/swype/connect/util/Command;

    move-result-object v0

    .line 293
    .local v0, command:Lcom/nuance/swype/connect/util/Command;
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/nuance/swype/connect/util/Command;->allowDuplicateOfCommand:Z

    .line 294
    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/manager/UpgradeManager;->sendCommand(Lcom/nuance/swype/connect/util/Command;)V

    goto :goto_0
.end method

.method public destroy()V
    .locals 0

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/UpgradeManager;->savePreferences()V

    .line 147
    invoke-super {p0}, Lcom/nuance/swype/connect/manager/AbstractCommandManager;->destroy()V

    .line 148
    return-void
.end method

.method public fetchAPK()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 301
    const-string v2, "UpgradeManager.fetchAPK()"

    invoke-static {v2}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 303
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->apkURL:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->apkURL:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 305
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/UpgradeManager;->unwindInstall()V

    .line 330
    :goto_0
    return-void

    .line 309
    :cond_1
    iput-boolean v5, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->downloadNow:Z

    .line 310
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/UpgradeManager;->savePreferences()V

    .line 312
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 313
    .local v0, b:Landroid/os/Bundle;
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->downloadPercent:Lcom/nuance/swype/connect/util/DownloadPercentPreprocessor;

    invoke-virtual {v2, v3}, Lcom/nuance/swype/connect/util/DownloadPercentPreprocessor;->init(Landroid/os/Bundle;)V

    .line 314
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->downloadPercent:Lcom/nuance/swype/connect/util/DownloadPercentPreprocessor;

    invoke-virtual {v2, v3}, Lcom/nuance/swype/connect/util/DownloadPercentPreprocessor;->updateInitialDownloadPercent(Landroid/os/Bundle;)I

    .line 315
    const-string v2, "download"

    iget-object v3, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->downloadPercent:Lcom/nuance/swype/connect/util/DownloadPercentPreprocessor;

    invoke-virtual {v3}, Lcom/nuance/swype/connect/util/DownloadPercentPreprocessor;->getCurrentPercent()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 316
    const-string v2, "total"

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 317
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v3, 0x55

    invoke-virtual {v2, v3, v0}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(ILandroid/os/Bundle;)V

    .line 318
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->downloadPercent:Lcom/nuance/swype/connect/util/DownloadPercentPreprocessor;

    invoke-virtual {v2}, Lcom/nuance/swype/connect/util/DownloadPercentPreprocessor;->disableAlarm()V

    .line 321
    const-string v2, "download"

    invoke-virtual {p0, v2}, Lcom/nuance/swype/connect/manager/UpgradeManager;->createCommand(Ljava/lang/String;)Lcom/nuance/swype/connect/util/Command;

    move-result-object v1

    .line 322
    .local v1, command:Lcom/nuance/swype/connect/util/Command;
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->apkURL:Ljava/lang/String;

    iput-object v2, v1, Lcom/nuance/swype/connect/util/Command;->thirdPartyURL:Ljava/lang/String;

    .line 323
    const-string v2, "GET"

    iput-object v2, v1, Lcom/nuance/swype/connect/util/Command;->method:Ljava/lang/String;

    .line 324
    iput-boolean v4, v1, Lcom/nuance/swype/connect/util/Command;->hasBody:Z

    .line 325
    iput-boolean v4, v1, Lcom/nuance/swype/connect/util/Command;->handleIOException:Z

    .line 326
    iput-boolean v5, v1, Lcom/nuance/swype/connect/util/Command;->notifyDownloadStatus:Z

    .line 327
    iput-boolean v4, v1, Lcom/nuance/swype/connect/util/Command;->allowDuplicateOfCommand:Z

    .line 328
    iput-boolean v5, v1, Lcom/nuance/swype/connect/util/Command;->wifiOnly:Z

    .line 329
    invoke-virtual {p0, v1}, Lcom/nuance/swype/connect/manager/UpgradeManager;->sendCommand(Lcom/nuance/swype/connect/util/Command;)V

    goto :goto_0
.end method

.method public getDependencies()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 129
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "session"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "messaging"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public init()V
    .locals 0

    .prologue
    .line 104
    return-void
.end method

.method public onCancel(Lcom/nuance/swype/connect/util/Command;)V
    .locals 2
    .parameter "command"

    .prologue
    .line 274
    invoke-super {p0, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager;->onCancel(Lcom/nuance/swype/connect/util/Command;)V

    .line 275
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "download"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->isCommandFor(Ljava/lang/String;Lcom/nuance/swype/connect/util/Command;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/UpgradeManager;->unwindInstall()V

    .line 278
    :cond_0
    return-void
.end method

.method public onDownloadStatusResponse(Lcom/nuance/swype/connect/util/Command;II)V
    .locals 3
    .parameter "command"
    .parameter "downloaded"
    .parameter "total"

    .prologue
    .line 259
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v2, "download"

    invoke-virtual {v1, v2, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->isCommandFor(Ljava/lang/String;Lcom/nuance/swype/connect/util/Command;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 260
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->downloadPercent:Lcom/nuance/swype/connect/util/DownloadPercentPreprocessor;

    invoke-virtual {v1, p2, p3}, Lcom/nuance/swype/connect/util/DownloadPercentPreprocessor;->updateDownloadTotals(II)I

    .line 261
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 262
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "download"

    iget-object v2, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->downloadPercent:Lcom/nuance/swype/connect/util/DownloadPercentPreprocessor;

    invoke-virtual {v2}, Lcom/nuance/swype/connect/util/DownloadPercentPreprocessor;->getCurrentPercent()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 263
    const-string v1, "total"

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 264
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v2, 0x55

    invoke-virtual {v1, v2, v0}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(ILandroid/os/Bundle;)V

    .line 266
    if-gez p2, :cond_0

    .line 267
    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/UpgradeManager;->unwindInstall()V

    .line 270
    .end local v0           #b:Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public onFileResponse(Lcom/nuance/swype/connect/util/Response;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 608
    const-string v0, "UpgradeManager.onFileResponse()"

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 609
    invoke-super {p0, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager;->onFileResponse(Lcom/nuance/swype/connect/util/Response;)V

    .line 611
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "download"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/swype/connect/util/Response;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 612
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/manager/UpgradeManager;->processUpgradeAPKResponse(Lcom/nuance/swype/connect/util/Response;)V

    .line 615
    :cond_0
    return-void
.end method

.method public onHandleMessage(Landroid/os/Message;)Z
    .locals 6
    .parameter "message"

    .prologue
    .line 155
    const/4 v2, 0x0

    .line 156
    .local v2, handled:Z
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 204
    :goto_0
    return v2

    .line 158
    :sswitch_0
    const-string v4, "UpgradeManager.onHandleMessage(MESSAGE_CLIENT_UPGRADE_DOWNLOAD)"

    invoke-static {v4}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/UpgradeManager;->fetchAPK()V

    .line 160
    const/4 v2, 0x1

    .line 161
    goto :goto_0

    .line 164
    :sswitch_1
    const-string v4, "UpgradeManager.onHandleMessage(MESSAGE_CLIENT_UPGRADE_INSTALL)"

    invoke-static {v4}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/UpgradeManager;->upgrade()V

    .line 166
    const/4 v2, 0x1

    .line 167
    goto :goto_0

    .line 170
    :sswitch_2
    const-string v4, "UpgradeManager.onHandleMessage(MESSAGE_POSSIBLE_UPGRADE)"

    invoke-static {v4}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/UpgradeManager;->possibleSwypeUpgrade()V

    .line 172
    const/4 v2, 0x1

    .line 173
    goto :goto_0

    .line 176
    :sswitch_3
    const-string v4, "UpgradeManager.onHandleMessage(MESSAGE_CHECK_UPGRADE)"

    invoke-static {v4}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 177
    sget-object v4, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;->DISABLED:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/UpgradeManager;->getManagerStartState()Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 178
    const-string v4, "Marking upgrade for later, we haven\'t started"

    invoke-static {v4}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 179
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->upgradeNotified:Z

    .line 183
    :goto_1
    const/4 v2, 0x1

    .line 184
    goto :goto_0

    .line 181
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/UpgradeManager;->checkForUpgrade()V

    goto :goto_1

    .line 187
    :sswitch_4
    const-string v4, "UpgradeManager.onHandleMessage(MESSAGE_CLIENT_UPGRADE_DOWNLOAD_CANCEL)"

    invoke-static {v4}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 188
    const/4 v1, 0x1

    .line 189
    .local v1, cleanupNow:Z
    iget-object v4, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->sentCommands:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/nuance/swype/connect/util/Command;>;>;"
    :cond_1
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 190
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/connect/util/Command;

    .line 191
    .local v0, c:Lcom/nuance/swype/connect/util/Command;
    if-eqz v0, :cond_1

    iget-object v4, v0, Lcom/nuance/swype/connect/util/Command;->command:Ljava/lang/String;

    const-string v5, "download"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 192
    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/manager/UpgradeManager;->cancelCommand(Lcom/nuance/swype/connect/util/Command;)Z

    move-result v4

    and-int/2addr v1, v4

    .line 193
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "marking command canceled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/nuance/swype/connect/util/Command;->command:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_2

    .line 197
    .end local v0           #c:Lcom/nuance/swype/connect/util/Command;
    :cond_2
    if-eqz v1, :cond_3

    .line 198
    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/UpgradeManager;->unwindInstall()V

    .line 200
    :cond_3
    const/4 v2, 0x1

    .line 201
    goto/16 :goto_0

    .line 156
    :sswitch_data_0
    .sparse-switch
        0x40 -> :sswitch_3
        0x41 -> :sswitch_2
        0xd4 -> :sswitch_0
        0xd5 -> :sswitch_1
        0x112 -> :sswitch_4
    .end sparse-switch
.end method

.method public onIOExceptionResponse(Lcom/nuance/swype/connect/util/Command;)V
    .locals 3
    .parameter "command"

    .prologue
    const/4 v2, 0x0

    .line 230
    const-string v0, "UpgradeManager.onIOExceptionResponse()"

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 231
    invoke-super {p0, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager;->onIOExceptionResponse(Lcom/nuance/swype/connect/util/Command;)V

    .line 233
    if-nez p1, :cond_1

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "download"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->isCommandFor(Ljava/lang/String;Lcom/nuance/swype/connect/util/Command;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    iput-object v2, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->transactionId:Ljava/lang/String;

    .line 242
    iput-object v2, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->apkURL:Ljava/lang/String;

    .line 244
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    if-eqz v0, :cond_2

    .line 245
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UpgradeManager.onIOExceptionResponse() unable to delete file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    .line 251
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->downloadNow:Z

    .line 252
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/UpgradeManager;->savePreferences()V

    .line 253
    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/UpgradeManager;->checkForUpgrade()V

    goto :goto_0
.end method

.method public onResponse(Lcom/nuance/swype/connect/util/Response;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 209
    iget-object v1, p1, Lcom/nuance/swype/connect/util/Response;->initialCommand:Lcom/nuance/swype/connect/util/Command;

    invoke-virtual {p0, v1}, Lcom/nuance/swype/connect/manager/UpgradeManager;->sentCommandFilter(Lcom/nuance/swype/connect/util/Command;)Lcom/nuance/swype/connect/util/Command;

    move-result-object v0

    .line 210
    .local v0, command:Lcom/nuance/swype/connect/util/Command;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/nuance/swype/connect/util/Command;->canceled:Z

    if-eqz v1, :cond_0

    .line 226
    :goto_0
    return-void

    .line 213
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UpgradeManager.onResponse(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/nuance/swype/connect/util/Response;->command:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Transaction Id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->transactionId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 216
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v2, "check"

    invoke-virtual {v1, v2, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/swype/connect/util/Response;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 217
    invoke-virtual {p0, p1}, Lcom/nuance/swype/connect/manager/UpgradeManager;->processCheckResponse(Lcom/nuance/swype/connect/util/Response;)V

    .line 225
    :goto_1
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/UpgradeManager;->savePreferences()V

    goto :goto_0

    .line 218
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v2, "ack"

    invoke-virtual {v1, v2, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/swype/connect/util/Response;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 219
    invoke-virtual {p0, p1}, Lcom/nuance/swype/connect/manager/UpgradeManager;->processAckResponse(Lcom/nuance/swype/connect/util/Response;)V

    goto :goto_1

    .line 220
    :cond_2
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v2, "status"

    invoke-virtual {v1, v2, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/swype/connect/util/Response;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 221
    invoke-virtual {p0, p1}, Lcom/nuance/swype/connect/manager/UpgradeManager;->processStatusResponse(Lcom/nuance/swype/connect/util/Response;)V

    goto :goto_1

    .line 223
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Server returned unknown command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/nuance/swype/connect/util/Response;->command:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public possibleSwypeUpgrade()V
    .locals 1

    .prologue
    .line 762
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->possibleUpgrade:Z

    .line 763
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/UpgradeManager;->loadPreferences()V

    .line 765
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->transactionId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 766
    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/UpgradeManager;->swypeHasUpgraded()V

    .line 770
    :goto_0
    return-void

    .line 768
    :cond_0
    const-string v0, "This install is not an upgrade, false alarm"

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected processAckResponse(Lcom/nuance/swype/connect/util/Response;)V
    .locals 4
    .parameter "response"

    .prologue
    .line 522
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UpgradeManager.processAckResponse() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/nuance/swype/connect/util/Response;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 524
    iget v0, p1, Lcom/nuance/swype/connect/util/Response;->status:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 526
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->downloadNow:Z

    .line 532
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v1, 0xc

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/swype/connect/ConnectClient;->postMessageDelayed(IJ)V

    .line 534
    iget-boolean v0, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->installNow:Z

    if-eqz v0, :cond_0

    .line 536
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/UpgradeManager;->upgradeSwype()V

    .line 542
    :goto_0
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v1, 0x54

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(I)V

    .line 548
    :goto_1
    return-void

    .line 539
    :cond_0
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/UpgradeManager;->disableAutoDownload()V

    goto :goto_0

    .line 545
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/UpgradeManager;->unwindInstall()V

    goto :goto_1
.end method

.method protected processCheckResponse(Lcom/nuance/swype/connect/util/Response;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 500
    const-string v0, "UpgradeManager.processCheckResponse()"

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 502
    iget v0, p1, Lcom/nuance/swype/connect/util/Response;->status:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Lcom/nuance/swype/connect/util/Response;->transactionId:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/nuance/swype/connect/util/Response;->transactionId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p1, Lcom/nuance/swype/connect/util/Response;->thirdPartyURL:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/nuance/swype/connect/util/Response;->thirdPartyURL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 506
    iget-object v0, p1, Lcom/nuance/swype/connect/util/Response;->transactionId:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->transactionId:Ljava/lang/String;

    .line 507
    iget-object v0, p1, Lcom/nuance/swype/connect/util/Response;->thirdPartyURL:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->apkURL:Ljava/lang/String;

    .line 509
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/UpgradeManager;->savePreferences()V

    .line 511
    iget-boolean v0, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->downloadNow:Z

    if-eqz v0, :cond_0

    .line 513
    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/UpgradeManager;->fetchAPK()V

    .line 517
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v1, 0x53

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(I)V

    .line 519
    :cond_1
    return-void
.end method

.method protected processStatusResponse(Lcom/nuance/swype/connect/util/Response;)V
    .locals 4
    .parameter "response"

    .prologue
    .line 579
    const-string v2, "UpgradeManager.processStatusResponse()"

    invoke-static {v2}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 580
    invoke-virtual {p1}, Lcom/nuance/swype/connect/util/Response;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 582
    iget-object v0, p1, Lcom/nuance/swype/connect/util/Response;->initialCommand:Lcom/nuance/swype/connect/util/Command;

    .line 583
    .local v0, command:Lcom/nuance/swype/connect/util/Command;
    iget-object v2, v0, Lcom/nuance/swype/connect/util/Command;->parameters:Ljava/util/HashMap;

    const-string v3, "6"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 585
    .local v1, status:Ljava/lang/Integer;
    if-nez v1, :cond_1

    .line 586
    const-string v2, "recieved a response but no status was sent for it."

    invoke-static {v2}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 604
    :cond_0
    :goto_0
    return-void

    .line 590
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x201

    if-ne v2, v3, :cond_3

    .line 591
    iget v2, p1, Lcom/nuance/swype/connect/util/Response;->status:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 592
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/UpgradeManager;->upgradeSwype()V

    goto :goto_0

    .line 594
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/UpgradeManager;->unwindInstall()V

    goto :goto_0

    .line 596
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x1f6

    if-eq v2, v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x1f5

    if-eq v2, v3, :cond_0

    .line 599
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x1f4

    if-ne v2, v3, :cond_0

    .line 601
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->transactionId:Ljava/lang/String;

    .line 602
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/UpgradeManager;->savePreferences()V

    goto :goto_0
.end method

.method public rebind()V
    .locals 2

    .prologue
    .line 138
    const-string v0, "UpgradeManager.rebind()"

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 139
    sget-object v0, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;->STARTED:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/UpgradeManager;->getManagerStartState()Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/UpgradeManager;->sendHostUpgradeStatus()V

    .line 142
    :cond_0
    return-void
.end method

.method public sendStatus(ILjava/lang/String;)V
    .locals 8
    .parameter "status"
    .parameter "id"

    .prologue
    .line 473
    iget-object v5, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->managerStartState:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    sget-object v6, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;->STARTED:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    invoke-virtual {v5, v6}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 474
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UpgradeManager.sendStatus() -- Status: ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 475
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 476
    .local v1, parameters:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "6"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    const-string v5, "status"

    invoke-virtual {p0, v5, v1}, Lcom/nuance/swype/connect/manager/UpgradeManager;->createCommand(Ljava/lang/String;Ljava/util/HashMap;)Lcom/nuance/swype/connect/util/Command;

    move-result-object v0

    .line 479
    .local v0, command:Lcom/nuance/swype/connect/util/Command;
    iput-object p2, v0, Lcom/nuance/swype/connect/util/Command;->transactionId:Ljava/lang/String;

    .line 480
    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/manager/UpgradeManager;->sendCommand(Lcom/nuance/swype/connect/util/Command;)V

    .line 491
    .end local v0           #command:Lcom/nuance/swype/connect/util/Command;
    .end local v1           #parameters:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    return-void

    .line 482
    :cond_0
    move v3, p1

    .line 483
    .local v3, s:I
    move-object v4, p2

    .line 484
    .local v4, tid:Ljava/lang/String;
    new-instance v2, Lcom/nuance/swype/connect/manager/UpgradeManager$1;

    invoke-direct {v2, p0, v3, v4}, Lcom/nuance/swype/connect/manager/UpgradeManager$1;-><init>(Lcom/nuance/swype/connect/manager/UpgradeManager;ILjava/lang/String;)V

    .line 489
    .local v2, r:Ljava/lang/Runnable;
    iget-object v5, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v5}, Lcom/nuance/swype/connect/ConnectClient;->getHandler()Landroid/os/Handler;

    move-result-object v5

    const-wide/16 v6, 0x3e8

    invoke-virtual {v5, v2, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public start()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 107
    sget-object v0, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;->STARTING:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->managerStartState:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    .line 108
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/UpgradeManager;->loadPreferences()V

    .line 111
    iput-boolean v1, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->downloadNow:Z

    .line 112
    iput-boolean v1, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->installNow:Z

    .line 113
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/UpgradeManager;->savePreferences()V

    .line 115
    iget-boolean v0, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->possibleUpgrade:Z

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/UpgradeManager;->possibleSwypeUpgrade()V

    .line 119
    :cond_0
    iget-boolean v0, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->upgradeNotified:Z

    if-eqz v0, :cond_1

    .line 120
    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/UpgradeManager;->checkForUpgrade()V

    .line 121
    iput-boolean v1, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->upgradeNotified:Z

    .line 124
    :cond_1
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/UpgradeManager;->sendHostUpgradeStatus()V

    .line 125
    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/UpgradeManager;->managerStartComplete()V

    .line 126
    return-void
.end method

.method public swypeHasUpgraded()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 779
    const-string v1, "upgradeManager.swypeHasUpgraded() - cleaning up now"

    invoke-static {v1}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 781
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->upgradeSDAPK:Ljava/io/File;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->upgradeSDAPK:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 783
    :try_start_0
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->upgradeSDAPK:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 789
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 791
    :try_start_1
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 798
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v1}, Lcom/nuance/swype/connect/ConnectClient;->onPostUpgrade()V

    .line 800
    const/16 v1, 0x1f4

    iget-object v2, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->transactionId:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/nuance/swype/connect/manager/UpgradeManager;->sendStatus(ILjava/lang/String;)V

    .line 802
    iput-object v3, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->upgradeSDAPK:Ljava/io/File;

    .line 803
    iput-object v3, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    .line 804
    iput-object v3, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->transactionId:Ljava/lang/String;

    .line 805
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/UpgradeManager;->savePreferences()V

    .line 808
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v2, 0x6a

    invoke-virtual {v1, v2}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(I)V

    .line 809
    return-void

    .line 784
    :catch_0
    move-exception v0

    .line 785
    .local v0, ex:Ljava/lang/SecurityException;
    const-string v1, "Unable to delete APK from SD card"

    invoke-static {v1}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 792
    .end local v0           #ex:Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 793
    .restart local v0       #ex:Ljava/lang/SecurityException;
    const-string v1, "Unable to delete APK"

    invoke-static {v1}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public swypeUpgradeCanceled()V
    .locals 2

    .prologue
    .line 755
    const-string v0, "upgradeManager.swypeUpgradeCanceled()"

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 757
    const/16 v0, 0x1f6

    iget-object v1, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->transactionId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/connect/manager/UpgradeManager;->sendStatus(ILjava/lang/String;)V

    .line 758
    return-void
.end method

.method protected unwindInstall()V
    .locals 2

    .prologue
    .line 559
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 560
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 561
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UpgradeManager.unwindInstall() unable to delete file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    .line 565
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->transactionId:Ljava/lang/String;

    .line 567
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/UpgradeManager;->disableAutoDownload()V

    .line 568
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/UpgradeManager;->savePreferences()V

    .line 570
    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/UpgradeManager;->checkForUpgrade()V

    .line 571
    return-void
.end method

.method public upgrade()V
    .locals 2

    .prologue
    .line 361
    const-string v0, "UpgradeManager.upgrade()"

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 363
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->upgradeAPK:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->transactionId:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 381
    :cond_0
    :goto_0
    return-void

    .line 372
    :cond_1
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/UpgradeManager;->savePreferences()V

    .line 376
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectClient;->isOnline()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 377
    const/16 v0, 0x201

    iget-object v1, p0, Lcom/nuance/swype/connect/manager/UpgradeManager;->transactionId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/connect/manager/UpgradeManager;->sendStatus(ILjava/lang/String;)V

    goto :goto_0

    .line 379
    :cond_2
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/UpgradeManager;->upgradeSwype()V

    goto :goto_0
.end method
