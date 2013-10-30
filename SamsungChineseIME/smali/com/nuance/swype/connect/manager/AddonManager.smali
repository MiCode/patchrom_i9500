.class public Lcom/nuance/swype/connect/manager/AddonManager;
.super Lcom/nuance/swype/connect/manager/AbstractCommandManager;
.source "AddonManager.java"


# static fields
.field private static final ADDON_LIST_PREFERENCE:Ljava/lang/String; = "ADDON_LIST"

.field public static final COMMAND_FAMILY:Ljava/lang/String; = "addon"

.field public static final COMMAND_VERSION:I = 0x3

.field public static final LIST_RETRY:Ljava/lang/String; = "ADDON_LIST_RETRY"

.field public static final MANAGER_NAME:Ljava/lang/String; = "addon"

.field private static final MESSAGES_HANDLED:[I = null

.field private static final POST_ADDON_INSTALL_CHECK_DELAY:I = 0x1d4c0

.field private static final STATUS_ADDON_INSTALL:Ljava/lang/String; = "STATUS_ADDON_INSTALL"


# instance fields
.field private final addonAPKs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private addonList:Lcom/nuance/swype/connect/util/InstallMetadata;

.field private downloadPercent:Lcom/nuance/swype/connect/util/DownloadPercentPreprocessor;

.field private installing:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/nuance/swype/connect/manager/AddonManager;->MESSAGES_HANDLED:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0xe0t 0x0t 0x0t 0x0t
        0x3dt 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/nuance/swype/connect/ConnectClient;)V
    .locals 5
    .parameter "ctx"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 103
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager;-><init>(Lcom/nuance/swype/connect/ConnectClient;)V

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/AddonManager;->addonAPKs:Ljava/util/Map;

    .line 69
    iput-boolean v4, p0, Lcom/nuance/swype/connect/manager/AddonManager;->installing:Z

    .line 104
    const/4 v0, 0x3

    iput v0, p0, Lcom/nuance/swype/connect/manager/AddonManager;->version:I

    .line 105
    const-string v0, "addon"

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/AddonManager;->commandFamily:Ljava/lang/String;

    .line 106
    sget-object v0, Lcom/nuance/swype/connect/manager/AddonManager;->MESSAGES_HANDLED:[I

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/AddonManager;->messages:[I

    .line 107
    new-instance v0, Lcom/nuance/swype/connect/util/DownloadPercentPreprocessor;

    invoke-direct {v0, p0, p1}, Lcom/nuance/swype/connect/util/DownloadPercentPreprocessor;-><init>(Lcom/nuance/swype/connect/manager/AbstractCommandManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/AddonManager;->downloadPercent:Lcom/nuance/swype/connect/util/DownloadPercentPreprocessor;

    .line 110
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/AddonManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "list"

    new-array v2, v3, [I

    aput v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 113
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/AddonManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "get"

    new-array v2, v3, [I

    aput v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 116
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/AddonManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "download"

    new-array v2, v3, [I

    aput v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 119
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/AddonManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "ack"

    new-array v2, v3, [I

    aput v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 122
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/AddonManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "status"

    new-array v2, v3, [I

    aput v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 126
    iput-boolean v4, p0, Lcom/nuance/swype/connect/manager/AddonManager;->installing:Z

    .line 127
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/AddonManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectClient;->getDataStore()Lcom/nuance/swype/connect/store/PersistentDataStore;

    move-result-object v0

    const-string v1, "STATUS_ADDON_INSTALL"

    iget-boolean v2, p0, Lcom/nuance/swype/connect/manager/AddonManager;->installing:Z

    invoke-interface {v0, v1, v2}, Lcom/nuance/swype/connect/store/PersistentDataStore;->saveBoolean(Ljava/lang/String;Z)Z

    .line 128
    return-void
.end method

.method private ackAddonFile(Ljava/lang/String;)V
    .locals 6
    .parameter "id"

    .prologue
    .line 401
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AddonManager.ackAddonFile() id: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 403
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/AddonManager;->addonList:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v3, p1}, Lcom/nuance/swype/connect/util/InstallMetadata;->hasPackage(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 404
    const-string v3, "invalid addon, nothing to ack"

    invoke-static {v3}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 426
    :goto_0
    return-void

    .line 408
    :cond_0
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/AddonManager;->addonList:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v4, "PROP_CHECKSUM"

    invoke-virtual {v3, p1, v4}, Lcom/nuance/swype/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 409
    .local v0, checksum:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 412
    const-string v3, "We\'re not ready to ack, should never hit this case"

    invoke-static {v3}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 415
    :cond_1
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/AddonManager;->addonList:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v4, "STEP"

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, p1, v4, v5}, Lcom/nuance/swype/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 419
    .local v2, parameters:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "10"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    const-string v3, "ack"

    invoke-virtual {p0, v3, v2}, Lcom/nuance/swype/connect/manager/AddonManager;->createCommand(Ljava/lang/String;Ljava/util/HashMap;)Lcom/nuance/swype/connect/util/Command;

    move-result-object v1

    .line 422
    .local v1, command:Lcom/nuance/swype/connect/util/Command;
    iput-object p1, v1, Lcom/nuance/swype/connect/util/Command;->identifier:Ljava/lang/String;

    .line 423
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/AddonManager;->addonList:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v4, "PROP_TRANSID"

    invoke-virtual {v3, p1, v4}, Lcom/nuance/swype/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/nuance/swype/connect/util/Command;->transactionId:Ljava/lang/String;

    .line 425
    invoke-virtual {p0, v1}, Lcom/nuance/swype/connect/manager/AddonManager;->sendCommand(Lcom/nuance/swype/connect/util/Command;)V

    goto :goto_0
.end method

.method private checkAddon(Ljava/util/Map;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, properties:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 802
    const-string v3, "PROP_NAMESPACE"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 803
    .local v2, namespace:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/nuance/swype/connect/manager/AddonManager;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 806
    :try_start_0
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/AddonManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v3}, Lcom/nuance/swype/connect/ConnectClient;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 807
    .local v1, info:Landroid/content/pm/PackageInfo;
    const-string v3, "PROP_INSTALLEDSTATUS"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 808
    const-string v3, "PROP_INSTALLEDVERSION"

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 819
    .end local v1           #info:Landroid/content/pm/PackageInfo;
    :goto_0
    return-void

    .line 809
    :catch_0
    move-exception v0

    .line 811
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "PROP_INSTALLEDSTATUS"

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 812
    const-string v3, "PROP_INSTALLEDVERSION"

    invoke-interface {p1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 816
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    const-string v3, "PROP_INSTALLEDSTATUS"

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 817
    const-string v3, "PROP_INSTALLEDVERSION"

    invoke-interface {p1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private checkCompletedInstalls()V
    .locals 5

    .prologue
    .line 917
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/AddonManager;->addonList:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v3}, Lcom/nuance/swype/connect/util/InstallMetadata;->allPackages()Ljava/util/Set;

    move-result-object v1

    .line 918
    .local v1, addons:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 919
    .local v0, addon:Ljava/lang/String;
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/AddonManager;->addonList:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v3, v0}, Lcom/nuance/swype/connect/util/InstallMetadata;->getStep(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    .line 920
    invoke-direct {p0, v0}, Lcom/nuance/swype/connect/manager/AddonManager;->checkSuccessfulInstall(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 921
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Successfully installed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 922
    const/16 v3, 0x1f7

    invoke-direct {p0, v0, v3}, Lcom/nuance/swype/connect/manager/AddonManager;->sendStatus(Ljava/lang/String;I)V

    goto :goto_0

    .line 926
    .end local v0           #addon:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private checkSuccessfulInstall(Ljava/lang/String;)Z
    .locals 3
    .parameter "id"

    .prologue
    .line 908
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/AddonManager;->addonList:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v2, "PROP_NAMESPACE"

    invoke-virtual {v1, p1, v2}, Lcom/nuance/swype/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 909
    .local v0, namespace:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/nuance/swype/connect/manager/AddonManager;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private cleanupFiles(Ljava/lang/String;)Z
    .locals 6
    .parameter "id"

    .prologue
    const/4 v5, 0x0

    .line 829
    const/4 v2, 0x0

    .line 831
    .local v2, removed:Z
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/AddonManager;->addonAPKs:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 832
    .local v0, apk:Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 833
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 834
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/AddonManager;->addonAPKs:Ljava/util/Map;

    invoke-interface {v3, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 835
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/AddonManager;->addonList:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v4, "PROP_APKLOCATION"

    invoke-virtual {v3, p1, v4, v5}, Lcom/nuance/swype/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    const/4 v2, 0x1

    .line 842
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/AddonManager;->addonList:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v4, "PROP_APKLOCATION"

    invoke-virtual {v3, p1, v4}, Lcom/nuance/swype/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 843
    .local v1, apkPath:Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 844
    new-instance v0, Ljava/io/File;

    .end local v0           #apk:Ljava/io/File;
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 846
    .restart local v0       #apk:Ljava/io/File;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 847
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 848
    const/4 v2, 0x1

    .line 851
    :cond_1
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/AddonManager;->addonAPKs:Ljava/util/Map;

    invoke-interface {v3, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 852
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/AddonManager;->addonList:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v4, "PROP_APKLOCATION"

    invoke-virtual {v3, p1, v4, v5}, Lcom/nuance/swype/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    :cond_2
    return v2

    .line 838
    .end local v1           #apkPath:Ljava/lang/String;
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cleaning up addon installation. Failed to delete file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private fetchAddon(Ljava/lang/String;)V
    .locals 5
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    .line 371
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AddonManager.fetchAddon() id: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 373
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/AddonManager;->addonList:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v2, "STEP"

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/nuance/swype/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/AddonManager;->addonList:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v1}, Lcom/nuance/swype/connect/util/InstallMetadata;->saveMetadata()V

    .line 378
    const-string v1, "download"

    invoke-virtual {p0, v1}, Lcom/nuance/swype/connect/manager/AddonManager;->createCommand(Ljava/lang/String;)Lcom/nuance/swype/connect/util/Command;

    move-result-object v0

    .line 379
    .local v0, command:Lcom/nuance/swype/connect/util/Command;
    iput-object p1, v0, Lcom/nuance/swype/connect/util/Command;->identifier:Ljava/lang/String;

    .line 380
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/AddonManager;->addonList:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v2, "PROP_FILEURL"

    invoke-virtual {v1, p1, v2}, Lcom/nuance/swype/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/nuance/swype/connect/util/Command;->thirdPartyURL:Ljava/lang/String;

    .line 381
    const-string v1, "GET"

    iput-object v1, v0, Lcom/nuance/swype/connect/util/Command;->method:Ljava/lang/String;

    .line 382
    iput-boolean v4, v0, Lcom/nuance/swype/connect/util/Command;->hasBody:Z

    .line 383
    iput-boolean v4, v0, Lcom/nuance/swype/connect/util/Command;->handleIOException:Z

    .line 384
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/nuance/swype/connect/util/Command;->notifyDownloadStatus:Z

    .line 385
    iput-boolean v4, v0, Lcom/nuance/swype/connect/util/Command;->allowDuplicateOfCommand:Z

    .line 386
    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/manager/AddonManager;->sendCommand(Lcom/nuance/swype/connect/util/Command;)V

    .line 387
    return-void
.end method

.method private getAddon(Ljava/lang/String;)V
    .locals 7
    .parameter "id"

    .prologue
    const/4 v6, 0x0

    .line 324
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AddonManager.getAddon() id: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 326
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/AddonManager;->addonList:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v3}, Lcom/nuance/swype/connect/util/InstallMetadata;->saveMetadata()V

    .line 327
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/AddonManager;->addonList:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v3, p1}, Lcom/nuance/swype/connect/util/InstallMetadata;->hasPackage(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 328
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempting to get an invalid addon: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 359
    :goto_0
    return-void

    .line 332
    :cond_0
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/AddonManager;->addonList:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v4, "STEP"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, p1, v4, v5}, Lcom/nuance/swype/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/AddonManager;->addonList:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v3}, Lcom/nuance/swype/connect/util/InstallMetadata;->isInstalling()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 336
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Another Addon is already installing.  Adding "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to queue to process later."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 341
    :cond_1
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/AddonManager;->addonList:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v4, "STEP"

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, p1, v4, v5}, Lcom/nuance/swype/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 345
    .local v2, parameters:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "49"

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    const-string v3, "get"

    invoke-virtual {p0, v3, v2}, Lcom/nuance/swype/connect/manager/AddonManager;->createCommand(Ljava/lang/String;Ljava/util/HashMap;)Lcom/nuance/swype/connect/util/Command;

    move-result-object v0

    .line 349
    .local v0, command:Lcom/nuance/swype/connect/util/Command;
    iput-object p1, v0, Lcom/nuance/swype/connect/util/Command;->identifier:Ljava/lang/String;

    .line 350
    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/manager/AddonManager;->sendCommand(Lcom/nuance/swype/connect/util/Command;)V

    .line 352
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 353
    .local v1, data:Landroid/os/Bundle;
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/AddonManager;->downloadPercent:Lcom/nuance/swype/connect/util/DownloadPercentPreprocessor;

    invoke-virtual {v3, v6}, Lcom/nuance/swype/connect/util/DownloadPercentPreprocessor;->init(Landroid/os/Bundle;)V

    .line 354
    const-string v3, "PROP_DOWNLOAD_PERCENT"

    iget-object v4, p0, Lcom/nuance/swype/connect/manager/AddonManager;->downloadPercent:Lcom/nuance/swype/connect/util/DownloadPercentPreprocessor;

    invoke-virtual {v4, v6}, Lcom/nuance/swype/connect/util/DownloadPercentPreprocessor;->updateInitialDownloadPercent(Landroid/os/Bundle;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 356
    const-string v3, "PROP_ADDON"

    iget-object v4, v0, Lcom/nuance/swype/connect/util/Command;->identifier:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/AddonManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v4, 0x67

    invoke-virtual {v3, v4, v1}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(ILandroid/os/Bundle;)V

    .line 358
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/AddonManager;->downloadPercent:Lcom/nuance/swype/connect/util/DownloadPercentPreprocessor;

    invoke-virtual {v3}, Lcom/nuance/swype/connect/util/DownloadPercentPreprocessor;->disableAlarm()V

    goto :goto_0
.end method

.method private getList()V
    .locals 7

    .prologue
    .line 296
    const-string v3, "AddonManager.getList()"

    invoke-static {v3}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 297
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/AddonManager;->managerStartState:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    sget-object v4, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;->STARTED:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    invoke-virtual {v3, v4}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 298
    new-instance v3, Lcom/nuance/swype/connect/util/Alarm$Builder;

    iget-object v4, p0, Lcom/nuance/swype/connect/manager/AddonManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v4}, Lcom/nuance/swype/connect/ConnectClient;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/nuance/swype/connect/manager/AddonManager;

    const-string v6, "ADDON_LIST_RETRY"

    invoke-direct {v3, v4, v5, v6}, Lcom/nuance/swype/connect/util/Alarm$Builder;-><init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/nuance/swype/connect/manager/AddonManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const-string v5, "DEFAULT_DELAY"

    invoke-virtual {v4, v5}, Lcom/nuance/swype/connect/ConnectClient;->getConfigurationIntValue(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/nuance/swype/connect/util/Alarm$Builder;->seconds(I)Lcom/nuance/swype/connect/util/Alarm$Builder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/nuance/swype/connect/util/Alarm$Builder;->wakeDevice(Z)Lcom/nuance/swype/connect/util/Alarm$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/connect/util/Alarm$Builder;->build()Lcom/nuance/swype/connect/util/Alarm;

    move-result-object v0

    .line 302
    .local v0, alarm:Lcom/nuance/swype/connect/util/Alarm;
    invoke-virtual {v0}, Lcom/nuance/swype/connect/util/Alarm;->set()V

    .line 303
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AddonManager.getList() -- delaying since manager didn\'t start "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 313
    .end local v0           #alarm:Lcom/nuance/swype/connect/util/Alarm;
    :goto_0
    return-void

    .line 307
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 308
    .local v2, parameters:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "11"

    iget-object v4, p0, Lcom/nuance/swype/connect/manager/AddonManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v4}, Lcom/nuance/swype/connect/ConnectClient;->getCurrentLocale()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    const-string v3, "list"

    invoke-virtual {p0, v3, v2}, Lcom/nuance/swype/connect/manager/AddonManager;->createCommand(Ljava/lang/String;Ljava/util/HashMap;)Lcom/nuance/swype/connect/util/Command;

    move-result-object v1

    .line 312
    .local v1, command:Lcom/nuance/swype/connect/util/Command;
    invoke-virtual {p0, v1}, Lcom/nuance/swype/connect/manager/AddonManager;->sendCommand(Lcom/nuance/swype/connect/util/Command;)V

    goto :goto_0
.end method

.method private getResource(ILjava/lang/String;)V
    .locals 3
    .parameter "id"
    .parameter "url"

    .prologue
    .line 870
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/AddonManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v2}, Lcom/nuance/swype/connect/ConnectClient;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 871
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 872
    .local v0, b:Landroid/os/Bundle;
    const-string v2, "DEFAULT_KEY"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 874
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/AddonManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v2, v1}, Lcom/nuance/swype/connect/ConnectClient;->postMessage(Landroid/os/Message;)V

    .line 875
    return-void
.end method

.method private installAddon(Ljava/lang/String;)V
    .locals 17
    .parameter "id"

    .prologue
    .line 438
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "addonManager.installAddon(): id: ["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "]"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 440
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/nuance/swype/connect/manager/AddonManager;->installing:Z

    if-eqz v14, :cond_0

    .line 442
    const-string v14, "addonManager.installAddon(). Already installing something. Ignoring."

    invoke-static {v14}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 509
    :goto_0
    return-void

    .line 447
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/connect/manager/AddonManager;->addonList:Lcom/nuance/swype/connect/util/InstallMetadata;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/nuance/swype/connect/util/InstallMetadata;->hasPackage(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 448
    const-string v14, "Attempting to load an invalid addon"

    invoke-static {v14}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 451
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/connect/manager/AddonManager;->addonList:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v15, "STEP"

    const/16 v16, 0x5

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v14, v0, v15, v1}, Lcom/nuance/swype/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/connect/manager/AddonManager;->addonAPKs:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 455
    .local v3, downloadApk:Ljava/io/File;
    if-nez v3, :cond_2

    .line 456
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Install is not available for id: ["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "]"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 460
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 461
    .local v6, fileName:Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/download/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 462
    .local v4, downloadExternalStorage:Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 464
    .local v5, file:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_3

    .line 465
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    move-result v11

    .line 466
    .local v11, makeDirectory:Z
    if-nez v11, :cond_3

    .line 467
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Cannot install addon: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " Could not create required scratch directory"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    .line 469
    const/16 v14, 0x1f5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lcom/nuance/swype/connect/manager/AddonManager;->sendStatus(Ljava/lang/String;I)V

    .line 470
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/connect/manager/AddonManager;->sendSDCardNotification()V

    goto/16 :goto_0

    .line 475
    .end local v11           #makeDirectory:Z
    :cond_3
    new-instance v9, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v9, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 477
    .local v9, installAPK:Ljava/io/File;
    invoke-static {v3, v9}, Lcom/nuance/swype/connect/util/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v7

    .line 478
    .local v7, fileWorked:Z
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "New File goes here: ["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "] actual: ["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "]"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 480
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "new file actual actual: ["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "] Worked: ["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "]"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 483
    if-eqz v7, :cond_4

    .line 484
    invoke-virtual {v9}, Ljava/io/File;->deleteOnExit()V

    .line 486
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/connect/manager/AddonManager;->addonList:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v14}, Lcom/nuance/swype/connect/util/InstallMetadata;->saveMetadata()V

    .line 490
    new-instance v10, Landroid/content/Intent;

    const-string v14, "android.intent.action.VIEW"

    invoke-direct {v10, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 491
    .local v10, installIntent:Landroid/content/Intent;
    invoke-static {v9}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v13

    .line 492
    .local v13, uri:Landroid/net/Uri;
    const-string v14, "application/vnd.android.package-archive"

    invoke-virtual {v10, v13, v14}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 493
    const/high16 v14, 0x1080

    invoke-virtual {v10, v14}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 495
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/connect/manager/AddonManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v14}, Lcom/nuance/swype/connect/ConnectClient;->getHandler()Landroid/os/Handler;

    move-result-object v8

    .line 496
    .local v8, h:Landroid/os/Handler;
    const/16 v14, 0x1e

    invoke-virtual {v8, v14}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    .line 497
    .local v12, msg:Landroid/os/Message;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 498
    .local v2, data:Landroid/os/Bundle;
    const-string v14, "DEFAULT_KEY"

    move-object/from16 v0, p1

    invoke-virtual {v2, v14, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    invoke-virtual {v12, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 500
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/connect/manager/AddonManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const-wide/32 v15, 0x1d4c0

    move-wide v0, v15

    invoke-virtual {v14, v12, v0, v1}, Lcom/nuance/swype/connect/ConnectClient;->postMessageDelayed(Landroid/os/Message;J)V

    .line 501
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/connect/manager/AddonManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v14, v10}, Lcom/nuance/swype/connect/ConnectClient;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 504
    .end local v2           #data:Landroid/os/Bundle;
    .end local v8           #h:Landroid/os/Handler;
    .end local v10           #installIntent:Landroid/content/Intent;
    .end local v12           #msg:Landroid/os/Message;
    .end local v13           #uri:Landroid/net/Uri;
    :cond_4
    const-string v14, "Unable to create download file on SDCARD, for some reason; most likely out of space"

    invoke-static {v14}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    .line 505
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/connect/manager/AddonManager;->sendSDCardNotification()V

    .line 506
    const/16 v14, 0x1f5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lcom/nuance/swype/connect/manager/AddonManager;->sendStatus(Ljava/lang/String;I)V

    goto/16 :goto_0
.end method

.method private isPackageInstalled(Ljava/lang/String;)Z
    .locals 4
    .parameter "namespace"

    .prologue
    .line 885
    const/4 v1, 0x0

    .line 886
    .local v1, isInstalled:Z
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 888
    :try_start_0
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/AddonManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v2}, Lcom/nuance/swype/connect/ConnectClient;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 889
    .local v0, info:Landroid/content/pm/PackageInfo;
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 890
    const/4 v1, 0x1

    .line 896
    .end local v0           #info:Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return v1

    .line 892
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private loadPropertiesFromJSON(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 4
    .parameter "item"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 764
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadPropertiesFromJSON: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 765
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 769
    .local v1, properties:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    const-string v2, "PROP_ID"

    const-string v3, "15"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 770
    const-string v2, "PROP_TITLE"

    const-string v3, "17"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 771
    const-string v2, "PROP_DESCRIPTION"

    const-string v3, "18"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 772
    const-string v2, "PROP_NAME"

    const-string v3, "16"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 773
    const-string v2, "PROP_NAMESPACE"

    const-string v3, "52"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    const-string v2, "PROP_ICON"

    const-string v3, "19"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 777
    const-string v2, "PROP_EULATITLE"

    const-string v3, "48"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 778
    const-string v2, "PROP_EULAURL"

    const-string v3, "47"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 781
    const-string v2, "PROP_VERSION"

    const-string v3, "20"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 782
    const-string v2, "PROP_INSTALLEDVERSION"

    const-string v3, "46"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 785
    invoke-direct {p0, v1}, Lcom/nuance/swype/connect/manager/AddonManager;->checkAddon(Ljava/util/Map;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 791
    :goto_0
    return-object v1

    .line 786
    :catch_0
    move-exception v0

    .line 787
    .local v0, ex:Lorg/json/JSONException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error loading addon: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    .line 788
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private processAckResponse(Lcom/nuance/swype/connect/util/Response;)V
    .locals 4
    .parameter "response"

    .prologue
    .line 634
    const-string v1, "AddonManager.processAckResponse()"

    invoke-static {v1}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 636
    iget-object v0, p1, Lcom/nuance/swype/connect/util/Response;->identifier:Ljava/lang/String;

    .line 637
    .local v0, id:Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/connect/manager/AddonManager;->addonList:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v1, v0}, Lcom/nuance/swype/connect/util/InstallMetadata;->hasPackage(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 638
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempting to load an invalid addon: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 651
    :goto_0
    return-void

    .line 642
    :cond_1
    iget v1, p1, Lcom/nuance/swype/connect/util/Response;->status:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 643
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/AddonManager;->addonList:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v2, "STEP"

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/nuance/swype/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    invoke-direct {p0, v0}, Lcom/nuance/swype/connect/manager/AddonManager;->installAddon(Ljava/lang/String;)V

    goto :goto_0

    .line 647
    :cond_2
    const/16 v1, 0x1f5

    invoke-direct {p0, v0, v1}, Lcom/nuance/swype/connect/manager/AddonManager;->sendStatus(Ljava/lang/String;I)V

    .line 648
    invoke-direct {p0, v0}, Lcom/nuance/swype/connect/manager/AddonManager;->unwindAddonInstall(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private processAddonDownloadResponse(Lcom/nuance/swype/connect/util/Response;)V
    .locals 5
    .parameter "response"

    .prologue
    .line 701
    const-string v3, "AddonManager.processAddonDownloadResponse()"

    invoke-static {v3}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 703
    iget-object v2, p1, Lcom/nuance/swype/connect/util/Response;->identifier:Ljava/lang/String;

    .line 704
    .local v2, id:Ljava/lang/String;
    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/nuance/swype/connect/manager/AddonManager;->addonList:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v3, v2}, Lcom/nuance/swype/connect/util/InstallMetadata;->hasPackage(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 705
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempting to load an invalid addon: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 719
    :goto_0
    return-void

    .line 709
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/nuance/swype/connect/util/Response;->file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/nuance/swype/connect/util/Response;->file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 710
    .local v0, apkPath:Ljava/lang/String;
    iget-object v3, p1, Lcom/nuance/swype/connect/util/Response;->file:Ljava/io/File;

    invoke-static {v3}, Lcom/nuance/swype/connect/util/EncryptUtils;->md5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 712
    .local v1, checksum:Ljava/lang/String;
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/AddonManager;->addonAPKs:Ljava/util/Map;

    iget-object v4, p1, Lcom/nuance/swype/connect/util/Response;->file:Ljava/io/File;

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 713
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/AddonManager;->addonList:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v4, "PROP_APKLOCATION"

    invoke-virtual {v3, v2, v4, v0}, Lcom/nuance/swype/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/AddonManager;->addonList:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v4, "PROP_CHECKSUM"

    invoke-virtual {v3, v2, v4, v1}, Lcom/nuance/swype/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File Location: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] Checksum: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 717
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/AddonManager;->addonList:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v3}, Lcom/nuance/swype/connect/util/InstallMetadata;->saveMetadata()V

    .line 718
    iget-object v3, p1, Lcom/nuance/swype/connect/util/Response;->identifier:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/nuance/swype/connect/manager/AddonManager;->ackAddonFile(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private processGetResponse(Lcom/nuance/swype/connect/util/Response;)V
    .locals 4
    .parameter "response"

    .prologue
    .line 603
    const-string v1, "AddonManager.processGetResponse()"

    invoke-static {v1}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 605
    iget v1, p1, Lcom/nuance/swype/connect/util/Response;->status:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 607
    iget-object v0, p1, Lcom/nuance/swype/connect/util/Response;->identifier:Ljava/lang/String;

    .line 609
    .local v0, id:Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/connect/manager/AddonManager;->addonList:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v1, v0}, Lcom/nuance/swype/connect/util/InstallMetadata;->hasPackage(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 610
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempting to load an invalid addon: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    .line 622
    .end local v0           #id:Ljava/lang/String;
    :goto_0
    return-void

    .line 614
    .restart local v0       #id:Ljava/lang/String;
    :cond_1
    iget-object v1, p1, Lcom/nuance/swype/connect/util/Response;->thirdPartyURL:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/nuance/swype/connect/util/Response;->thirdPartyURL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 615
    const-string v1, "We have a URL, now we need to fetch it"

    invoke-static {v1}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 616
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/AddonManager;->addonList:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v2, "PROP_FILEURL"

    iget-object v3, p1, Lcom/nuance/swype/connect/util/Response;->thirdPartyURL:Ljava/lang/String;

    invoke-virtual {v1, v0, v2, v3}, Lcom/nuance/swype/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/AddonManager;->addonList:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v2, "PROP_TRANSID"

    iget-object v3, p1, Lcom/nuance/swype/connect/util/Response;->transactionId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2, v3}, Lcom/nuance/swype/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    iget-object v1, p1, Lcom/nuance/swype/connect/util/Response;->identifier:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/nuance/swype/connect/manager/AddonManager;->fetchAddon(Ljava/lang/String;)V

    .line 621
    .end local v0           #id:Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/AddonManager;->managerStartComplete()V

    goto :goto_0
.end method

.method private processListResponse(Lcom/nuance/swype/connect/util/Response;)V
    .locals 9
    .parameter "response"

    .prologue
    .line 548
    const-string v6, "AddonManager.processListResponse()"

    invoke-static {v6}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 552
    iget v6, p1, Lcom/nuance/swype/connect/util/Response;->status:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 553
    iget-object v6, p0, Lcom/nuance/swype/connect/manager/AddonManager;->addonList:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v6}, Lcom/nuance/swype/connect/util/InstallMetadata;->clear()V

    .line 554
    iget-object v6, p1, Lcom/nuance/swype/connect/util/Response;->parameters:Ljava/util/HashMap;

    const-string v7, "45"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 556
    iget-object v6, p1, Lcom/nuance/swype/connect/util/Response;->parameters:Ljava/util/HashMap;

    const-string v7, "45"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONArray;

    .line 558
    .local v4, list:Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, index:I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v2, v6, :cond_2

    .line 560
    :try_start_0
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 561
    .local v3, item:Lorg/json/JSONObject;
    invoke-direct {p0, v3}, Lcom/nuance/swype/connect/manager/AddonManager;->loadPropertiesFromJSON(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    .line 563
    .local v5, properties:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v5, :cond_1

    .line 564
    const-string v6, "PROP_ID"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 565
    .local v1, id:Ljava/lang/String;
    const-string v6, "PROP_LANGUAGE"

    iget-object v7, p1, Lcom/nuance/swype/connect/util/Response;->initialCommand:Lcom/nuance/swype/connect/util/Command;

    iget-object v7, v7, Lcom/nuance/swype/connect/util/Command;->parameters:Ljava/util/HashMap;

    const-string v8, "11"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "adding addon: ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 569
    iget-object v6, p0, Lcom/nuance/swype/connect/manager/AddonManager;->addonList:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v6, v1}, Lcom/nuance/swype/connect/util/InstallMetadata;->addPackage(Ljava/lang/String;)Z

    .line 570
    iget-object v6, p0, Lcom/nuance/swype/connect/manager/AddonManager;->addonList:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v6, v1, v5}, Lcom/nuance/swype/connect/util/InstallMetadata;->setProps(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 571
    const-string v6, "PROP_EULAURL"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 572
    const/16 v7, 0x46

    const-string v6, "PROP_EULAURL"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v7, v6}, Lcom/nuance/swype/connect/manager/AddonManager;->getResource(ILjava/lang/String;)V

    .line 575
    :cond_0
    const-string v6, "PROP_ICON"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 576
    const/16 v7, 0x45

    const-string v6, "PROP_ICON"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v7, v6}, Lcom/nuance/swype/connect/manager/AddonManager;->getResource(ILjava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 558
    .end local v1           #id:Ljava/lang/String;
    .end local v3           #item:Lorg/json/JSONObject;
    .end local v5           #properties:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 580
    :catch_0
    move-exception v0

    .line 581
    .local v0, ex:Lorg/json/JSONException;
    const-string v6, "Issue loading object"

    invoke-static {v6}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 589
    .end local v0           #ex:Lorg/json/JSONException;
    .end local v2           #index:I
    .end local v4           #list:Lorg/json/JSONArray;
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/AddonManager;->managerStartComplete()V

    .line 590
    return-void
.end method

.method private processStatusResponse(Lcom/nuance/swype/connect/util/Response;)V
    .locals 7
    .parameter "response"

    .prologue
    .line 662
    const-string v4, "AddonManager.processStatusResponse()"

    invoke-static {v4}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 663
    invoke-virtual {p1}, Lcom/nuance/swype/connect/util/Response;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 665
    iget-object v0, p1, Lcom/nuance/swype/connect/util/Response;->initialCommand:Lcom/nuance/swype/connect/util/Command;

    .line 666
    .local v0, command:Lcom/nuance/swype/connect/util/Command;
    iget-object v4, v0, Lcom/nuance/swype/connect/util/Command;->parameters:Ljava/util/HashMap;

    const-string v5, "6"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 667
    .local v3, status:Ljava/lang/Integer;
    if-nez v3, :cond_0

    .line 668
    const-string v4, "recieved a response but no status was sent for it."

    invoke-static {v4}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 691
    :goto_0
    return-void

    .line 672
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x1f5

    if-ne v4, v5, :cond_2

    .line 690
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/AddonManager;->sendStatusToHost()V

    goto :goto_0

    .line 674
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x1f7

    if-ne v4, v5, :cond_1

    .line 676
    iget-object v1, p1, Lcom/nuance/swype/connect/util/Response;->identifier:Ljava/lang/String;

    .line 677
    .local v1, id:Ljava/lang/String;
    if-eqz v1, :cond_3

    iget-object v4, p0, Lcom/nuance/swype/connect/manager/AddonManager;->addonList:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v4, v1}, Lcom/nuance/swype/connect/util/InstallMetadata;->hasPackage(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 678
    :cond_3
    const-string v4, "Attempting to load an invalid addon"

    invoke-static {v4}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 682
    :cond_4
    iget-object v4, p0, Lcom/nuance/swype/connect/manager/AddonManager;->addonList:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v5, "PROP_TRANSID"

    const/4 v6, 0x0

    invoke-virtual {v4, v1, v5, v6}, Lcom/nuance/swype/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    iget-object v4, p0, Lcom/nuance/swype/connect/manager/AddonManager;->addonList:Lcom/nuance/swype/connect/util/InstallMetadata;

    const/4 v5, 0x7

    invoke-virtual {v4, v1, v5}, Lcom/nuance/swype/connect/util/InstallMetadata;->setStep(Ljava/lang/String;I)V

    .line 684
    iget-object v4, p0, Lcom/nuance/swype/connect/manager/AddonManager;->addonList:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v4, v1}, Lcom/nuance/swype/connect/util/InstallMetadata;->getProps(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    .line 685
    .local v2, props:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, v2}, Lcom/nuance/swype/connect/manager/AddonManager;->checkAddon(Ljava/util/Map;)V

    .line 687
    invoke-direct {p0, v1}, Lcom/nuance/swype/connect/manager/AddonManager;->cleanupFiles(Ljava/lang/String;)Z

    .line 688
    iget-object v4, p0, Lcom/nuance/swype/connect/manager/AddonManager;->addonList:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v4}, Lcom/nuance/swype/connect/util/InstallMetadata;->saveMetadata()V

    goto :goto_1
.end method

.method private sendOutOfSpaceNotification()V
    .locals 2

    .prologue
    .line 932
    new-instance v0, Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;

    iget-object v1, p0, Lcom/nuance/swype/connect/manager/AddonManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-direct {v0, v1}, Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;-><init>(Lcom/nuance/swype/connect/ConnectClient;)V

    const-string v1, "INSUFFICIENT_SPACE"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;->setMessageId(Ljava/lang/String;)Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;->setFlagMultiline(Z)Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;->send()Lcom/nuance/swype/connect/util/StatusBarNotification;

    .line 935
    return-void
.end method

.method private sendSDCardNotification()V
    .locals 4

    .prologue
    .line 941
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 942
    .local v1, state:Ljava/lang/String;
    const-string v0, "INSUFFICIENT_SPACE_SDCARD"

    .line 943
    .local v0, id:Ljava/lang/String;
    const-string v2, "mounted_ro"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 944
    const-string v0, "SDCARD_READONLY"

    .line 954
    :cond_0
    :goto_0
    new-instance v2, Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;

    iget-object v3, p0, Lcom/nuance/swype/connect/manager/AddonManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-direct {v2, v3}, Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;-><init>(Lcom/nuance/swype/connect/ConnectClient;)V

    invoke-virtual {v2, v0}, Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;->setMessageId(Ljava/lang/String;)Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;->setFlagMultiline(Z)Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;->send()Lcom/nuance/swype/connect/util/StatusBarNotification;

    .line 957
    return-void

    .line 945
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

    .line 951
    :cond_2
    const-string v0, "SDCARD_REQUIRED"

    goto :goto_0
.end method

.method private sendStatus(Ljava/lang/String;I)V
    .locals 4
    .parameter "id"
    .parameter "status"

    .prologue
    .line 523
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AddonManager.sendStatus() -- id: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] Status: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 524
    if-nez p1, :cond_0

    .line 525
    const-string v2, "Attempting to load an invalid addon"

    invoke-static {v2}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 537
    :goto_0
    return-void

    .line 529
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 530
    .local v1, parameters:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "49"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    const-string v2, "6"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    const-string v2, "status"

    invoke-virtual {p0, v2, v1}, Lcom/nuance/swype/connect/manager/AddonManager;->createCommand(Ljava/lang/String;Ljava/util/HashMap;)Lcom/nuance/swype/connect/util/Command;

    move-result-object v0

    .line 534
    .local v0, command:Lcom/nuance/swype/connect/util/Command;
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/AddonManager;->addonList:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v3, "PROP_TRANSID"

    invoke-virtual {v2, p1, v3}, Lcom/nuance/swype/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/nuance/swype/connect/util/Command;->transactionId:Ljava/lang/String;

    .line 535
    iput-object p1, v0, Lcom/nuance/swype/connect/util/Command;->identifier:Ljava/lang/String;

    .line 536
    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/manager/AddonManager;->sendCommand(Lcom/nuance/swype/connect/util/Command;)V

    goto :goto_0
.end method

.method private sendStatusToHost()V
    .locals 5

    .prologue
    .line 747
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/AddonManager;->addonList:Lcom/nuance/swype/connect/util/InstallMetadata;

    if-eqz v3, :cond_0

    .line 748
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/AddonManager;->addonList:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v3}, Lcom/nuance/swype/connect/util/InstallMetadata;->allPackages()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 749
    .local v0, addon:Ljava/lang/String;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 750
    .local v1, data:Landroid/os/Bundle;
    const-string v3, "DEFAULT_KEY"

    iget-object v4, p0, Lcom/nuance/swype/connect/manager/AddonManager;->addonList:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v4, v0}, Lcom/nuance/swype/connect/util/InstallMetadata;->getProps(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 751
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/AddonManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v4, 0x66

    invoke-virtual {v3, v4, v1}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 754
    .end local v0           #addon:Ljava/lang/String;
    .end local v1           #data:Landroid/os/Bundle;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method private unwindAddonInstall(Ljava/lang/String;)V
    .locals 1
    .parameter "id"

    .prologue
    .line 733
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/AddonManager;->addonList:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/connect/util/InstallMetadata;->hasPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 734
    const-string v0, "Attempting to load an invalid addon"

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 740
    :goto_0
    return-void

    .line 738
    :cond_0
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/manager/AddonManager;->cleanupFiles(Ljava/lang/String;)Z

    .line 739
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/AddonManager;->addonList:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/util/InstallMetadata;->saveMetadata()V

    goto :goto_0
.end method


# virtual methods
.method public alarmNotification(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .parameter "type"
    .parameter "data"

    .prologue
    .line 723
    const-string v0, "Connect"

    const-string v1, "Addon Manager has recieved an alarm."

    invoke-static {v0, v1}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    if-eqz p1, :cond_0

    const-string v0, "ADDON_LIST_RETRY"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 725
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/AddonManager;->getList()V

    .line 727
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/AddonManager;->addonList:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/util/InstallMetadata;->saveMetadata()V

    .line 157
    invoke-super {p0}, Lcom/nuance/swype/connect/manager/AbstractCommandManager;->destroy()V

    .line 158
    return-void
.end method

.method public getDependencies()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 148
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "session"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "internal_resources"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public init()V
    .locals 3

    .prologue
    .line 135
    new-instance v0, Lcom/nuance/swype/connect/util/InstallMetadata;

    iget-object v1, p0, Lcom/nuance/swype/connect/manager/AddonManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const-string v2, "ADDON_LIST"

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/connect/util/InstallMetadata;-><init>(Lcom/nuance/swype/connect/ConnectClient;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/AddonManager;->addonList:Lcom/nuance/swype/connect/util/InstallMetadata;

    .line 136
    return-void
.end method

.method public onDownloadStatusResponse(Lcom/nuance/swype/connect/util/Command;II)V
    .locals 5
    .parameter "command"
    .parameter "downloaded"
    .parameter "total"

    .prologue
    .line 216
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/AddonManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v2, "download"

    invoke-virtual {v1, v2}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/nuance/swype/connect/util/Command;->command:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 217
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 218
    .local v0, data:Landroid/os/Bundle;
    if-gez p2, :cond_1

    .line 219
    const-string v1, "PROP_DOWNLOAD_PERCENT"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 224
    :goto_0
    const-string v1, "PROP_ADDON"

    iget-object v2, p1, Lcom/nuance/swype/connect/util/Command;->identifier:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/AddonManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v2, 0x67

    invoke-virtual {v1, v2, v0}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(ILandroid/os/Bundle;)V

    .line 227
    if-gez p2, :cond_0

    .line 228
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/AddonManager;->sendOutOfSpaceNotification()V

    .line 229
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/AddonManager;->addonList:Lcom/nuance/swype/connect/util/InstallMetadata;

    iget-object v2, p1, Lcom/nuance/swype/connect/util/Command;->identifier:Ljava/lang/String;

    const-string v3, "STEP"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/nuance/swype/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/AddonManager;->sendStatusToHost()V

    .line 234
    .end local v0           #data:Landroid/os/Bundle;
    :cond_0
    return-void

    .line 221
    .restart local v0       #data:Landroid/os/Bundle;
    :cond_1
    const-string v1, "PROP_DOWNLOAD_PERCENT"

    iget-object v2, p0, Lcom/nuance/swype/connect/manager/AddonManager;->downloadPercent:Lcom/nuance/swype/connect/util/DownloadPercentPreprocessor;

    invoke-virtual {v2, p2, p3}, Lcom/nuance/swype/connect/util/DownloadPercentPreprocessor;->updateDownloadTotals(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onFileResponse(Lcom/nuance/swype/connect/util/Response;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 238
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/AddonManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "download"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/nuance/swype/connect/util/Response;->command:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/manager/AddonManager;->processAddonDownloadResponse(Lcom/nuance/swype/connect/util/Response;)V

    .line 241
    :cond_0
    return-void
.end method

.method public onHandleMessage(Landroid/os/Message;)Z
    .locals 5
    .parameter "message"

    .prologue
    .line 249
    const/4 v1, 0x0

    .line 250
    .local v1, handled:Z
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 283
    :goto_0
    return v1

    .line 252
    :sswitch_0
    const-string v3, "AddonManager.onHandleMessage(MESSAGE_CLIENT_ADDON_INSTALL)"

    invoke-static {v3}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 253
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "DEFAULT_KEY"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/nuance/swype/connect/manager/AddonManager;->getAddon(Ljava/lang/String;)V

    .line 254
    const/4 v1, 0x1

    .line 255
    goto :goto_0

    .line 258
    :sswitch_1
    const-string v3, "AddonManager.onHandleMessage(MESSAGE_CLIENT_ADDONS_REFRESH)"

    invoke-static {v3}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 259
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/AddonManager;->getList()V

    .line 260
    const/4 v1, 0x1

    .line 261
    goto :goto_0

    .line 264
    :sswitch_2
    const-string v3, "AddonManager.onHandleMessage(MESSAGE_COMMAND_ADDON_CHECK)"

    invoke-static {v3}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 265
    const/4 v2, 0x0

    .line 266
    .local v2, id:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 267
    .local v0, data:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 268
    const-string v3, "DEFAULT_KEY"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 270
    :cond_0
    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/nuance/swype/connect/manager/AddonManager;->addonList:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v3, v2}, Lcom/nuance/swype/connect/util/InstallMetadata;->getStep(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x7

    if-eq v3, v4, :cond_1

    .line 274
    invoke-direct {p0, v2}, Lcom/nuance/swype/connect/manager/AddonManager;->checkSuccessfulInstall(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 275
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Successfully installed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 276
    const/16 v3, 0x1f7

    invoke-direct {p0, v2, v3}, Lcom/nuance/swype/connect/manager/AddonManager;->sendStatus(Ljava/lang/String;I)V

    .line 279
    :cond_1
    const/4 v1, 0x1

    .line 280
    goto :goto_0

    .line 250
    nop

    :sswitch_data_0
    .sparse-switch
        0x1e -> :sswitch_2
        0x3d -> :sswitch_1
        0xe0 -> :sswitch_0
    .end sparse-switch
.end method

.method public onIOExceptionResponse(Lcom/nuance/swype/connect/util/Command;)V
    .locals 4
    .parameter "command"

    .prologue
    const/4 v3, 0x0

    .line 185
    if-nez p1, :cond_1

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/AddonManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v2, "download"

    invoke-virtual {v1, v2}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/nuance/swype/connect/util/Command;->command:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 194
    iget-object v0, p1, Lcom/nuance/swype/connect/util/Command;->identifier:Ljava/lang/String;

    .line 196
    .local v0, id:Ljava/lang/String;
    if-nez v0, :cond_2

    .line 197
    const-string v1, "Attempting to get an invalid addon"

    invoke-static {v1}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 201
    :cond_2
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/AddonManager;->addonList:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v2, "PROP_TRANSID"

    invoke-virtual {v1, v0, v2, v3}, Lcom/nuance/swype/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/AddonManager;->addonList:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v2, "PROP_FILEURL"

    invoke-virtual {v1, v0, v2, v3}, Lcom/nuance/swype/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/AddonManager;->addonList:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v2, "PROP_INSTALLREQUESTED"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/nuance/swype/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-direct {p0, v0}, Lcom/nuance/swype/connect/manager/AddonManager;->cleanupFiles(Ljava/lang/String;)Z

    .line 206
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/AddonManager;->addonList:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v1}, Lcom/nuance/swype/connect/util/InstallMetadata;->saveMetadata()V

    .line 209
    invoke-direct {p0, v0}, Lcom/nuance/swype/connect/manager/AddonManager;->getAddon(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onResponse(Lcom/nuance/swype/connect/util/Response;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/AddonManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "list"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/swype/connect/util/Response;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/manager/AddonManager;->processListResponse(Lcom/nuance/swype/connect/util/Response;)V

    .line 178
    :goto_0
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/AddonManager;->addonList:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/util/InstallMetadata;->saveMetadata()V

    .line 179
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/AddonManager;->sendStatusToHost()V

    .line 180
    return-void

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/AddonManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "get"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/swype/connect/util/Response;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/manager/AddonManager;->processGetResponse(Lcom/nuance/swype/connect/util/Response;)V

    goto :goto_0

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/AddonManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "ack"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/swype/connect/util/Response;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 172
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/manager/AddonManager;->processAckResponse(Lcom/nuance/swype/connect/util/Response;)V

    goto :goto_0

    .line 173
    :cond_2
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/AddonManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "status"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/swype/connect/util/Response;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 174
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/manager/AddonManager;->processStatusResponse(Lcom/nuance/swype/connect/util/Response;)V

    goto :goto_0

    .line 176
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Server returned unknown command: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/nuance/swype/connect/util/Response;->command:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public start()V
    .locals 1

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/AddonManager;->managerStartComplete()V

    .line 140
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/AddonManager;->addonList:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/util/InstallMetadata;->allPackages()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/AddonManager;->getList()V

    .line 145
    :goto_0
    return-void

    .line 143
    :cond_0
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/AddonManager;->checkCompletedInstalls()V

    goto :goto_0
.end method
