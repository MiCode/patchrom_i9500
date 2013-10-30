.class public Lcom/nuance/swype/connect/manager/ManagerRegistry;
.super Ljava/lang/Object;
.source "ManagerRegistry.java"


# static fields
.field public static final ACCOUNT_MANAGER:Ljava/lang/String; = "account"

.field public static final ADDON_MANAGER:Ljava/lang/String; = "addon"

.field public static final ALM_MANAGER:Ljava/lang/String; = "alm"

.field public static final BETA_MANAGER:Ljava/lang/String; = "beta"

.field public static final CATEGORY_MANAGER:Ljava/lang/String; = "cdb"

.field public static final CONFIGURATION_MANAGER:Ljava/lang/String; = "swypeconfig"

.field public static final DEVICE_MANAGER:Ljava/lang/String; = "device"

.field public static final DLM_MANAGER:Ljava/lang/String; = "dlm"

.field public static final LANGUAGE_MANAGER:Ljava/lang/String; = "language"

.field public static final LICENSE_MANAGER:Ljava/lang/String; = "license"

.field public static final MESSAGE_MANAGER:Ljava/lang/String; = "messaging"

.field public static final REPORTING_MANAGER:Ljava/lang/String; = "report"

.field public static final RESEARCH_MANAGER:Ljava/lang/String; = "research"

.field public static final RESOURCES_MANAGER:Ljava/lang/String; = "internal_resources"

.field public static final SESSION_MANAGER:Ljava/lang/String; = "session"

.field public static final SYSTEM_MANAGER:Ljava/lang/String; = "system"

.field private static final registryInstance:Lcom/nuance/swype/connect/manager/ManagerRegistry;


# instance fields
.field private allManagersStarted:Z

.field private client:Lcom/nuance/swype/connect/ConnectClient;

.field private currentlyProcessing:Z

.field private handlerRegistry:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private invalidHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private managerRegistry:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final managers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/connect/manager/interfaces/Manager;",
            ">;"
        }
    .end annotation
.end field

.field private final messageHandlerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/nuance/swype/connect/manager/interfaces/MessageProcessor;",
            ">;>;"
        }
    .end annotation
.end field

.field private neededHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private requestedHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private validRegistry:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/nuance/swype/connect/manager/ManagerRegistry;

    invoke-direct {v0}, Lcom/nuance/swype/connect/manager/ManagerRegistry;-><init>()V

    sput-object v0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->registryInstance:Lcom/nuance/swype/connect/manager/ManagerRegistry;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->managers:Ljava/util/List;

    .line 45
    iput-boolean v1, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->currentlyProcessing:Z

    .line 46
    iput-boolean v1, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->validRegistry:Z

    .line 55
    iput-boolean v1, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->allManagersStarted:Z

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->messageHandlerMap:Ljava/util/HashMap;

    .line 61
    return-void
.end method

.method private add(Lcom/nuance/swype/connect/manager/interfaces/Manager;)Z
    .locals 2
    .parameter "manager"

    .prologue
    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ManagerRegistry.add(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/nuance/swype/connect/manager/interfaces/Manager;->getManagerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 351
    invoke-interface {p1}, Lcom/nuance/swype/connect/manager/interfaces/Manager;->getManagerName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/swype/connect/manager/ManagerRegistry;->isRegistered(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->managers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private addManager(Ljava/lang/String;)Z
    .locals 9
    .parameter "name"

    .prologue
    .line 360
    const/4 v6, 0x0

    .line 361
    .local v6, manager:Lcom/nuance/swype/connect/manager/interfaces/Manager;
    const/4 v0, 0x0

    .line 363
    .local v0, added:Z
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/manager/ManagerRegistry;->isRegistered(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 364
    const/4 v7, 0x1

    .line 419
    :goto_0
    return v7

    .line 367
    :cond_0
    const-string v7, "swypeconfig"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 368
    new-instance v6, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;

    .end local v6           #manager:Lcom/nuance/swype/connect/manager/interfaces/Manager;
    iget-object v7, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-direct {v6, v7}, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;-><init>(Lcom/nuance/swype/connect/ConnectClient;)V

    .line 405
    .restart local v6       #manager:Lcom/nuance/swype/connect/manager/interfaces/Manager;
    :goto_1
    if-eqz v6, :cond_13

    .line 406
    invoke-direct {p0, v6}, Lcom/nuance/swype/connect/manager/ManagerRegistry;->add(Lcom/nuance/swype/connect/manager/interfaces/Manager;)Z

    .line 409
    invoke-interface {v6}, Lcom/nuance/swype/connect/manager/interfaces/Manager;->getDependencies()[Ljava/lang/String;

    move-result-object v3

    .line 410
    .local v3, deps:[Ljava/lang/String;
    if-eqz v3, :cond_12

    .line 411
    move-object v1, v3

    .local v1, arr$:[Ljava/lang/String;
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_2
    if-ge v4, v5, :cond_12

    aget-object v2, v1, v4

    .line 412
    .local v2, dep:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/nuance/swype/connect/manager/ManagerRegistry;->addManager(Ljava/lang/String;)Z

    .line 411
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 369
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #dep:Ljava/lang/String;
    .end local v3           #deps:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_1
    const-string v7, "beta"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 370
    new-instance v6, Lcom/nuance/swype/connect/manager/BetaManager;

    .end local v6           #manager:Lcom/nuance/swype/connect/manager/interfaces/Manager;
    iget-object v7, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-direct {v6, v7}, Lcom/nuance/swype/connect/manager/BetaManager;-><init>(Lcom/nuance/swype/connect/ConnectClient;)V

    .restart local v6       #manager:Lcom/nuance/swype/connect/manager/interfaces/Manager;
    goto :goto_1

    .line 371
    :cond_2
    const-string v7, "device"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 372
    new-instance v6, Lcom/nuance/swype/connect/manager/DeviceManager;

    .end local v6           #manager:Lcom/nuance/swype/connect/manager/interfaces/Manager;
    iget-object v7, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-direct {v6, v7}, Lcom/nuance/swype/connect/manager/DeviceManager;-><init>(Lcom/nuance/swype/connect/ConnectClient;)V

    .restart local v6       #manager:Lcom/nuance/swype/connect/manager/interfaces/Manager;
    goto :goto_1

    .line 373
    :cond_3
    const-string v7, "session"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 374
    new-instance v6, Lcom/nuance/swype/connect/manager/SessionManager;

    .end local v6           #manager:Lcom/nuance/swype/connect/manager/interfaces/Manager;
    iget-object v7, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-direct {v6, v7}, Lcom/nuance/swype/connect/manager/SessionManager;-><init>(Lcom/nuance/swype/connect/ConnectClient;)V

    .restart local v6       #manager:Lcom/nuance/swype/connect/manager/interfaces/Manager;
    goto :goto_1

    .line 375
    :cond_4
    const-string v7, "license"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 376
    new-instance v6, Lcom/nuance/swype/connect/manager/LicenseManager;

    .end local v6           #manager:Lcom/nuance/swype/connect/manager/interfaces/Manager;
    iget-object v7, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-direct {v6, v7}, Lcom/nuance/swype/connect/manager/LicenseManager;-><init>(Lcom/nuance/swype/connect/ConnectClient;)V

    .restart local v6       #manager:Lcom/nuance/swype/connect/manager/interfaces/Manager;
    goto :goto_1

    .line 377
    :cond_5
    const-string v7, "internal_resources"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 378
    new-instance v6, Lcom/nuance/swype/connect/manager/ResourcesManager;

    .end local v6           #manager:Lcom/nuance/swype/connect/manager/interfaces/Manager;
    iget-object v7, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-direct {v6, v7}, Lcom/nuance/swype/connect/manager/ResourcesManager;-><init>(Lcom/nuance/swype/connect/ConnectClient;)V

    .restart local v6       #manager:Lcom/nuance/swype/connect/manager/interfaces/Manager;
    goto :goto_1

    .line 379
    :cond_6
    const-string v7, "system"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 380
    new-instance v6, Lcom/nuance/swype/connect/manager/SystemManager;

    .end local v6           #manager:Lcom/nuance/swype/connect/manager/interfaces/Manager;
    iget-object v7, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-direct {v6, v7}, Lcom/nuance/swype/connect/manager/SystemManager;-><init>(Lcom/nuance/swype/connect/ConnectClient;)V

    .restart local v6       #manager:Lcom/nuance/swype/connect/manager/interfaces/Manager;
    goto :goto_1

    .line 381
    :cond_7
    const-string v7, "report"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 382
    new-instance v6, Lcom/nuance/swype/connect/manager/ReportingManager;

    .end local v6           #manager:Lcom/nuance/swype/connect/manager/interfaces/Manager;
    iget-object v7, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-direct {v6, v7}, Lcom/nuance/swype/connect/manager/ReportingManager;-><init>(Lcom/nuance/swype/connect/ConnectClient;)V

    .restart local v6       #manager:Lcom/nuance/swype/connect/manager/interfaces/Manager;
    goto/16 :goto_1

    .line 383
    :cond_8
    const-string v7, "upgrade"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 384
    new-instance v6, Lcom/nuance/swype/connect/manager/UpgradeManager;

    .end local v6           #manager:Lcom/nuance/swype/connect/manager/interfaces/Manager;
    iget-object v7, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-direct {v6, v7}, Lcom/nuance/swype/connect/manager/UpgradeManager;-><init>(Lcom/nuance/swype/connect/ConnectClient;)V

    .restart local v6       #manager:Lcom/nuance/swype/connect/manager/interfaces/Manager;
    goto/16 :goto_1

    .line 385
    :cond_9
    const-string v7, "messaging"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 386
    new-instance v6, Lcom/nuance/swype/connect/manager/MessageManager;

    .end local v6           #manager:Lcom/nuance/swype/connect/manager/interfaces/Manager;
    iget-object v7, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-direct {v6, v7}, Lcom/nuance/swype/connect/manager/MessageManager;-><init>(Lcom/nuance/swype/connect/ConnectClient;)V

    .restart local v6       #manager:Lcom/nuance/swype/connect/manager/interfaces/Manager;
    goto/16 :goto_1

    .line 387
    :cond_a
    const-string v7, "addon"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 388
    new-instance v6, Lcom/nuance/swype/connect/manager/AddonManager;

    .end local v6           #manager:Lcom/nuance/swype/connect/manager/interfaces/Manager;
    iget-object v7, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-direct {v6, v7}, Lcom/nuance/swype/connect/manager/AddonManager;-><init>(Lcom/nuance/swype/connect/ConnectClient;)V

    .restart local v6       #manager:Lcom/nuance/swype/connect/manager/interfaces/Manager;
    goto/16 :goto_1

    .line 389
    :cond_b
    const-string v7, "language"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 390
    new-instance v6, Lcom/nuance/swype/connect/manager/LanguageManager;

    .end local v6           #manager:Lcom/nuance/swype/connect/manager/interfaces/Manager;
    iget-object v7, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-direct {v6, v7}, Lcom/nuance/swype/connect/manager/LanguageManager;-><init>(Lcom/nuance/swype/connect/ConnectClient;)V

    .restart local v6       #manager:Lcom/nuance/swype/connect/manager/interfaces/Manager;
    goto/16 :goto_1

    .line 391
    :cond_c
    const-string v7, "alm"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 392
    new-instance v6, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;

    .end local v6           #manager:Lcom/nuance/swype/connect/manager/interfaces/Manager;
    iget-object v7, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-direct {v6, v7}, Lcom/nuance/swype/connect/manager/LanguageModuleUpdateManager;-><init>(Lcom/nuance/swype/connect/ConnectClient;)V

    .restart local v6       #manager:Lcom/nuance/swype/connect/manager/interfaces/Manager;
    goto/16 :goto_1

    .line 393
    :cond_d
    const-string v7, "research"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 394
    new-instance v6, Lcom/nuance/swype/connect/manager/ResearchManager;

    .end local v6           #manager:Lcom/nuance/swype/connect/manager/interfaces/Manager;
    iget-object v7, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-direct {v6, v7}, Lcom/nuance/swype/connect/manager/ResearchManager;-><init>(Lcom/nuance/swype/connect/ConnectClient;)V

    .restart local v6       #manager:Lcom/nuance/swype/connect/manager/interfaces/Manager;
    goto/16 :goto_1

    .line 395
    :cond_e
    const-string v7, "dlm"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 396
    new-instance v6, Lcom/nuance/swype/connect/manager/DLMManager;

    .end local v6           #manager:Lcom/nuance/swype/connect/manager/interfaces/Manager;
    iget-object v7, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-direct {v6, v7}, Lcom/nuance/swype/connect/manager/DLMManager;-><init>(Lcom/nuance/swype/connect/ConnectClient;)V

    .restart local v6       #manager:Lcom/nuance/swype/connect/manager/interfaces/Manager;
    goto/16 :goto_1

    .line 397
    :cond_f
    const-string v7, "account"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 398
    new-instance v6, Lcom/nuance/swype/connect/manager/AccountManager;

    .end local v6           #manager:Lcom/nuance/swype/connect/manager/interfaces/Manager;
    iget-object v7, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-direct {v6, v7}, Lcom/nuance/swype/connect/manager/AccountManager;-><init>(Lcom/nuance/swype/connect/ConnectClient;)V

    .restart local v6       #manager:Lcom/nuance/swype/connect/manager/interfaces/Manager;
    goto/16 :goto_1

    .line 399
    :cond_10
    const-string v7, "cdb"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 400
    new-instance v6, Lcom/nuance/swype/connect/manager/CategoryManager;

    .end local v6           #manager:Lcom/nuance/swype/connect/manager/interfaces/Manager;
    iget-object v7, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-direct {v6, v7}, Lcom/nuance/swype/connect/manager/CategoryManager;-><init>(Lcom/nuance/swype/connect/ConnectClient;)V

    .restart local v6       #manager:Lcom/nuance/swype/connect/manager/interfaces/Manager;
    goto/16 :goto_1

    .line 402
    :cond_11
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown manager: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 416
    .restart local v3       #deps:[Ljava/lang/String;
    :cond_12
    const/4 v0, 0x1

    .end local v3           #deps:[Ljava/lang/String;
    :cond_13
    move v7, v0

    .line 419
    goto/16 :goto_0
.end method

.method private dependenciesStarted([Ljava/lang/String;)Z
    .locals 8
    .parameter "dependencies"

    .prologue
    .line 536
    const/4 v0, 0x1

    .line 538
    .local v0, allStarted:Z
    move-object v1, p1

    .local v1, arr$:[Ljava/lang/String;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v2, v1, v3

    .line 539
    .local v2, dependency:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/nuance/swype/connect/manager/ManagerRegistry;->getManagerReference(Ljava/lang/String;)Lcom/nuance/swype/connect/manager/interfaces/Manager;

    move-result-object v5

    .line 541
    .local v5, mgr:Lcom/nuance/swype/connect/manager/interfaces/Manager;
    if-nez v5, :cond_1

    .line 543
    invoke-direct {p0, v2}, Lcom/nuance/swype/connect/manager/ManagerRegistry;->addManager(Ljava/lang/String;)Z

    .line 544
    const/4 v0, 0x0

    .line 538
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 545
    :cond_1
    invoke-interface {v5}, Lcom/nuance/swype/connect/manager/interfaces/Manager;->getManagerStartState()Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    move-result-object v6

    sget-object v7, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;->STARTED:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    if-eq v6, v7, :cond_0

    .line 546
    const/4 v0, 0x0

    goto :goto_1

    .line 550
    .end local v2           #dependency:Ljava/lang/String;
    .end local v5           #mgr:Lcom/nuance/swype/connect/manager/interfaces/Manager;
    :cond_2
    return v0
.end method

.method private find(Ljava/lang/String;)I
    .locals 4
    .parameter "name"

    .prologue
    .line 470
    const/4 v2, -0x1

    .line 471
    .local v2, position:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->managers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 472
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->managers:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/connect/manager/interfaces/Manager;

    .line 473
    .local v1, m:Lcom/nuance/swype/connect/manager/interfaces/Manager;
    invoke-interface {v1}, Lcom/nuance/swype/connect/manager/interfaces/Manager;->getManagerName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 474
    move v2, v0

    .line 478
    .end local v1           #m:Lcom/nuance/swype/connect/manager/interfaces/Manager;
    :cond_0
    return v2

    .line 471
    .restart local v1       #m:Lcom/nuance/swype/connect/manager/interfaces/Manager;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getInstance()Lcom/nuance/swype/connect/manager/ManagerRegistry;
    .locals 1

    .prologue
    .line 183
    sget-object v0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->registryInstance:Lcom/nuance/swype/connect/manager/ManagerRegistry;

    return-object v0
.end method

.method private getNextDependency([Ljava/lang/String;)Lcom/nuance/swype/connect/manager/interfaces/Manager;
    .locals 9
    .parameter "dependencies"

    .prologue
    .line 554
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_4

    aget-object v3, v0, v4

    .line 555
    .local v3, dependency:Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/nuance/swype/connect/manager/ManagerRegistry;->getManagerReference(Ljava/lang/String;)Lcom/nuance/swype/connect/manager/interfaces/Manager;

    move-result-object v6

    .line 557
    .local v6, mgr:Lcom/nuance/swype/connect/manager/interfaces/Manager;
    if-nez v6, :cond_0

    .line 559
    invoke-direct {p0, v3}, Lcom/nuance/swype/connect/manager/ManagerRegistry;->addManager(Ljava/lang/String;)Z

    .line 560
    invoke-virtual {p0, v3}, Lcom/nuance/swype/connect/manager/ManagerRegistry;->getManagerReference(Ljava/lang/String;)Lcom/nuance/swype/connect/manager/interfaces/Manager;

    move-result-object v6

    .line 563
    :cond_0
    invoke-interface {v6}, Lcom/nuance/swype/connect/manager/interfaces/Manager;->getManagerStartState()Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    move-result-object v7

    sget-object v8, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;->DISABLED:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    invoke-virtual {v7, v8}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 564
    invoke-interface {v6}, Lcom/nuance/swype/connect/manager/interfaces/Manager;->getDependencies()[Ljava/lang/String;

    move-result-object v2

    .line 565
    .local v2, depList:[Ljava/lang/String;
    if-nez v2, :cond_2

    .line 580
    .end local v2           #depList:[Ljava/lang/String;
    .end local v3           #dependency:Ljava/lang/String;
    .end local v6           #mgr:Lcom/nuance/swype/connect/manager/interfaces/Manager;
    :cond_1
    :goto_1
    return-object v6

    .line 568
    .restart local v2       #depList:[Ljava/lang/String;
    .restart local v3       #dependency:Ljava/lang/String;
    .restart local v6       #mgr:Lcom/nuance/swype/connect/manager/interfaces/Manager;
    :cond_2
    invoke-direct {p0, v2}, Lcom/nuance/swype/connect/manager/ManagerRegistry;->getNextDependency([Ljava/lang/String;)Lcom/nuance/swype/connect/manager/interfaces/Manager;

    move-result-object v1

    .line 569
    .local v1, dep:Lcom/nuance/swype/connect/manager/interfaces/Manager;
    if-eqz v1, :cond_1

    move-object v6, v1

    .line 570
    goto :goto_1

    .line 554
    .end local v1           #dep:Lcom/nuance/swype/connect/manager/interfaces/Manager;
    .end local v2           #depList:[Ljava/lang/String;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 580
    .end local v3           #dependency:Ljava/lang/String;
    .end local v6           #mgr:Lcom/nuance/swype/connect/manager/interfaces/Manager;
    :cond_4
    const/4 v6, 0x0

    goto :goto_1
.end method

.method private isRegistered(Ljava/lang/String;)Z
    .locals 3
    .parameter "name"

    .prologue
    .line 459
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->managers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 460
    .local v0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/nuance/swype/connect/manager/interfaces/Manager;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 461
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/connect/manager/interfaces/Manager;

    .line 462
    .local v1, m:Lcom/nuance/swype/connect/manager/interfaces/Manager;
    invoke-interface {v1}, Lcom/nuance/swype/connect/manager/interfaces/Manager;->getManagerName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 463
    const/4 v2, 0x1

    .line 466
    .end local v1           #m:Lcom/nuance/swype/connect/manager/interfaces/Manager;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addHandler(Ljava/lang/String;)V
    .locals 7
    .parameter "handler"

    .prologue
    .line 223
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ManagerRegistry.addHandler("

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

    .line 225
    iget-object v5, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->handlerRegistry:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 226
    iget-object v5, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->requestedHandlers:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    iget-object v5, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->handlerRegistry:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 228
    .local v4, required:[Ljava/lang/String;
    if-eqz v4, :cond_1

    array-length v5, v4

    if-lez v5, :cond_1

    .line 229
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 230
    .local v2, item:Ljava/lang/String;
    iget-object v5, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->neededHandlers:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 231
    iget-object v5, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->neededHandlers:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 236
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #item:Ljava/lang/String;
    .end local v3           #len$:I
    :cond_1
    iget-object v5, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->neededHandlers:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 237
    iget-object v5, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->neededHandlers:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 243
    .end local v4           #required:[Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 240
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ManagerRegistry.addHandler("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") -- invalidHandler!!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 241
    iget-object v5, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->invalidHandlers:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public allStarted()Z
    .locals 1

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->allManagersStarted:Z

    return v0
.end method

.method protected clearRegistry()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 175
    iput-object v0, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->handlerRegistry:Ljava/util/Map;

    .line 176
    iput-object v0, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->managerRegistry:Ljava/util/Map;

    .line 177
    iput-object v0, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->requestedHandlers:Ljava/util/List;

    .line 178
    iput-object v0, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->invalidHandlers:Ljava/util/List;

    .line 179
    iput-object v0, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->neededHandlers:Ljava/util/List;

    .line 180
    return-void
.end method

.method public complete()Z
    .locals 12

    .prologue
    const/4 v10, 0x0

    .line 293
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ManagerRegistry.complete() Currently: ["

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v11, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->currentlyProcessing:Z

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "] valid: ["

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v11, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->validRegistry:Z

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "]"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 296
    iget-boolean v9, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->currentlyProcessing:Z

    if-eqz v9, :cond_0

    iget-boolean v9, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->validRegistry:Z

    if-nez v9, :cond_1

    :cond_0
    move v9, v10

    .line 335
    :goto_0
    return v9

    .line 300
    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 303
    .local v7, managersRequested:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v9, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->requestedHandlers:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 304
    .local v1, handler:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ManagerRegistry.validate() generating req handler:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 306
    iget-object v9, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->managerRegistry:Ljava/util/Map;

    invoke-interface {v9, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    .line 307
    .local v6, managers:[Ljava/lang/String;
    move-object v0, v6

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v5, v0, v3

    .line 308
    .local v5, manager:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ManagerRegistry.validate() adding manager:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 310
    invoke-interface {v7, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 311
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 316
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #handler:Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #manager:Ljava/lang/String;
    .end local v6           #managers:[Ljava/lang/String;
    :cond_4
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 317
    .restart local v5       #manager:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ManagerRegistry.complete(): Manager: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 318
    invoke-direct {p0, v5}, Lcom/nuance/swype/connect/manager/ManagerRegistry;->addManager(Ljava/lang/String;)Z

    goto :goto_2

    .line 321
    .end local v5           #manager:Ljava/lang/String;
    :cond_5
    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/ManagerRegistry;->clearRegistry()V

    .line 323
    const-string v9, "ManagerRegistry.complete(): init happening"

    invoke-static {v9}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 324
    iget-object v9, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->managers:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nuance/swype/connect/manager/interfaces/Manager;

    .line 325
    .local v5, manager:Lcom/nuance/swype/connect/manager/interfaces/Manager;
    invoke-interface {v5}, Lcom/nuance/swype/connect/manager/interfaces/Manager;->init()V

    .line 326
    instance-of v9, v5, Lcom/nuance/swype/connect/manager/interfaces/MessageProcessor;

    if-eqz v9, :cond_6

    move-object v9, v5

    .line 327
    check-cast v9, Lcom/nuance/swype/connect/manager/interfaces/MessageProcessor;

    invoke-interface {v9}, Lcom/nuance/swype/connect/manager/interfaces/MessageProcessor;->getMessageIDs()[I

    move-result-object v8

    .line 328
    .local v8, messages:[I
    check-cast v5, Lcom/nuance/swype/connect/manager/interfaces/MessageProcessor;

    .end local v5           #manager:Lcom/nuance/swype/connect/manager/interfaces/Manager;
    invoke-virtual {p0, v5, v8}, Lcom/nuance/swype/connect/manager/ManagerRegistry;->registerMessages(Lcom/nuance/swype/connect/manager/interfaces/MessageProcessor;[I)V

    goto :goto_3

    .line 333
    .end local v8           #messages:[I
    :cond_7
    iput-boolean v10, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->currentlyProcessing:Z

    .line 335
    const/4 v9, 0x1

    goto/16 :goto_0
.end method

.method public deregister()V
    .locals 3

    .prologue
    .line 614
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->managers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 615
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->managers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/connect/manager/interfaces/Manager;

    .line 616
    .local v1, manager:Lcom/nuance/swype/connect/manager/interfaces/Manager;
    invoke-interface {v1}, Lcom/nuance/swype/connect/manager/interfaces/Manager;->deregister()V

    .line 614
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 619
    .end local v1           #manager:Lcom/nuance/swype/connect/manager/interfaces/Manager;
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/ManagerRegistry;->rebind()Z

    .line 620
    return-void
.end method

.method public destroy()V
    .locals 3

    .prologue
    .line 593
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->managers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 594
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->managers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/connect/manager/interfaces/Manager;

    .line 595
    .local v1, manager:Lcom/nuance/swype/connect/manager/interfaces/Manager;
    invoke-interface {v1}, Lcom/nuance/swype/connect/manager/interfaces/Manager;->destroy()V

    .line 593
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 598
    .end local v1           #manager:Lcom/nuance/swype/connect/manager/interfaces/Manager;
    :cond_0
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->managers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 599
    return-void
.end method

.method public getManagerReference(Ljava/lang/String;)Lcom/nuance/swype/connect/manager/interfaces/Manager;
    .locals 4
    .parameter "name"

    .prologue
    .line 440
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/manager/ManagerRegistry;->find(Ljava/lang/String;)I

    move-result v0

    .line 441
    .local v0, position:I
    if-ltz v0, :cond_0

    .line 442
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getManagerReference: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 443
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->managers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/connect/manager/interfaces/Manager;

    .line 446
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getManagerReferenceByClass(Ljava/lang/String;)Lcom/nuance/swype/connect/manager/interfaces/Manager;
    .locals 3
    .parameter "className"

    .prologue
    .line 450
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->managers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/connect/manager/interfaces/Manager;

    .line 451
    .local v1, manager:Lcom/nuance/swype/connect/manager/interfaces/Manager;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 455
    .end local v1           #manager:Lcom/nuance/swype/connect/manager/interfaces/Manager;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNextPendingManager()Lcom/nuance/swype/connect/manager/interfaces/Manager;
    .locals 1

    .prologue
    .line 482
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/manager/ManagerRegistry;->getNextPendingManager(I)Lcom/nuance/swype/connect/manager/interfaces/Manager;

    move-result-object v0

    return-object v0
.end method

.method public getNextPendingManager(I)Lcom/nuance/swype/connect/manager/interfaces/Manager;
    .locals 6
    .parameter "position"

    .prologue
    const/4 v1, 0x0

    .line 486
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getNextPendingManager("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 487
    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/ManagerRegistry;->isValid()Z

    move-result v4

    if-nez v4, :cond_1

    move-object v2, v1

    .line 531
    :goto_0
    return-object v2

    .line 526
    .local v2, manager:Lcom/nuance/swype/connect/manager/interfaces/Manager;
    .local v3, state:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 491
    .end local v2           #manager:Lcom/nuance/swype/connect/manager/interfaces/Manager;
    .end local v3           #state:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;
    :cond_1
    iget-object v4, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->managers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge p1, v4, :cond_5

    .line 493
    iget-object v4, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->managers:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/connect/manager/interfaces/Manager;

    .line 494
    .restart local v2       #manager:Lcom/nuance/swype/connect/manager/interfaces/Manager;
    invoke-interface {v2}, Lcom/nuance/swype/connect/manager/interfaces/Manager;->getManagerStartState()Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    move-result-object v3

    .line 496
    .restart local v3       #state:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getNextPendingManager() -- ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] Manager: ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Lcom/nuance/swype/connect/manager/interfaces/Manager;->getManagerName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] State: ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 499
    sget-object v4, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;->STARTING:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    invoke-virtual {v3, v4}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v2, v1

    .line 503
    goto :goto_0

    .line 504
    :cond_2
    sget-object v4, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;->DISABLED:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    invoke-virtual {v3, v4}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 506
    invoke-interface {v2}, Lcom/nuance/swype/connect/manager/interfaces/Manager;->getDependencies()[Ljava/lang/String;

    move-result-object v0

    .line 507
    .local v0, dependencies:[Ljava/lang/String;
    if-nez v0, :cond_3

    .line 508
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getNextPendingManager() -- ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] Manager: ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Lcom/nuance/swype/connect/manager/interfaces/Manager;->getManagerName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] -- all dependencies started"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 512
    :cond_3
    invoke-direct {p0, v0}, Lcom/nuance/swype/connect/manager/ManagerRegistry;->getNextDependency([Ljava/lang/String;)Lcom/nuance/swype/connect/manager/interfaces/Manager;

    move-result-object v1

    .line 513
    .local v1, dependency:Lcom/nuance/swype/connect/manager/interfaces/Manager;
    if-nez v1, :cond_4

    .line 514
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getNextPendingManager() -- ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] Manager: ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Lcom/nuance/swype/connect/manager/interfaces/Manager;->getManagerName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] -- all dependencies started v2"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 518
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getNextPendingManager() -- ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] Manager: ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Lcom/nuance/swype/connect/manager/interfaces/Manager;->getManagerName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] -- returning dependency: ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Lcom/nuance/swype/connect/manager/interfaces/Manager;->getManagerName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    move-object v2, v1

    .line 521
    goto/16 :goto_0

    .line 530
    .end local v0           #dependencies:[Ljava/lang/String;
    .end local v1           #dependency:Lcom/nuance/swype/connect/manager/interfaces/Manager;
    .end local v2           #manager:Lcom/nuance/swype/connect/manager/interfaces/Manager;
    .end local v3           #state:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;
    :cond_5
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->allManagersStarted:Z

    move-object v2, v1

    .line 531
    goto/16 :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .parameter "msg"

    .prologue
    .line 637
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->messageHandlerMap:Ljava/util/HashMap;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->messageHandlerMap:Ljava/util/HashMap;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 638
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->messageHandlerMap:Ljava/util/HashMap;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/connect/manager/interfaces/MessageProcessor;

    .line 639
    .local v0, manager:Lcom/nuance/swype/connect/manager/interfaces/MessageProcessor;
    if-eqz v0, :cond_0

    .line 640
    invoke-interface {v0, p1}, Lcom/nuance/swype/connect/manager/interfaces/MessageProcessor;->onHandleMessage(Landroid/os/Message;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 641
    const/4 v1, 0x1

    .line 645
    .end local v0           #manager:Lcom/nuance/swype/connect/manager/interfaces/MessageProcessor;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->validRegistry:Z

    return v0
.end method

.method public postStart()V
    .locals 3

    .prologue
    .line 585
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->managers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/connect/manager/interfaces/Manager;

    .line 586
    .local v1, manager:Lcom/nuance/swype/connect/manager/interfaces/Manager;
    invoke-interface {v1}, Lcom/nuance/swype/connect/manager/interfaces/Manager;->postStart()V

    goto :goto_0

    .line 589
    .end local v1           #manager:Lcom/nuance/swype/connect/manager/interfaces/Manager;
    :cond_0
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v2}, Lcom/nuance/swype/connect/ConnectClient;->postStart()V

    .line 590
    return-void
.end method

.method public postUpgrade()V
    .locals 3

    .prologue
    .line 630
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->managers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 631
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->managers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/connect/manager/interfaces/Manager;

    .line 632
    .local v1, manager:Lcom/nuance/swype/connect/manager/interfaces/Manager;
    invoke-interface {v1}, Lcom/nuance/swype/connect/manager/interfaces/Manager;->postUpgrade()V

    .line 630
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 634
    .end local v1           #manager:Lcom/nuance/swype/connect/manager/interfaces/Manager;
    :cond_0
    return-void
.end method

.method public prepareForUpgrade()V
    .locals 3

    .prologue
    .line 623
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->managers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 624
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->managers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/connect/manager/interfaces/Manager;

    .line 625
    .local v1, manager:Lcom/nuance/swype/connect/manager/interfaces/Manager;
    invoke-interface {v1}, Lcom/nuance/swype/connect/manager/interfaces/Manager;->prepareForUpgrade()V

    .line 623
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 627
    .end local v1           #manager:Lcom/nuance/swype/connect/manager/interfaces/Manager;
    :cond_0
    return-void
.end method

.method public rebind()Z
    .locals 3

    .prologue
    .line 602
    iget-boolean v2, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->validRegistry:Z

    if-nez v2, :cond_0

    .line 603
    const/4 v2, 0x0

    .line 610
    :goto_0
    return v2

    .line 606
    :cond_0
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->managers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/connect/manager/interfaces/Manager;

    .line 607
    .local v1, manager:Lcom/nuance/swype/connect/manager/interfaces/Manager;
    invoke-interface {v1}, Lcom/nuance/swype/connect/manager/interfaces/Manager;->rebind()V

    goto :goto_1

    .line 610
    .end local v1           #manager:Lcom/nuance/swype/connect/manager/interfaces/Manager;
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public registerMessages(Lcom/nuance/swype/connect/manager/interfaces/MessageProcessor;[I)V
    .locals 7
    .parameter "manager"
    .parameter "messages"

    .prologue
    .line 339
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RegisterMessages() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 340
    if-eqz p2, :cond_0

    .line 341
    move-object v0, p2

    .local v0, arr$:[I
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget v3, v0, v1

    .line 344
    .local v3, messageId:I
    iget-object v4, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->messageHandlerMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 347
    .end local v0           #arr$:[I
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #messageId:I
    :cond_0
    return-void
.end method

.method public setup(Lcom/nuance/swype/connect/ConnectClient;Z)V
    .locals 1
    .parameter "connect"
    .parameter "delay"

    .prologue
    .line 195
    iput-object p1, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->client:Lcom/nuance/swype/connect/ConnectClient;

    .line 196
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->currentlyProcessing:Z

    .line 197
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->validRegistry:Z

    .line 199
    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/ManagerRegistry;->setupRegistry()V

    .line 200
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->managers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 201
    return-void
.end method

.method protected setupRegistry()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 69
    iput-boolean v4, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->allManagersStarted:Z

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->requestedHandlers:Ljava/util/List;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->invalidHandlers:Ljava/util/List;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->neededHandlers:Ljava/util/List;

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->handlerRegistry:Ljava/util/Map;

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->managerRegistry:Ljava/util/Map;

    .line 77
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->handlerRegistry:Ljava/util/Map;

    const-string v1, "SwypeConfigurationHandler"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->handlerRegistry:Ljava/util/Map;

    const-string v1, "DeviceHandler"

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "SwypeConfigurationHandler"

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->handlerRegistry:Ljava/util/Map;

    const-string v1, "MessagingHandler"

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "DeviceHandler"

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->handlerRegistry:Ljava/util/Map;

    const-string v1, "LicenseHandler"

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "DeviceHandler"

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->handlerRegistry:Ljava/util/Map;

    const-string v1, "LanguageDLHandler"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "DeviceHandler"

    aput-object v3, v2, v4

    const-string v3, "MessagingHandler"

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->handlerRegistry:Ljava/util/Map;

    const-string v1, "ALMHandler"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "DeviceHandler"

    aput-object v3, v2, v4

    const-string v3, "MessagingHandler"

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->handlerRegistry:Ljava/util/Map;

    const-string v1, "ReportingHandler"

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "DeviceHandler"

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->handlerRegistry:Ljava/util/Map;

    const-string v1, "UpgradeHandler"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "DeviceHandler"

    aput-object v3, v2, v4

    const-string v3, "MessagingHandler"

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->handlerRegistry:Ljava/util/Map;

    const-string v1, "AddonHandler"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "DeviceHandler"

    aput-object v3, v2, v4

    const-string v3, "MessagingHandler"

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->handlerRegistry:Ljava/util/Map;

    const-string v1, "ResourcesHandler"

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "DeviceHandler"

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->handlerRegistry:Ljava/util/Map;

    const-string v1, "BetaHandler"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->handlerRegistry:Ljava/util/Map;

    const-string v1, "ResearchHandler"

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "DeviceHandler"

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->handlerRegistry:Ljava/util/Map;

    const-string v1, "DLMHandler"

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "DeviceHandler"

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->handlerRegistry:Ljava/util/Map;

    const-string v1, "AccountHandler"

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "DeviceHandler"

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->handlerRegistry:Ljava/util/Map;

    const-string v1, "CategoryHandler"

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "DeviceHandler"

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->managerRegistry:Ljava/util/Map;

    const-string v1, "SwypeConfigurationHandler"

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "swypeconfig"

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->managerRegistry:Ljava/util/Map;

    const-string v1, "DeviceHandler"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "swypeconfig"

    aput-object v3, v2, v4

    const-string v3, "device"

    aput-object v3, v2, v5

    const-string v3, "session"

    aput-object v3, v2, v6

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->managerRegistry:Ljava/util/Map;

    const-string v1, "MessagingHandler"

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "messaging"

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->managerRegistry:Ljava/util/Map;

    const-string v1, "LicenseHandler"

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "license"

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->managerRegistry:Ljava/util/Map;

    const-string v1, "LanguageDLHandler"

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "language"

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->managerRegistry:Ljava/util/Map;

    const-string v1, "ALMHandler"

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "alm"

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->managerRegistry:Ljava/util/Map;

    const-string v1, "ReportingHandler"

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "report"

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->managerRegistry:Ljava/util/Map;

    const-string v1, "UpgradeHandler"

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "upgrade"

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->managerRegistry:Ljava/util/Map;

    const-string v1, "AddonHandler"

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "addon"

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->managerRegistry:Ljava/util/Map;

    const-string v1, "ResourcesHandler"

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "internal_resources"

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->managerRegistry:Ljava/util/Map;

    const-string v1, "BetaHandler"

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "beta"

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->managerRegistry:Ljava/util/Map;

    const-string v1, "ResearchHandler"

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "research"

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->managerRegistry:Ljava/util/Map;

    const-string v1, "DLMHandler"

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "dlm"

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->managerRegistry:Ljava/util/Map;

    const-string v1, "AccountHandler"

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "account"

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->managerRegistry:Ljava/util/Map;

    const-string v1, "CategoryHandler"

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "cdb"

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    return-void
.end method

.method public unregisterManager(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 433
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/manager/ManagerRegistry;->find(Ljava/lang/String;)I

    move-result v0

    .line 434
    .local v0, position:I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->managers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 435
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->managers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 437
    :cond_0
    return-void
.end method

.method public validate()Z
    .locals 6

    .prologue
    .line 252
    const-string v4, "ManagerRegistry.validate()"

    invoke-static {v4}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 254
    const/4 v0, 0x0

    .line 255
    .local v0, completed:Z
    const/4 v1, 0x0

    .line 257
    .local v1, errorExists:Z
    iget-object v4, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->invalidHandlers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 258
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ManagerRegistry.validate() - invalidHandlers - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->invalidHandlers:Ljava/util/List;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 259
    iget-object v4, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->invalidHandlers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 260
    const/4 v1, 0x1

    .line 263
    :cond_0
    iget-object v4, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->neededHandlers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 264
    iget-object v4, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->neededHandlers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 265
    .local v2, handler:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ManagerRegistry.validate("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") -- checking"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 267
    iget-object v4, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->handlerRegistry:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 268
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ManagerRegistry.validate("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") -- not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 269
    const/4 v1, 0x1

    goto :goto_0

    .line 274
    .end local v2           #handler:Ljava/lang/String;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_2
    if-nez v1, :cond_3

    .line 275
    const/4 v0, 0x1

    .line 276
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->validRegistry:Z

    .line 281
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ManagerRegistry.validate()["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->validRegistry:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 283
    return v0

    .line 278
    :cond_3
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/nuance/swype/connect/manager/ManagerRegistry;->validRegistry:Z

    goto :goto_1
.end method
