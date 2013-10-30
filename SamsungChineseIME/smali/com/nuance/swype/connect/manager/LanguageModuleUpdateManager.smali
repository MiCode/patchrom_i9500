.class public Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;
.super Lcom/nuance/swype/connect/manager/AbstractCommandManager;
.source "LanguageModuleUpdateManager.java"


# static fields
.field private static final ALM_AVAIL_NOTIFICATION_TIMEOUT:I = 0x78

.field public static final ALM_DATA_STORE:Ljava/lang/String; = "alm.METADATA"

.field private static final ALM_DOWNLOAD_NOTIFICATION:Ljava/lang/String; = "ALM_DOWNLOAD_NOTIFICATION"

.field public static final COMMAND_DOWNLOAD_ALM:Ljava/lang/String; = "downloadAlm"

.field public static final COMMAND_FAMILY:Ljava/lang/String; = "alm"

.field public static final COMMAND_VERSION:I = 0x4

.field public static final DOWNLOAD_LIST_STATE_PREF:Ljava/lang/String; = "alm.DOWNLOAD_LIST_STATE"

.field public static final LIST_STATE_AVAILABLE:I = 0x1

.field public static final LIST_STATE_NONE:I = 0x2

.field public static final LIST_STATE_UNKNOWN:I = 0x0

.field public static final MANAGER_NAME:Ljava/lang/String; = "alm"

.field private static final MESSAGES_HANDLED:[I = null

.field public static final PREF_ALM_DL:Ljava/lang/String; = "ALM_DL"


# instance fields
.field private almListState:I

.field private downloadPercent:Lcom/nuance/swype/connect/util/DownloadPercentPreprocessor;

.field private languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->MESSAGES_HANDLED:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x1dt 0x0t 0x0t 0x0t
        0xeat 0x0t 0x0t 0x0t
        0xebt 0x0t 0x0t 0x0t
        0xect 0x0t 0x0t 0x0t
        0x13t 0x1t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/nuance/swype/connect/ConnectClient;)V
    .locals 5
    .parameter "ctx"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 157
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager;-><init>(Lcom/nuance/swype/connect/ConnectClient;)V

    .line 130
    iput v4, p0, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->almListState:I

    .line 158
    const/4 v0, 0x4

    iput v0, p0, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->version:I

    .line 159
    const-string v0, "alm"

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->commandFamily:Ljava/lang/String;

    .line 160
    sget-object v0, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->MESSAGES_HANDLED:[I

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->messages:[I

    .line 161
    new-instance v0, Lcom/nuance/swype/connect/util/DownloadPercentPreprocessor;

    invoke-direct {v0, p0, p1}, Lcom/nuance/swype/connect/util/DownloadPercentPreprocessor;-><init>(Lcom/nuance/swype/connect/manager/AbstractCommandManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->downloadPercent:Lcom/nuance/swype/connect/util/DownloadPercentPreprocessor;

    .line 164
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "list"

    new-array v2, v3, [I

    aput v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 167
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "get"

    new-array v2, v3, [I

    aput v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 170
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "downloadAlm"

    new-array v2, v3, [I

    aput v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 173
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "ack"

    new-array v2, v3, [I

    aput v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 176
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "status"

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 181
    return-void

    .line 176
    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private cleanUpFromFailedInstall(Ljava/lang/String;ZZ)V
    .locals 5
    .parameter "lang"
    .parameter "notifyServer"
    .parameter "processQueue"

    .prologue
    .line 904
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->downloadPercent:Lcom/nuance/swype/connect/util/DownloadPercentPreprocessor;

    invoke-virtual {v3}, Lcom/nuance/swype/connect/util/DownloadPercentPreprocessor;->reset()V

    .line 905
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v3, p1}, Lcom/nuance/swype/connect/util/InstallMetadata;->hasPackage(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 906
    if-eqz p3, :cond_0

    .line 907
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->processQueuedInstalls()V

    .line 929
    :cond_0
    :goto_0
    return-void

    .line 911
    :cond_1
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v4, "FILE_LOCATION"

    invoke-virtual {v3, p1, v4}, Lcom/nuance/swype/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 912
    .local v1, filePath:Ljava/lang/String;
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v4, "TRANSACTION_ID"

    invoke-virtual {v3, p1, v4}, Lcom/nuance/swype/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 913
    .local v2, transactionId:Ljava/lang/String;
    if-eqz v1, :cond_2

    const-string v3, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 914
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 915
    .local v0, f:Ljava/io/File;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 916
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_2

    .line 917
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to delete file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 922
    .end local v0           #f:Ljava/io/File;
    :cond_2
    if-eqz p2, :cond_3

    if-eqz v2, :cond_3

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 923
    const/16 v3, 0x1f5

    invoke-direct {p0, p1, v3, v2}, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->sendStatus(Ljava/lang/String;ILjava/lang/String;)V

    .line 925
    :cond_3
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v3, p1}, Lcom/nuance/swype/connect/util/InstallMetadata;->uninstallPackage(Ljava/lang/String;)V

    .line 926
    if-eqz p3, :cond_0

    .line 927
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->processQueuedInstalls()V

    goto :goto_0
.end method

.method private finishAlmInstall(Ljava/lang/String;)V
    .locals 4
    .parameter "lang"

    .prologue
    .line 768
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finishAlmInstall("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 770
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v1, p1}, Lcom/nuance/swype/connect/util/InstallMetadata;->getProps(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 771
    .local v0, props:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v2, 0x1f7

    const-string v1, "TRANSACTION_ID"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, p1, v2, v1}, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->sendStatus(Ljava/lang/String;ILjava/lang/String;)V

    .line 772
    const-string v1, "STEP"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 773
    const-string v1, "INSTALL_TIME"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    const-string v1, "TRANSACTION_ID"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 775
    const-string v1, "FILE_LOCATION"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 776
    const-string v1, "CHECKSUM"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 777
    const-string v1, "URL"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 778
    const-string v1, "PROP_DOWNLOAD_PERCENT"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 779
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v1, p1, v0}, Lcom/nuance/swype/connect/util/InstallMetadata;->setProps(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 780
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->sendAlmDownloadsStatus()V

    .line 781
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->saveInstalledALMList()V

    .line 782
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->sendAlmInstalledNotification(Ljava/lang/String;)V

    .line 784
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v1}, Lcom/nuance/swype/connect/util/InstallMetadata;->hasMoreInstalls()Z

    move-result v1

    if-nez v1, :cond_0

    .line 785
    const-string v1, "finishLanguageInstall() -  All installs complete.  Updating device."

    invoke-static {v1}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 786
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/nuance/swype/connect/ConnectClient;->postMessage(I)V

    .line 790
    :goto_0
    return-void

    .line 788
    :cond_0
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->processQueuedInstalls()V

    goto :goto_0
.end method

.method private loadPreferences()V
    .locals 3

    .prologue
    .line 746
    new-instance v0, Lcom/nuance/swype/connect/util/InstallMetadata;

    iget-object v1, p0, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const-string v2, "alm.METADATA"

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/connect/util/InstallMetadata;-><init>(Lcom/nuance/swype/connect/ConnectClient;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    .line 747
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectClient;->getDataStore()Lcom/nuance/swype/connect/store/PersistentDataStore;

    move-result-object v0

    const-string v1, "alm.DOWNLOAD_LIST_STATE"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/nuance/swype/connect/store/PersistentDataStore;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->almListState:I

    .line 748
    return-void
.end method

.method private onResponseAck(Lcom/nuance/swype/connect/util/Response;)V
    .locals 6
    .parameter "response"

    .prologue
    const/4 v5, 0x1

    .line 627
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onResponseAck()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/nuance/swype/connect/util/Response;->status:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 628
    iget-object v3, p1, Lcom/nuance/swype/connect/util/Response;->initialCommand:Lcom/nuance/swype/connect/util/Command;

    iget-object v3, v3, Lcom/nuance/swype/connect/util/Command;->parameters:Ljava/util/HashMap;

    const-string v4, "13"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 629
    .local v1, lang:Ljava/lang/String;
    iget v3, p1, Lcom/nuance/swype/connect/util/Response;->status:I

    if-ne v5, v3, :cond_0

    .line 630
    const-string v3, "onResponseAck() -- SUCCESS sending message to Swype"

    invoke-static {v3}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 631
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v3, v1}, Lcom/nuance/swype/connect/util/InstallMetadata;->getProps(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    .line 632
    .local v2, props:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "STEP"

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 634
    .local v0, data:Landroid/os/Bundle;
    const-string v3, "DEFAULT_KEY"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    const-string v4, "filePath"

    const-string v3, "FILE_LOCATION"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v4, 0x68

    invoke-virtual {v3, v4, v0}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(ILandroid/os/Bundle;)V

    .line 637
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v3, v1, v2}, Lcom/nuance/swype/connect/util/InstallMetadata;->setProps(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 638
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->sendAlmDownloadsStatus()V

    .line 645
    .end local v0           #data:Landroid/os/Bundle;
    .end local v2           #props:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 641
    :cond_0
    invoke-direct {p0, v1, v5, v5}, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->cleanUpFromFailedInstall(Ljava/lang/String;ZZ)V

    .line 642
    invoke-direct {p0, v1}, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->sendGet(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onResponseDownloadALM(Lcom/nuance/swype/connect/util/Response;)V
    .locals 5
    .parameter "response"

    .prologue
    .line 723
    const-string v3, "onResponseDownloadALM()"

    invoke-static {v3}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 724
    iget-object v3, p1, Lcom/nuance/swype/connect/util/Response;->initialCommand:Lcom/nuance/swype/connect/util/Command;

    iget-object v3, v3, Lcom/nuance/swype/connect/util/Command;->parameters:Ljava/util/HashMap;

    const-string v4, "13"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 725
    .local v1, lang:Ljava/lang/String;
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v3, v1}, Lcom/nuance/swype/connect/util/InstallMetadata;->getProps(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    .line 727
    .local v2, props:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p1, Lcom/nuance/swype/connect/util/Response;->file:Ljava/io/File;

    invoke-static {v3}, Lcom/nuance/swype/connect/util/EncryptUtils;->md5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 728
    .local v0, checksum:Ljava/lang/String;
    const-string v3, "FILE_LOCATION"

    iget-object v4, p1, Lcom/nuance/swype/connect/util/Response;->file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 729
    const-string v3, "CHECKSUM"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 730
    const-string v3, "STEP"

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 731
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v3, v1, v2}, Lcom/nuance/swype/connect/util/InstallMetadata;->setProps(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 732
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "language ALM file path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/nuance/swype/connect/util/Response;->file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 733
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->sendAlmDownloadsStatus()V

    .line 735
    invoke-direct {p0, v1}, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->sendAck(Ljava/lang/String;)V

    .line 736
    return-void
.end method

.method private onResponseGet(Lcom/nuance/swype/connect/util/Response;)V
    .locals 10
    .parameter "response"

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 546
    const-string v5, "onResponseGet()"

    invoke-static {v5}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 547
    iget-object v5, p1, Lcom/nuance/swype/connect/util/Response;->initialCommand:Lcom/nuance/swype/connect/util/Command;

    iget-object v5, v5, Lcom/nuance/swype/connect/util/Command;->parameters:Ljava/util/HashMap;

    const-string v6, "13"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 550
    .local v2, lang:Ljava/lang/String;
    iget v5, p1, Lcom/nuance/swype/connect/util/Response;->status:I

    if-ne v8, v5, :cond_0

    .line 551
    iget-object v5, p0, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v5, v2}, Lcom/nuance/swype/connect/util/InstallMetadata;->getProps(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    .line 552
    .local v4, props:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "TRANSACTION_ID"

    iget-object v6, p1, Lcom/nuance/swype/connect/util/Response;->transactionId:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    const-string v5, "URL"

    iget-object v6, p1, Lcom/nuance/swype/connect/util/Response;->thirdPartyURL:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    const-string v5, "STEP"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    const-string v5, "PROP_DOWNLOAD_PERCENT"

    iget-object v6, p0, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->downloadPercent:Lcom/nuance/swype/connect/util/DownloadPercentPreprocessor;

    invoke-virtual {v6}, Lcom/nuance/swype/connect/util/DownloadPercentPreprocessor;->getCurrentPercent()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    iget-object v5, p0, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v5, v2, v4}, Lcom/nuance/swype/connect/util/InstallMetadata;->setProps(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 557
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->sendAlmDownloadsStatus()V

    .line 559
    iget-object v5, p1, Lcom/nuance/swype/connect/util/Response;->thirdPartyURL:Ljava/lang/String;

    invoke-direct {p0, v2, v5}, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->sendDownloadALM(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    .end local v4           #props:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 561
    :cond_0
    iget v5, p0, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->lastCommandRetryCount:I

    if-gt v5, v9, :cond_1

    .line 562
    invoke-direct {p0, v2, v7, v8}, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->cleanUpFromFailedInstall(Ljava/lang/String;ZZ)V

    .line 563
    iget-object v5, p0, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v5}, Lcom/nuance/swype/connect/ConnectClient;->getHandler()Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x1d

    invoke-virtual {v5, v6, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 565
    .local v3, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 566
    .local v0, data:Landroid/os/Bundle;
    const-string v5, "DEFAULT_KEY"

    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    invoke-virtual {v3, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 568
    iget-object v5, p0, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->calcMessageSendDelay()J

    move-result-wide v6

    invoke-virtual {v5, v3, v6, v7}, Lcom/nuance/swype/connect/ConnectClient;->postMessageDelayed(Landroid/os/Message;J)V

    goto :goto_0

    .line 572
    .end local v0           #data:Landroid/os/Bundle;
    .end local v3           #msg:Landroid/os/Message;
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processGetLanguagePackResponse() server returned "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Lcom/nuance/swype/connect/util/Response;->status:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " notifying user. giving up."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    .line 574
    invoke-direct {p0, v2, v7, v8}, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->cleanUpFromFailedInstall(Ljava/lang/String;ZZ)V

    .line 576
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 577
    .local v1, extras:Landroid/os/Bundle;
    const-string v5, "DEFAULT_KEY"

    const-string v6, "UPDATES"

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    new-instance v5, Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;

    iget-object v6, p0, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-direct {v5, v6}, Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;-><init>(Lcom/nuance/swype/connect/ConnectClient;)V

    const-string v6, "DOWNLOAD_FAILED"

    invoke-virtual {v5, v6}, Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;->setMessageId(Ljava/lang/String;)Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;->setReplaceText(Ljava/lang/String;)Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;

    move-result-object v5

    const-string v6, "DISPLAY_LANG"

    invoke-virtual {v5, v6}, Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;->setReplaceTextDecorator(Ljava/lang/String;)Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;

    move-result-object v5

    const-string v6, "com.nuance.swype.input.DisplaySettings"

    invoke-virtual {v5, v6}, Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;->setAction(Ljava/lang/String;)Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;->setExtras(Landroid/os/Bundle;)Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;->setFlagMultiline(Z)Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;->send()Lcom/nuance/swype/connect/util/StatusBarNotification;

    goto :goto_0
.end method

.method private onResponseList(Lcom/nuance/swype/connect/util/Response;)V
    .locals 8
    .parameter "response"

    .prologue
    const/4 v7, 0x1

    .line 433
    const-string v6, "onResponseList()"

    invoke-static {v6}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 434
    iget v6, p1, Lcom/nuance/swype/connect/util/Response;->status:I

    if-ne v7, v6, :cond_3

    .line 435
    iget-object v6, p1, Lcom/nuance/swype/connect/util/Response;->parameters:Ljava/util/HashMap;

    const-string v7, "44"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 436
    const-string v6, "Processing ALM languages available for download."

    invoke-static {v6}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 438
    :try_start_0
    iget-object v6, p1, Lcom/nuance/swype/connect/util/Response;->parameters:Ljava/util/HashMap;

    const-string v7, "44"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONArray;

    .line 439
    .local v3, jsonLangList:Lorg/json/JSONArray;
    if-eqz v3, :cond_2

    .line 440
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_4

    .line 441
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 442
    .local v4, newAlmList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 443
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 444
    .local v0, alm:Ljava/lang/String;
    iget-object v6, p0, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v6, v0}, Lcom/nuance/swype/connect/util/InstallMetadata;->addPackage(Ljava/lang/String;)Z

    .line 445
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 442
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 447
    .end local v0           #alm:Ljava/lang/String;
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v6}, Lcom/nuance/swype/connect/util/InstallMetadata;->allPackages()Ljava/util/Set;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 448
    .local v5, removedAlms:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5, v4}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 449
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 450
    iget-object v6, p0, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v6}, Lcom/nuance/swype/connect/util/InstallMetadata;->allPackages()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 452
    :cond_1
    const/4 v6, 0x1

    iput v6, p0, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->almListState:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 463
    .end local v2           #i:I
    .end local v3           #jsonLangList:Lorg/json/JSONArray;
    .end local v4           #newAlmList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v5           #removedAlms:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->sendAlmDownloadsStatus()V

    .line 465
    :cond_3
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->savePreferences()V

    .line 466
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->processQueuedInstalls()V

    .line 467
    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->managerStartComplete()V

    .line 468
    return-void

    .line 454
    .restart local v3       #jsonLangList:Lorg/json/JSONArray;
    :cond_4
    :try_start_1
    iget-object v6, p0, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v6}, Lcom/nuance/swype/connect/util/InstallMetadata;->clear()V

    .line 455
    const/4 v6, 0x2

    iput v6, p0, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->almListState:I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 458
    .end local v3           #jsonLangList:Lorg/json/JSONArray;
    :catch_0
    move-exception v1

    .line 459
    .local v1, e:Lorg/json/JSONException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failure processing JSON language list"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private onResponseStatus(Lcom/nuance/swype/connect/util/Response;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 682
    const/4 v0, 0x1

    iget v1, p1, Lcom/nuance/swype/connect/util/Response;->status:I

    if-ne v0, v1, :cond_0

    .line 685
    :cond_0
    return-void
.end method

.method private processQueuedInstalls()V
    .locals 13

    .prologue
    .line 804
    iget-object v9, p0, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v9}, Lcom/nuance/swype/connect/util/InstallMetadata;->isInstalling()Z

    move-result v4

    .line 805
    .local v4, installAlreadyStarted:Z
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "processQueuedInstalls() isInstalling "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 806
    const/4 v5, 0x0

    .line 808
    .local v5, keys:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v4, :cond_2

    .line 809
    iget-object v9, p0, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Integer;

    const/4 v11, 0x0

    const/4 v12, 0x2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const/4 v12, 0x3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const/4 v12, 0x4

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x3

    const/4 v12, 0x5

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/nuance/swype/connect/util/InstallMetadata;->listFromSteps(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 816
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 817
    .local v6, lang:Ljava/lang/String;
    iget-object v9, p0, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v9, v6}, Lcom/nuance/swype/connect/util/InstallMetadata;->getStep(Ljava/lang/String;)I

    move-result v7

    .line 818
    .local v7, step:I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "processQueuedInstalls() lang: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " step: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 820
    iget-object v9, p0, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v10, "TRANSACTION_ID"

    invoke-virtual {v9, v6, v10}, Lcom/nuance/swype/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 822
    .local v8, transactionId:Ljava/lang/String;
    const/4 v9, 0x1

    if-ne v7, v9, :cond_3

    .line 823
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "processQueuedInstalls() lang: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " INSTALL_PENDING. starting now."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 825
    invoke-direct {p0, v6}, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->sendGet(Ljava/lang/String;)V

    .line 866
    .end local v6           #lang:Ljava/lang/String;
    .end local v7           #step:I
    .end local v8           #transactionId:Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->sendAlmDownloadsStatus()V

    .line 867
    return-void

    .line 812
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_2
    iget-object v9, p0, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Integer;

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/nuance/swype/connect/util/InstallMetadata;->listFromSteps(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    goto :goto_0

    .line 827
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v6       #lang:Ljava/lang/String;
    .restart local v7       #step:I
    .restart local v8       #transactionId:Ljava/lang/String;
    :cond_3
    const/4 v9, 0x2

    if-eq v7, v9, :cond_4

    const/4 v9, 0x3

    if-ne v7, v9, :cond_6

    .line 828
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "processQueuedInstalls() lang: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " INSTALL_REQUEST or INSTALL_DOWNLOAD . starting now."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 830
    if-eqz v8, :cond_5

    const-string v9, ""

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 831
    const/16 v9, 0x1f5

    invoke-direct {p0, v6, v9, v8}, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->sendStatus(Ljava/lang/String;ILjava/lang/String;)V

    .line 834
    :cond_5
    iget-object v9, p0, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const/4 v10, 0x1

    invoke-virtual {v9, v6, v10}, Lcom/nuance/swype/connect/util/InstallMetadata;->setStep(Ljava/lang/String;I)V

    .line 835
    invoke-direct {p0, v6}, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->sendGet(Ljava/lang/String;)V

    goto :goto_1

    .line 837
    :cond_6
    const/4 v9, 0x4

    if-ne v7, v9, :cond_8

    .line 838
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "processQueuedInstalls() lang: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " INSTALL_DOWNLOAD_COMPLETE. ack now."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 842
    iget-object v9, p0, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v10, "FILE_LOCATION"

    invoke-virtual {v9, v6, v10}, Lcom/nuance/swype/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 844
    .local v2, filePath:Ljava/lang/String;
    if-eqz v2, :cond_7

    const-string v9, ""

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 845
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 846
    .local v1, f:Ljava/io/File;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 847
    invoke-direct {p0, v6}, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->sendAck(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 850
    .end local v1           #f:Ljava/io/File;
    :cond_7
    iget-object v9, p0, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const/4 v10, 0x1

    invoke-virtual {v9, v6, v10}, Lcom/nuance/swype/connect/util/InstallMetadata;->setStep(Ljava/lang/String;I)V

    .line 851
    invoke-direct {p0, v6}, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->sendGet(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 854
    .end local v2           #filePath:Ljava/lang/String;
    :cond_8
    const/4 v9, 0x5

    if-ne v7, v9, :cond_0

    .line 855
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "processQueuedInstalls() lang: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " INSTALL_DOWNLOAD_VERIFIED. install now."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 857
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 858
    .local v0, data:Landroid/os/Bundle;
    const-string v9, "DEFAULT_KEY"

    invoke-virtual {v0, v9, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    const-string v9, "filePath"

    iget-object v10, p0, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v11, "FILE_LOCATION"

    invoke-virtual {v10, v6, v11}, Lcom/nuance/swype/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    iget-object v9, p0, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v10, 0x68

    invoke-virtual {v9, v10, v0}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(ILandroid/os/Bundle;)V

    goto/16 :goto_1
.end method

.method private saveInstalledALMList()V
    .locals 3

    .prologue
    .line 944
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectClient;->getDataStore()Lcom/nuance/swype/connect/store/PersistentDataStore;

    move-result-object v0

    const-string v1, "ALM_DL"

    iget-object v2, p0, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v2}, Lcom/nuance/swype/connect/util/InstallMetadata;->getInstalledPackageList()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/swype/connect/store/PersistentDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 946
    return-void
.end method

.method private savePreferences()V
    .locals 3

    .prologue
    .line 751
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectClient;->getDataStore()Lcom/nuance/swype/connect/store/PersistentDataStore;

    move-result-object v0

    const-string v1, "alm.DOWNLOAD_LIST_STATE"

    iget v2, p0, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->almListState:I

    invoke-interface {v0, v1, v2}, Lcom/nuance/swype/connect/store/PersistentDataStore;->saveInt(Ljava/lang/String;I)Z

    .line 752
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    if-eqz v0, :cond_0

    .line 753
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/util/InstallMetadata;->saveMetadata()V

    .line 755
    :cond_0
    return-void
.end method

.method private sendAck(Ljava/lang/String;)V
    .locals 5
    .parameter "lang"

    .prologue
    .line 608
    const-string v2, "sendAck()"

    invoke-static {v2}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 609
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v2, p1}, Lcom/nuance/swype/connect/util/InstallMetadata;->getProps(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 610
    .local v1, props:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "ack"

    invoke-virtual {p0, v2}, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->createCommand(Ljava/lang/String;)Lcom/nuance/swype/connect/util/Command;

    move-result-object v0

    .line 611
    .local v0, command:Lcom/nuance/swype/connect/util/Command;
    const-string v2, "TRANSACTION_ID"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v0, Lcom/nuance/swype/connect/util/Command;->transactionId:Ljava/lang/String;

    .line 612
    iget-object v2, v0, Lcom/nuance/swype/connect/util/Command;->parameters:Ljava/util/HashMap;

    const-string v3, "10"

    const-string v4, "CHECKSUM"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    iget-object v2, v0, Lcom/nuance/swype/connect/util/Command;->parameters:Ljava/util/HashMap;

    const-string v3, "13"

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->sendCommand(Lcom/nuance/swype/connect/util/Command;)V

    .line 615
    return-void
.end method

.method private sendAlmDownloadsStatus()V
    .locals 3

    .prologue
    .line 936
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    if-eqz v1, :cond_0

    .line 937
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 938
    .local v0, data:Landroid/os/Bundle;
    const-string v1, "DEFAULT_KEY"

    iget-object v2, p0, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v2}, Lcom/nuance/swype/connect/util/InstallMetadata;->getAllMetadata()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 939
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v2, 0x69

    invoke-virtual {v1, v2, v0}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(ILandroid/os/Bundle;)V

    .line 941
    .end local v0           #data:Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method private sendAlmInstalledNotification(Ljava/lang/String;)V
    .locals 2
    .parameter "lang"

    .prologue
    .line 949
    new-instance v0, Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;

    iget-object v1, p0, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-direct {v0, v1}, Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;-><init>(Lcom/nuance/swype/connect/ConnectClient;)V

    const-string v1, "EMPTY_REPLACE"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;->setTitleId(Ljava/lang/String;)Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;->setTitleReplaceText(Ljava/lang/String;)Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;

    move-result-object v0

    const-string v1, "DISPLAY_LANG"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;->setTitleReplaceTextDecorator(Ljava/lang/String;)Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;

    move-result-object v0

    const-string v1, "SUCCESSFULLY_UPDATED"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;->setMessageId(Ljava/lang/String;)Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;

    move-result-object v0

    const-string v1, "com.nuance.swype.input.Updates.ALM_INSTALLED"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;->setType(Ljava/lang/String;)Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;->send()Lcom/nuance/swype/connect/util/StatusBarNotification;

    .line 955
    return-void
.end method

.method private sendDownloadALM(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "lang"
    .parameter "URL"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 699
    const-string v1, "sendDownloadALM()"

    invoke-static {v1}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 701
    const-string v1, "downloadAlm"

    invoke-virtual {p0, v1}, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->createCommand(Ljava/lang/String;)Lcom/nuance/swype/connect/util/Command;

    move-result-object v0

    .line 702
    .local v0, command:Lcom/nuance/swype/connect/util/Command;
    iput-object p2, v0, Lcom/nuance/swype/connect/util/Command;->thirdPartyURL:Ljava/lang/String;

    .line 703
    const-string v1, "GET"

    iput-object v1, v0, Lcom/nuance/swype/connect/util/Command;->method:Ljava/lang/String;

    .line 704
    iput-boolean v2, v0, Lcom/nuance/swype/connect/util/Command;->hasBody:Z

    .line 705
    iput-boolean v2, v0, Lcom/nuance/swype/connect/util/Command;->handleIOException:Z

    .line 706
    iput-boolean v3, v0, Lcom/nuance/swype/connect/util/Command;->notifyDownloadStatus:Z

    .line 707
    iput-boolean v3, v0, Lcom/nuance/swype/connect/util/Command;->allowDuplicateOfCommand:Z

    .line 708
    iget-object v1, v0, Lcom/nuance/swype/connect/util/Command;->parameters:Ljava/util/HashMap;

    const-string v2, "13"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->sendCommand(Lcom/nuance/swype/connect/util/Command;)V

    .line 711
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->downloadPercent:Lcom/nuance/swype/connect/util/DownloadPercentPreprocessor;

    invoke-virtual {v1}, Lcom/nuance/swype/connect/util/DownloadPercentPreprocessor;->disableAlarm()V

    .line 712
    return-void
.end method

.method private sendGet(Ljava/lang/String;)V
    .locals 5
    .parameter "lang"

    .prologue
    .line 485
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendGet(lang: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 486
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v2, p1}, Lcom/nuance/swype/connect/util/InstallMetadata;->hasPackage(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 489
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ALM is not available for download! ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    .line 530
    :goto_0
    return-void

    .line 493
    :cond_0
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v2, p1}, Lcom/nuance/swype/connect/util/InstallMetadata;->isAvailable(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 494
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/nuance/swype/connect/util/InstallMetadata;->setStep(Ljava/lang/String;I)V

    .line 511
    :cond_1
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v2}, Lcom/nuance/swype/connect/util/InstallMetadata;->isInstalling()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 512
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Another language is already installing.  Adding "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to queue to process later."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 495
    :cond_2
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v2, p1}, Lcom/nuance/swype/connect/util/InstallMetadata;->isDownloading(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 500
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempting to download ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") ALM that is already in the process of being downloaded.  This request is being ignored. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 504
    :cond_3
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v2, p1}, Lcom/nuance/swype/connect/util/InstallMetadata;->isInstalled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 505
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempting to install ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") ALM that is already installed.  This request is being ignored. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 517
    :cond_4
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const/4 v3, 0x2

    invoke-virtual {v2, p1, v3}, Lcom/nuance/swype/connect/util/InstallMetadata;->setStep(Ljava/lang/String;I)V

    .line 519
    const-string v2, "get"

    invoke-virtual {p0, v2}, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->createCommand(Ljava/lang/String;)Lcom/nuance/swype/connect/util/Command;

    move-result-object v0

    .line 520
    .local v0, command:Lcom/nuance/swype/connect/util/Command;
    iget-object v2, v0, Lcom/nuance/swype/connect/util/Command;->parameters:Ljava/util/HashMap;

    const-string v3, "13"

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->sendCommand(Lcom/nuance/swype/connect/util/Command;)V

    .line 523
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 524
    .local v1, data:Landroid/os/Bundle;
    const-string v2, "DEFAULT_KEY"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->downloadPercent:Lcom/nuance/swype/connect/util/DownloadPercentPreprocessor;

    invoke-virtual {v2, v1}, Lcom/nuance/swype/connect/util/DownloadPercentPreprocessor;->init(Landroid/os/Bundle;)V

    .line 526
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v3, "PROP_DOWNLOAD_PERCENT"

    iget-object v4, p0, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->downloadPercent:Lcom/nuance/swype/connect/util/DownloadPercentPreprocessor;

    invoke-virtual {v4, v1}, Lcom/nuance/swype/connect/util/DownloadPercentPreprocessor;->updateInitialDownloadPercent(Landroid/os/Bundle;)I

    move-result v4

    invoke-virtual {v2, p1, v3, v4}, Lcom/nuance/swype/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;I)V

    .line 529
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->sendAlmDownloadsStatus()V

    goto/16 :goto_0
.end method

.method private sendList()V
    .locals 2

    .prologue
    .line 417
    const-string v1, "list"

    invoke-virtual {p0, v1}, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->createCommand(Ljava/lang/String;)Lcom/nuance/swype/connect/util/Command;

    move-result-object v0

    .line 418
    .local v0, command:Lcom/nuance/swype/connect/util/Command;
    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->sendCommand(Lcom/nuance/swype/connect/util/Command;)V

    .line 419
    return-void
.end method

.method private sendStatus(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4
    .parameter "lang"
    .parameter "status"
    .parameter "transactionId"

    .prologue
    .line 664
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendStatus("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 665
    const-string v1, "status"

    invoke-virtual {p0, v1}, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->createCommand(Ljava/lang/String;)Lcom/nuance/swype/connect/util/Command;

    move-result-object v0

    .line 666
    .local v0, command:Lcom/nuance/swype/connect/util/Command;
    iget-object v1, v0, Lcom/nuance/swype/connect/util/Command;->parameters:Ljava/util/HashMap;

    const-string v2, "13"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    iget-object v1, v0, Lcom/nuance/swype/connect/util/Command;->parameters:Ljava/util/HashMap;

    const-string v2, "6"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 668
    if-eqz p3, :cond_0

    .line 669
    iput-object p3, v0, Lcom/nuance/swype/connect/util/Command;->transactionId:Ljava/lang/String;

    .line 671
    :cond_0
    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->sendCommand(Lcom/nuance/swype/connect/util/Command;)V

    .line 672
    return-void
.end method

.method private unwind()V
    .locals 12

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 874
    iget-object v4, p0, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Integer;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    const/4 v6, 0x5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/nuance/swype/connect/util/InstallMetadata;->listFromSteps(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 877
    .local v2, installing:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 878
    .local v3, lang:Ljava/lang/String;
    invoke-direct {p0, v3, v8, v7}, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->cleanUpFromFailedInstall(Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 881
    .end local v3           #lang:Ljava/lang/String;
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 882
    .local v0, extras:Landroid/os/Bundle;
    const-string v4, "DEFAULT_KEY"

    const-string v5, "UPDATES"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    new-instance v4, Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;

    iget-object v5, p0, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-direct {v4, v5}, Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;-><init>(Lcom/nuance/swype/connect/ConnectClient;)V

    const-string v5, "INSUFFICIENT_SPACE"

    invoke-virtual {v4, v5}, Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;->setMessageId(Ljava/lang/String;)Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;

    move-result-object v4

    const-string v5, "com.nuance.swype.input.DisplaySettings"

    invoke-virtual {v4, v5}, Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;->setAction(Ljava/lang/String;)Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;->setExtras(Landroid/os/Bundle;)Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;->setFlagMultiline(Z)Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;->send()Lcom/nuance/swype/connect/util/StatusBarNotification;

    .line 889
    return-void
.end method


# virtual methods
.method public alarmNotification(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .parameter "type"
    .parameter "data"

    .prologue
    .line 233
    const-string v1, "ALM_DOWNLOAD_NOTIFICATION"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 234
    const-string v1, "DEFAULT_KEY"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, potentialAlmNotificationLang:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LanguageModuleUpdateManager.alarmNotification: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 243
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v1}, Lcom/nuance/swype/connect/ConnectClient;->getActiveLanguage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v1}, Lcom/nuance/swype/connect/ConnectClient;->getActiveLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 245
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v1, v0}, Lcom/nuance/swype/connect/util/InstallMetadata;->hasPackage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v1, v0}, Lcom/nuance/swype/connect/util/InstallMetadata;->getStep(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v2, "USER_NOTIFIED"

    invoke-virtual {v1, v0, v2}, Lcom/nuance/swype/connect/util/InstallMetadata;->getBoolProp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 249
    new-instance v1, Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;

    iget-object v2, p0, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-direct {v1, v2}, Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;-><init>(Lcom/nuance/swype/connect/ConnectClient;)V

    const-string v2, "ALM_AVAILABLE_NOTIFICATION_TITLE"

    invoke-virtual {v1, v2}, Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;->setTitleId(Ljava/lang/String;)Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;->setTitleReplaceText(Ljava/lang/String;)Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;

    move-result-object v1

    const-string v2, "DISPLAY_LANG"

    invoke-virtual {v1, v2}, Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;->setTitleReplaceTextDecorator(Ljava/lang/String;)Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;

    move-result-object v1

    const-string v2, "ALM_AVAILABLE_NOTIFICATION_DESC"

    invoke-virtual {v1, v2}, Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;->setMessageId(Ljava/lang/String;)Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;

    move-result-object v1

    const-string v2, "com.nuance.swype.input.InstallALM"

    invoke-virtual {v1, v2}, Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;->setAction(Ljava/lang/String;)Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;->send()Lcom/nuance/swype/connect/util/StatusBarNotification;

    .line 256
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v2, "USER_NOTIFIED"

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/nuance/swype/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 258
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->savePreferences()V

    .line 262
    .end local v0           #potentialAlmNotificationLang:Ljava/lang/String;
    :cond_0
    const-string v1, "UPDATE_DOWNLOAD_PERCENT"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 263
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v2, "DEFAULT_KEY"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "PROP_DOWNLOAD_PERCENT"

    iget-object v4, p0, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->downloadPercent:Lcom/nuance/swype/connect/util/DownloadPercentPreprocessor;

    invoke-virtual {v4, p2}, Lcom/nuance/swype/connect/util/DownloadPercentPreprocessor;->updateInitialDownloadPercent(Landroid/os/Bundle;)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/nuance/swype/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;I)V

    .line 266
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->sendAlmDownloadsStatus()V

    .line 268
    :cond_1
    return-void
.end method

.method public destroy()V
    .locals 0

    .prologue
    .line 217
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->savePreferences()V

    .line 218
    invoke-super {p0}, Lcom/nuance/swype/connect/manager/AbstractCommandManager;->destroy()V

    .line 219
    return-void
.end method

.method public getDependencies()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 205
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
    .line 188
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->loadPreferences()V

    .line 189
    return-void
.end method

.method public onDownloadStatusResponse(Lcom/nuance/swype/connect/util/Command;II)V
    .locals 4
    .parameter "command"
    .parameter "downloaded"
    .parameter "total"

    .prologue
    .line 285
    if-ltz p2, :cond_1

    .line 286
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "downloadAlm"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->isCommandFor(Ljava/lang/String;Lcom/nuance/swype/connect/util/Command;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    iget-object v0, p1, Lcom/nuance/swype/connect/util/Command;->parameters:Ljava/util/HashMap;

    const-string v2, "13"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "PROP_DOWNLOAD_PERCENT"

    iget-object v3, p0, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->downloadPercent:Lcom/nuance/swype/connect/util/DownloadPercentPreprocessor;

    invoke-virtual {v3, p2, p3}, Lcom/nuance/swype/connect/util/DownloadPercentPreprocessor;->updateDownloadTotals(II)I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/nuance/swype/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;I)V

    .line 295
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->sendAlmDownloadsStatus()V

    .line 296
    return-void

    .line 293
    :cond_1
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->unwind()V

    goto :goto_0
.end method

.method public onFileResponse(Lcom/nuance/swype/connect/util/Response;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 300
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "downloadAlm"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/swype/connect/util/Response;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->onResponseDownloadALM(Lcom/nuance/swype/connect/util/Response;)V

    .line 303
    :cond_0
    return-void
.end method

.method public onHandleMessage(Landroid/os/Message;)Z
    .locals 10
    .parameter "message"

    .prologue
    .line 324
    const/4 v2, 0x0

    .line 325
    .local v2, handled:Z
    iget v6, p1, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_0

    .line 394
    :goto_0
    return v2

    .line 327
    :sswitch_0
    const-string v6, "LanguageModuleUpdateManager.onHandleMessage(MESSAGE_COMMAND_ALM_GET)"

    invoke-static {v6}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 329
    :sswitch_1
    const-string v6, "LanguageModuleUpdateManager.onHandleMessage(MESSAGE_CLIENT_ALM_INSTALL)"

    invoke-static {v6}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 330
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "DEFAULT_KEY"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 331
    .local v3, lang:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "ENABLE_REDIRECT"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 333
    .local v5, redirect:Z
    iget-object v6, p0, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v6}, Lcom/nuance/swype/connect/ConnectClient;->getConnectFeaturesStatus()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 334
    invoke-direct {p0, v3}, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->sendGet(Ljava/lang/String;)V

    .line 339
    :goto_1
    if-eqz v5, :cond_0

    .line 342
    iget-object v6, p0, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v7, 0x79

    const-string v8, "UPDATES"

    invoke-virtual {v6, v7, v8}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(ILjava/lang/String;)V

    .line 345
    :cond_0
    const/4 v2, 0x1

    .line 346
    goto :goto_0

    .line 336
    :cond_1
    iget-object v6, p0, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v7, 0x80

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(ILandroid/os/Bundle;)V

    goto :goto_1

    .line 349
    .end local v3           #lang:Ljava/lang/String;
    .end local v5           #redirect:Z
    :sswitch_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LanguageModuleUpdateManager.onHandleMessage(MESSAGE_CLIENT_ALM_INSTALLED) msg.arg1="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 351
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "DEFAULT_KEY"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 352
    .local v4, language:Ljava/lang/String;
    iget v6, p1, Landroid/os/Message;->arg1:I

    const/high16 v7, -0x8000

    if-ne v6, v7, :cond_3

    .line 353
    invoke-direct {p0, v4}, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->finishAlmInstall(Ljava/lang/String;)V

    .line 358
    :cond_2
    :goto_2
    const/4 v2, 0x1

    .line 359
    goto :goto_0

    .line 354
    :cond_3
    iget v6, p1, Landroid/os/Message;->arg1:I

    if-nez v6, :cond_2

    .line 356
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->unwind()V

    goto :goto_2

    .line 362
    .end local v4           #language:Ljava/lang/String;
    :sswitch_3
    const-string v6, "LanguageModuleUpdateManager.onHandleMessage(MESSAGE_CLIENT_SET_ALM_NOTIFICATION_ALARM)"

    invoke-static {v6}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 363
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "DEFAULT_KEY"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 368
    .restart local v4       #language:Ljava/lang/String;
    iget v6, p0, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->almListState:I

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->languageInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v6, v4}, Lcom/nuance/swype/connect/util/InstallMetadata;->isAvailable(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 371
    :cond_4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 372
    .local v1, extras:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "DEFAULT_KEY"

    invoke-virtual {v1, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    new-instance v6, Lcom/nuance/swype/connect/util/Alarm$Builder;

    iget-object v7, p0, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v7}, Lcom/nuance/swype/connect/ConnectClient;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;

    const-string v9, "ALM_DOWNLOAD_NOTIFICATION"

    invoke-direct {v6, v7, v8, v9}, Lcom/nuance/swype/connect/util/Alarm$Builder;-><init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V

    const/16 v7, 0x78

    invoke-virtual {v6, v7}, Lcom/nuance/swype/connect/util/Alarm$Builder;->seconds(I)Lcom/nuance/swype/connect/util/Alarm$Builder;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/nuance/swype/connect/util/Alarm$Builder;->extras(Ljava/util/Map;)Lcom/nuance/swype/connect/util/Alarm$Builder;

    move-result-object v6

    const/high16 v7, 0x800

    invoke-virtual {v6, v7}, Lcom/nuance/swype/connect/util/Alarm$Builder;->flags(I)Lcom/nuance/swype/connect/util/Alarm$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/connect/util/Alarm$Builder;->build()Lcom/nuance/swype/connect/util/Alarm;

    move-result-object v0

    .line 379
    .local v0, alarm:Lcom/nuance/swype/connect/util/Alarm;
    invoke-virtual {v0}, Lcom/nuance/swype/connect/util/Alarm;->set()V

    .line 380
    invoke-virtual {v0}, Lcom/nuance/swype/connect/util/Alarm;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/nuance/swype/connect/util/Logger;->v(Ljava/lang/String;)V

    .line 383
    .end local v0           #alarm:Lcom/nuance/swype/connect/util/Alarm;
    .end local v1           #extras:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    const/4 v2, 0x1

    .line 384
    goto/16 :goto_0

    .line 387
    .end local v4           #language:Ljava/lang/String;
    :sswitch_4
    const/4 v2, 0x1

    .line 388
    goto/16 :goto_0

    .line 325
    :sswitch_data_0
    .sparse-switch
        0x1d -> :sswitch_0
        0xea -> :sswitch_1
        0xeb -> :sswitch_2
        0xec -> :sswitch_3
        0x113 -> :sswitch_4
    .end sparse-switch
.end method

.method public onIOExceptionResponse(Lcom/nuance/swype/connect/util/Command;)V
    .locals 4
    .parameter "command"

    .prologue
    const/4 v3, 0x1

    .line 307
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v2, "downloadAlm"

    invoke-virtual {v1, v2, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->isCommandFor(Ljava/lang/String;Lcom/nuance/swype/connect/util/Command;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 309
    iget-object v1, p1, Lcom/nuance/swype/connect/util/Command;->parameters:Ljava/util/HashMap;

    const-string v2, "13"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 310
    .local v0, lang:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 311
    invoke-direct {p0, v0, v3, v3}, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->cleanUpFromFailedInstall(Ljava/lang/String;ZZ)V

    .line 312
    invoke-direct {p0, v0}, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->sendGet(Ljava/lang/String;)V

    .line 315
    .end local v0           #lang:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onResponse(Lcom/nuance/swype/connect/util/Response;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 272
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "list"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/swype/connect/util/Response;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 273
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->onResponseList(Lcom/nuance/swype/connect/util/Response;)V

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 274
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "get"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/swype/connect/util/Response;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 275
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->onResponseGet(Lcom/nuance/swype/connect/util/Response;)V

    goto :goto_0

    .line 276
    :cond_2
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "ack"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/swype/connect/util/Response;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 277
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->onResponseAck(Lcom/nuance/swype/connect/util/Response;)V

    goto :goto_0

    .line 278
    :cond_3
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "status"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/swype/connect/util/Response;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->onResponseStatus(Lcom/nuance/swype/connect/util/Response;)V

    goto :goto_0
.end method

.method public postStart()V
    .locals 0

    .prologue
    .line 213
    return-void
.end method

.method public prepareForUpgrade()V
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->almListState:I

    .line 224
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->savePreferences()V

    .line 225
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 192
    sget-object v0, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;->STARTING:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->managerStartState:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    .line 193
    iget v0, p0, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->almListState:I

    if-nez v0, :cond_0

    .line 194
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->sendList()V

    .line 202
    :goto_0
    return-void

    .line 199
    :cond_0
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->sendAlmDownloadsStatus()V

    .line 200
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->processQueuedInstalls()V

    .line 201
    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;->managerStartComplete()V

    goto :goto_0
.end method
