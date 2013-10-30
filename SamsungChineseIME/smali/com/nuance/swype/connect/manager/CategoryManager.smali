.class public Lcom/nuance/swype/connect/manager/CategoryManager;
.super Lcom/nuance/swype/connect/manager/AbstractCommandManager;
.source "CategoryManager.java"


# static fields
.field private static final CATEGORY_CORE:Ljava/lang/String; = "CATEGORY_CORE"

.field private static final CATEGORY_ENABLED_PREF:Ljava/lang/String; = "categoryEnabled"

.field private static final CATEGORY_HOTWORDS_ENABLED_PREF:Ljava/lang/String; = "categoryHotwordEnabled"

.field private static final CATEGORY_INSTALLER_PREF:Ljava/lang/String; = "CATEGORY_INSTALLER_DATA"

.field private static final CATEGORY_LIST_FETCH_ALARM:Ljava/lang/String; = "CATEGORY_LIST_FETCH"

.field private static final CATEGORY_LIST_LAST_FETCHED:Ljava/lang/String; = "CategoryRecieved"

.field public static final COMMAND_ACK:Ljava/lang/String; = "ack"

.field public static final COMMAND_FAMILY:Ljava/lang/String; = "cdb"

.field public static final COMMAND_GET:Ljava/lang/String; = "get"

.field public static final COMMAND_LIST:Ljava/lang/String; = "list"

.field public static final COMMAND_STATUS:Ljava/lang/String; = "status"

.field public static final COMMAND_SUBSCRIBE:Ljava/lang/String; = "subscribe"

.field public static final COMMAND_UNSUBSCRIBE:Ljava/lang/String; = "unsubscribe"

.field public static final COMMAND_VERSION:I = 0x6

.field private static final DELETE_CATEGORY:Ljava/lang/String; = "DELETE_CATEGORY"

.field public static final INITIAL_LIST_ALARM:Ljava/lang/String; = "init_list_alarm"

.field private static final KOREAN_KEYBOARD_ID:I = 0x12

.field private static final LAST_UPDATE_AVAILABLE:Ljava/lang/String; = "LAST_UPDATE_AVAILABLE"

.field private static final LAST_UPDATE_FETCHED:Ljava/lang/String; = "LAST_UPDATE_FETCHED"

.field public static final MANAGER_NAME:Ljava/lang/String; = "cdb"

.field private static final MESSAGES_HANDLED:[I = null

.field private static final SUBSCRIBED:Ljava/lang/String; = "SUBSCRIBED"

.field public static final TYPE_CHINESE_ADDON_DICTIONARY:I = 0x2

.field public static final TYPE_KEYBOARD_LANGUAGE_ONLY:I = 0x1

.field public static final TYPE_KEYBOARD_PLUS_LANGUAGE_VARIANT:I = 0x3

.field public static final TYPE_RESOURCES:I = 0x4

.field private static final UNSUBSCRIBE_PENDING:Ljava/lang/String; = "UNSUBSCRIBE_PENDING"

.field private static final USER_INITIATED:Ljava/lang/String; = "USER_INITIATED"


# instance fields
.field private categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

.field private currentCore:I

.field private currentLanguageCode:I

.field private enabled:Z

.field private forceListRequest:Z

.field private hotwordEnabled:Z

.field private lastRecieved:J

.field private listFetchInterval:J

.field private resourcesEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/nuance/swype/connect/manager/CategoryManager;->MESSAGES_HANDLED:[I

    return-void

    :array_0
    .array-data 0x4
        0x21t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x6t 0x1t 0x0t 0x0t
        0x7t 0x1t 0x0t 0x0t
        0x9t 0x1t 0x0t 0x0t
        0xat 0x1t 0x0t 0x0t
        0xbt 0x1t 0x0t 0x0t
        0xet 0x1t 0x0t 0x0t
        0xft 0x1t 0x0t 0x0t
        0x10t 0x1t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/nuance/swype/connect/ConnectClient;)V
    .locals 3
    .parameter "ctx"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 125
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager;-><init>(Lcom/nuance/swype/connect/ConnectClient;)V

    .line 78
    iput-boolean v0, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->hotwordEnabled:Z

    .line 79
    iput-boolean v1, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->resourcesEnabled:Z

    .line 81
    iput-boolean v1, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->enabled:Z

    .line 84
    iput-boolean v0, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->forceListRequest:Z

    .line 87
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->listFetchInterval:J

    .line 126
    const/4 v0, 0x6

    iput v0, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->version:I

    .line 127
    const-string v0, "cdb"

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->commandFamily:Ljava/lang/String;

    .line 128
    sget-object v0, Lcom/nuance/swype/connect/manager/CategoryManager;->MESSAGES_HANDLED:[I

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->messages:[I

    .line 130
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "list"

    sget-object v2, Lcom/nuance/swype/connect/manager/CategoryManager;->COMMAND_RESPONSE_SUCCESS:[I

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 131
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "subscribe"

    sget-object v2, Lcom/nuance/swype/connect/manager/CategoryManager;->COMMAND_RESPONSE_SUCCESS:[I

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 132
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "unsubscribe"

    sget-object v2, Lcom/nuance/swype/connect/manager/CategoryManager;->COMMAND_RESPONSE_SUCCESS:[I

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 133
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "status"

    sget-object v2, Lcom/nuance/swype/connect/manager/CategoryManager;->COMMAND_RESPONSE_SUCCESS:[I

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 134
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "get"

    sget-object v2, Lcom/nuance/swype/connect/manager/CategoryManager;->COMMAND_RESPONSE_SUCCESS:[I

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 135
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "ack"

    sget-object v2, Lcom/nuance/swype/connect/manager/CategoryManager;->COMMAND_RESPONSE_SUCCESS:[I

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 136
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "download"

    sget-object v2, Lcom/nuance/swype/connect/manager/CategoryManager;->COMMAND_RESPONSE_SUCCESS:[I

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 138
    new-instance v0, Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v1, "CATEGORY_INSTALLER_DATA"

    invoke-direct {v0, p1, v1}, Lcom/nuance/swype/connect/util/InstallMetadata;-><init>(Lcom/nuance/swype/connect/ConnectClient;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    .line 139
    return-void
.end method

.method static synthetic access$002(Lcom/nuance/swype/connect/manager/CategoryManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput p1, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->currentLanguageCode:I

    return p1
.end method

.method static synthetic access$102(Lcom/nuance/swype/connect/manager/CategoryManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput p1, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->currentCore:I

    return p1
.end method

.method static synthetic access$200(Lcom/nuance/swype/connect/manager/CategoryManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/CategoryManager;->processNextCategory()V

    return-void
.end method

.method private chineseCatDbReset()V
    .locals 15

    .prologue
    const/4 v10, 0x3

    const/4 v14, 0x0

    const/4 v13, 0x5

    const/4 v12, 0x2

    const/4 v11, 0x1

    .line 1414
    new-array v8, v13, [Ljava/lang/Integer;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v14

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v12

    const/4 v9, 0x4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    const/4 v9, 0x4

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 1416
    .local v6, steps:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v8, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v8, v6}, Lcom/nuance/swype/connect/util/InstallMetadata;->listFromSteps(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1417
    .local v0, catDb:Ljava/lang/String;
    iget-object v8, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v9, "25"

    invoke-virtual {v8, v0, v9}, Lcom/nuance/swype/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-ne v8, v12, :cond_0

    .line 1420
    iget-object v8, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v8, v0}, Lcom/nuance/swype/connect/util/InstallMetadata;->getStep(Ljava/lang/String;)I

    move-result v5

    .line 1421
    .local v5, step:I
    iget-object v8, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v9, "FILE_LOCATION"

    invoke-virtual {v8, v0, v9}, Lcom/nuance/swype/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1423
    .local v4, location:Ljava/lang/String;
    iget-object v8, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v9, "SUBSCRIBED"

    invoke-virtual {v8, v0, v9}, Lcom/nuance/swype/connect/util/InstallMetadata;->getBoolProp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    .line 1425
    .local v7, subscribed:Z
    if-ge v5, v13, :cond_2

    .line 1426
    if-eqz v7, :cond_1

    .line 1427
    iget-object v8, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v8, v0, v11}, Lcom/nuance/swype/connect/util/InstallMetadata;->setStep(Ljava/lang/String;I)V

    goto :goto_0

    .line 1429
    :cond_1
    iget-object v8, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v8, v0, v14}, Lcom/nuance/swype/connect/util/InstallMetadata;->setStep(Ljava/lang/String;I)V

    .line 1430
    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/manager/CategoryManager;->subscribe(Ljava/lang/String;)V

    goto :goto_0

    .line 1433
    :cond_2
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1434
    .local v2, f:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1435
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1436
    .local v1, data:Landroid/os/Bundle;
    const-string v8, "DEFAULT_KEY"

    invoke-virtual {v1, v8, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1437
    const-string v8, "filePath"

    invoke-virtual {v1, v8, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1438
    iget-object v8, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v9, 0x95

    invoke-virtual {v8, v9, v1}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 1441
    .end local v1           #data:Landroid/os/Bundle;
    :cond_3
    iget-object v8, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v8, v0, v11}, Lcom/nuance/swype/connect/util/InstallMetadata;->setStep(Ljava/lang/String;I)V

    goto :goto_0

    .line 1445
    .end local v0           #catDb:Ljava/lang/String;
    .end local v2           #f:Ljava/io/File;
    .end local v4           #location:Ljava/lang/String;
    .end local v5           #step:I
    .end local v7           #subscribed:Z
    :cond_4
    return-void
.end method

.method private clearCategoryDownload(Ljava/lang/String;)V
    .locals 3
    .parameter "category"

    .prologue
    .line 1334
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/connect/util/InstallMetadata;->hasPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1335
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/util/InstallMetadata;->beginTransaction()V

    .line 1337
    :try_start_0
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v1, "SUBSCRIBED"

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/nuance/swype/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1338
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v1, "LAST_UPDATE_FETCHED"

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/nuance/swype/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1339
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v1, "USER_INITIATED"

    invoke-virtual {v0, p1, v1}, Lcom/nuance/swype/connect/util/InstallMetadata;->removeProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 1340
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/connect/util/InstallMetadata;->uninstallPackage(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1342
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/util/InstallMetadata;->commitTransaction()V

    .line 1345
    :cond_0
    return-void

    .line 1342
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v1}, Lcom/nuance/swype/connect/util/InstallMetadata;->commitTransaction()V

    throw v0
.end method

.method private findVariantLanguageCategory(Ljava/lang/String;I)Ljava/lang/String;
    .locals 17
    .parameter "variant"
    .parameter "categoryId"

    .prologue
    .line 1086
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "CategoryManager.findVariantLanguageCategory("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ") for keyboardId 0x"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/connect/manager/CategoryManager;->currentLanguageCode:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 1087
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/swype/connect/manager/CategoryManager;->managerDownloadListState:Lcom/nuance/swype/connect/manager/AbstractCommandManager$DownloadState;

    sget-object v16, Lcom/nuance/swype/connect/manager/AbstractCommandManager$DownloadState;->DOWNLOAD_LIST_STATE_NONE:Lcom/nuance/swype/connect/manager/AbstractCommandManager$DownloadState;

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v15}, Lcom/nuance/swype/connect/util/InstallMetadata;->hasPackages()Z

    move-result v15

    if-nez v15, :cond_1

    .line 1089
    :cond_0
    const-string v15, "CategoryManager.findVariantLanguageCategory() - none exist. done."

    invoke-static {v15}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 1090
    const/4 v10, 0x0

    .line 1147
    :goto_0
    return-object v10

    .line 1093
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/nuance/swype/connect/manager/CategoryManager;->hotwordEnabled:Z

    if-nez v15, :cond_2

    .line 1094
    const-string v15, "CategoryManager.findVariantLanguageCategory() - hotwords not enabled"

    invoke-static {v15}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 1095
    const/4 v10, 0x0

    goto :goto_0

    .line 1099
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 1100
    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/nuance/swype/connect/manager/CategoryManager;->getAllEntriesWithCategoryId(I)Ljava/util/ArrayList;

    move-result-object v11

    .line 1101
    .local v11, keys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1103
    const/4 v7, 0x0

    .line 1104
    .local v7, defaultCategory:Ljava/lang/String;
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 1105
    .local v10, id:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v16, "25"

    move-object/from16 v0, v16

    invoke-virtual {v15, v10, v0}, Lcom/nuance/swype/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 1106
    .local v14, typeId:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v16, "13"

    move-object/from16 v0, v16

    invoke-virtual {v15, v10, v0}, Lcom/nuance/swype/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 1108
    .local v12, language:I
    const/4 v15, 0x3

    if-ne v14, v15, :cond_7

    move-object/from16 v0, p0

    iget v15, v0, Lcom/nuance/swype/connect/manager/CategoryManager;->currentLanguageCode:I

    if-ne v12, v15, :cond_7

    .line 1109
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v16, "100"

    move-object/from16 v0, v16

    invoke-virtual {v15, v10, v0}, Lcom/nuance/swype/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1110
    .local v5, countryList:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v16, "98"

    move-object/from16 v0, v16

    invoke-virtual {v15, v10, v0}, Lcom/nuance/swype/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1111
    .local v6, countryVariant:Ljava/lang/String;
    const/4 v3, 0x0

    .line 1112
    .local v3, countries:[Ljava/lang/String;
    if-eqz v5, :cond_4

    .line 1113
    const-string v15, ","

    invoke-virtual {v5, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1116
    :cond_4
    if-eqz v3, :cond_6

    .line 1119
    move-object v2, v3

    .local v2, arr$:[Ljava/lang/String;
    array-length v13, v2

    .local v13, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_2
    if-ge v9, v13, :cond_3

    aget-object v4, v2, v9

    .line 1120
    .local v4, country:Ljava/lang/String;
    if-eqz p1, :cond_5

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 1121
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Found exact match database for variant: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " category: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1101
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v3           #countries:[Ljava/lang/String;
    .end local v4           #country:Ljava/lang/String;
    .end local v5           #countryList:Ljava/lang/String;
    .end local v6           #countryVariant:Ljava/lang/String;
    .end local v7           #defaultCategory:Ljava/lang/String;
    .end local v9           #i$:I
    .end local v10           #id:Ljava/lang/String;
    .end local v11           #keys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v12           #language:I
    .end local v13           #len$:I
    .end local v14           #typeId:I
    :catchall_0
    move-exception v15

    :try_start_1
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v15

    .line 1119
    .restart local v2       #arr$:[Ljava/lang/String;
    .restart local v3       #countries:[Ljava/lang/String;
    .restart local v4       #country:Ljava/lang/String;
    .restart local v5       #countryList:Ljava/lang/String;
    .restart local v6       #countryVariant:Ljava/lang/String;
    .restart local v7       #defaultCategory:Ljava/lang/String;
    .restart local v9       #i$:I
    .restart local v10       #id:Ljava/lang/String;
    .restart local v11       #keys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v12       #language:I
    .restart local v13       #len$:I
    .restart local v14       #typeId:I
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1126
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v4           #country:Ljava/lang/String;
    .end local v9           #i$:I
    .end local v13           #len$:I
    :cond_6
    if-nez v3, :cond_3

    .line 1128
    if-nez v7, :cond_3

    .line 1129
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Found default database without variant for category: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 1130
    move-object v7, v10

    goto/16 :goto_1

    .line 1133
    .end local v3           #countries:[Ljava/lang/String;
    .end local v5           #countryList:Ljava/lang/String;
    .end local v6           #countryVariant:Ljava/lang/String;
    :cond_7
    const/4 v15, 0x1

    if-ne v14, v15, :cond_8

    move-object/from16 v0, p0

    iget v15, v0, Lcom/nuance/swype/connect/manager/CategoryManager;->currentLanguageCode:I

    if-ne v12, v15, :cond_8

    .line 1134
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Found TYPE_KEYBOARD_LANGUAGE_ONLY category: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1136
    :cond_8
    const/4 v15, 0x1

    if-ne v14, v15, :cond_3

    and-int/lit16 v15, v12, 0xff

    const/16 v16, 0x12

    move/from16 v0, v16

    if-ne v15, v0, :cond_3

    and-int/lit16 v15, v12, 0xff

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/connect/manager/CategoryManager;->currentLanguageCode:I

    move/from16 v16, v0

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_3

    .line 1138
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Found Korean database with partial keyboard match 0x"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    and-int/lit16 v0, v12, 0xff

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1143
    .end local v10           #id:Ljava/lang/String;
    .end local v12           #language:I
    .end local v14           #typeId:I
    :cond_9
    if-eqz v7, :cond_a

    .line 1144
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Return default category for variant: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " category: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    :cond_a
    move-object v10, v7

    .line 1147
    goto/16 :goto_0
.end method

.method private getAllEntriesWithCategoryId(I)Ljava/util/ArrayList;
    .locals 5
    .parameter "categoryId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1404
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1405
    .local v0, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v3}, Lcom/nuance/swype/connect/util/InstallMetadata;->allPackages()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1406
    .local v2, key:Ljava/lang/String;
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v4, "78"

    invoke-virtual {v3, v2, v4}, Lcom/nuance/swype/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 1407
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1410
    .end local v2           #key:Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method private getCurrentUserInitiatedCat()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    .line 1453
    new-array v3, v7, [Ljava/lang/Integer;

    const/4 v4, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 1455
    .local v2, steps:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v3, v2}, Lcom/nuance/swype/connect/util/InstallMetadata;->listFromSteps(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1456
    .local v0, catDb:Ljava/lang/String;
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v4, "USER_INITIATED"

    invoke-virtual {v3, v0, v4}, Lcom/nuance/swype/connect/util/InstallMetadata;->getBoolProp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1460
    .end local v0           #catDb:Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getUniqueCategoryIds()Landroid/util/SparseIntArray;
    .locals 6

    .prologue
    .line 1393
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    .line 1394
    .local v2, ids:Landroid/util/SparseIntArray;
    iget-object v4, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v4}, Lcom/nuance/swype/connect/util/InstallMetadata;->allPackages()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1395
    .local v3, key:Ljava/lang/String;
    iget-object v4, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v5, "78"

    invoke-virtual {v4, v3, v5}, Lcom/nuance/swype/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1396
    .local v1, id:I
    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v4

    if-gez v4, :cond_0

    .line 1397
    iget-object v4, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v5, "25"

    invoke-virtual {v4, v3, v5}, Lcom/nuance/swype/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    .line 1400
    .end local v1           #id:I
    .end local v3           #key:Ljava/lang/String;
    :cond_1
    return-object v2
.end method

.method private installComplete(Ljava/lang/String;I)V
    .locals 2
    .parameter "category"
    .parameter "status"

    .prologue
    .line 1008
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CategoryManager.installComplete("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") status("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 1010
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/connect/util/InstallMetadata;->hasPackage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1011
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CategoryManager.installComplete() - category list is not available ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 1024
    :goto_0
    return-void

    .line 1016
    :cond_0
    sget v0, Lcom/nuance/swype/connect/api/Integers;->STATUS_SUCCESS:I

    if-ne p2, v0, :cond_1

    .line 1017
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const/4 v1, 0x7

    invoke-virtual {v0, p1, v1}, Lcom/nuance/swype/connect/util/InstallMetadata;->setStep(Ljava/lang/String;I)V

    .line 1023
    :goto_1
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/CategoryManager;->processNextCategory()V

    goto :goto_0

    .line 1019
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "install failed.  Unwinding... "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    .line 1020
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/nuance/swype/connect/util/InstallMetadata;->setStep(Ljava/lang/String;I)V

    .line 1021
    invoke-virtual {p0, p1}, Lcom/nuance/swype/connect/manager/CategoryManager;->unsubscribe(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private isClientInstallableCategory(Ljava/lang/String;)Z
    .locals 4
    .parameter "category"

    .prologue
    const/4 v1, 0x1

    .line 938
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v3, "25"

    invoke-virtual {v2, p1, v3}, Lcom/nuance/swype/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 939
    .local v0, type:I
    if-eq v0, v1, :cond_0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadPreferences()V
    .locals 4

    .prologue
    .line 1069
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v1}, Lcom/nuance/swype/connect/ConnectClient;->getDataStore()Lcom/nuance/swype/connect/store/PersistentDataStore;

    move-result-object v0

    .line 1070
    .local v0, store:Lcom/nuance/swype/connect/store/PersistentDataStore;
    const-string v1, "DOWNLOAD_LIST_STATE"

    sget-object v2, Lcom/nuance/swype/connect/manager/AbstractCommandManager$DownloadState;->DOWNLOAD_LIST_STATE_UNKNOWN:Lcom/nuance/swype/connect/manager/AbstractCommandManager$DownloadState;

    invoke-virtual {v2}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$DownloadState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/swype/connect/store/PersistentDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$DownloadState;->valueOf(Ljava/lang/String;)Lcom/nuance/swype/connect/manager/AbstractCommandManager$DownloadState;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->managerDownloadListState:Lcom/nuance/swype/connect/manager/AbstractCommandManager$DownloadState;

    .line 1072
    const-string v1, "CategoryRecieved"

    invoke-static {}, Lcom/nuance/swype/connect/util/TimeConversion;->getCurrentTime()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/swype/connect/store/PersistentDataStore;->readLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->lastRecieved:J

    .line 1073
    const-string v1, "categoryEnabled"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/nuance/swype/connect/store/PersistentDataStore;->readBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->enabled:Z

    .line 1074
    const-string v1, "categoryHotwordEnabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/nuance/swype/connect/store/PersistentDataStore;->readBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->hotwordEnabled:Z

    .line 1075
    return-void
.end method

.method private declared-synchronized processNextCategory()V
    .locals 26

    .prologue
    .line 1199
    monitor-enter p0

    :try_start_0
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "CategoryManager.processNextCategory() - state: ["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/connect/manager/CategoryManager;->managerDownloadListState:Lcom/nuance/swype/connect/manager/AbstractCommandManager$DownloadState;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "] - enabled: ["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nuance/swype/connect/manager/CategoryManager;->enabled:Z

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "]"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 1201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/connect/manager/CategoryManager;->managerDownloadListState:Lcom/nuance/swype/connect/manager/AbstractCommandManager$DownloadState;

    move-object/from16 v22, v0

    sget-object v23, Lcom/nuance/swype/connect/manager/AbstractCommandManager$DownloadState;->DOWNLOAD_LIST_STATE_NONE:Lcom/nuance/swype/connect/manager/AbstractCommandManager$DownloadState;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/nuance/swype/connect/util/InstallMetadata;->hasPackages()Z

    move-result v22

    if-nez v22, :cond_1

    .line 1203
    :cond_0
    const-string v22, "CategoryManager.getNextCategory() - none exist. done."

    invoke-static/range {v22 .. v22}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1295
    :goto_0
    monitor-exit p0

    return-void

    .line 1208
    :cond_1
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/connect/manager/CategoryManager;->getCurrentUserInitiatedCat()Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_2

    .line 1209
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "User initiated download currently being processed "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/connect/manager/CategoryManager;->getCurrentUserInitiatedCat()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1199
    :catchall_0
    move-exception v22

    monitor-exit p0

    throw v22

    .line 1212
    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v23 .. v23}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/nuance/swype/connect/util/InstallMetadata;->listFromSteps(Ljava/util/List;)Ljava/util/List;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1213
    .local v4, catDb:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    move-object/from16 v22, v0

    const-string v23, "USER_INITIATED"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v4, v1}, Lcom/nuance/swype/connect/util/InstallMetadata;->getBoolProp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    move-object/from16 v22, v0

    const-string v23, "SUBSCRIBED"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v4, v1}, Lcom/nuance/swype/connect/util/InstallMetadata;->getBoolProp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lcom/nuance/swype/connect/util/InstallMetadata;->isDownloading(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lcom/nuance/swype/connect/util/InstallMetadata;->isInstalled(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_3

    .line 1217
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/nuance/swype/connect/manager/CategoryManager;->get(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1222
    .end local v4           #catDb:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nuance/swype/connect/manager/CategoryManager;->enabled:Z

    move/from16 v22, v0

    if-nez v22, :cond_5

    .line 1223
    const-string v22, "CategoryManager.getNextCategory() - not enabled, cleaning up."

    invoke-static/range {v22 .. v22}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 1224
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/connect/manager/CategoryManager;->unsubscribeAll()V

    goto/16 :goto_0

    .line 1228
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/connect/manager/CategoryManager;->currentCore:I

    move/from16 v22, v0

    if-nez v22, :cond_6

    .line 1229
    const-string v22, "Current core not yet set.  Delay processing."

    invoke-static/range {v22 .. v22}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1233
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/connect/manager/CategoryManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/nuance/swype/connect/ConnectClient;->getLocaleWithVariant()Ljava/lang/String;

    move-result-object v8

    .line 1234
    .local v8, currentLocale:Ljava/lang/String;
    if-nez v8, :cond_b

    const/16 v21, 0x0

    .line 1236
    .local v21, variant:Ljava/lang/String;
    :goto_1
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "currentLanguageCode: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/connect/manager/CategoryManager;->currentLanguageCode:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " currentLocale: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " variant: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 1239
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/connect/manager/CategoryManager;->getUniqueCategoryIds()Landroid/util/SparseIntArray;

    move-result-object v6

    .line 1240
    .local v6, categories:Landroid/util/SparseIntArray;
    const/4 v10, 0x0

    .local v10, i:I
    :goto_2
    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v10, v0, :cond_a

    .line 1241
    invoke-virtual {v6, v10}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    .line 1242
    .local v5, catId:I
    invoke-virtual {v6, v10}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v19

    .line 1244
    .local v19, type:I
    const/16 v17, 0x0

    .line 1245
    .local v17, potentialCatDb:Ljava/lang/String;
    const/16 v22, 0x3

    move/from16 v0, v19

    move/from16 v1, v22

    if-eq v0, v1, :cond_7

    const/16 v22, 0x1

    move/from16 v0, v19

    move/from16 v1, v22

    if-ne v0, v1, :cond_c

    .line 1246
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v5}, Lcom/nuance/swype/connect/manager/CategoryManager;->findVariantLanguageCategory(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    .line 1251
    :cond_8
    :goto_3
    if-eqz v17, :cond_f

    .line 1252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    move-object/from16 v22, v0

    const-string v23, "SUBSCRIBED"

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/connect/util/InstallMetadata;->getBoolProp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v18

    .line 1253
    .local v18, subscribed:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    move-object/from16 v22, v0

    const-string v23, "13"

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 1255
    .local v12, language:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    move-object/from16 v22, v0

    const-string v23, "25"

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v20

    .line 1256
    .local v20, typeId:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    move-object/from16 v22, v0

    const-string v23, "CATEGORY_CORE"

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 1257
    .local v7, coreId:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/util/InstallMetadata;->isDownloading(Ljava/lang/String;)Z

    move-result v9

    .line 1259
    .local v9, downloading:Z
    const/high16 v22, -0x8000

    move/from16 v0, v22

    if-ne v7, v0, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/connect/manager/CategoryManager;->currentLanguageCode:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-ne v12, v0, :cond_d

    .line 1260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    move-object/from16 v22, v0

    const-string v23, "CATEGORY_CORE"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/connect/manager/CategoryManager;->currentCore:I

    move/from16 v24, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    move-object/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/swype/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1272
    :cond_9
    :goto_4
    if-nez v9, :cond_10

    const/16 v22, 0x1

    move/from16 v0, v18

    move/from16 v1, v22

    if-ne v0, v1, :cond_10

    .line 1273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    move-object/from16 v22, v0

    const-string v23, "LAST_UPDATE_FETCHED"

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/connect/util/InstallMetadata;->getLongProp(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v15

    .line 1275
    .local v15, lastFetched:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    move-object/from16 v22, v0

    const-string v23, "LAST_UPDATE_AVAILABLE"

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/connect/util/InstallMetadata;->getLongProp(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v13

    .line 1278
    .local v13, lastAvailable:J
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "CategoryManager.getNextCategory() -- key: ["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "] lastFetched: ["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "] "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "lastAvailable: ["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "]"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 1282
    cmp-long v22, v15, v13

    if-gtz v22, :cond_f

    .line 1283
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/manager/CategoryManager;->get(Ljava/lang/String;)V

    .line 1294
    .end local v5           #catId:I
    .end local v7           #coreId:I
    .end local v9           #downloading:Z
    .end local v12           #language:I
    .end local v13           #lastAvailable:J
    .end local v15           #lastFetched:J
    .end local v17           #potentialCatDb:Ljava/lang/String;
    .end local v18           #subscribed:Z
    .end local v19           #type:I
    .end local v20           #typeId:I
    :cond_a
    :goto_5
    const-string v22, "CategoryManager.processNextCategory() -- completed "

    invoke-static/range {v22 .. v22}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1234
    .end local v6           #categories:Landroid/util/SparseIntArray;
    .end local v10           #i:I
    .end local v21           #variant:Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/connect/manager/CategoryManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/nuance/swype/connect/ConnectClient;->getCurrentLocale()Ljava/lang/String;

    move-result-object v22

    const-string v23, ""

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_1

    .line 1247
    .restart local v5       #catId:I
    .restart local v6       #categories:Landroid/util/SparseIntArray;
    .restart local v10       #i:I
    .restart local v17       #potentialCatDb:Ljava/lang/String;
    .restart local v19       #type:I
    .restart local v21       #variant:Ljava/lang/String;
    :cond_c
    const/16 v22, 0x4

    move/from16 v0, v19

    move/from16 v1, v22

    if-ne v0, v1, :cond_8

    .line 1248
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/nuance/swype/connect/manager/CategoryManager;->subscribeToResources(I)V

    goto/16 :goto_3

    .line 1261
    .restart local v7       #coreId:I
    .restart local v9       #downloading:Z
    .restart local v12       #language:I
    .restart local v18       #subscribed:Z
    .restart local v20       #typeId:I
    :cond_d
    const/high16 v22, -0x8000

    move/from16 v0, v22

    if-ne v7, v0, :cond_e

    and-int/lit16 v0, v12, 0xff

    move/from16 v22, v0

    const/16 v23, 0x12

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_e

    and-int/lit16 v0, v12, 0xff

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/connect/manager/CategoryManager;->currentLanguageCode:I

    move/from16 v23, v0

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_e

    .line 1263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    move-object/from16 v22, v0

    const-string v23, "CATEGORY_CORE"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/connect/manager/CategoryManager;->currentCore:I

    move/from16 v24, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    move-object/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/swype/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_4

    .line 1265
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/connect/manager/CategoryManager;->currentCore:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-ne v7, v0, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    move-object/from16 v22, v0

    const-string v23, "DELETE_CATEGORY"

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/connect/util/InstallMetadata;->getBoolProp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_9

    .line 1267
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v12}, Lcom/nuance/swype/connect/manager/CategoryManager;->sendDeleteCategoryToHost(II)V

    .line 1268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    move-object/from16 v22, v0

    const-string v23, "DELETE_CATEGORY"

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/connect/util/InstallMetadata;->removeProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 1240
    .end local v7           #coreId:I
    .end local v9           #downloading:Z
    .end local v12           #language:I
    .end local v18           #subscribed:Z
    .end local v20           #typeId:I
    :cond_f
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    .line 1286
    .restart local v7       #coreId:I
    .restart local v9       #downloading:Z
    .restart local v12       #language:I
    .restart local v18       #subscribed:Z
    .restart local v20       #typeId:I
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nuance/swype/connect/manager/CategoryManager;->hotwordEnabled:Z

    move/from16 v22, v0

    if-eqz v22, :cond_f

    if-nez v9, :cond_f

    if-nez v18, :cond_f

    const/16 v22, 0x2

    move/from16 v0, v20

    move/from16 v1, v22

    if-eq v0, v1, :cond_f

    .line 1288
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/manager/CategoryManager;->subscribe(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_5
.end method

.method private resetCategory(Ljava/lang/String;)V
    .locals 2
    .parameter "category"

    .prologue
    .line 863
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetCategory( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 865
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/util/InstallMetadata;->beginTransaction()V

    .line 867
    :try_start_0
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/connect/util/InstallMetadata;->uninstallPackage(Ljava/lang/String;)V

    .line 868
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v1, "UNSUBSCRIBE_PENDING"

    invoke-virtual {v0, p1, v1}, Lcom/nuance/swype/connect/util/InstallMetadata;->removeProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v1, "SUBSCRIBED"

    invoke-virtual {v0, p1, v1}, Lcom/nuance/swype/connect/util/InstallMetadata;->removeProp(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 871
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/util/InstallMetadata;->commitTransaction()V

    .line 873
    return-void

    .line 871
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v1}, Lcom/nuance/swype/connect/util/InstallMetadata;->commitTransaction()V

    throw v0
.end method

.method private savePreferences()V
    .locals 4

    .prologue
    .line 1078
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v1}, Lcom/nuance/swype/connect/ConnectClient;->getDataStore()Lcom/nuance/swype/connect/store/PersistentDataStore;

    move-result-object v0

    .line 1079
    .local v0, store:Lcom/nuance/swype/connect/store/PersistentDataStore;
    const-string v1, "DOWNLOAD_LIST_STATE"

    iget-object v2, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->managerDownloadListState:Lcom/nuance/swype/connect/manager/AbstractCommandManager$DownloadState;

    invoke-virtual {v2}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$DownloadState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/swype/connect/store/PersistentDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1080
    const-string v1, "CategoryRecieved"

    iget-wide v2, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->lastRecieved:J

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/swype/connect/store/PersistentDataStore;->saveLong(Ljava/lang/String;J)Z

    .line 1081
    const-string v1, "categoryEnabled"

    iget-boolean v2, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->enabled:Z

    invoke-interface {v0, v1, v2}, Lcom/nuance/swype/connect/store/PersistentDataStore;->saveBoolean(Ljava/lang/String;Z)Z

    .line 1082
    const-string v1, "categoryHotwordEnabled"

    iget-boolean v2, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->hotwordEnabled:Z

    invoke-interface {v0, v1, v2}, Lcom/nuance/swype/connect/store/PersistentDataStore;->saveBoolean(Ljava/lang/String;Z)Z

    .line 1083
    return-void
.end method

.method private sendChineseAddonDictionaries()V
    .locals 11

    .prologue
    const/4 v10, 0x7

    .line 1348
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1349
    .local v0, data:Landroid/os/Bundle;
    iget-object v7, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    if-eqz v7, :cond_4

    .line 1350
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1351
    .local v2, dictionaries:Ljava/lang/StringBuilder;
    iget-object v7, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v7}, Lcom/nuance/swype/connect/util/InstallMetadata;->allPackages()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1352
    .local v1, dict:Ljava/lang/String;
    iget-object v7, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v8, "25"

    invoke-virtual {v7, v1, v8}, Lcom/nuance/swype/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 1353
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1354
    const-string v7, ","

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1356
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1357
    .local v6, value:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v7, "PROP_NAME"

    iget-object v8, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v9, "16"

    invoke-virtual {v8, v1, v9}, Lcom/nuance/swype/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1359
    const-string v7, "PROP_DESCRIPTION"

    iget-object v8, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v9, "18"

    invoke-virtual {v8, v1, v9}, Lcom/nuance/swype/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1361
    const-string v7, "PROP_LANGUAGE"

    iget-object v8, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v9, "13"

    invoke-virtual {v8, v1, v9}, Lcom/nuance/swype/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1363
    const-string v7, "PROP_ID"

    invoke-virtual {v6, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1364
    const-string v7, "PROP_CATEGORY_ID"

    iget-object v8, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v9, "78"

    invoke-virtual {v8, v1, v9}, Lcom/nuance/swype/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1368
    iget-object v7, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v7, v1}, Lcom/nuance/swype/connect/util/InstallMetadata;->getStep(Ljava/lang/String;)I

    move-result v5

    .line 1369
    .local v5, step:I
    const-string v4, "STATUS_AVAILABLE"

    .line 1370
    .local v4, status:Ljava/lang/String;
    if-ge v5, v10, :cond_2

    if-lez v5, :cond_2

    .line 1371
    const-string v4, "STATUS_DOWNLOADING"

    .line 1375
    :cond_1
    :goto_1
    const-string v7, "PROP_INSTALLEDSTATUS"

    invoke-virtual {v6, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1376
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_status"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7, v6}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto/16 :goto_0

    .line 1372
    :cond_2
    if-ne v5, v10, :cond_1

    .line 1373
    const-string v4, "STATUS_INSTALLED"

    goto :goto_1

    .line 1379
    .end local v1           #dict:Ljava/lang/String;
    .end local v4           #status:Ljava/lang/String;
    .end local v5           #step:I
    .end local v6           #value:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    const-string v7, "DictionaryList"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1381
    .end local v2           #dictionaries:Ljava/lang/StringBuilder;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_4
    iget-object v7, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v8, 0x94

    invoke-virtual {v7, v8, v0}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(ILandroid/os/Bundle;)V

    .line 1382
    return-void
.end method

.method private sendDeleteCategoryToHost(II)V
    .locals 3
    .parameter "catId"
    .parameter "language"

    .prologue
    .line 1327
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1328
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "DLM_DELETE_CAETEGORY"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1329
    const-string v1, "DLM_DELETE_LANGUAGE"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1330
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v2, 0x90

    invoke-virtual {v1, v2, v0}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(ILandroid/os/Bundle;)V

    .line 1331
    return-void
.end method

.method private sendDictionaryDownloadProgress(Ljava/lang/String;I)V
    .locals 3
    .parameter "dictionary"
    .parameter "progress"

    .prologue
    .line 1385
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1386
    .local v0, data:Landroid/os/Bundle;
    const-string v1, "download"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1387
    const-string v1, "total"

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1388
    const-string v1, "dictionary"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1389
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v2, 0x96

    invoke-virtual {v1, v2, v0}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(ILandroid/os/Bundle;)V

    .line 1390
    return-void
.end method

.method private subscribeToResources(I)V
    .locals 13
    .parameter "categoryId"

    .prologue
    .line 1151
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "CategoryManager.subscribeToResources("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ") for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v12}, Lcom/nuance/swype/connect/ConnectClient;->getCurrentLocale()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 1152
    iget-object v11, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->managerDownloadListState:Lcom/nuance/swype/connect/manager/AbstractCommandManager$DownloadState;

    sget-object v12, Lcom/nuance/swype/connect/manager/AbstractCommandManager$DownloadState;->DOWNLOAD_LIST_STATE_NONE:Lcom/nuance/swype/connect/manager/AbstractCommandManager$DownloadState;

    if-eq v11, v12, :cond_0

    iget-object v11, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v11}, Lcom/nuance/swype/connect/util/InstallMetadata;->hasPackages()Z

    move-result v11

    if-nez v11, :cond_2

    .line 1154
    :cond_0
    const-string v11, "CategoryManager.subscribeToResources() - none exist. done."

    invoke-static {v11}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 1196
    :cond_1
    :goto_0
    return-void

    .line 1158
    :cond_2
    iget-boolean v11, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->resourcesEnabled:Z

    if-nez v11, :cond_3

    .line 1159
    const-string v11, "CategoryManager.subscribeToResources() - resources not enabled"

    invoke-static {v11}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 1164
    :cond_3
    iget-object v12, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    monitor-enter v12

    .line 1165
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/manager/CategoryManager;->getAllEntriesWithCategoryId(I)Ljava/util/ArrayList;

    move-result-object v4

    .line 1166
    .local v4, keys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1168
    iget-object v11, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v11}, Lcom/nuance/swype/connect/ConnectClient;->getCurrentLocale()Ljava/lang/String;

    move-result-object v0

    .line 1169
    .local v0, clientLocale:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1170
    .local v3, id:Ljava/lang/String;
    iget-object v11, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v12, "SUBSCRIBED"

    invoke-virtual {v11, v3, v12}, Lcom/nuance/swype/connect/util/InstallMetadata;->getBoolProp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    .line 1171
    .local v10, subscribed:Z
    iget-object v11, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v11, v3}, Lcom/nuance/swype/connect/util/InstallMetadata;->isDownloading(Ljava/lang/String;)Z

    move-result v1

    .line 1173
    .local v1, downloading:Z
    iget-object v11, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v12, "98"

    invoke-virtual {v11, v3, v12}, Lcom/nuance/swype/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1174
    .local v9, locale:Ljava/lang/String;
    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1175
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Found resources match for locale: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " id: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " subscribed: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " downloading: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 1177
    if-eqz v10, :cond_6

    if-nez v1, :cond_6

    .line 1178
    iget-object v11, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v12, "LAST_UPDATE_FETCHED"

    invoke-virtual {v11, v3, v12}, Lcom/nuance/swype/connect/util/InstallMetadata;->getLongProp(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v7

    .line 1179
    .local v7, lastFetched:J
    iget-object v11, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v12, "LAST_UPDATE_AVAILABLE"

    invoke-virtual {v11, v3, v12}, Lcom/nuance/swype/connect/util/InstallMetadata;->getLongProp(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v5

    .line 1182
    .local v5, lastAvailable:J
    cmp-long v11, v7, v5

    if-gtz v11, :cond_5

    .line 1183
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Getting resources for locale: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " id: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 1184
    invoke-virtual {p0, v3}, Lcom/nuance/swype/connect/manager/CategoryManager;->get(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1166
    .end local v0           #clientLocale:Ljava/lang/String;
    .end local v1           #downloading:Z
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #id:Ljava/lang/String;
    .end local v4           #keys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5           #lastAvailable:J
    .end local v7           #lastFetched:J
    .end local v9           #locale:Ljava/lang/String;
    .end local v10           #subscribed:Z
    :catchall_0
    move-exception v11

    :try_start_1
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v11

    .line 1187
    .restart local v0       #clientLocale:Ljava/lang/String;
    .restart local v1       #downloading:Z
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #id:Ljava/lang/String;
    .restart local v4       #keys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v5       #lastAvailable:J
    .restart local v7       #lastFetched:J
    .restart local v9       #locale:Ljava/lang/String;
    .restart local v10       #subscribed:Z
    :cond_5
    const-string v11, "Already have most recent version of resource"

    invoke-static {v11}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1189
    .end local v5           #lastAvailable:J
    .end local v7           #lastFetched:J
    :cond_6
    if-nez v10, :cond_4

    if-nez v1, :cond_4

    .line 1190
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Subscribing resources for locale: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " id: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 1191
    invoke-virtual {p0, v3}, Lcom/nuance/swype/connect/manager/CategoryManager;->subscribe(Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected ackCategoryDatabase(Ljava/lang/String;)V
    .locals 6
    .parameter "category"

    .prologue
    .line 802
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CategoryManager.ackCategoryDatabase("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 804
    iget-object v4, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v4, p1}, Lcom/nuance/swype/connect/util/InstallMetadata;->hasPackage(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 805
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CategoryManager.ackCategoryDatabase() - category list is not available ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 807
    invoke-virtual {p0, p1}, Lcom/nuance/swype/connect/manager/CategoryManager;->resetCategoryDownloadState(Ljava/lang/String;)V

    .line 838
    :goto_0
    return-void

    .line 809
    :cond_0
    iget-object v4, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v4, p1}, Lcom/nuance/swype/connect/util/InstallMetadata;->getStep(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_1

    .line 810
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CategoryManager.ackCategoryDatabase() - category list is not ready for ack ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 812
    invoke-virtual {p0, p1}, Lcom/nuance/swype/connect/manager/CategoryManager;->resetCategoryDownloadState(Ljava/lang/String;)V

    .line 815
    :cond_1
    iget-object v4, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v5, "25"

    invoke-virtual {v4, p1, v5}, Lcom/nuance/swype/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 816
    .local v3, type:I
    iget-boolean v4, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->hotwordEnabled:Z

    if-nez v4, :cond_3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    .line 818
    :cond_2
    const-string v4, "CategoryManager.ackCategoryDatabase() hotword no longer enabled"

    invoke-static {v4}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 819
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/manager/CategoryManager;->clearCategoryDownload(Ljava/lang/String;)V

    .line 822
    :cond_3
    iget-object v4, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v5, "4"

    invoke-virtual {v4, p1, v5}, Lcom/nuance/swype/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 823
    .local v2, transactionId:Ljava/lang/String;
    iget-object v4, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v5, "10"

    invoke-virtual {v4, p1, v5}, Lcom/nuance/swype/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 825
    .local v0, checksum:Ljava/lang/String;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    .line 827
    const-string v4, "ack"

    invoke-virtual {p0, v4}, Lcom/nuance/swype/connect/manager/CategoryManager;->createCommand(Ljava/lang/String;)Lcom/nuance/swype/connect/util/Command;

    move-result-object v1

    .line 828
    .local v1, command:Lcom/nuance/swype/connect/util/Command;
    iput-object v2, v1, Lcom/nuance/swype/connect/util/Command;->transactionId:Ljava/lang/String;

    .line 829
    iget-object v4, v1, Lcom/nuance/swype/connect/util/Command;->parameters:Ljava/util/HashMap;

    const-string v5, "10"

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 830
    iput-object p1, v1, Lcom/nuance/swype/connect/util/Command;->identifier:Ljava/lang/String;

    .line 831
    invoke-virtual {p0, v1}, Lcom/nuance/swype/connect/manager/CategoryManager;->sendCommand(Lcom/nuance/swype/connect/util/Command;)V

    goto :goto_0

    .line 834
    .end local v1           #command:Lcom/nuance/swype/connect/util/Command;
    :cond_4
    iget-object v4, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Lcom/nuance/swype/connect/util/InstallMetadata;->setStep(Ljava/lang/String;I)V

    .line 835
    const-string v4, "Attempting to acknowledge a category without needed data."

    invoke-static {v4}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public alarmNotification(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .parameter "type"
    .parameter "data"

    .prologue
    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CategoryManager.alarmNotification("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 218
    if-eqz p1, :cond_0

    const-string v0, "CATEGORY_LIST_FETCH"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/CategoryManager;->requestCategoryList()V

    .line 221
    :cond_0
    const-string v0, "init_list_alarm"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INITIAL_LIST_ALARM managerDownloadListState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->managerDownloadListState:Lcom/nuance/swype/connect/manager/AbstractCommandManager$DownloadState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->managerDownloadListState:Lcom/nuance/swype/connect/manager/AbstractCommandManager$DownloadState;

    sget-object v1, Lcom/nuance/swype/connect/manager/AbstractCommandManager$DownloadState;->DOWNLOAD_LIST_STATE_UNKNOWN:Lcom/nuance/swype/connect/manager/AbstractCommandManager$DownloadState;

    if-ne v0, v1, :cond_1

    .line 226
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/CategoryManager;->sendChineseAddonDictionaries()V

    .line 229
    :cond_1
    return-void
.end method

.method public destroy()V
    .locals 0

    .prologue
    .line 212
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/CategoryManager;->savePreferences()V

    .line 213
    return-void
.end method

.method protected get(Ljava/lang/String;)V
    .locals 6
    .parameter "id"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 681
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CategoryManager.get("

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

    .line 683
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v2, p1}, Lcom/nuance/swype/connect/util/InstallMetadata;->hasPackage(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 684
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CategoryManager.get() - Hot word list is not available for get ("

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

    .line 715
    :goto_0
    return-void

    .line 688
    :cond_0
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v3, "25"

    invoke-virtual {v2, p1, v3}, Lcom/nuance/swype/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 689
    .local v1, type:I
    iget-boolean v2, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->hotwordEnabled:Z

    if-nez v2, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v5, :cond_2

    .line 691
    :cond_1
    const-string v2, "CategoryManager.get() hotword no longer enabled"

    invoke-static {v2}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 692
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/manager/CategoryManager;->clearCategoryDownload(Ljava/lang/String;)V

    goto :goto_0

    .line 696
    :cond_2
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v2, p1}, Lcom/nuance/swype/connect/util/InstallMetadata;->isDownloading(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 697
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CategoryManager.get() - already downloading ("

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

    goto :goto_0

    .line 701
    :cond_3
    if-eq v1, v4, :cond_4

    if-ne v1, v5, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v3, "CATEGORY_CORE"

    invoke-virtual {v2, p1, v3}, Lcom/nuance/swype/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/high16 v3, -0x8000

    if-ne v2, v3, :cond_5

    .line 703
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CategoryManager.get() - can\'t fetch no known core ("

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

    goto :goto_0

    .line 707
    :cond_5
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const/4 v3, 0x2

    invoke-virtual {v2, p1, v3}, Lcom/nuance/swype/connect/util/InstallMetadata;->setStep(Ljava/lang/String;I)V

    .line 709
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/nuance/swype/connect/manager/CategoryManager;->sendDictionaryDownloadProgress(Ljava/lang/String;I)V

    .line 711
    const-string v2, "get"

    invoke-virtual {p0, v2}, Lcom/nuance/swype/connect/manager/CategoryManager;->createCommand(Ljava/lang/String;)Lcom/nuance/swype/connect/util/Command;

    move-result-object v0

    .line 712
    .local v0, command:Lcom/nuance/swype/connect/util/Command;
    iget-object v2, v0, Lcom/nuance/swype/connect/util/Command;->parameters:Ljava/util/HashMap;

    const-string v3, "15"

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 713
    iput-object p1, v0, Lcom/nuance/swype/connect/util/Command;->identifier:Ljava/lang/String;

    .line 714
    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/manager/CategoryManager;->sendCommand(Lcom/nuance/swype/connect/util/Command;)V

    goto/16 :goto_0
.end method

.method public getDependencies()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 143
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "session"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "dlm"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public init()V
    .locals 5

    .prologue
    .line 151
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    new-instance v2, Lcom/nuance/swype/connect/manager/CategoryManager$1;

    invoke-direct {v2, p0}, Lcom/nuance/swype/connect/manager/CategoryManager$1;-><init>(Lcom/nuance/swype/connect/manager/CategoryManager;)V

    invoke-virtual {v1, v2}, Lcom/nuance/swype/connect/ConnectClient;->registerLanguageListener(Lcom/nuance/swype/connect/manager/interfaces/LanguageListener;)V

    .line 169
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/CategoryManager;->loadPreferences()V

    .line 172
    new-instance v1, Lcom/nuance/swype/connect/util/Alarm$Builder;

    iget-object v2, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "init_list_alarm"

    invoke-direct {v1, v2, v3, v4}, Lcom/nuance/swype/connect/util/Alarm$Builder;-><init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V

    const/16 v2, 0x3c

    invoke-virtual {v1, v2}, Lcom/nuance/swype/connect/util/Alarm$Builder;->seconds(I)Lcom/nuance/swype/connect/util/Alarm$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/connect/util/Alarm$Builder;->build()Lcom/nuance/swype/connect/util/Alarm;

    move-result-object v0

    .line 173
    .local v0, alarm:Lcom/nuance/swype/connect/util/Alarm;
    invoke-virtual {v0}, Lcom/nuance/swype/connect/util/Alarm;->set()V

    .line 174
    return-void
.end method

.method protected installCategory(Ljava/lang/String;)V
    .locals 12
    .parameter "category"

    .prologue
    .line 943
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CategoryManager.installCategory("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 945
    iget-object v9, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v9, p1}, Lcom/nuance/swype/connect/util/InstallMetadata;->hasPackage(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 946
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CategoryManager.installCategory() - category list is not available ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 1005
    :goto_0
    return-void

    .line 949
    :cond_0
    iget-object v9, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v9, p1}, Lcom/nuance/swype/connect/util/InstallMetadata;->getStep(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x5

    if-eq v9, v10, :cond_4

    .line 950
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CategoryManager.installCategory() - category list is not ready for install ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 961
    :cond_1
    iget-object v9, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v10, "FILE_LOCATION"

    invoke-virtual {v9, p1, v10}, Lcom/nuance/swype/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 962
    .local v8, location:Ljava/lang/String;
    iget-object v9, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v10, "CATEGORY_CORE"

    invoke-virtual {v9, p1, v10}, Lcom/nuance/swype/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 964
    .local v2, core:I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 966
    .local v3, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v8, :cond_2

    .line 967
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 968
    .local v5, file:Ljava/io/File;
    if-eqz v5, :cond_6

    invoke-virtual {v5}, Ljava/io/File;->canRead()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 970
    :try_start_0
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 971
    .local v6, fileReader:Ljava/io/FileReader;
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 973
    .local v1, bufReader:Ljava/io/BufferedReader;
    :goto_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .line 974
    .local v7, line:Ljava/lang/String;
    if-nez v7, :cond_5

    .line 980
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 991
    .end local v1           #bufReader:Ljava/io/BufferedReader;
    .end local v5           #file:Ljava/io/File;
    .end local v6           #fileReader:Ljava/io/FileReader;
    .end local v7           #line:Ljava/lang/String;
    :cond_2
    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_3

    .line 992
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CategoryManager.installCategory() - sending dlm events now: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 993
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 994
    .local v0, b:Landroid/os/Bundle;
    const-string v9, "DLM_EVENT_DATA"

    invoke-virtual {v0, v9, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 995
    const-string v9, "DLM_EVENT_CATEGORY"

    invoke-virtual {v0, v9, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 996
    const-string v9, "IDENTIFIER"

    invoke-virtual {v0, v9, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 997
    const-string v9, "DLM_EVENT_ACK"

    const/16 v10, 0x109

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 999
    iget-object v9, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v10, 0x84

    invoke-virtual {v9, v10, v0}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(ILandroid/os/Bundle;)V

    .line 1002
    .end local v0           #b:Landroid/os/Bundle;
    :cond_3
    iget-object v9, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v10, "10"

    invoke-virtual {v9, p1, v10}, Lcom/nuance/swype/connect/util/InstallMetadata;->removeProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    iget-object v9, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v10, "4"

    invoke-virtual {v9, p1, v10}, Lcom/nuance/swype/connect/util/InstallMetadata;->removeProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 1004
    iget-object v9, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const/4 v10, 0x7

    invoke-virtual {v9, p1, v10}, Lcom/nuance/swype/connect/util/InstallMetadata;->setStep(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 953
    .end local v2           #core:I
    .end local v3           #events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8           #location:Ljava/lang/String;
    :cond_4
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/manager/CategoryManager;->isClientInstallableCategory(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 954
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CategoryManager.installCategory() - category type is not installable client-side ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") type ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v11, "25"

    invoke-virtual {v10, p1, v11}, Lcom/nuance/swype/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 977
    .restart local v1       #bufReader:Ljava/io/BufferedReader;
    .restart local v2       #core:I
    .restart local v3       #events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v5       #file:Ljava/io/File;
    .restart local v6       #fileReader:Ljava/io/FileReader;
    .restart local v7       #line:Ljava/lang/String;
    .restart local v8       #location:Ljava/lang/String;
    :cond_5
    :try_start_1
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 981
    .end local v1           #bufReader:Ljava/io/BufferedReader;
    .end local v6           #fileReader:Ljava/io/FileReader;
    .end local v7           #line:Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 982
    .local v4, ex:Ljava/io/FileNotFoundException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error finding file for category install: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 983
    .end local v4           #ex:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v4

    .line 984
    .local v4, ex:Ljava/io/IOException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error parsing(1) file for category install: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 987
    .end local v4           #ex:Ljava/io/IOException;
    :cond_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error parsing(2) file for category install: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public onDownloadStatusResponse(Lcom/nuance/swype/connect/util/Command;II)V
    .locals 4
    .parameter "command"
    .parameter "downloaded"
    .parameter "total"

    .prologue
    .line 412
    if-ltz p2, :cond_1

    .line 413
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v2, "download"

    invoke-virtual {v1, v2, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->isCommandFor(Ljava/lang/String;Lcom/nuance/swype/connect/util/Command;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 414
    const/high16 v1, 0x42c8

    int-to-float v2, p2

    int-to-float v3, p3

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 415
    .local v0, percent:I
    iget-object v1, p1, Lcom/nuance/swype/connect/util/Command;->identifier:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/nuance/swype/connect/manager/CategoryManager;->sendDictionaryDownloadProgress(Ljava/lang/String;I)V

    .line 416
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    iget-object v2, p1, Lcom/nuance/swype/connect/util/Command;->identifier:Ljava/lang/String;

    const-string v3, "PROP_DOWNLOAD_PERCENT"

    invoke-virtual {v1, v2, v3, v0}, Lcom/nuance/swype/connect/util/InstallMetadata;->setUnsavedProp(Ljava/lang/String;Ljava/lang/String;I)V

    .line 422
    .end local v0           #percent:I
    :cond_0
    :goto_0
    return-void

    .line 420
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v2, 0x6a

    invoke-virtual {v1, v2}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(I)V

    goto :goto_0
.end method

.method public onFileResponse(Lcom/nuance/swype/connect/util/Response;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 405
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "download"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/swype/connect/util/Response;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    invoke-virtual {p0, p1}, Lcom/nuance/swype/connect/manager/CategoryManager;->processDownloadResponse(Lcom/nuance/swype/connect/util/Response;)V

    .line 408
    :cond_0
    return-void
.end method

.method public onHandleMessage(Landroid/os/Message;)Z
    .locals 9
    .parameter "message"

    .prologue
    const/4 v7, 0x1

    .line 265
    const/4 v2, 0x0

    .line 266
    .local v2, handled:Z
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    .line 360
    :goto_0
    return v2

    .line 268
    :sswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "DEFAULT_KEY"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 269
    .local v4, status:Z
    invoke-virtual {p0, v4}, Lcom/nuance/swype/connect/manager/CategoryManager;->updateStatus(Z)V

    .line 270
    const/4 v2, 0x1

    .line 271
    goto :goto_0

    .line 274
    .end local v4           #status:Z
    :sswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "DEFAULT_KEY"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 275
    .restart local v4       #status:Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MESSAGE_CLIENT_SET_CATEGORY_HOTWORD_STATUS status: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 276
    invoke-virtual {p0, v4}, Lcom/nuance/swype/connect/manager/CategoryManager;->updateHotwordStatus(Z)V

    .line 277
    const/4 v2, 0x1

    .line 278
    goto :goto_0

    .line 281
    .end local v4           #status:Z
    :sswitch_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "DEFAULT_KEY"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 282
    .restart local v4       #status:Z
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "DLM_EVENT_CATEGORY"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 283
    .local v1, core:I
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "IDENTIFIER"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 284
    .local v0, category:Ljava/lang/String;
    invoke-virtual {p0, v4, v1, v0}, Lcom/nuance/swype/connect/manager/CategoryManager;->updateCategoryEventAck(ZILjava/lang/String;)V

    .line 285
    const/4 v2, 0x1

    .line 286
    goto :goto_0

    .line 289
    .end local v0           #category:Ljava/lang/String;
    .end local v1           #core:I
    .end local v4           #status:Z
    :sswitch_3
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "DEFAULT_KEY"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 290
    .restart local v4       #status:Z
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "DLM_DELETE_CAETEGORY"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 291
    .local v0, category:I
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "DLM_DELETE_LANGUAGE"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 293
    .local v3, language:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "APICommandMessages.MESSAGE_CLIENT_PROCESS_CATEGORY_DELETE_CATEGORY_ACK: Status: ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] Category: ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] Language: ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 297
    if-nez v4, :cond_0

    .line 301
    :cond_0
    const/4 v2, 0x1

    .line 302
    goto/16 :goto_0

    .line 305
    .end local v0           #category:I
    .end local v3           #language:I
    .end local v4           #status:Z
    :sswitch_4
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "DEFAULT_KEY"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 306
    .local v0, category:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/manager/CategoryManager;->installCategory(Ljava/lang/String;)V

    .line 307
    const/4 v2, 0x1

    .line 308
    goto/16 :goto_0

    .line 312
    .end local v0           #category:Ljava/lang/String;
    :sswitch_5
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "DEFAULT_KEY"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 314
    .restart local v0       #category:Ljava/lang/String;
    iget-object v5, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v5, v0}, Lcom/nuance/swype/connect/util/InstallMetadata;->hasPackage(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 315
    iget-object v5, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v6, "USER_INITIATED"

    invoke-virtual {v5, v0, v6, v7}, Lcom/nuance/swype/connect/util/InstallMetadata;->setUnsavedProp(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 318
    :cond_1
    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/manager/CategoryManager;->subscribe(Ljava/lang/String;)V

    .line 319
    const/4 v2, 0x1

    .line 320
    goto/16 :goto_0

    .line 324
    .end local v0           #category:Ljava/lang/String;
    :sswitch_6
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "DEFAULT_KEY"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 325
    .restart local v0       #category:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/manager/CategoryManager;->unsubscribe(Ljava/lang/String;)V

    .line 326
    const/4 v2, 0x1

    .line 327
    goto/16 :goto_0

    .line 331
    .end local v0           #category:Ljava/lang/String;
    :sswitch_7
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "DEFAULT_KEY"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 332
    .restart local v0       #category:Ljava/lang/String;
    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v5}, Lcom/nuance/swype/connect/manager/CategoryManager;->installComplete(Ljava/lang/String;I)V

    .line 333
    const/4 v2, 0x1

    .line 334
    goto/16 :goto_0

    .line 338
    .end local v0           #category:Ljava/lang/String;
    :sswitch_8
    iget-object v5, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->managerStartState:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    sget-object v6, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;->STARTED:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    if-ne v5, v6, :cond_2

    .line 339
    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/CategoryManager;->requestCategoryList()V

    .line 343
    :goto_1
    const/4 v2, 0x1

    .line 344
    goto/16 :goto_0

    .line 341
    :cond_2
    iput-boolean v7, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->forceListRequest:Z

    goto :goto_1

    .line 348
    :sswitch_9
    iget-object v5, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->managerStartState:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    sget-object v6, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;->STARTED:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    if-ne v5, v6, :cond_3

    .line 349
    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/CategoryManager;->status()V

    .line 355
    :goto_2
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 352
    :cond_3
    iget-object v5, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v6, 0x22

    const-wide/16 v7, 0x1388

    invoke-virtual {v5, v6, v7, v8}, Lcom/nuance/swype/connect/ConnectClient;->postMessageDelayed(IJ)V

    goto :goto_2

    .line 266
    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_8
        0x22 -> :sswitch_9
        0x106 -> :sswitch_0
        0x107 -> :sswitch_1
        0x109 -> :sswitch_2
        0x10a -> :sswitch_3
        0x10b -> :sswitch_4
        0x10e -> :sswitch_5
        0x10f -> :sswitch_6
        0x110 -> :sswitch_7
    .end sparse-switch
.end method

.method public onResponse(Lcom/nuance/swype/connect/util/Response;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 243
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "list"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/swype/connect/util/Response;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 244
    invoke-virtual {p0, p1}, Lcom/nuance/swype/connect/manager/CategoryManager;->processListResponse(Lcom/nuance/swype/connect/util/Response;)V

    .line 257
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/CategoryManager;->savePreferences()V

    .line 258
    return-void

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "subscribe"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/swype/connect/util/Response;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 246
    invoke-virtual {p0, p1}, Lcom/nuance/swype/connect/manager/CategoryManager;->processSubscribeResponse(Lcom/nuance/swype/connect/util/Response;)V

    goto :goto_0

    .line 247
    :cond_2
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "unsubscribe"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/swype/connect/util/Response;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 248
    invoke-virtual {p0, p1}, Lcom/nuance/swype/connect/manager/CategoryManager;->processUnsubscribeResponse(Lcom/nuance/swype/connect/util/Response;)V

    goto :goto_0

    .line 249
    :cond_3
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "status"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/swype/connect/util/Response;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 250
    invoke-virtual {p0, p1}, Lcom/nuance/swype/connect/manager/CategoryManager;->processStatusResponse(Lcom/nuance/swype/connect/util/Response;)V

    goto :goto_0

    .line 251
    :cond_4
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "get"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/swype/connect/util/Response;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 252
    invoke-virtual {p0, p1}, Lcom/nuance/swype/connect/manager/CategoryManager;->processGetResponse(Lcom/nuance/swype/connect/util/Response;)V

    goto :goto_0

    .line 253
    :cond_5
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "ack"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/swype/connect/util/Response;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {p0, p1}, Lcom/nuance/swype/connect/manager/CategoryManager;->processGetAckResponse(Lcom/nuance/swype/connect/util/Response;)V

    goto :goto_0
.end method

.method public postStart()V
    .locals 1

    .prologue
    .line 203
    const-string v0, "CategoryManager.postStart()"

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 205
    iget-boolean v0, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->enabled:Z

    if-eqz v0, :cond_0

    .line 206
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/CategoryManager;->processNextCategory()V

    .line 208
    :cond_0
    return-void
.end method

.method protected processDownloadResponse(Lcom/nuance/swype/connect/util/Response;)V
    .locals 6
    .parameter "response"

    .prologue
    .line 758
    const-string v3, "CategoryManager.processDownloadResponse()"

    invoke-static {v3}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 760
    iget-object v0, p1, Lcom/nuance/swype/connect/util/Response;->identifier:Ljava/lang/String;

    .line 762
    .local v0, category:Ljava/lang/String;
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v3, v0}, Lcom/nuance/swype/connect/util/InstallMetadata;->hasPackage(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 763
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CategoryManager.processDownloadResponse() - category list is not available for download ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 767
    :try_start_0
    iget-object v3, p1, Lcom/nuance/swype/connect/util/Response;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 771
    :goto_0
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/CategoryManager;->processNextCategory()V

    .line 799
    :goto_1
    return-void

    .line 775
    :cond_0
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v4, "25"

    invoke-virtual {v3, v0, v4}, Lcom/nuance/swype/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 776
    .local v2, type:I
    iget-boolean v3, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->hotwordEnabled:Z

    if-nez v3, :cond_2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 778
    :cond_1
    const-string v3, "CategoryManager.processDownloadResponse() hotword no longer enabled"

    invoke-static {v3}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 779
    invoke-direct {p0, v0}, Lcom/nuance/swype/connect/manager/CategoryManager;->clearCategoryDownload(Ljava/lang/String;)V

    .line 782
    :try_start_1
    iget-object v3, p1, Lcom/nuance/swype/connect/util/Response;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 783
    :catch_0
    move-exception v3

    goto :goto_1

    .line 790
    :cond_2
    iget-object v3, p1, Lcom/nuance/swype/connect/util/Response;->file:Ljava/io/File;

    invoke-static {v3}, Lcom/nuance/swype/connect/util/EncryptUtils;->md5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 792
    .local v1, checksum:Ljava/lang/String;
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v4, "10"

    invoke-virtual {v3, v0, v4, v1}, Lcom/nuance/swype/connect/util/InstallMetadata;->setUnsavedProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v4, "FILE_LOCATION"

    iget-object v5, p1, Lcom/nuance/swype/connect/util/Response;->file:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v0, v4, v5}, Lcom/nuance/swype/connect/util/InstallMetadata;->setUnsavedProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const/4 v4, 0x4

    invoke-virtual {v3, v0, v4}, Lcom/nuance/swype/connect/util/InstallMetadata;->setUnsavedStep(Ljava/lang/String;I)V

    .line 798
    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/manager/CategoryManager;->ackCategoryDatabase(Ljava/lang/String;)V

    goto :goto_1

    .line 768
    .end local v1           #checksum:Ljava/lang/String;
    .end local v2           #type:I
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method protected processGetAckResponse(Lcom/nuance/swype/connect/util/Response;)V
    .locals 11
    .parameter "response"

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x1

    .line 876
    iget-object v0, p1, Lcom/nuance/swype/connect/util/Response;->identifier:Ljava/lang/String;

    .line 877
    .local v0, category:Ljava/lang/String;
    const-string v5, "CategoryManager.processGetAckResponse()"

    invoke-static {v5}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 879
    iget-object v5, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v5, v0}, Lcom/nuance/swype/connect/util/InstallMetadata;->hasPackage(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 880
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CategoryManager.processGetAckResponse() - category list is not available for get ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 882
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/CategoryManager;->processNextCategory()V

    .line 935
    :goto_0
    return-void

    .line 886
    :cond_0
    iget-object v6, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    iget-object v5, p1, Lcom/nuance/swype/connect/util/Response;->parameters:Ljava/util/HashMap;

    const-string v7, "15"

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v7, "25"

    invoke-virtual {v6, v5, v7}, Lcom/nuance/swype/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 888
    .local v3, type:I
    iget-boolean v5, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->hotwordEnabled:Z

    if-nez v5, :cond_2

    if-eq v3, v9, :cond_1

    if-ne v3, v10, :cond_2

    .line 890
    :cond_1
    const-string v5, "CategoryManager.processGetAckResponse() hotword no longer enabled"

    invoke-static {v5}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 891
    invoke-direct {p0, v0}, Lcom/nuance/swype/connect/manager/CategoryManager;->clearCategoryDownload(Ljava/lang/String;)V

    .line 894
    :cond_2
    iget v5, p1, Lcom/nuance/swype/connect/util/Response;->status:I

    if-ne v9, v5, :cond_7

    .line 895
    iget-object v5, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v5}, Lcom/nuance/swype/connect/util/InstallMetadata;->beginTransaction()V

    .line 897
    :try_start_0
    iget-object v5, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const/4 v6, 0x5

    invoke-virtual {v5, v0, v6}, Lcom/nuance/swype/connect/util/InstallMetadata;->setStep(Ljava/lang/String;I)V

    .line 898
    iget-object v5, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v6, "LAST_UPDATE_FETCHED"

    invoke-static {}, Lcom/nuance/swype/connect/util/TimeConversion;->getCurrentTime()J

    move-result-wide v7

    invoke-virtual {v5, v0, v6, v7, v8}, Lcom/nuance/swype/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;J)V

    .line 899
    iget-object v5, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v6, "25"

    invoke-virtual {v5, v0, v6}, Lcom/nuance/swype/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 902
    .local v4, typeId:I
    if-eq v4, v9, :cond_3

    if-ne v4, v10, :cond_4

    .line 904
    :cond_3
    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/manager/CategoryManager;->installCategory(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 929
    :goto_1
    iget-object v5, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v5}, Lcom/nuance/swype/connect/util/InstallMetadata;->commitTransaction()V

    .line 934
    .end local v4           #typeId:I
    :goto_2
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/CategoryManager;->processNextCategory()V

    goto :goto_0

    .line 905
    .restart local v4       #typeId:I
    :cond_4
    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    .line 906
    :try_start_1
    iget-object v5, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v6, "FILE_LOCATION"

    invoke-virtual {v5, v0, v6}, Lcom/nuance/swype/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 908
    .local v2, location:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  Chinese Addon Dictionary - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 909
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 910
    .local v1, data:Landroid/os/Bundle;
    const-string v5, "DEFAULT_KEY"

    invoke-virtual {v1, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    const-string v5, "filePath"

    invoke-virtual {v1, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    iget-object v5, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v6, 0x95

    invoke-virtual {v5, v6, v1}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(ILandroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 929
    .end local v1           #data:Landroid/os/Bundle;
    .end local v2           #location:Ljava/lang/String;
    .end local v4           #typeId:I
    :catchall_0
    move-exception v5

    iget-object v6, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v6}, Lcom/nuance/swype/connect/util/InstallMetadata;->commitTransaction()V

    throw v5

    .line 914
    .restart local v4       #typeId:I
    :cond_5
    const/4 v5, 0x4

    if-ne v4, v5, :cond_6

    .line 915
    :try_start_2
    iget-object v5, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v6, "FILE_LOCATION"

    invoke-virtual {v5, v0, v6}, Lcom/nuance/swype/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 917
    .restart local v2       #location:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  Resources - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 918
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 919
    .restart local v1       #data:Landroid/os/Bundle;
    const-string v5, "filePath"

    invoke-virtual {v1, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    const-string v5, "PROP_LANGUAGE"

    iget-object v6, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v7, "98"

    invoke-virtual {v6, v0, v7}, Lcom/nuance/swype/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    iget-object v5, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v6, 0x98

    invoke-virtual {v5, v6, v1}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(ILandroid/os/Bundle;)V

    .line 924
    iget-object v5, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const/4 v6, 0x7

    invoke-virtual {v5, v0, v6}, Lcom/nuance/swype/connect/util/InstallMetadata;->setStep(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 926
    .end local v1           #data:Landroid/os/Bundle;
    .end local v2           #location:Ljava/lang/String;
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CategoryManager -- Type unknown: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 932
    .end local v4           #typeId:I
    :cond_7
    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/manager/CategoryManager;->resetCategoryDownloadState(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method protected processGetResponse(Lcom/nuance/swype/connect/util/Response;)V
    .locals 11
    .parameter "response"

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 718
    const-string v5, "CategoryManager.processGetResponse()"

    invoke-static {v5}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 720
    iget-object v6, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    iget-object v5, p1, Lcom/nuance/swype/connect/util/Response;->parameters:Ljava/util/HashMap;

    const-string v7, "15"

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v7, "25"

    invoke-virtual {v6, v5, v7}, Lcom/nuance/swype/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 722
    .local v3, type:I
    iget-boolean v5, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->hotwordEnabled:Z

    if-nez v5, :cond_2

    if-eq v3, v8, :cond_0

    if-ne v3, v10, :cond_2

    .line 724
    :cond_0
    const-string v5, "CategoryManager.processGetResponse() hotword no longer enabled"

    invoke-static {v5}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 725
    iget-object v5, p1, Lcom/nuance/swype/connect/util/Response;->identifier:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/nuance/swype/connect/manager/CategoryManager;->clearCategoryDownload(Ljava/lang/String;)V

    .line 755
    :cond_1
    :goto_0
    return-void

    .line 729
    :cond_2
    iget v5, p1, Lcom/nuance/swype/connect/util/Response;->status:I

    if-ne v8, v5, :cond_1

    .line 730
    iget-object v0, p1, Lcom/nuance/swype/connect/util/Response;->identifier:Ljava/lang/String;

    .line 731
    .local v0, category:Ljava/lang/String;
    iget-object v2, p1, Lcom/nuance/swype/connect/util/Response;->transactionId:Ljava/lang/String;

    .line 732
    .local v2, transactionId:Ljava/lang/String;
    iget-object v4, p1, Lcom/nuance/swype/connect/util/Response;->thirdPartyURL:Ljava/lang/String;

    .line 734
    .local v4, url:Ljava/lang/String;
    iget-object v5, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v5, v0}, Lcom/nuance/swype/connect/util/InstallMetadata;->hasPackage(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 735
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CategoryManager.processGetResponse() - category is not available for get ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 740
    :cond_3
    iget-object v5, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v6, "51"

    invoke-virtual {v5, v0, v6, v4}, Lcom/nuance/swype/connect/util/InstallMetadata;->setUnsavedProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    iget-object v5, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v6, "4"

    invoke-virtual {v5, v0, v6, v2}, Lcom/nuance/swype/connect/util/InstallMetadata;->setUnsavedProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    iget-object v5, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v5, v0, v10}, Lcom/nuance/swype/connect/util/InstallMetadata;->setUnsavedStep(Ljava/lang/String;I)V

    .line 744
    const-string v5, "download"

    invoke-virtual {p0, v5}, Lcom/nuance/swype/connect/manager/CategoryManager;->createCommand(Ljava/lang/String;)Lcom/nuance/swype/connect/util/Command;

    move-result-object v1

    .line 745
    .local v1, download:Lcom/nuance/swype/connect/util/Command;
    iput-object v4, v1, Lcom/nuance/swype/connect/util/Command;->thirdPartyURL:Ljava/lang/String;

    .line 746
    const-string v5, "GET"

    iput-object v5, v1, Lcom/nuance/swype/connect/util/Command;->method:Ljava/lang/String;

    .line 747
    iput-boolean v9, v1, Lcom/nuance/swype/connect/util/Command;->hasBody:Z

    .line 748
    iput-boolean v9, v1, Lcom/nuance/swype/connect/util/Command;->handleIOException:Z

    .line 749
    iput-boolean v8, v1, Lcom/nuance/swype/connect/util/Command;->notifyDownloadStatus:Z

    .line 750
    iput-boolean v8, v1, Lcom/nuance/swype/connect/util/Command;->allowDuplicateOfCommand:Z

    .line 751
    iput-object v0, v1, Lcom/nuance/swype/connect/util/Command;->identifier:Ljava/lang/String;

    .line 753
    invoke-virtual {p0, v1}, Lcom/nuance/swype/connect/manager/CategoryManager;->sendCommand(Lcom/nuance/swype/connect/util/Command;)V

    goto :goto_0
.end method

.method protected processListResponse(Lcom/nuance/swype/connect/util/Response;)V
    .locals 23
    .parameter "response"

    .prologue
    .line 433
    const-string v19, "CategoryManager.processListResponse()"

    invoke-static/range {v19 .. v19}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 435
    const/4 v15, 0x0

    .line 436
    .local v15, requestStatus:Z
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/nuance/swype/connect/util/Response;->parameters:Ljava/util/HashMap;

    move-object/from16 v19, v0

    const-string v20, "77"

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 437
    const-string v19, "CategoryManager.processListResponse() Processing category list available for download."

    invoke-static/range {v19 .. v19}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 438
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/nuance/swype/connect/util/Response;->parameters:Ljava/util/HashMap;

    move-object/from16 v19, v0

    const-string v20, "77"

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/json/JSONArray;

    .line 439
    .local v11, jsonHotWordList:Lorg/json/JSONArray;
    if-eqz v11, :cond_8

    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v19

    if-lez v19, :cond_8

    .line 440
    new-instance v16, Ljava/util/HashSet;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashSet;-><init>()V

    .line 441
    .local v16, returnedCategories:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/nuance/swype/connect/util/InstallMetadata;->beginTransaction()V

    .line 443
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    :try_start_0
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v19

    move/from16 v0, v19

    if-ge v7, v0, :cond_6

    .line 445
    :try_start_1
    invoke-virtual {v11, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 446
    .local v3, category:Lorg/json/JSONObject;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "CategoryManager.processListResponse() -- category -- "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 449
    const-string v19, "15"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 450
    .local v9, id:Ljava/lang/String;
    const-string v19, "78"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 451
    .local v4, categoryId:I
    const-string v19, "25"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v18

    .line 452
    .local v18, type:I
    const-string v19, "13"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 454
    .local v13, language:Ljava/lang/String;
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 455
    .local v14, props:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Lcom/nuance/swype/connect/util/InstallMetadata;->hasPackage(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_5

    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Lcom/nuance/swype/connect/util/InstallMetadata;->addPackage(Ljava/lang/String;)Z

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Lcom/nuance/swype/connect/util/InstallMetadata;->getProps(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v14

    .line 459
    const-string v19, "15"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    const-string v19, "78"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    const-string v19, "13"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    const-string v19, "25"

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    const-string v19, "LAST_UPDATE_FETCHED"

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    const-string v19, "SUBSCRIBED"

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    const-string v19, "16"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 467
    const-string v19, "16"

    const-string v20, "16"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    :cond_0
    const-string v19, "18"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 470
    const-string v19, "18"

    const-string v20, "18"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    :cond_1
    const-string v19, "98"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 474
    const-string v19, "98"

    const-string v20, "98"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    :cond_2
    const-string v19, "100"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_4

    const-string v19, "100"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v19

    if-eqz v19, :cond_4

    .line 478
    const-string v19, "100"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 480
    .local v5, countryListArray:Lorg/json/JSONArray;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 481
    .local v17, sb:Ljava/lang/StringBuilder;
    const/4 v10, 0x0

    .local v10, j:I
    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v19

    move/from16 v0, v19

    if-ge v10, v0, :cond_3

    .line 482
    invoke-virtual {v5, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    const-string v19, ","

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 486
    :cond_3
    const-string v19, "100"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "   country list = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 489
    .end local v5           #countryListArray:Lorg/json/JSONArray;
    .end local v10           #j:I
    .end local v17           #sb:Ljava/lang/StringBuilder;
    :cond_4
    const-string v19, "STEP"

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    const-string v19, "LAST_UPDATE_AVAILABLE"

    invoke-static {}, Lcom/nuance/swype/connect/util/TimeConversion;->getCurrentTime()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9, v14}, Lcom/nuance/swype/connect/util/InstallMetadata;->setProps(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 496
    :cond_5
    move-object/from16 v0, v16

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 443
    .end local v3           #category:Lorg/json/JSONObject;
    .end local v4           #categoryId:I
    .end local v9           #id:Ljava/lang/String;
    .end local v13           #language:Ljava/lang/String;
    .end local v14           #props:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v18           #type:I
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 497
    :catch_0
    move-exception v6

    .line 498
    .local v6, ex:Lorg/json/JSONException;
    :try_start_2
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Failure processing JSON object: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v6}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    .line 499
    const/16 v16, 0x0

    goto :goto_2

    .line 504
    .end local v6           #ex:Lorg/json/JSONException;
    :cond_6
    if-eqz v16, :cond_7

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    move-object/from16 v20, v0

    monitor-enter v20
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 507
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/nuance/swype/connect/util/InstallMetadata;->allPackages()Ljava/util/Set;

    move-result-object v12

    .line 508
    .local v12, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    monitor-exit v20
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 509
    :try_start_4
    move-object/from16 v0, v16

    invoke-interface {v0, v12}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 510
    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 511
    .local v2, cat:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/nuance/swype/connect/util/InstallMetadata;->uninstallPackage(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 516
    .end local v2           #cat:Ljava/lang/String;
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v12           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/nuance/swype/connect/util/InstallMetadata;->commitTransaction()V

    throw v19

    .line 508
    :catchall_1
    move-exception v19

    :try_start_5
    monitor-exit v20
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v19
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 516
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/nuance/swype/connect/util/InstallMetadata;->commitTransaction()V

    .line 519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/connect/manager/CategoryManager;->managerDownloadListState:Lcom/nuance/swype/connect/manager/AbstractCommandManager$DownloadState;

    move-object/from16 v19, v0

    sget-object v20, Lcom/nuance/swype/connect/manager/AbstractCommandManager$DownloadState;->DOWNLOAD_LIST_STATE_AVAILABLE:Lcom/nuance/swype/connect/manager/AbstractCommandManager$DownloadState;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_a

    const/4 v15, 0x1

    .line 521
    :goto_4
    sget-object v19, Lcom/nuance/swype/connect/manager/AbstractCommandManager$DownloadState;->DOWNLOAD_LIST_STATE_AVAILABLE:Lcom/nuance/swype/connect/manager/AbstractCommandManager$DownloadState;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nuance/swype/connect/manager/CategoryManager;->managerDownloadListState:Lcom/nuance/swype/connect/manager/AbstractCommandManager$DownloadState;

    .line 523
    const-string v19, "CategoryManager.processListResponse() -- finished"

    invoke-static/range {v19 .. v19}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 524
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/connect/manager/CategoryManager;->processNextCategory()V

    .line 528
    .end local v7           #i:I
    .end local v11           #jsonHotWordList:Lorg/json/JSONArray;
    .end local v16           #returnedCategories:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_8
    new-instance v19, Lcom/nuance/swype/connect/util/Alarm$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/connect/manager/CategoryManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v21

    const-string v22, "init_list_alarm"

    invoke-direct/range {v19 .. v22}, Lcom/nuance/swype/connect/util/Alarm$Builder;-><init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V

    const/16 v20, 0x3c

    invoke-virtual/range {v19 .. v20}, Lcom/nuance/swype/connect/util/Alarm$Builder;->seconds(I)Lcom/nuance/swype/connect/util/Alarm$Builder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/nuance/swype/connect/util/Alarm$Builder;->build()Lcom/nuance/swype/connect/util/Alarm;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/nuance/swype/connect/util/Alarm;->cancel()V

    .line 530
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/connect/manager/CategoryManager;->sendChineseAddonDictionaries()V

    .line 532
    if-eqz v15, :cond_9

    .line 533
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/connect/manager/CategoryManager;->status()V

    .line 535
    :cond_9
    return-void

    .line 519
    .restart local v7       #i:I
    .restart local v11       #jsonHotWordList:Lorg/json/JSONArray;
    .restart local v16       #returnedCategories:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_a
    const/4 v15, 0x0

    goto :goto_4
.end method

.method protected processStatusResponse(Lcom/nuance/swype/connect/util/Response;)V
    .locals 7
    .parameter "response"

    .prologue
    .line 643
    const-string v3, "CategoryManager.processStatusResponse()"

    invoke-static {v3}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 645
    const/4 v3, 0x1

    iget v4, p1, Lcom/nuance/swype/connect/util/Response;->status:I

    if-ne v3, v4, :cond_2

    .line 647
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v3}, Lcom/nuance/swype/connect/util/InstallMetadata;->beginTransaction()V

    .line 649
    :try_start_0
    iget-object v3, p1, Lcom/nuance/swype/connect/util/Response;->parameters:Ljava/util/HashMap;

    const-string v4, "77"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 650
    const-string v3, "status available for category."

    invoke-static {v3}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 651
    iget-object v3, p1, Lcom/nuance/swype/connect/util/Response;->parameters:Ljava/util/HashMap;

    const-string v4, "77"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONArray;

    .line 652
    .local v2, jsonHotWordList:Lorg/json/JSONArray;
    if-eqz v2, :cond_1

    .line 653
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 654
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-ge v0, v3, :cond_1

    .line 656
    :try_start_1
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 658
    .local v1, id:Ljava/lang/String;
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v3, v1}, Lcom/nuance/swype/connect/util/InstallMetadata;->hasPackage(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 659
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Hot word list is not available for status update ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    .line 654
    .end local v1           #id:Ljava/lang/String;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 663
    .restart local v1       #id:Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v4, "LAST_UPDATE_AVAILABLE"

    invoke-static {}, Lcom/nuance/swype/connect/util/TimeConversion;->getCurrentTime()J

    move-result-wide v5

    invoke-virtual {v3, v1, v4, v5, v6}, Lcom/nuance/swype/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 665
    .end local v1           #id:Ljava/lang/String;
    :catch_0
    move-exception v3

    goto :goto_1

    .line 673
    .end local v0           #i:I
    .end local v2           #jsonHotWordList:Lorg/json/JSONArray;
    :cond_1
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v3}, Lcom/nuance/swype/connect/util/InstallMetadata;->commitTransaction()V

    .line 677
    :cond_2
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/CategoryManager;->processNextCategory()V

    .line 678
    return-void

    .line 673
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v4}, Lcom/nuance/swype/connect/util/InstallMetadata;->commitTransaction()V

    throw v3
.end method

.method protected processSubscribeResponse(Lcom/nuance/swype/connect/util/Response;)V
    .locals 6
    .parameter "response"

    .prologue
    const/4 v5, 0x1

    .line 564
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CategoryManager.processSubscribeResponse(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/nuance/swype/connect/util/Response;->status:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 566
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    iget-object v2, p1, Lcom/nuance/swype/connect/util/Response;->parameters:Ljava/util/HashMap;

    const-string v4, "15"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, "25"

    invoke-virtual {v3, v2, v4}, Lcom/nuance/swype/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 568
    .local v1, type:I
    iget-boolean v2, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->hotwordEnabled:Z

    if-nez v2, :cond_1

    if-eq v1, v5, :cond_0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 570
    :cond_0
    const-string v2, "CategoryManager.processSubscribeResponse() hotword no longer enabled"

    invoke-static {v2}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 571
    iget-object v2, p1, Lcom/nuance/swype/connect/util/Response;->identifier:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/nuance/swype/connect/manager/CategoryManager;->resetCategory(Ljava/lang/String;)V

    .line 583
    :goto_0
    return-void

    .line 575
    :cond_1
    iget v2, p1, Lcom/nuance/swype/connect/util/Response;->status:I

    if-ne v5, v2, :cond_2

    .line 576
    iget-object v0, p1, Lcom/nuance/swype/connect/util/Response;->identifier:Ljava/lang/String;

    .line 577
    .local v0, category:Ljava/lang/String;
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v3, "SUBSCRIBED"

    invoke-virtual {v2, v0, v3, v5}, Lcom/nuance/swype/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 582
    .end local v0           #category:Ljava/lang/String;
    :goto_1
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/CategoryManager;->processNextCategory()V

    goto :goto_0

    .line 579
    :cond_2
    iget-object v2, p1, Lcom/nuance/swype/connect/util/Response;->identifier:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/nuance/swype/connect/manager/CategoryManager;->resetCategory(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected processUnsubscribeResponse(Lcom/nuance/swype/connect/util/Response;)V
    .locals 7
    .parameter "response"

    .prologue
    const/4 v5, 0x1

    .line 605
    const-string v4, "CategoryManager.processUnsubscribeResponse()"

    invoke-static {v4}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 607
    iget v4, p1, Lcom/nuance/swype/connect/util/Response;->status:I

    if-ne v5, v4, :cond_0

    .line 608
    iget-object v1, p1, Lcom/nuance/swype/connect/util/Response;->identifier:Ljava/lang/String;

    .line 610
    .local v1, category:Ljava/lang/String;
    iget-object v4, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v5, "UNSUBSCRIBE_PENDING"

    invoke-virtual {v4, v1, v5}, Lcom/nuance/swype/connect/util/InstallMetadata;->getBoolProp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 611
    iget-object v4, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v4}, Lcom/nuance/swype/connect/util/InstallMetadata;->beginTransaction()V

    .line 613
    :try_start_0
    iget-object v4, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v5, "SUBSCRIBED"

    const/4 v6, 0x0

    invoke-virtual {v4, v1, v5, v6}, Lcom/nuance/swype/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 614
    iget-object v4, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v5, "LAST_UPDATE_FETCHED"

    const/4 v6, 0x0

    invoke-virtual {v4, v1, v5, v6}, Lcom/nuance/swype/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;I)V

    .line 615
    iget-object v4, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v5, "78"

    invoke-virtual {v4, v1, v5}, Lcom/nuance/swype/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 616
    .local v0, catId:I
    iget-object v4, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v5, "CATEGORY_CORE"

    invoke-virtual {v4, v1, v5}, Lcom/nuance/swype/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 617
    .local v2, core:I
    iget-object v4, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Lcom/nuance/swype/connect/util/InstallMetadata;->setStep(Ljava/lang/String;I)V

    .line 618
    iget-object v4, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v5, "UNSUBSCRIBE_PENDING"

    invoke-virtual {v4, v1, v5}, Lcom/nuance/swype/connect/util/InstallMetadata;->removeProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    iget-object v4, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v5, "13"

    invoke-virtual {v4, v1, v5}, Lcom/nuance/swype/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 623
    .local v3, language:I
    iget v4, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->currentCore:I

    if-ne v4, v2, :cond_1

    .line 624
    invoke-direct {p0, v0, v3}, Lcom/nuance/swype/connect/manager/CategoryManager;->sendDeleteCategoryToHost(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 629
    :goto_0
    iget-object v4, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v4}, Lcom/nuance/swype/connect/util/InstallMetadata;->commitTransaction()V

    .line 634
    .end local v0           #catId:I
    .end local v1           #category:Ljava/lang/String;
    .end local v2           #core:I
    .end local v3           #language:I
    :cond_0
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/CategoryManager;->processNextCategory()V

    .line 635
    return-void

    .line 626
    .restart local v0       #catId:I
    .restart local v1       #category:Ljava/lang/String;
    .restart local v2       #core:I
    .restart local v3       #language:I
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v5, "DELETE_CATEGORY"

    const/4 v6, 0x1

    invoke-virtual {v4, v1, v5, v6}, Lcom/nuance/swype/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 629
    .end local v0           #catId:I
    .end local v2           #core:I
    .end local v3           #language:I
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v5}, Lcom/nuance/swype/connect/util/InstallMetadata;->commitTransaction()V

    throw v4
.end method

.method protected requestCategoryList()V
    .locals 3

    .prologue
    .line 425
    const-string v2, "CategoryManager.requestCategoryList"

    invoke-static {v2}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 426
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 427
    .local v1, parameters:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "list"

    invoke-virtual {p0, v2, v1}, Lcom/nuance/swype/connect/manager/CategoryManager;->createCommand(Ljava/lang/String;Ljava/util/HashMap;)Lcom/nuance/swype/connect/util/Command;

    move-result-object v0

    .line 428
    .local v0, command:Lcom/nuance/swype/connect/util/Command;
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/nuance/swype/connect/util/Command;->allowDuplicateOfCommand:Z

    .line 429
    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/manager/CategoryManager;->sendCommand(Lcom/nuance/swype/connect/util/Command;)V

    .line 430
    return-void
.end method

.method protected resetCategoryDownloadState(Ljava/lang/String;)V
    .locals 5
    .parameter "category"

    .prologue
    .line 841
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CategoryManager.resetCategoryDownloadState("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 843
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v4, "10"

    invoke-virtual {v3, p1, v4}, Lcom/nuance/swype/connect/util/InstallMetadata;->removeProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Lcom/nuance/swype/connect/util/InstallMetadata;->setStep(Ljava/lang/String;I)V

    .line 845
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v4, "FILE_LOCATION"

    invoke-virtual {v3, p1, v4}, Lcom/nuance/swype/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 846
    .local v0, filePath:Ljava/lang/String;
    const/4 v2, 0x0

    .line 848
    .local v2, removed:Z
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 850
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 851
    .local v1, remove:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 857
    .end local v1           #remove:Ljava/io/File;
    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CategoryManager.resetCategoryDownloadState("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") -- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 859
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v4, "FILE_LOCATION"

    invoke-virtual {v3, p1, v4}, Lcom/nuance/swype/connect/util/InstallMetadata;->removeProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    return-void

    .line 852
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method protected setCategoryListAlarm()V
    .locals 7

    .prologue
    .line 232
    const-string v3, "CategoryManager.setCategoryListAlarm()"

    invoke-static {v3}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 233
    iget-wide v3, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->listFetchInterval:J

    iget-wide v5, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->lastRecieved:J

    invoke-static {v3, v4, v5, v6}, Lcom/nuance/swype/connect/util/TimeConversion;->convertSecondsToTimeStamp(JJ)J

    move-result-wide v1

    .line 235
    .local v1, nextRun:J
    new-instance v3, Lcom/nuance/swype/connect/util/Alarm$Builder;

    iget-object v4, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v4}, Lcom/nuance/swype/connect/ConnectClient;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/nuance/swype/connect/manager/CategoryManager;

    const-string v6, "CATEGORY_LIST_FETCH"

    invoke-direct {v3, v4, v5, v6}, Lcom/nuance/swype/connect/util/Alarm$Builder;-><init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Lcom/nuance/swype/connect/util/Alarm$Builder;->triggerTime(J)Lcom/nuance/swype/connect/util/Alarm$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/connect/util/Alarm$Builder;->build()Lcom/nuance/swype/connect/util/Alarm;

    move-result-object v0

    .line 237
    .local v0, alarm:Lcom/nuance/swype/connect/util/Alarm;
    invoke-virtual {v0}, Lcom/nuance/swype/connect/util/Alarm;->set()V

    .line 238
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setCategoryListAlarm() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/connect/util/Logger;->v(Ljava/lang/String;)V

    .line 239
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 178
    const-string v0, "CategoryManager.start()"

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 180
    sget-object v0, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;->STARTING:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->managerStartState:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    .line 181
    iget-boolean v0, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->enabled:Z

    if-eqz v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->managerDownloadListState:Lcom/nuance/swype/connect/manager/AbstractCommandManager$DownloadState;

    sget-object v1, Lcom/nuance/swype/connect/manager/AbstractCommandManager$DownloadState;->DOWNLOAD_LIST_STATE_UNKNOWN:Lcom/nuance/swype/connect/manager/AbstractCommandManager$DownloadState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->managerDownloadListState:Lcom/nuance/swype/connect/manager/AbstractCommandManager$DownloadState;

    sget-object v1, Lcom/nuance/swype/connect/manager/AbstractCommandManager$DownloadState;->DOWNLOAD_LIST_STATE_NONE:Lcom/nuance/swype/connect/manager/AbstractCommandManager$DownloadState;

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->forceListRequest:Z

    if-eqz v0, :cond_2

    .line 185
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/CategoryManager;->requestCategoryList()V

    .line 198
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/CategoryManager;->managerStartComplete()V

    .line 199
    return-void

    .line 187
    :cond_2
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/CategoryManager;->chineseCatDbReset()V

    .line 188
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/CategoryManager;->sendChineseAddonDictionaries()V

    goto :goto_0
.end method

.method protected status()V
    .locals 2

    .prologue
    .line 638
    const-string v1, "status"

    invoke-virtual {p0, v1}, Lcom/nuance/swype/connect/manager/CategoryManager;->createCommand(Ljava/lang/String;)Lcom/nuance/swype/connect/util/Command;

    move-result-object v0

    .line 639
    .local v0, command:Lcom/nuance/swype/connect/util/Command;
    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/manager/CategoryManager;->sendCommand(Lcom/nuance/swype/connect/util/Command;)V

    .line 640
    return-void
.end method

.method protected subscribe(Ljava/lang/String;)V
    .locals 6
    .parameter "id"

    .prologue
    const/4 v5, 0x1

    .line 538
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CategoryManager.subscribe("

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

    .line 540
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v1, p1}, Lcom/nuance/swype/connect/util/InstallMetadata;->hasPackage(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 541
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hot word list is not available for subscriptions ("

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

    .line 561
    :cond_0
    :goto_0
    return-void

    .line 545
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    new-array v2, v5, [Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/swype/connect/util/InstallMetadata;->listFromSteps(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 547
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hot word list is already attempting a subscribe ("

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

    goto :goto_0

    .line 551
    :cond_2
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v2, "SUBSCRIBED"

    invoke-virtual {v1, p1, v2}, Lcom/nuance/swype/connect/util/InstallMetadata;->getBoolProp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v2, "UNSUBSCRIBE_PENDING"

    invoke-virtual {v1, p1, v2}, Lcom/nuance/swype/connect/util/InstallMetadata;->getBoolProp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 553
    :cond_3
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v1, p1, v5}, Lcom/nuance/swype/connect/util/InstallMetadata;->setStep(Ljava/lang/String;I)V

    .line 554
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v2, "UNSUBSCRIBE_PENDING"

    invoke-virtual {v1, p1, v2}, Lcom/nuance/swype/connect/util/InstallMetadata;->removeProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v2, "SUBSCRIBED"

    invoke-virtual {v1, p1, v2}, Lcom/nuance/swype/connect/util/InstallMetadata;->removeProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    const-string v1, "subscribe"

    invoke-virtual {p0, v1}, Lcom/nuance/swype/connect/manager/CategoryManager;->createCommand(Ljava/lang/String;)Lcom/nuance/swype/connect/util/Command;

    move-result-object v0

    .line 557
    .local v0, command:Lcom/nuance/swype/connect/util/Command;
    iget-object v1, v0, Lcom/nuance/swype/connect/util/Command;->parameters:Ljava/util/HashMap;

    const-string v2, "15"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    iput-object p1, v0, Lcom/nuance/swype/connect/util/Command;->identifier:Ljava/lang/String;

    .line 559
    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/manager/CategoryManager;->sendCommand(Lcom/nuance/swype/connect/util/Command;)V

    goto :goto_0
.end method

.method protected unsubscribe(Ljava/lang/String;)V
    .locals 4
    .parameter "id"

    .prologue
    .line 586
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CategoryManager.unsubscribe("

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

    .line 588
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v1, p1}, Lcom/nuance/swype/connect/util/InstallMetadata;->hasPackage(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 589
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hot word list is not available for unsubscribe ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    .line 602
    :goto_0
    return-void

    .line 593
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v2, "SUBSCRIBED"

    invoke-virtual {v1, p1, v2}, Lcom/nuance/swype/connect/util/InstallMetadata;->getBoolProp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 594
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v2, "UNSUBSCRIBE_PENDING"

    const/4 v3, 0x1

    invoke-virtual {v1, p1, v2, v3}, Lcom/nuance/swype/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 595
    const-string v1, "unsubscribe"

    invoke-virtual {p0, v1}, Lcom/nuance/swype/connect/manager/CategoryManager;->createCommand(Ljava/lang/String;)Lcom/nuance/swype/connect/util/Command;

    move-result-object v0

    .line 596
    .local v0, command:Lcom/nuance/swype/connect/util/Command;
    iget-object v1, v0, Lcom/nuance/swype/connect/util/Command;->parameters:Ljava/util/HashMap;

    const-string v2, "15"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    iput-object p1, v0, Lcom/nuance/swype/connect/util/Command;->identifier:Ljava/lang/String;

    .line 598
    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/manager/CategoryManager;->sendCommand(Lcom/nuance/swype/connect/util/Command;)V

    goto :goto_0

    .line 600
    .end local v0           #command:Lcom/nuance/swype/connect/util/Command;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Already unsubscribed to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected unsubscribeAll()V
    .locals 1

    .prologue
    .line 1298
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/manager/CategoryManager;->unsubscribeAll(I)V

    .line 1299
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/manager/CategoryManager;->unsubscribeAll(I)V

    .line 1300
    return-void
.end method

.method protected unsubscribeAll(I)V
    .locals 7
    .parameter "type"

    .prologue
    .line 1309
    iget-object v6, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    monitor-enter v6

    .line 1310
    :try_start_0
    iget-object v5, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v5}, Lcom/nuance/swype/connect/util/InstallMetadata;->allPackages()Ljava/util/Set;

    move-result-object v2

    .line 1311
    .local v2, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1313
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1314
    .local v1, id:Ljava/lang/String;
    iget-object v5, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v6, "SUBSCRIBED"

    invoke-virtual {v5, v1, v6}, Lcom/nuance/swype/connect/util/InstallMetadata;->getBoolProp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 1315
    .local v3, subscribed:Z
    iget-object v5, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v6, "25"

    invoke-virtual {v5, v1, v6}, Lcom/nuance/swype/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1317
    .local v4, typeId:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CategoryManager.unsubscribeAll() -- category: ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] subscribed: ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 1320
    if-eqz v3, :cond_0

    if-ne v4, p1, :cond_0

    .line 1321
    invoke-virtual {p0, v1}, Lcom/nuance/swype/connect/manager/CategoryManager;->unsubscribe(Ljava/lang/String;)V

    goto :goto_0

    .line 1311
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #id:Ljava/lang/String;
    .end local v2           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3           #subscribed:Z
    .end local v4           #typeId:I
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 1324
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v2       #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    return-void
.end method

.method protected updateCategoryEventAck(ZILjava/lang/String;)V
    .locals 7
    .parameter "status"
    .parameter "core"
    .parameter "category"

    .prologue
    .line 1027
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CategoryManager.updateCategoryEventAck() - status: ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] core: ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] category: ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 1030
    iget-object v4, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v4, p3}, Lcom/nuance/swype/connect/util/InstallMetadata;->hasPackage(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1031
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CategoryManager.updateCategoryEventAck() - category list is not available ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 1066
    :goto_0
    return-void

    .line 1034
    :cond_0
    iget-object v4, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    invoke-virtual {v4, p3}, Lcom/nuance/swype/connect/util/InstallMetadata;->getStep(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x7

    if-eq v4, v5, :cond_1

    .line 1035
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CategoryManager.updateCategoryEventAck() - category list is not ready for install ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 1037
    invoke-virtual {p0, p3}, Lcom/nuance/swype/connect/manager/CategoryManager;->resetCategoryDownloadState(Ljava/lang/String;)V

    goto :goto_0

    .line 1041
    :cond_1
    if-eqz p1, :cond_3

    .line 1042
    iget-object v4, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v5, "FILE_LOCATION"

    invoke-virtual {v4, p3, v5}, Lcom/nuance/swype/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1044
    .local v2, location:Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 1045
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1046
    .local v1, file:Ljava/io/File;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1048
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1054
    .end local v1           #file:Ljava/io/File;
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const-string v5, "FILE_LOCATION"

    invoke-virtual {v4, p3, v5}, Lcom/nuance/swype/connect/util/InstallMetadata;->removeProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 1055
    iget-object v4, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const/4 v5, 0x0

    invoke-virtual {v4, p3, v5}, Lcom/nuance/swype/connect/util/InstallMetadata;->setStep(Ljava/lang/String;I)V

    goto :goto_0

    .line 1058
    .end local v2           #location:Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->categoryInstallMetadata:Lcom/nuance/swype/connect/util/InstallMetadata;

    const/4 v5, 0x5

    invoke-virtual {v4, p3, v5}, Lcom/nuance/swype/connect/util/InstallMetadata;->setStep(Ljava/lang/String;I)V

    .line 1059
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1060
    .local v0, b:Landroid/os/Bundle;
    const-string v4, "DEFAULT_KEY"

    invoke-virtual {v0, v4, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1061
    iget-object v4, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v4}, Lcom/nuance/swype/connect/ConnectClient;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x10b

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 1063
    .local v3, m:Landroid/os/Message;
    invoke-virtual {v3, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1064
    iget-object v4, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/CategoryManager;->calcDefaultMilliDelay()J

    move-result-wide v5

    invoke-virtual {v4, v3, v5, v6}, Lcom/nuance/swype/connect/ConnectClient;->postMessageDelayed(Landroid/os/Message;J)V

    goto :goto_0

    .line 1049
    .end local v0           #b:Landroid/os/Bundle;
    .end local v3           #m:Landroid/os/Message;
    .restart local v1       #file:Ljava/io/File;
    .restart local v2       #location:Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method protected updateHotwordStatus(Z)V
    .locals 3
    .parameter "status"

    .prologue
    .line 387
    iget-boolean v0, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->hotwordEnabled:Z

    if-ne p1, v0, :cond_0

    .line 401
    :goto_0
    return-void

    .line 390
    :cond_0
    iput-boolean p1, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->hotwordEnabled:Z

    .line 391
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectClient;->getDataStore()Lcom/nuance/swype/connect/store/PersistentDataStore;

    move-result-object v0

    const-string v1, "categoryHotwordEnabled"

    iget-boolean v2, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->hotwordEnabled:Z

    invoke-interface {v0, v1, v2}, Lcom/nuance/swype/connect/store/PersistentDataStore;->saveBoolean(Ljava/lang/String;Z)Z

    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Updated hotwordEnabled to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 394
    if-eqz p1, :cond_1

    .line 395
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/CategoryManager;->processNextCategory()V

    goto :goto_0

    .line 397
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/manager/CategoryManager;->unsubscribeAll(I)V

    .line 398
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/manager/CategoryManager;->unsubscribeAll(I)V

    goto :goto_0
.end method

.method protected updateStatus(Z)V
    .locals 1
    .parameter "status"

    .prologue
    .line 369
    iget-boolean v0, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->enabled:Z

    if-ne v0, p1, :cond_0

    .line 379
    :goto_0
    return-void

    .line 373
    :cond_0
    iput-boolean p1, p0, Lcom/nuance/swype/connect/manager/CategoryManager;->enabled:Z

    .line 374
    if-eqz p1, :cond_1

    .line 375
    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/CategoryManager;->requestCategoryList()V

    goto :goto_0

    .line 377
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/CategoryManager;->unsubscribeAll()V

    goto :goto_0
.end method
