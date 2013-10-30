.class public Lcom/nuance/swype/connect/manager/BetaManager;
.super Lcom/nuance/swype/connect/manager/AbstractCommandManager;
.source "BetaManager.java"


# static fields
.field public static final COMMAND_FAMILY:Ljava/lang/String; = "beta"

.field protected static final COMMAND_INSTALLER:Ljava/lang/String; = "installer"

.field protected static final COMMAND_INSTALLER_ACK:Ljava/lang/String; = "installerAck"

.field protected static final COMMAND_INSTALLER_DOWNLOAD:Ljava/lang/String; = "installerDownload"

.field protected static final COMMAND_LOGIN:Ljava/lang/String; = "login"

.field protected static final COMMAND_VALIDATE:Ljava/lang/String; = "validate"

.field public static final MANAGER_NAME:Ljava/lang/String; = "beta"

.field private static final MAX_RETRIES:I = 0x5

.field private static final MESSAGES_HANDLED:[I = null

.field protected static final PROP_CELLULAR_DATA_PERMITTED:Ljava/lang/String; = "cellularDataPermitted"


# instance fields
.field private betaAPKChecksum:Ljava/lang/String;

.field private betaBuildAPK:Ljava/io/File;

.field private betaBuilds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private buildId:Ljava/lang/String;

.field private cellularDataPermitted:Z

.field private downloadRetry:I

.field private downloadURL:Ljava/lang/String;

.field private installerAPK:Ljava/io/File;

.field private installerAPKChecksum:Ljava/lang/String;

.field private installerNewVersion:Ljava/lang/String;

.field private installerURL:Ljava/lang/String;

.field private installerVersionHost:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private upgradeInstaller:Z

.field private username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/nuance/swype/connect/manager/BetaManager;->MESSAGES_HANDLED:[I

    return-void

    :array_0
    .array-data 0x4
        0xe1t 0x0t 0x0t 0x0t
        0xe3t 0x0t 0x0t 0x0t
        0xe2t 0x0t 0x0t 0x0t
        0xe4t 0x0t 0x0t 0x0t
        0xe5t 0x0t 0x0t 0x0t
        0xe6t 0x0t 0x0t 0x0t
        0xe7t 0x0t 0x0t 0x0t
        0xe8t 0x0t 0x0t 0x0t
        0xedt 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/nuance/swype/connect/ConnectClient;)V
    .locals 5
    .parameter "ctx"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 79
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager;-><init>(Lcom/nuance/swype/connect/ConnectClient;)V

    .line 72
    iput v3, p0, Lcom/nuance/swype/connect/manager/BetaManager;->downloadRetry:I

    .line 80
    const/4 v2, 0x4

    iput v2, p0, Lcom/nuance/swype/connect/manager/BetaManager;->version:I

    .line 81
    const-string v2, "beta"

    iput-object v2, p0, Lcom/nuance/swype/connect/manager/BetaManager;->commandFamily:Ljava/lang/String;

    .line 82
    sget-object v2, Lcom/nuance/swype/connect/manager/BetaManager;->MESSAGES_HANDLED:[I

    iput-object v2, p0, Lcom/nuance/swype/connect/manager/BetaManager;->messages:[I

    .line 84
    new-array v0, v4, [I

    aput v4, v0, v3

    .line 85
    .local v0, successOnly:[I
    const/4 v2, 0x3

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    .line 90
    .local v1, userMessages:[I
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/BetaManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v3, "installer"

    invoke-virtual {v2, v3, v0}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 91
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/BetaManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v3, "installerDownload"

    invoke-virtual {v2, v3, v0}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 92
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/BetaManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v3, "installerAck"

    invoke-virtual {v2, v3, v0}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 93
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/BetaManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v3, "login"

    invoke-virtual {v2, v3, v1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 94
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/BetaManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v3, "validate"

    invoke-virtual {v2, v3, v1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 95
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/BetaManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v3, "list"

    invoke-virtual {v2, v3, v0}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 96
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/BetaManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v3, "get"

    invoke-virtual {v2, v3, v0}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 97
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/BetaManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v3, "download"

    invoke-virtual {v2, v3, v0}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 98
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/BetaManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v3, "ack"

    invoke-virtual {v2, v3, v0}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 99
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/BetaManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v3, "status"

    invoke-virtual {v2, v3, v0}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 100
    return-void

    .line 85
    nop

    :array_0
    .array-data 0x4
        0x12t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private ackBuild()V
    .locals 4

    .prologue
    .line 450
    const-string v2, "BetaManager.ackBuild()"

    invoke-static {v2}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 451
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/BetaManager;->managerStartState:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    sget-object v3, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;->STARTED:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    invoke-virtual {v2, v3}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 452
    const-string v2, "BetaManager not started!"

    invoke-static {v2}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    .line 466
    :cond_0
    :goto_0
    return-void

    .line 455
    :cond_1
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/BetaManager;->betaAPKChecksum:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nuance/swype/connect/manager/BetaManager;->betaAPKChecksum:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 461
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 462
    .local v1, parameters:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "10"

    iget-object v3, p0, Lcom/nuance/swype/connect/manager/BetaManager;->betaAPKChecksum:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    const-string v2, "ack"

    invoke-virtual {p0, v2, v1}, Lcom/nuance/swype/connect/manager/BetaManager;->createCommand(Ljava/lang/String;Ljava/util/HashMap;)Lcom/nuance/swype/connect/util/Command;

    move-result-object v0

    .line 464
    .local v0, command:Lcom/nuance/swype/connect/util/Command;
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/BetaManager;->transactionId:Ljava/lang/String;

    iput-object v2, v0, Lcom/nuance/swype/connect/util/Command;->transactionId:Ljava/lang/String;

    .line 465
    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/manager/BetaManager;->sendCommand(Lcom/nuance/swype/connect/util/Command;)V

    goto :goto_0
.end method

.method private ackInstaller()V
    .locals 4

    .prologue
    .line 300
    const-string v2, "BetaManager.ackInstaller()"

    invoke-static {v2}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 301
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/BetaManager;->managerStartState:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    sget-object v3, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;->STARTED:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    invoke-virtual {v2, v3}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 302
    const-string v2, "BetaManager not started!"

    invoke-static {v2}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    .line 317
    :cond_0
    :goto_0
    return-void

    .line 305
    :cond_1
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/BetaManager;->installerAPKChecksum:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nuance/swype/connect/manager/BetaManager;->installerAPKChecksum:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 311
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 312
    .local v1, parameters:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "10"

    iget-object v3, p0, Lcom/nuance/swype/connect/manager/BetaManager;->installerAPKChecksum:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    const-string v2, "50"

    iget-object v3, p0, Lcom/nuance/swype/connect/manager/BetaManager;->installerNewVersion:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    const-string v2, "installerAck"

    invoke-virtual {p0, v2, v1}, Lcom/nuance/swype/connect/manager/BetaManager;->createCommand(Ljava/lang/String;Ljava/util/HashMap;)Lcom/nuance/swype/connect/util/Command;

    move-result-object v0

    .line 316
    .local v0, command:Lcom/nuance/swype/connect/util/Command;
    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/manager/BetaManager;->sendCommand(Lcom/nuance/swype/connect/util/Command;)V

    goto :goto_0
.end method

.method private checkInstaller()V
    .locals 4

    .prologue
    .line 260
    const-string v2, "BetaManager.checkInstaller"

    invoke-static {v2}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 261
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/BetaManager;->managerStartState:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    sget-object v3, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;->STARTED:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    invoke-virtual {v2, v3}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 262
    const-string v2, "    BetaManager.checkInstaller(): Not started yet."

    invoke-static {v2}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    .line 274
    :goto_0
    return-void

    .line 264
    :cond_0
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/BetaManager;->installerVersionHost:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 265
    const-string v2, "    checking for installer with a null installer version"

    invoke-static {v2}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 270
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 271
    .local v1, parameters:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "50"

    iget-object v3, p0, Lcom/nuance/swype/connect/manager/BetaManager;->installerVersionHost:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    const-string v2, "installer"

    invoke-virtual {p0, v2, v1}, Lcom/nuance/swype/connect/manager/BetaManager;->createCommand(Ljava/lang/String;Ljava/util/HashMap;)Lcom/nuance/swype/connect/util/Command;

    move-result-object v0

    .line 273
    .local v0, command:Lcom/nuance/swype/connect/util/Command;
    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/manager/BetaManager;->sendCommand(Lcom/nuance/swype/connect/util/Command;)V

    goto :goto_0
.end method

.method private downloadBuild()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 427
    const-string v1, "BetaManager.downloadBuild"

    invoke-static {v1}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 428
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/BetaManager;->managerStartState:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    sget-object v2, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;->STARTED:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    invoke-virtual {v1, v2}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 429
    const-string v1, "    BetaManager.downloadBuild(): Not started yet."

    invoke-static {v1}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    .line 447
    :goto_0
    return-void

    .line 431
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/BetaManager;->downloadURL:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 432
    const-string v1, "    checking for installer with a null installer version.  Need to call \'checkInstaller\' first."

    invoke-static {v1}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 436
    :cond_1
    iput-boolean v4, p0, Lcom/nuance/swype/connect/manager/BetaManager;->upgradeInstaller:Z

    .line 439
    const-string v1, "download"

    invoke-virtual {p0, v1}, Lcom/nuance/swype/connect/manager/BetaManager;->createCommand(Ljava/lang/String;)Lcom/nuance/swype/connect/util/Command;

    move-result-object v0

    .line 440
    .local v0, command:Lcom/nuance/swype/connect/util/Command;
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/BetaManager;->downloadURL:Ljava/lang/String;

    iput-object v1, v0, Lcom/nuance/swype/connect/util/Command;->thirdPartyURL:Ljava/lang/String;

    .line 441
    const-string v1, "GET"

    iput-object v1, v0, Lcom/nuance/swype/connect/util/Command;->method:Ljava/lang/String;

    .line 442
    iput-boolean v3, v0, Lcom/nuance/swype/connect/util/Command;->hasBody:Z

    .line 443
    iput-boolean v3, v0, Lcom/nuance/swype/connect/util/Command;->handleIOException:Z

    .line 444
    iput-boolean v4, v0, Lcom/nuance/swype/connect/util/Command;->notifyDownloadStatus:Z

    .line 445
    iput-boolean v3, v0, Lcom/nuance/swype/connect/util/Command;->allowDuplicateOfCommand:Z

    .line 446
    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/manager/BetaManager;->sendCommand(Lcom/nuance/swype/connect/util/Command;)V

    goto :goto_0
.end method

.method private downloadInstaller()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 277
    const-string v1, "BetaManager.downloadInstaller"

    invoke-static {v1}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 278
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/BetaManager;->managerStartState:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    sget-object v2, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;->STARTED:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    invoke-virtual {v1, v2}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 279
    const-string v1, "    BetaManager.downloadInstaller(): Not started yet."

    invoke-static {v1}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    .line 297
    :goto_0
    return-void

    .line 281
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/BetaManager;->installerURL:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 282
    const-string v1, "    checking for installer with a null installer version.  Need to call \'checkInstaller\' first."

    invoke-static {v1}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 286
    :cond_1
    iput-boolean v4, p0, Lcom/nuance/swype/connect/manager/BetaManager;->upgradeInstaller:Z

    .line 289
    const-string v1, "installerDownload"

    invoke-virtual {p0, v1}, Lcom/nuance/swype/connect/manager/BetaManager;->createCommand(Ljava/lang/String;)Lcom/nuance/swype/connect/util/Command;

    move-result-object v0

    .line 290
    .local v0, command:Lcom/nuance/swype/connect/util/Command;
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/BetaManager;->installerURL:Ljava/lang/String;

    iput-object v1, v0, Lcom/nuance/swype/connect/util/Command;->thirdPartyURL:Ljava/lang/String;

    .line 291
    const-string v1, "GET"

    iput-object v1, v0, Lcom/nuance/swype/connect/util/Command;->method:Ljava/lang/String;

    .line 292
    iput-boolean v3, v0, Lcom/nuance/swype/connect/util/Command;->hasBody:Z

    .line 293
    iput-boolean v3, v0, Lcom/nuance/swype/connect/util/Command;->handleIOException:Z

    .line 294
    iput-boolean v4, v0, Lcom/nuance/swype/connect/util/Command;->notifyDownloadStatus:Z

    .line 295
    iput-boolean v3, v0, Lcom/nuance/swype/connect/util/Command;->allowDuplicateOfCommand:Z

    .line 296
    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/manager/BetaManager;->sendCommand(Lcom/nuance/swype/connect/util/Command;)V

    goto :goto_0
.end method

.method private getBuild(Ljava/lang/String;)V
    .locals 7
    .parameter "id"

    .prologue
    .line 392
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BetaManager.getBuild("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 393
    iget-object v5, p0, Lcom/nuance/swype/connect/manager/BetaManager;->managerStartState:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    sget-object v6, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;->STARTED:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    invoke-virtual {v5, v6}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 394
    const-string v5, "BetaManager.getList() -- delaying since manager didn\'t start"

    invoke-static {v5}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 424
    :cond_0
    :goto_0
    return-void

    .line 398
    :cond_1
    iget-object v5, p0, Lcom/nuance/swype/connect/manager/BetaManager;->betaBuilds:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    .line 402
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/nuance/swype/connect/manager/BetaManager;->downloadURL:Ljava/lang/String;

    .line 404
    const/4 v2, 0x0

    .line 405
    .local v2, found:Z
    iget-object v5, p0, Lcom/nuance/swype/connect/manager/BetaManager;->betaBuilds:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 406
    .local v0, build:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "PROP_ID"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 407
    const/4 v2, 0x1

    .line 412
    .end local v0           #build:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    if-nez v2, :cond_4

    .line 413
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Beta Build ID not found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 417
    :cond_4
    iput-object p1, p0, Lcom/nuance/swype/connect/manager/BetaManager;->buildId:Ljava/lang/String;

    .line 418
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 419
    .local v4, parameters:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "55"

    iget-object v6, p0, Lcom/nuance/swype/connect/manager/BetaManager;->username:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    const-string v5, "56"

    iget-object v6, p0, Lcom/nuance/swype/connect/manager/BetaManager;->password:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    const-string v5, "15"

    invoke-virtual {v4, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    const-string v5, "get"

    invoke-virtual {p0, v5, v4}, Lcom/nuance/swype/connect/manager/BetaManager;->createCommand(Ljava/lang/String;Ljava/util/HashMap;)Lcom/nuance/swype/connect/util/Command;

    move-result-object v1

    .line 423
    .local v1, command:Lcom/nuance/swype/connect/util/Command;
    invoke-virtual {p0, v1}, Lcom/nuance/swype/connect/manager/BetaManager;->sendCommand(Lcom/nuance/swype/connect/util/Command;)V

    goto :goto_0
.end method

.method private getList()V
    .locals 4

    .prologue
    .line 366
    const-string v2, "BetaManager.getList()"

    invoke-static {v2}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 367
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/BetaManager;->managerStartState:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    sget-object v3, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;->STARTED:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    invoke-virtual {v2, v3}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 368
    const-string v2, "BetaManager.getList() -- delaying since manager didn\'t start"

    invoke-static {v2}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 389
    :cond_0
    :goto_0
    return-void

    .line 372
    :cond_1
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/BetaManager;->username:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nuance/swype/connect/manager/BetaManager;->username:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nuance/swype/connect/manager/BetaManager;->password:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nuance/swype/connect/manager/BetaManager;->password:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 377
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/nuance/swype/connect/manager/BetaManager;->downloadURL:Ljava/lang/String;

    .line 380
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 381
    .local v1, parameters:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "55"

    iget-object v3, p0, Lcom/nuance/swype/connect/manager/BetaManager;->username:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    const-string v2, "56"

    iget-object v3, p0, Lcom/nuance/swype/connect/manager/BetaManager;->password:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    const-string v2, "50"

    iget-object v3, p0, Lcom/nuance/swype/connect/manager/BetaManager;->installerVersionHost:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    const-string v2, "31"

    iget-object v3, p0, Lcom/nuance/swype/connect/manager/BetaManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v3}, Lcom/nuance/swype/connect/ConnectClient;->getBuildProps()Lcom/nuance/swype/connect/util/BuildProps;

    move-result-object v3

    invoke-interface {v3}, Lcom/nuance/swype/connect/util/BuildProps;->getDeviceProperties()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    const-string v2, "11"

    iget-object v3, p0, Lcom/nuance/swype/connect/manager/BetaManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v3}, Lcom/nuance/swype/connect/ConnectClient;->getCurrentLocale()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    const-string v2, "list"

    invoke-virtual {p0, v2, v1}, Lcom/nuance/swype/connect/manager/BetaManager;->createCommand(Ljava/lang/String;Ljava/util/HashMap;)Lcom/nuance/swype/connect/util/Command;

    move-result-object v0

    .line 388
    .local v0, command:Lcom/nuance/swype/connect/util/Command;
    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/manager/BetaManager;->sendCommand(Lcom/nuance/swype/connect/util/Command;)V

    goto :goto_0
.end method

.method private installBuild(Ljava/io/File;)V
    .locals 9
    .parameter "installer"

    .prologue
    .line 624
    const-string v7, "BetaManager.installBuild()"

    invoke-static {v7}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 625
    if-nez p1, :cond_0

    .line 626
    const-string v7, "Error: beta build has not downloaded."

    invoke-static {v7}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    .line 654
    :goto_0
    return-void

    .line 629
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 630
    .local v2, fileName:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/download/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 631
    .local v0, downloadExternalStorage:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 632
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 633
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v5

    .line 634
    .local v5, makeDirectory:Z
    if-nez v5, :cond_1

    .line 635
    const-string v7, "Unable to create download directory when it was missing, we can\'t upgrade this installer"

    invoke-static {v7}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 640
    .end local v5           #makeDirectory:Z
    :cond_1
    new-instance v4, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 641
    .local v4, installerSDAPK:Ljava/io/File;
    invoke-direct {p0, p1, v4}, Lcom/nuance/swype/connect/manager/BetaManager;->moveFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 642
    invoke-virtual {v4}, Ljava/io/File;->deleteOnExit()V

    .line 644
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 645
    .local v3, installIntent:Landroid/content/Intent;
    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    .line 646
    .local v6, uri:Landroid/net/Uri;
    const-string v7, "application/vnd.android.package-archive"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 647
    const/high16 v7, 0x1080

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 649
    iget-object v7, p0, Lcom/nuance/swype/connect/manager/BetaManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v7, v3}, Lcom/nuance/swype/connect/ConnectClient;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 651
    .end local v3           #installIntent:Landroid/content/Intent;
    .end local v6           #uri:Landroid/net/Uri;
    :cond_2
    const-string v7, "Unable to create download file on SDCARD when it was missing, we can\'t upgrade this installer"

    invoke-static {v7}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private login()V
    .locals 4

    .prologue
    .line 320
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BetaManager.login() username="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/swype/connect/manager/BetaManager;->username:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " hashed password="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/swype/connect/manager/BetaManager;->password:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 321
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/BetaManager;->managerStartState:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    sget-object v3, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;->STARTED:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    invoke-virtual {v2, v3}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 322
    const-string v2, "BetaManager not started!"

    invoke-static {v2}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    .line 344
    :goto_0
    return-void

    .line 325
    :cond_0
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/BetaManager;->username:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/nuance/swype/connect/manager/BetaManager;->username:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/nuance/swype/connect/manager/BetaManager;->password:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/nuance/swype/connect/manager/BetaManager;->password:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 327
    :cond_1
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/BetaManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v3, 0x71

    invoke-virtual {v2, v3}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(I)V

    goto :goto_0

    .line 332
    :cond_2
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/BetaManager;->betaBuilds:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    .line 333
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/nuance/swype/connect/manager/BetaManager;->betaBuilds:Ljava/util/ArrayList;

    .line 334
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/BetaManager;->sendBetaBuilds()V

    .line 337
    :cond_3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 338
    .local v1, parameters:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "50"

    iget-object v3, p0, Lcom/nuance/swype/connect/manager/BetaManager;->installerVersionHost:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    const-string v2, "55"

    iget-object v3, p0, Lcom/nuance/swype/connect/manager/BetaManager;->username:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    const-string v2, "56"

    iget-object v3, p0, Lcom/nuance/swype/connect/manager/BetaManager;->password:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    const-string v2, "login"

    invoke-virtual {p0, v2, v1}, Lcom/nuance/swype/connect/manager/BetaManager;->createCommand(Ljava/lang/String;Ljava/util/HashMap;)Lcom/nuance/swype/connect/util/Command;

    move-result-object v0

    .line 343
    .local v0, command:Lcom/nuance/swype/connect/util/Command;
    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/manager/BetaManager;->sendCommand(Lcom/nuance/swype/connect/util/Command;)V

    goto :goto_0
.end method

.method private moveFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 11
    .parameter "source"
    .parameter "dest"

    .prologue
    .line 662
    const/4 v8, 0x1

    .line 664
    .local v8, success:Z
    const/4 v2, 0x0

    .line 665
    .local v2, fos:Ljava/io/FileOutputStream;
    const/4 v5, 0x0

    .line 667
    .local v5, is:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 668
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .local v3, fos:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a

    .line 670
    .end local v5           #is:Ljava/io/FileInputStream;
    .local v6, is:Ljava/io/FileInputStream;
    const/16 v9, 0x400

    :try_start_2
    new-array v0, v9, [B

    .line 671
    .local v0, buffer:[B
    const/4 v7, 0x0

    .line 672
    .local v7, len1:I
    :goto_0
    invoke-virtual {v6, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    const/4 v9, -0x1

    if-eq v7, v9, :cond_0

    .line 673
    const/4 v9, 0x0

    invoke-virtual {v3, v0, v9, v7}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b

    goto :goto_0

    .line 675
    .end local v0           #buffer:[B
    .end local v7           #len1:I
    :catch_0
    move-exception v1

    move-object v5, v6

    .end local v6           #is:Ljava/io/FileInputStream;
    .restart local v5       #is:Ljava/io/FileInputStream;
    move-object v2, v3

    .line 676
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .local v1, ex:Ljava/io/FileNotFoundException;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :goto_1
    const/4 v8, 0x0

    .line 682
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 686
    :goto_2
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    .line 691
    .end local v1           #ex:Ljava/io/FileNotFoundException;
    :goto_3
    return v8

    .line 682
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .end local v5           #is:Ljava/io/FileInputStream;
    .restart local v0       #buffer:[B
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    .restart local v6       #is:Ljava/io/FileInputStream;
    .restart local v7       #len1:I
    :cond_0
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 686
    :goto_4
    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    move-object v5, v6

    .end local v6           #is:Ljava/io/FileInputStream;
    .restart local v5       #is:Ljava/io/FileInputStream;
    move-object v2, v3

    .line 688
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 687
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .end local v5           #is:Ljava/io/FileInputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    .restart local v6       #is:Ljava/io/FileInputStream;
    :catch_1
    move-exception v9

    move-object v5, v6

    .end local v6           #is:Ljava/io/FileInputStream;
    .restart local v5       #is:Ljava/io/FileInputStream;
    move-object v2, v3

    .line 689
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 677
    .end local v0           #buffer:[B
    .end local v7           #len1:I
    :catch_2
    move-exception v4

    .line 678
    .local v4, iex:Ljava/io/IOException;
    :goto_5
    const/4 v8, 0x0

    .line 682
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 686
    :goto_6
    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_3

    .line 687
    :catch_3
    move-exception v9

    goto :goto_3

    .line 681
    .end local v4           #iex:Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 682
    :goto_7
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    .line 686
    :goto_8
    :try_start_a
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9

    .line 688
    :goto_9
    throw v9

    .line 683
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .end local v5           #is:Ljava/io/FileInputStream;
    .restart local v0       #buffer:[B
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    .restart local v6       #is:Ljava/io/FileInputStream;
    .restart local v7       #len1:I
    :catch_4
    move-exception v9

    goto :goto_4

    .end local v0           #buffer:[B
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .end local v6           #is:Ljava/io/FileInputStream;
    .end local v7           #len1:I
    .restart local v1       #ex:Ljava/io/FileNotFoundException;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    .restart local v5       #is:Ljava/io/FileInputStream;
    :catch_5
    move-exception v9

    goto :goto_2

    .line 687
    :catch_6
    move-exception v9

    goto :goto_3

    .line 683
    .end local v1           #ex:Ljava/io/FileNotFoundException;
    .restart local v4       #iex:Ljava/io/IOException;
    :catch_7
    move-exception v9

    goto :goto_6

    .end local v4           #iex:Ljava/io/IOException;
    :catch_8
    move-exception v10

    goto :goto_8

    .line 687
    :catch_9
    move-exception v10

    goto :goto_9

    .line 681
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v9

    move-object v2, v3

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_7

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .end local v5           #is:Ljava/io/FileInputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    .restart local v6       #is:Ljava/io/FileInputStream;
    :catchall_2
    move-exception v9

    move-object v5, v6

    .end local v6           #is:Ljava/io/FileInputStream;
    .restart local v5       #is:Ljava/io/FileInputStream;
    move-object v2, v3

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_7

    .line 677
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :catch_a
    move-exception v4

    move-object v2, v3

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_5

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .end local v5           #is:Ljava/io/FileInputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    .restart local v6       #is:Ljava/io/FileInputStream;
    :catch_b
    move-exception v4

    move-object v5, v6

    .end local v6           #is:Ljava/io/FileInputStream;
    .restart local v5       #is:Ljava/io/FileInputStream;
    move-object v2, v3

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_5

    .line 675
    :catch_c
    move-exception v1

    goto :goto_1

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :catch_d
    move-exception v1

    move-object v2, v3

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method private processAckInstallerResponse(Lcom/nuance/swype/connect/util/Response;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 505
    const-string v0, "BetaManager.processAckInstallerResponse()"

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 506
    const/4 v0, 0x1

    iget v1, p1, Lcom/nuance/swype/connect/util/Response;->status:I

    if-ne v0, v1, :cond_0

    .line 507
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/BetaManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(I)V

    .line 512
    :goto_0
    return-void

    .line 510
    :cond_0
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/BetaManager;->unwindInstallerDownload()V

    goto :goto_0
.end method

.method private processAckResponse(Lcom/nuance/swype/connect/util/Response;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 575
    const-string v0, "BetaManager.processAckResponse()"

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 576
    const/4 v0, 0x1

    iget v1, p1, Lcom/nuance/swype/connect/util/Response;->status:I

    if-ne v0, v1, :cond_0

    .line 577
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/BetaManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(I)V

    .line 579
    :cond_0
    return-void
.end method

.method private processCheckInstallerResponse(Lcom/nuance/swype/connect/util/Response;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 480
    const-string v0, "BetaManager.processCheckInstallerResponse"

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 481
    const/4 v0, 0x1

    iget v1, p1, Lcom/nuance/swype/connect/util/Response;->status:I

    if-ne v0, v1, :cond_1

    .line 482
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/BetaManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(I)V

    .line 492
    :cond_0
    :goto_0
    return-void

    .line 483
    :cond_1
    const/16 v0, 0x1fa

    iget v1, p1, Lcom/nuance/swype/connect/util/Response;->status:I

    if-ne v0, v1, :cond_0

    .line 484
    iget-object v0, p1, Lcom/nuance/swype/connect/util/Response;->thirdPartyURL:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/BetaManager;->installerURL:Ljava/lang/String;

    .line 485
    iget-object v0, p1, Lcom/nuance/swype/connect/util/Response;->parameters:Ljava/util/HashMap;

    const-string v1, "50"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/BetaManager;->installerNewVersion:Ljava/lang/String;

    .line 486
    iget-boolean v0, p0, Lcom/nuance/swype/connect/manager/BetaManager;->upgradeInstaller:Z

    if-eqz v0, :cond_2

    .line 487
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/BetaManager;->downloadInstaller()V

    goto :goto_0

    .line 489
    :cond_2
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/BetaManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v1, 0x6d

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(I)V

    goto :goto_0
.end method

.method private processDownloadInstallerResponse(Lcom/nuance/swype/connect/util/Response;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 495
    const-string v0, "BetaManager.processDownloadInstallerResponse"

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 496
    const/4 v0, 0x1

    iget v1, p1, Lcom/nuance/swype/connect/util/Response;->status:I

    if-ne v0, v1, :cond_0

    .line 497
    iget-object v0, p1, Lcom/nuance/swype/connect/util/Response;->file:Ljava/io/File;

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/BetaManager;->installerAPK:Ljava/io/File;

    .line 498
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/BetaManager;->installerAPK:Ljava/io/File;

    invoke-static {v0}, Lcom/nuance/swype/connect/util/EncryptUtils;->md5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/BetaManager;->installerAPKChecksum:Ljava/lang/String;

    .line 499
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "File Location: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/connect/manager/BetaManager;->installerAPK:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] Checksum: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/connect/manager/BetaManager;->installerAPKChecksum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 500
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/BetaManager;->ackInstaller()V

    .line 502
    :cond_0
    return-void
.end method

.method private processDownloadResponse(Lcom/nuance/swype/connect/util/Response;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 604
    const-string v0, "BetaManager.processDownloadResponse()"

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 605
    const/4 v0, 0x1

    iget v1, p1, Lcom/nuance/swype/connect/util/Response;->status:I

    if-ne v0, v1, :cond_0

    .line 606
    iget-object v0, p1, Lcom/nuance/swype/connect/util/Response;->file:Ljava/io/File;

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/BetaManager;->betaBuildAPK:Ljava/io/File;

    .line 607
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/BetaManager;->betaBuildAPK:Ljava/io/File;

    invoke-static {v0}, Lcom/nuance/swype/connect/util/EncryptUtils;->md5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/BetaManager;->betaAPKChecksum:Ljava/lang/String;

    .line 608
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "File Location: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/connect/manager/BetaManager;->betaBuildAPK:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] Checksum: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/connect/manager/BetaManager;->betaAPKChecksum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 609
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/BetaManager;->ackBuild()V

    .line 611
    :cond_0
    return-void
.end method

.method private processGetResponse(Lcom/nuance/swype/connect/util/Response;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 566
    const-string v0, "BetaManager.processGetResponse()"

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 567
    const/4 v0, 0x1

    iget v1, p1, Lcom/nuance/swype/connect/util/Response;->status:I

    if-ne v0, v1, :cond_0

    .line 568
    iget-object v0, p1, Lcom/nuance/swype/connect/util/Response;->transactionId:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/BetaManager;->transactionId:Ljava/lang/String;

    .line 569
    iget-object v0, p1, Lcom/nuance/swype/connect/util/Response;->thirdPartyURL:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/BetaManager;->downloadURL:Ljava/lang/String;

    .line 570
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/BetaManager;->downloadBuild()V

    .line 572
    :cond_0
    return-void
.end method

.method private processListResponse(Lcom/nuance/swype/connect/util/Response;)V
    .locals 7
    .parameter "response"

    .prologue
    .line 538
    const-string v5, "BetaManager.processListResponse()"

    invoke-static {v5}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 539
    const/4 v5, 0x1

    iget v6, p1, Lcom/nuance/swype/connect/util/Response;->status:I

    if-ne v5, v6, :cond_1

    .line 540
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/nuance/swype/connect/manager/BetaManager;->betaBuilds:Ljava/util/ArrayList;

    .line 541
    iget-object v5, p1, Lcom/nuance/swype/connect/util/Response;->parameters:Ljava/util/HashMap;

    const-string v6, "60"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONArray;

    .line 543
    .local v3, list:Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, index:I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 545
    :try_start_0
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 546
    .local v2, item:Lorg/json/JSONObject;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 549
    .local v4, properties:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "PROP_ID"

    const-string v6, "15"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    const-string v5, "PROP_NAME"

    const-string v6, "16"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    const-string v5, "PROP_DESCRIPTION"

    const-string v6, "18"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    const-string v5, "PROP_NAMESPACE"

    const-string v6, "52"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    iget-object v5, p0, Lcom/nuance/swype/connect/manager/BetaManager;->betaBuilds:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 543
    .end local v2           #item:Lorg/json/JSONObject;
    .end local v4           #properties:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 556
    :catch_0
    move-exception v0

    .line 557
    .local v0, ex:Lorg/json/JSONException;
    const-string v5, "Could not parse the BETA list"

    invoke-static {v5}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 561
    .end local v0           #ex:Lorg/json/JSONException;
    :cond_0
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/BetaManager;->sendBetaBuilds()V

    .line 563
    .end local v1           #index:I
    .end local v3           #list:Lorg/json/JSONArray;
    :cond_1
    return-void
.end method

.method private processLoginResponse(Lcom/nuance/swype/connect/util/Response;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 515
    const-string v0, "BetaManager.processLoginResponse()"

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 516
    const/16 v0, 0x12

    iget v1, p1, Lcom/nuance/swype/connect/util/Response;->status:I

    if-ne v0, v1, :cond_1

    .line 517
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/BetaManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v1, 0x71

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(I)V

    .line 524
    :cond_0
    :goto_0
    return-void

    .line 518
    :cond_1
    const/16 v0, 0x13

    iget v1, p1, Lcom/nuance/swype/connect/util/Response;->status:I

    if-ne v0, v1, :cond_2

    .line 519
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/BetaManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v1, 0x70

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(I)V

    goto :goto_0

    .line 520
    :cond_2
    const/16 v0, 0x14

    iget v1, p1, Lcom/nuance/swype/connect/util/Response;->status:I

    if-ne v0, v1, :cond_0

    .line 521
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/BetaManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v1, 0x72

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(I)V

    goto :goto_0
.end method

.method private processStatusResponse(Lcom/nuance/swype/connect/util/Response;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 586
    const-string v0, "BetaManager.processStatusResponse()"

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 587
    invoke-virtual {p1}, Lcom/nuance/swype/connect/util/Response;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 588
    return-void
.end method

.method private processValidateResponse(Lcom/nuance/swype/connect/util/Response;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 527
    const-string v0, "BetaManager.processValidateResponse()"

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 528
    const/16 v0, 0x13

    iget v1, p1, Lcom/nuance/swype/connect/util/Response;->status:I

    if-ne v0, v1, :cond_1

    .line 529
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/BetaManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v1, 0x73

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(I)V

    .line 535
    :cond_0
    :goto_0
    return-void

    .line 530
    :cond_1
    const/16 v0, 0x12

    iget v1, p1, Lcom/nuance/swype/connect/util/Response;->status:I

    if-ne v0, v1, :cond_2

    .line 531
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/BetaManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v1, 0x74

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(I)V

    goto :goto_0

    .line 532
    :cond_2
    const/16 v0, 0x14

    iget v1, p1, Lcom/nuance/swype/connect/util/Response;->status:I

    if-ne v0, v1, :cond_0

    .line 533
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/BetaManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v1, 0x75

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(I)V

    goto :goto_0
.end method

.method private sendBetaBuilds()V
    .locals 3

    .prologue
    .line 703
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 704
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "DEFAULT_KEY"

    iget-object v2, p0, Lcom/nuance/swype/connect/manager/BetaManager;->betaBuilds:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 705
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/BetaManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v2, 0x76

    invoke-virtual {v1, v2, v0}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(ILandroid/os/Bundle;)V

    .line 706
    return-void
.end method

.method private unwindInstallerDownload()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 614
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/BetaManager;->installerAPK:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 615
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/BetaManager;->installerAPK:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/connect/manager/BetaManager;->installerAPK:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 616
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unwindInstallerDownload() unable to delete file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/connect/manager/BetaManager;->installerAPK:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    .line 619
    :cond_0
    iput-object v2, p0, Lcom/nuance/swype/connect/manager/BetaManager;->installerAPK:Ljava/io/File;

    .line 620
    iput-object v2, p0, Lcom/nuance/swype/connect/manager/BetaManager;->installerAPKChecksum:Ljava/lang/String;

    .line 621
    return-void
.end method

.method private validate(Ljava/lang/String;)V
    .locals 4
    .parameter "key"

    .prologue
    .line 347
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BetaManager.validate key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 348
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/BetaManager;->managerStartState:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    sget-object v3, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;->STARTED:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    invoke-virtual {v2, v3}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 349
    const-string v2, "BetaManager not started!"

    invoke-static {v2}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    .line 363
    :cond_0
    :goto_0
    return-void

    .line 352
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 356
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 357
    .local v1, parameters:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "57"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    const-string v2, "55"

    iget-object v3, p0, Lcom/nuance/swype/connect/manager/BetaManager;->username:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    const-string v2, "56"

    iget-object v3, p0, Lcom/nuance/swype/connect/manager/BetaManager;->password:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    const-string v2, "validate"

    invoke-virtual {p0, v2, v1}, Lcom/nuance/swype/connect/manager/BetaManager;->createCommand(Ljava/lang/String;Ljava/util/HashMap;)Lcom/nuance/swype/connect/util/Command;

    move-result-object v0

    .line 362
    .local v0, command:Lcom/nuance/swype/connect/util/Command;
    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/manager/BetaManager;->sendCommand(Lcom/nuance/swype/connect/util/Command;)V

    goto :goto_0
.end method


# virtual methods
.method public alarmNotification(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .parameter "type"
    .parameter "data"

    .prologue
    .line 658
    const-string v0, "Connect"

    const-string v1, "Beta Manager has recieved an alarm."

    invoke-static {v0, v1}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    return-void
.end method

.method protected createCommand(Ljava/lang/String;Ljava/util/HashMap;)Lcom/nuance/swype/connect/util/Command;
    .locals 2
    .parameter "action"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/nuance/swype/connect/util/Command;"
        }
    .end annotation

    .prologue
    .local p2, parameters:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .line 695
    invoke-super {p0, p1, p2}, Lcom/nuance/swype/connect/manager/AbstractCommandManager;->createCommand(Ljava/lang/String;Ljava/util/HashMap;)Lcom/nuance/swype/connect/util/Command;

    move-result-object v0

    .line 696
    .local v0, command:Lcom/nuance/swype/connect/util/Command;
    iput-boolean v1, v0, Lcom/nuance/swype/connect/util/Command;->requireDevice:Z

    .line 697
    iput-boolean v1, v0, Lcom/nuance/swype/connect/util/Command;->requireSession:Z

    .line 698
    iput-boolean v1, v0, Lcom/nuance/swype/connect/util/Command;->needDevice:Z

    .line 699
    return-object v0
.end method

.method public destroy()V
    .locals 0

    .prologue
    .line 122
    invoke-super {p0}, Lcom/nuance/swype/connect/manager/AbstractCommandManager;->destroy()V

    .line 123
    return-void
.end method

.method public getDependencies()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    return-object v0
.end method

.method public init()V
    .locals 0

    .prologue
    .line 109
    return-void
.end method

.method public onDownloadStatusResponse(Lcom/nuance/swype/connect/util/Command;II)V
    .locals 6
    .parameter "command"
    .parameter "downloaded"
    .parameter "total"

    .prologue
    const/16 v5, 0x64

    const/high16 v4, 0x42c8

    .line 243
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/BetaManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v3, "download"

    invoke-virtual {v2, v3}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/nuance/swype/connect/util/Command;->command:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 244
    const/4 v2, 0x0

    iput v2, p0, Lcom/nuance/swype/connect/manager/BetaManager;->downloadRetry:I

    .line 245
    int-to-float v2, p2

    int-to-float v3, p3

    div-float/2addr v2, v3

    mul-float/2addr v2, v4

    float-to-int v1, v2

    .line 246
    .local v1, percent:I
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 247
    .local v0, data:Landroid/os/Bundle;
    const-string v2, "download"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 248
    const-string v2, "total"

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 249
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/BetaManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v3, 0x77

    invoke-virtual {v2, v3, v0}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(ILandroid/os/Bundle;)V

    .line 257
    .end local v0           #data:Landroid/os/Bundle;
    .end local v1           #percent:I
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/BetaManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v3, "installerDownload"

    invoke-virtual {v2, v3}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/nuance/swype/connect/util/Command;->command:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 251
    int-to-float v2, p2

    int-to-float v3, p3

    div-float/2addr v2, v3

    mul-float/2addr v2, v4

    float-to-int v1, v2

    .line 252
    .restart local v1       #percent:I
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 253
    .restart local v0       #data:Landroid/os/Bundle;
    const-string v2, "download"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 254
    const-string v2, "total"

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 255
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/BetaManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v3, 0x6f

    invoke-virtual {v2, v3, v0}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onFileResponse(Lcom/nuance/swype/connect/util/Response;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 592
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/BetaManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "download"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/nuance/swype/connect/util/Response;->command:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 593
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/manager/BetaManager;->processDownloadResponse(Lcom/nuance/swype/connect/util/Response;)V

    .line 597
    :cond_0
    :goto_0
    return-void

    .line 594
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/BetaManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "installerDownload"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/nuance/swype/connect/util/Response;->command:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 595
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/manager/BetaManager;->processDownloadInstallerResponse(Lcom/nuance/swype/connect/util/Response;)V

    goto :goto_0
.end method

.method public onHandleMessage(Landroid/os/Message;)Z
    .locals 4
    .parameter "message"

    .prologue
    .line 155
    const/4 v0, 0x0

    .line 156
    .local v0, handled:Z
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 213
    :goto_0
    :pswitch_0
    return v0

    .line 158
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "DEFAULT_KEY"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/swype/connect/manager/BetaManager;->installerVersionHost:Ljava/lang/String;

    .line 159
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/BetaManager;->checkInstaller()V

    .line 160
    const/4 v0, 0x1

    .line 161
    goto :goto_0

    .line 164
    :pswitch_2
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/BetaManager;->downloadInstaller()V

    .line 165
    const/4 v0, 0x1

    .line 166
    goto :goto_0

    .line 169
    :pswitch_3
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/BetaManager;->installerAPK:Ljava/io/File;

    invoke-direct {p0, v2}, Lcom/nuance/swype/connect/manager/BetaManager;->installBuild(Ljava/io/File;)V

    .line 170
    const/4 v0, 0x1

    .line 171
    goto :goto_0

    .line 174
    :pswitch_4
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "LOGIN_PASSWORD"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/swype/connect/manager/BetaManager;->password:Ljava/lang/String;

    .line 175
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/BetaManager;->password:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nuance/swype/connect/manager/BetaManager;->password:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 176
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/BetaManager;->password:Ljava/lang/String;

    invoke-static {v2}, Lcom/nuance/swype/connect/util/EncryptUtils;->sha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/swype/connect/manager/BetaManager;->password:Ljava/lang/String;

    .line 178
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "LOGIN_USERNAME"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/swype/connect/manager/BetaManager;->username:Ljava/lang/String;

    .line 179
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/BetaManager;->login()V

    .line 180
    const/4 v0, 0x1

    .line 181
    goto :goto_0

    .line 184
    :pswitch_5
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "LOGIN_CODE"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 185
    .local v1, key:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/nuance/swype/connect/manager/BetaManager;->validate(Ljava/lang/String;)V

    .line 186
    const/4 v0, 0x1

    .line 187
    goto :goto_0

    .line 190
    .end local v1           #key:Ljava/lang/String;
    :pswitch_6
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/BetaManager;->getList()V

    .line 191
    const/4 v0, 0x1

    .line 192
    goto :goto_0

    .line 195
    :pswitch_7
    const/4 v2, 0x0

    iput v2, p0, Lcom/nuance/swype/connect/manager/BetaManager;->downloadRetry:I

    .line 196
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "DEFAULT_KEY"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/nuance/swype/connect/manager/BetaManager;->getBuild(Ljava/lang/String;)V

    .line 197
    const/4 v0, 0x1

    .line 198
    goto :goto_0

    .line 201
    :pswitch_8
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/BetaManager;->betaBuildAPK:Ljava/io/File;

    invoke-direct {p0, v2}, Lcom/nuance/swype/connect/manager/BetaManager;->installBuild(Ljava/io/File;)V

    .line 202
    const/4 v0, 0x1

    .line 203
    goto :goto_0

    .line 206
    :pswitch_9
    const-string v2, "BetaManager.onHandleMessage(MESSAGE_CLIENT_SET_CELLULAR_DATA)"

    invoke-static {v2}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "DEFAULT_KEY"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/nuance/swype/connect/manager/BetaManager;->cellularDataPermitted:Z

    .line 208
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/BetaManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    iget-boolean v3, p0, Lcom/nuance/swype/connect/manager/BetaManager;->cellularDataPermitted:Z

    invoke-virtual {v2, v3}, Lcom/nuance/swype/connect/ConnectClient;->setCellularDataPermitted(Z)V

    .line 209
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 156
    nop

    :pswitch_data_0
    .packed-switch 0xe1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method

.method public onIOExceptionResponse(Lcom/nuance/swype/connect/util/Command;)V
    .locals 2
    .parameter "command"

    .prologue
    .line 219
    if-nez p1, :cond_1

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/BetaManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "download"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/nuance/swype/connect/util/Command;->command:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 225
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/BetaManager;->buildId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 226
    iget v0, p0, Lcom/nuance/swype/connect/manager/BetaManager;->downloadRetry:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nuance/swype/connect/manager/BetaManager;->downloadRetry:I

    .line 227
    iget v0, p0, Lcom/nuance/swype/connect/manager/BetaManager;->downloadRetry:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 228
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/BetaManager;->buildId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/nuance/swype/connect/manager/BetaManager;->getBuild(Ljava/lang/String;)V

    goto :goto_0

    .line 234
    :cond_2
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/BetaManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "installerDownload"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/nuance/swype/connect/util/Command;->command:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/BetaManager;->checkInstaller()V

    goto :goto_0
.end method

.method public onResponse(Lcom/nuance/swype/connect/util/Response;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BetaManager.onResponse(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/nuance/swype/connect/util/Response;->command:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Transaction Id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/connect/manager/BetaManager;->transactionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/BetaManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "installer"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/swype/connect/util/Response;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/manager/BetaManager;->processCheckInstallerResponse(Lcom/nuance/swype/connect/util/Response;)V

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/BetaManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "installerAck"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/swype/connect/util/Response;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 132
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/manager/BetaManager;->processAckInstallerResponse(Lcom/nuance/swype/connect/util/Response;)V

    goto :goto_0

    .line 133
    :cond_2
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/BetaManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "login"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/swype/connect/util/Response;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 134
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/manager/BetaManager;->processLoginResponse(Lcom/nuance/swype/connect/util/Response;)V

    goto :goto_0

    .line 135
    :cond_3
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/BetaManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "validate"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/swype/connect/util/Response;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 136
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/manager/BetaManager;->processValidateResponse(Lcom/nuance/swype/connect/util/Response;)V

    goto :goto_0

    .line 137
    :cond_4
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/BetaManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "list"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/swype/connect/util/Response;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 138
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/manager/BetaManager;->processListResponse(Lcom/nuance/swype/connect/util/Response;)V

    goto :goto_0

    .line 139
    :cond_5
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/BetaManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "get"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/swype/connect/util/Response;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 140
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/manager/BetaManager;->processGetResponse(Lcom/nuance/swype/connect/util/Response;)V

    goto :goto_0

    .line 141
    :cond_6
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/BetaManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "download"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/swype/connect/util/Response;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 142
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/manager/BetaManager;->processDownloadResponse(Lcom/nuance/swype/connect/util/Response;)V

    goto :goto_0

    .line 143
    :cond_7
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/BetaManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "ack"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/swype/connect/util/Response;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 144
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/manager/BetaManager;->processAckResponse(Lcom/nuance/swype/connect/util/Response;)V

    goto :goto_0

    .line 145
    :cond_8
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/BetaManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "status"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/swype/connect/util/Response;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/manager/BetaManager;->processStatusResponse(Lcom/nuance/swype/connect/util/Response;)V

    goto :goto_0
.end method

.method public rebind()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/BetaManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v1, 0x6b

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(I)V

    .line 118
    return-void
.end method

.method public sendStatus(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "id"
    .parameter "status"

    .prologue
    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BetaManager.sendStatus() -- id: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] Status: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 473
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/BetaManager;->managerStartState:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    sget-object v1, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;->STARTED:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 474
    const-string v0, "BetaManager not started!"

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    .line 477
    :cond_0
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/BetaManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v1, 0x6b

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(I)V

    .line 105
    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/BetaManager;->managerStartComplete()V

    .line 106
    return-void
.end method
