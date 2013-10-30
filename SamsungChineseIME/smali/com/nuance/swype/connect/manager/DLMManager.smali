.class public Lcom/nuance/swype/connect/manager/DLMManager;
.super Lcom/nuance/swype/connect/manager/AbstractCommandManager;
.source "DLMManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/connect/manager/DLMManager$DlmState;
    }
.end annotation


# static fields
.field private static final BATCH_SIZE:I = 0x3e8

.field private static final CATEGORY_STATE:Ljava/lang/String; = "CATEGORY_STATE"

.field public static final COMMAND_BACKUP:Ljava/lang/String; = "backup"

.field public static final COMMAND_FAMILY:Ljava/lang/String; = "dlm"

.field public static final COMMAND_IMMEDIATE_EVENTS_GET:Ljava/lang/String; = "addEventsGet"

.field public static final COMMAND_IMMEDIATE_EVENTS_SEND:Ljava/lang/String; = "addEvents"

.field public static final COMMAND_PULL:Ljava/lang/String; = "pull"

.field public static final COMMAND_PULL_ACK:Ljava/lang/String; = "pullAck"

.field public static final COMMAND_PUSH:Ljava/lang/String; = "push"

.field public static final COMMAND_RESTORE_GET:Ljava/lang/String; = "restoreGet"

.field public static final COMMAND_RESTORE_REQUEST:Ljava/lang/String; = "restoreRequest"

.field public static final COMMAND_VERSION:I = 0x5

.field private static final DLM_EVENTS_LAST_SENT:Ljava/lang/String; = "DLM_EVENTS_LAST_SENT"

.field public static final DLM_EVENTS_SEND:Ljava/lang/String; = "DLM_EVENTS_SEND"

.field public static final DLM_SYNC_ENABLED:Ljava/lang/String; = "DLM_SYNC_ENABLED"

.field public static final MANAGER_NAME:Ljava/lang/String; = "dlm"

.field private static final MESSAGES_HANDLED:[I

.field private static final supportedCategories:[Ljava/lang/Integer;


# instance fields
.field private accountListener:Lcom/nuance/swype/connect/manager/interfaces/AccountListener;

.field private backupCategory:I

.field private backupEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private categoryState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/nuance/swype/connect/manager/DLMManager$DlmState;",
            ">;"
        }
    .end annotation
.end field

.field private currentCategory:I

.field dataSource:Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;

.field private dlmEnabled:Z

.field private dlmEventsIntervalChangeListener:Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;

.field private dlmImmediateEventsTimer:Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;

.field protected immediateEventsDelay:I

.field private immediateEventsRunnable:Ljava/lang/Runnable;

.field protected sendDlmEventsInterval:I

.field private userDlmEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 66
    new-array v0, v4, [Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    sput-object v0, Lcom/nuance/swype/connect/manager/DLMManager;->supportedCategories:[Ljava/lang/Integer;

    .line 296
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/nuance/swype/connect/manager/DLMManager;->MESSAGES_HANDLED:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x1ft 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0xf6t 0x0t 0x0t 0x0t
        0x1ft 0x1t 0x0t 0x0t
        0x21t 0x1t 0x0t 0x0t
        0x20t 0x1t 0x0t 0x0t
        0xf8t 0x0t 0x0t 0x0t
        0xf9t 0x0t 0x0t 0x0t
        0xfbt 0x0t 0x0t 0x0t
        0x8t 0x1t 0x0t 0x0t
        0xdt 0x1t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/nuance/swype/connect/ConnectClient;)V
    .locals 4
    .parameter "ctx"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 311
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager;-><init>(Lcom/nuance/swype/connect/ConnectClient;)V

    .line 57
    const v1, 0x15180

    iput v1, p0, Lcom/nuance/swype/connect/manager/DLMManager;->sendDlmEventsInterval:I

    .line 58
    const/16 v1, 0xbb8

    iput v1, p0, Lcom/nuance/swype/connect/manager/DLMManager;->immediateEventsDelay:I

    .line 63
    iput v3, p0, Lcom/nuance/swype/connect/manager/DLMManager;->currentCategory:I

    .line 75
    iput-boolean v2, p0, Lcom/nuance/swype/connect/manager/DLMManager;->userDlmEnabled:Z

    .line 77
    new-instance v1, Lcom/nuance/swype/connect/manager/DLMManager$1;

    invoke-direct {v1, p0}, Lcom/nuance/swype/connect/manager/DLMManager$1;-><init>(Lcom/nuance/swype/connect/manager/DLMManager;)V

    iput-object v1, p0, Lcom/nuance/swype/connect/manager/DLMManager;->dlmEventsIntervalChangeListener:Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;

    .line 93
    new-instance v1, Lcom/nuance/swype/connect/manager/DLMManager$2;

    invoke-direct {v1, p0}, Lcom/nuance/swype/connect/manager/DLMManager$2;-><init>(Lcom/nuance/swype/connect/manager/DLMManager;)V

    iput-object v1, p0, Lcom/nuance/swype/connect/manager/DLMManager;->dlmImmediateEventsTimer:Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;

    .line 101
    new-instance v1, Lcom/nuance/swype/connect/manager/DLMManager$3;

    invoke-direct {v1, p0}, Lcom/nuance/swype/connect/manager/DLMManager$3;-><init>(Lcom/nuance/swype/connect/manager/DLMManager;)V

    iput-object v1, p0, Lcom/nuance/swype/connect/manager/DLMManager;->immediateEventsRunnable:Ljava/lang/Runnable;

    .line 273
    new-instance v1, Lcom/nuance/swype/connect/manager/DLMManager$4;

    invoke-direct {v1, p0}, Lcom/nuance/swype/connect/manager/DLMManager$4;-><init>(Lcom/nuance/swype/connect/manager/DLMManager;)V

    iput-object v1, p0, Lcom/nuance/swype/connect/manager/DLMManager;->accountListener:Lcom/nuance/swype/connect/manager/interfaces/AccountListener;

    .line 312
    const/4 v1, 0x5

    iput v1, p0, Lcom/nuance/swype/connect/manager/DLMManager;->version:I

    .line 313
    const-string v1, "dlm"

    iput-object v1, p0, Lcom/nuance/swype/connect/manager/DLMManager;->commandFamily:Ljava/lang/String;

    .line 314
    sget-object v1, Lcom/nuance/swype/connect/manager/DLMManager;->MESSAGES_HANDLED:[I

    iput-object v1, p0, Lcom/nuance/swype/connect/manager/DLMManager;->messages:[I

    .line 317
    new-array v0, v2, [I

    aput v2, v0, v3

    .line 320
    .local v0, acceptableResponses:[I
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/DLMManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v2, "backup"

    invoke-virtual {v1, v2, v0}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 321
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/DLMManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v2, "restoreRequest"

    invoke-virtual {v1, v2, v0}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 322
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/DLMManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v2, "restoreGet"

    invoke-virtual {v1, v2, v0}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 323
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/DLMManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v2, "push"

    invoke-virtual {v1, v2, v0}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 324
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/DLMManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v2, "addEvents"

    invoke-virtual {v1, v2, v0}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 325
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/DLMManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v2, "addEventsGet"

    invoke-virtual {v1, v2, v0}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 326
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/DLMManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v2, "pullAck"

    invoke-virtual {v1, v2, v0}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 327
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/DLMManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v2, "pull"

    const/4 v3, 0x3

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-virtual {v1, v2, v3}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 332
    return-void

    .line 327
    :array_0
    .array-data 0x4
        0x19t 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/nuance/swype/connect/manager/DLMManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/DLMManager;->setDlmEventsTimer()V

    return-void
.end method

.method static synthetic access$100(Lcom/nuance/swype/connect/manager/DLMManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/nuance/swype/connect/manager/DLMManager;->currentCategory:I

    return v0
.end method

.method static synthetic access$102(Lcom/nuance/swype/connect/manager/DLMManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput p1, p0, Lcom/nuance/swype/connect/manager/DLMManager;->currentCategory:I

    return p1
.end method

.method static synthetic access$200(Lcom/nuance/swype/connect/manager/DLMManager;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/manager/DLMManager;->immediateEvents(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/nuance/swype/connect/manager/DLMManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/DLMManager;->disableDlmSync()V

    return-void
.end method

.method static synthetic access$400(Lcom/nuance/swype/connect/manager/DLMManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/nuance/swype/connect/manager/DLMManager;->userDlmEnabled:Z

    return v0
.end method

.method static synthetic access$500(Lcom/nuance/swype/connect/manager/DLMManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/DLMManager;->enableDlmSync()V

    return-void
.end method

.method static synthetic access$600(Lcom/nuance/swype/connect/manager/DLMManager;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/DLMManager;->categoryState:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$700(Lcom/nuance/swype/connect/manager/DLMManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/DLMManager;->checkDlmSync()V

    return-void
.end method

.method private backup(Ljava/util/List;I)V
    .locals 7
    .parameter
    .parameter "category"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 713
    .local p1, rawEvents:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DLMManager.backup() # of raw events: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " category="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 715
    iget-object v5, p0, Lcom/nuance/swype/connect/manager/DLMManager;->categoryState:Ljava/util/HashMap;

    iget v6, p0, Lcom/nuance/swype/connect/manager/DLMManager;->currentCategory:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 716
    const-string v5, "    Backup already for unsupported category!  (Initialization failure?)"

    invoke-static {v5}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    .line 742
    :goto_0
    return-void

    .line 719
    :cond_0
    iget-object v5, p0, Lcom/nuance/swype/connect/manager/DLMManager;->categoryState:Ljava/util/HashMap;

    iget v6, p0, Lcom/nuance/swype/connect/manager/DLMManager;->currentCategory:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/nuance/swype/connect/manager/DLMManager;->categoryState:Ljava/util/HashMap;

    iget v6, p0, Lcom/nuance/swype/connect/manager/DLMManager;->currentCategory:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;

    invoke-virtual {v5}, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;->isBackupHappening()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 721
    const-string v5, "    Backup already in progress. Ignoring request."

    invoke-static {v5}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 725
    :cond_1
    iget-object v5, p0, Lcom/nuance/swype/connect/manager/DLMManager;->categoryState:Ljava/util/HashMap;

    iget v6, p0, Lcom/nuance/swype/connect/manager/DLMManager;->currentCategory:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;

    invoke-virtual {v5}, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;->startBackup()V

    .line 727
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 728
    .local v2, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 729
    .local v1, events:Lorg/json/JSONArray;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 730
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 731
    .local v4, value:Ljava/lang/String;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 732
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 736
    .end local v4           #value:Ljava/lang/String;
    :cond_3
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 737
    .local v3, parameters:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "78"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 738
    const-string v5, "87"

    invoke-virtual {v3, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 739
    const-string v5, "backup"

    invoke-virtual {p0, v5, v3}, Lcom/nuance/swype/connect/manager/DLMManager;->createCommand(Ljava/lang/String;Ljava/util/HashMap;)Lcom/nuance/swype/connect/util/Command;

    move-result-object v0

    .line 740
    .local v0, command:Lcom/nuance/swype/connect/util/Command;
    const/4 v5, 0x0

    iput-boolean v5, v0, Lcom/nuance/swype/connect/util/Command;->allowDuplicateOfCommand:Z

    .line 741
    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/manager/DLMManager;->sendCommand(Lcom/nuance/swype/connect/util/Command;)V

    goto :goto_0
.end method

.method private checkBackupRequired()V
    .locals 3

    .prologue
    .line 1263
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/DLMManager;->dataSource:Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;

    invoke-virtual {v2}, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->isFull()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1264
    const-string v2, "checkBackupRequired(): backup is required"

    invoke-static {v2}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 1265
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/DLMManager;->categoryState:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1266
    .local v1, state:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/nuance/swype/connect/manager/DLMManager$DlmState;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;

    invoke-virtual {v2}, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;->backupRequired()V

    goto :goto_0

    .line 1268
    .end local v1           #state:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/nuance/swype/connect/manager/DLMManager$DlmState;>;"
    :cond_0
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/DLMManager;->savePreferences()V

    .line 1270
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private checkDlmSync()V
    .locals 3

    .prologue
    .line 904
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DLMManager.checkDlmSync() currentCategory="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/nuance/swype/connect/manager/DLMManager;->currentCategory:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 905
    iget v1, p0, Lcom/nuance/swype/connect/manager/DLMManager;->currentCategory:I

    if-nez v1, :cond_1

    .line 921
    :cond_0
    :goto_0
    return-void

    .line 908
    :cond_1
    sget-object v1, Lcom/nuance/swype/connect/manager/DLMManager;->supportedCategories:[Ljava/lang/Integer;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/nuance/swype/connect/manager/DLMManager;->currentCategory:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 909
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "category not supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/nuance/swype/connect/manager/DLMManager;->currentCategory:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 913
    :cond_2
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/DLMManager;->categoryState:Ljava/util/HashMap;

    iget v2, p0, Lcom/nuance/swype/connect/manager/DLMManager;->currentCategory:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;

    .line 914
    .local v0, state:Lcom/nuance/swype/connect/manager/DLMManager$DlmState;
    invoke-virtual {v0}, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;->isBackupRequired()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 915
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/DLMManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v2, 0x86

    invoke-virtual {v1, v2}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(I)V

    goto :goto_0

    .line 916
    :cond_3
    invoke-virtual {v0}, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;->isRestoreRequested()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 917
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/DLMManager;->restoreRequest()V

    goto :goto_0

    .line 918
    :cond_4
    invoke-virtual {v0}, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;->isPullRequested()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 919
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/DLMManager;->pull()V

    goto :goto_0
.end method

.method private disableDlmSync()V
    .locals 3

    .prologue
    .line 1273
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/nuance/swype/connect/manager/DLMManager;->setEnabled(Z)V

    .line 1274
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/DLMManager;->categoryState:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1275
    .local v1, state:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/nuance/swype/connect/manager/DLMManager$DlmState;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;

    invoke-virtual {v2}, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;->backupRequired()V

    .line 1276
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;

    invoke-virtual {v2}, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;->restoreRequested()V

    goto :goto_0

    .line 1278
    .end local v1           #state:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/nuance/swype/connect/manager/DLMManager$DlmState;>;"
    :cond_0
    return-void
.end method

.method private enableDlmSync()V
    .locals 3

    .prologue
    .line 1281
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/DLMManager;->categoryState:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1282
    .local v1, state:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/nuance/swype/connect/manager/DLMManager$DlmState;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;

    invoke-virtual {v2}, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;->backupRequired()V

    .line 1283
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;

    invoke-virtual {v2}, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;->restoreRequested()V

    goto :goto_0

    .line 1285
    .end local v1           #state:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/nuance/swype/connect/manager/DLMManager$DlmState;>;"
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/nuance/swype/connect/manager/DLMManager;->setEnabled(Z)V

    .line 1286
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/DLMManager;->checkDlmSync()V

    .line 1287
    return-void
.end method

.method private immediateEvents(I)V
    .locals 7
    .parameter "category"

    .prologue
    .line 807
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DLMManager.immediateEvents() cat="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 808
    sget-object v5, Lcom/nuance/swype/connect/manager/DLMManager;->supportedCategories:[Ljava/lang/Integer;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 809
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "category ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") is not supported"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    .line 829
    :goto_0
    return-void

    .line 812
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 814
    .local v1, currentTime:J
    iget-object v5, p0, Lcom/nuance/swype/connect/manager/DLMManager;->dataSource:Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;

    invoke-virtual {v5, p1}, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->getHighPriorityEvents(I)Lorg/json/JSONArray;

    move-result-object v3

    .line 815
    .local v3, events:Lorg/json/JSONArray;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 816
    .local v4, parameters:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "1"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 817
    const-string v5, "78"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 818
    const-string v5, "87"

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 820
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "   DLMManager.immediateEvents() category="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " time="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " events count="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 822
    const-string v5, "addEvents"

    invoke-virtual {p0, v5, v4}, Lcom/nuance/swype/connect/manager/DLMManager;->createCommand(Ljava/lang/String;Ljava/util/HashMap;)Lcom/nuance/swype/connect/util/Command;

    move-result-object v0

    .line 823
    .local v0, command:Lcom/nuance/swype/connect/util/Command;
    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/nuance/swype/connect/util/Command;->realTimeEnabled:Z

    .line 824
    const-string v5, "s"

    iput-object v5, v0, Lcom/nuance/swype/connect/util/Command;->realTimeTopic:Ljava/lang/String;

    .line 825
    const-string v5, "1"

    iput-object v5, v0, Lcom/nuance/swype/connect/util/Command;->realTimeSubTopic:Ljava/lang/String;

    .line 826
    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/manager/DLMManager;->sendCommand(Lcom/nuance/swype/connect/util/Command;)V

    .line 828
    iget-object v5, p0, Lcom/nuance/swype/connect/manager/DLMManager;->dataSource:Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;

    invoke-virtual {v5, p1, v1, v2}, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->clearHighPriorityEvents(IJ)V

    goto :goto_0
.end method

.method private loadPreferences()V
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .prologue
    .line 1235
    iget-object v8, p0, Lcom/nuance/swype/connect/manager/DLMManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v8}, Lcom/nuance/swype/connect/ConnectClient;->getDataStore()Lcom/nuance/swype/connect/store/PersistentDataStore;

    move-result-object v7

    .line 1236
    .local v7, store:Lcom/nuance/swype/connect/store/PersistentDataStore;
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lcom/nuance/swype/connect/manager/DLMManager;->categoryState:Ljava/util/HashMap;

    .line 1237
    sget-object v0, Lcom/nuance/swype/connect/manager/DLMManager;->supportedCategories:[Ljava/lang/Integer;

    .local v0, arr$:[Ljava/lang/Integer;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v8, v0, v2

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1238
    .local v1, category:I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CATEGORY_STATE"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Lcom/nuance/swype/connect/store/PersistentDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1239
    .local v6, stateString:Ljava/lang/String;
    new-instance v5, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;

    invoke-direct {v5, v6}, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;-><init>(Ljava/lang/String;)V

    .line 1240
    .local v5, state:Lcom/nuance/swype/connect/manager/DLMManager$DlmState;
    iget-object v8, p0, Lcom/nuance/swype/connect/manager/DLMManager;->categoryState:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1237
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1246
    .end local v1           #category:I
    .end local v5           #state:Lcom/nuance/swype/connect/manager/DLMManager$DlmState;
    .end local v6           #stateString:Ljava/lang/String;
    :cond_0
    iget-object v8, p0, Lcom/nuance/swype/connect/manager/DLMManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v8}, Lcom/nuance/swype/connect/ConnectClient;->isAccountLinked()Z

    move-result v4

    .line 1247
    .local v4, linked:Z
    if-eqz v4, :cond_1

    const-string v8, "DLM_SYNC_ENABLED"

    invoke-interface {v7, v8, v4}, Lcom/nuance/swype/connect/store/PersistentDataStore;->readBoolean(Ljava/lang/String;Z)Z

    move-result v8

    :goto_1
    iput-boolean v8, p0, Lcom/nuance/swype/connect/manager/DLMManager;->dlmEnabled:Z

    .line 1248
    return-void

    .line 1247
    :cond_1
    const/4 v8, 0x0

    goto :goto_1
.end method

.method private openDlmDB()V
    .locals 2

    .prologue
    .line 633
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/DLMManager;->dataSource:Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;

    if-nez v0, :cond_0

    .line 634
    new-instance v0, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;

    iget-object v1, p0, Lcom/nuance/swype/connect/manager/DLMManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-direct {v0, v1}, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/DLMManager;->dataSource:Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;

    .line 635
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/DLMManager;->dataSource:Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->openSafe()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 636
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/DLMManager;->dataSource:Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->verifyDatabase()V

    .line 639
    :cond_0
    return-void
.end method

.method private processBackupResponse(Lcom/nuance/swype/connect/util/Response;)V
    .locals 4
    .parameter "response"

    .prologue
    .line 1047
    iget v2, p1, Lcom/nuance/swype/connect/util/Response;->status:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1048
    iget-object v2, p1, Lcom/nuance/swype/connect/util/Response;->initialCommand:Lcom/nuance/swype/connect/util/Command;

    iget-object v1, v2, Lcom/nuance/swype/connect/util/Command;->parameters:Ljava/util/HashMap;

    .line 1049
    .local v1, p:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "78"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1051
    .local v0, category:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processBackupResponse cat="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 1053
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/DLMManager;->categoryState:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;

    invoke-virtual {v2}, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;->backupComplete()V

    .line 1055
    .end local v0           #category:I
    .end local v1           #p:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method

.method private processGetImmediateEventsResponse(Lcom/nuance/swype/connect/util/Response;)V
    .locals 9
    .parameter "response"

    .prologue
    .line 1195
    const-string v7, "processGetImmediateEventsResponse"

    invoke-static {v7}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 1196
    iget-boolean v7, p0, Lcom/nuance/swype/connect/manager/DLMManager;->dlmEnabled:Z

    if-nez v7, :cond_1

    .line 1197
    const-string v7, "    DLM Sync Disabled. Ignoring request."

    invoke-static {v7}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 1231
    :cond_0
    :goto_0
    return-void

    .line 1200
    :cond_1
    iget v7, p1, Lcom/nuance/swype/connect/util/Response;->status:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 1201
    iget-object v5, p1, Lcom/nuance/swype/connect/util/Response;->parameters:Ljava/util/HashMap;

    .line 1202
    .local v5, p:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v5, :cond_2

    const-string v7, "78"

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 1203
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No category in response message: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/nuance/swype/connect/util/Response;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 1209
    :cond_3
    const-string v7, "78"

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1210
    .local v1, category:I
    iget v7, p0, Lcom/nuance/swype/connect/manager/DLMManager;->currentCategory:I

    if-ne v1, v7, :cond_0

    .line 1211
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1212
    .local v2, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v7, p1, Lcom/nuance/swype/connect/util/Response;->parameters:Ljava/util/HashMap;

    const-string v8, "87"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/json/JSONArray;

    .line 1213
    .local v6, records:Lorg/json/JSONArray;
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 1214
    const/4 v4, 0x0

    .local v4, index:I
    :goto_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v4, v7, :cond_4

    .line 1216
    :try_start_0
    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/nuance/swype/connect/util/Logger;->v(Ljava/lang/String;)V

    .line 1217
    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1214
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1218
    :catch_0
    move-exception v3

    .line 1219
    .local v3, ex:Lorg/json/JSONException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "processGetImmediateEventsResponse() Issue loading object: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    goto :goto_2

    .line 1224
    .end local v3           #ex:Lorg/json/JSONException;
    :cond_4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1225
    .local v0, b:Landroid/os/Bundle;
    const-string v7, "DLM_EVENT_DATA"

    invoke-virtual {v0, v7, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1226
    const-string v7, "DLM_EVENT_CATEGORY"

    invoke-virtual {v0, v7, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1227
    const-string v7, "DLM_EVENT_ACK"

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1228
    iget-object v7, p0, Lcom/nuance/swype/connect/manager/DLMManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v8, 0x84

    invoke-virtual {v7, v8, v0}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(ILandroid/os/Bundle;)V

    goto/16 :goto_0
.end method

.method private processPullAckResponse(Lcom/nuance/swype/connect/util/Response;)V
    .locals 4
    .parameter "response"

    .prologue
    .line 1013
    iget v2, p1, Lcom/nuance/swype/connect/util/Response;->status:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1014
    iget-object v2, p1, Lcom/nuance/swype/connect/util/Response;->initialCommand:Lcom/nuance/swype/connect/util/Command;

    iget-object v1, v2, Lcom/nuance/swype/connect/util/Command;->parameters:Ljava/util/HashMap;

    .line 1015
    .local v1, p:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "78"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1016
    .local v0, category:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processPullAckResponse cat="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v2, "78"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 1017
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/DLMManager;->categoryState:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;

    invoke-virtual {v2}, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;->pullComplete()V

    .line 1019
    .end local v0           #category:I
    .end local v1           #p:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method

.method private processPullResponse(Lcom/nuance/swype/connect/util/Response;)V
    .locals 9
    .parameter "response"

    .prologue
    .line 963
    iget v7, p1, Lcom/nuance/swype/connect/util/Response;->status:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    .line 964
    iget-object v7, p1, Lcom/nuance/swype/connect/util/Response;->initialCommand:Lcom/nuance/swype/connect/util/Command;

    iget-object v5, v7, Lcom/nuance/swype/connect/util/Command;->parameters:Ljava/util/HashMap;

    .line 965
    .local v5, p:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v7, "78"

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 967
    .local v1, category:I
    iget v7, p0, Lcom/nuance/swype/connect/manager/DLMManager;->currentCategory:I

    if-ne v1, v7, :cond_2

    .line 968
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 969
    .local v2, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v7, p1, Lcom/nuance/swype/connect/util/Response;->parameters:Ljava/util/HashMap;

    const-string v8, "87"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/json/JSONArray;

    .line 970
    .local v6, records:Lorg/json/JSONArray;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "processPullResponse cat="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v7, "78"

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " numEvents="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 972
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 973
    const/4 v4, 0x0

    .local v4, index:I
    :goto_0
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v4, v7, :cond_0

    .line 975
    :try_start_0
    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 973
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 976
    :catch_0
    move-exception v3

    .line 977
    .local v3, ex:Lorg/json/JSONException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "processPullResponse() Issue loading object: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 981
    .end local v3           #ex:Lorg/json/JSONException;
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 982
    .local v0, b:Landroid/os/Bundle;
    const-string v7, "DLM_EVENT_DATA"

    invoke-virtual {v0, v7, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 983
    const-string v7, "DLM_EVENT_CATEGORY"

    invoke-virtual {v0, v7, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 984
    iget-object v7, p0, Lcom/nuance/swype/connect/manager/DLMManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v8, 0x84

    invoke-virtual {v7, v8, v0}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(ILandroid/os/Bundle;)V

    .line 986
    iget-object v7, p0, Lcom/nuance/swype/connect/manager/DLMManager;->categoryState:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;

    iget-object v8, p1, Lcom/nuance/swype/connect/util/Response;->transactionId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;->setPullTransactionId(Ljava/lang/String;)V

    .line 1005
    .end local v0           #b:Landroid/os/Bundle;
    .end local v1           #category:I
    .end local v2           #events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4           #index:I
    .end local v5           #p:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v6           #records:Lorg/json/JSONArray;
    :cond_1
    :goto_2
    return-void

    .line 988
    .restart local v1       #category:I
    .restart local v5       #p:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    const-string v7, "Ignoring pull response because the category is now different"

    invoke-static {v7}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 989
    iget-object v7, p0, Lcom/nuance/swype/connect/manager/DLMManager;->categoryState:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;

    invoke-virtual {v7}, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;->pullComplete()V

    goto :goto_2

    .line 991
    .end local v1           #category:I
    .end local v5           #p:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3
    iget v7, p1, Lcom/nuance/swype/connect/util/Response;->status:I

    const/16 v8, 0x19

    if-ne v7, v8, :cond_4

    .line 992
    iget-object v7, p1, Lcom/nuance/swype/connect/util/Response;->initialCommand:Lcom/nuance/swype/connect/util/Command;

    iget-object v5, v7, Lcom/nuance/swype/connect/util/Command;->parameters:Ljava/util/HashMap;

    .line 993
    .restart local v5       #p:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v7, "78"

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 994
    .restart local v1       #category:I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Restore required for category="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 996
    iget-object v7, p0, Lcom/nuance/swype/connect/manager/DLMManager;->categoryState:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;

    invoke-virtual {v7}, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;->restoreRequested()V

    .line 997
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/DLMManager;->restoreRequest()V

    .line 998
    iget-object v7, p0, Lcom/nuance/swype/connect/manager/DLMManager;->categoryState:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;

    invoke-virtual {v7}, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;->pullComplete()V

    goto :goto_2

    .line 999
    .end local v1           #category:I
    .end local v5           #p:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_4
    iget v7, p1, Lcom/nuance/swype/connect/util/Response;->status:I

    const/16 v8, 0x1a

    if-ne v7, v8, :cond_1

    .line 1000
    iget-object v7, p1, Lcom/nuance/swype/connect/util/Response;->initialCommand:Lcom/nuance/swype/connect/util/Command;

    iget-object v5, v7, Lcom/nuance/swype/connect/util/Command;->parameters:Ljava/util/HashMap;

    .line 1001
    .restart local v5       #p:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v7, "78"

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1002
    .restart local v1       #category:I
    iget-object v7, p0, Lcom/nuance/swype/connect/manager/DLMManager;->categoryState:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;

    invoke-virtual {v7}, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;->pullComplete()V

    .line 1003
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected request. Clearing pull for cat="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method private processPushResponse(Lcom/nuance/swype/connect/util/Response;)V
    .locals 6
    .parameter "response"

    .prologue
    .line 1027
    iget v1, p1, Lcom/nuance/swype/connect/util/Response;->status:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1028
    iget-object v1, p1, Lcom/nuance/swype/connect/util/Response;->initialCommand:Lcom/nuance/swype/connect/util/Command;

    iget-object v0, v1, Lcom/nuance/swype/connect/util/Command;->parameters:Ljava/util/HashMap;

    .line 1030
    .local v0, p:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processPushResponse clearing cat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v1, "78"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 1033
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/DLMManager;->dataSource:Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;

    const-string v1, "78"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->clearEvents(IJ)V

    .line 1037
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/DLMManager;->push()V

    .line 1039
    .end local v0           #p:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method

.method private processRestoreGetResponse(Lcom/nuance/swype/connect/util/Response;)V
    .locals 10
    .parameter "response"

    .prologue
    .line 1098
    iget-boolean v8, p0, Lcom/nuance/swype/connect/manager/DLMManager;->dlmEnabled:Z

    if-nez v8, :cond_1

    .line 1099
    const-string v8, "    DLM Sync Disabled. Ignoring request."

    invoke-static {v8}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 1154
    :cond_0
    :goto_0
    return-void

    .line 1103
    :cond_1
    const/4 v6, 0x0

    .line 1104
    .local v6, reset:Z
    iget v8, p1, Lcom/nuance/swype/connect/util/Response;->status:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_6

    .line 1105
    iget-object v8, p1, Lcom/nuance/swype/connect/util/Response;->initialCommand:Lcom/nuance/swype/connect/util/Command;

    iget-object v4, v8, Lcom/nuance/swype/connect/util/Command;->parameters:Ljava/util/HashMap;

    .line 1106
    .local v4, p:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v8, "78"

    invoke-virtual {v4, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1107
    .local v0, category:I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "processRestoreGetResponse cat="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v8, "78"

    invoke-virtual {v4, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 1109
    iget v8, p0, Lcom/nuance/swype/connect/manager/DLMManager;->currentCategory:I

    if-ne v0, v8, :cond_5

    .line 1110
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1111
    .local v1, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, p1, Lcom/nuance/swype/connect/util/Response;->parameters:Ljava/util/HashMap;

    const-string v9, "87"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/JSONArray;

    .line 1112
    .local v5, records:Lorg/json/JSONArray;
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 1113
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "processRestoreGetResponse numEvents="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 1114
    const/4 v3, 0x0

    .local v3, index:I
    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v3, v8, :cond_3

    .line 1116
    :try_start_0
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1117
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/16 v9, 0x3e8

    if-le v8, v9, :cond_2

    .line 1118
    invoke-direct {p0, v0, v1}, Lcom/nuance/swype/connect/manager/DLMManager;->sendRestoreEvents(ILjava/util/ArrayList;)V

    .line 1119
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1114
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1121
    :catch_0
    move-exception v2

    .line 1122
    .local v2, ex:Lorg/json/JSONException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "processRestoreGetResponse() Issue loading object: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    goto :goto_2

    .line 1127
    .end local v2           #ex:Lorg/json/JSONException;
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4

    .line 1128
    invoke-direct {p0, v0, v1}, Lcom/nuance/swype/connect/manager/DLMManager;->sendRestoreEvents(ILjava/util/ArrayList;)V

    .line 1131
    :cond_4
    iget-object v9, p0, Lcom/nuance/swype/connect/manager/DLMManager;->categoryState:Ljava/util/HashMap;

    const-string v8, "78"

    invoke-virtual {v4, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;

    invoke-virtual {v8}, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;->restoreComplete()V

    .line 1141
    .end local v0           #category:I
    .end local v1           #events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3           #index:I
    .end local v4           #p:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5           #records:Lorg/json/JSONArray;
    :goto_3
    if-eqz v6, :cond_0

    iget-object v8, p1, Lcom/nuance/swype/connect/util/Response;->initialCommand:Lcom/nuance/swype/connect/util/Command;

    if-eqz v8, :cond_0

    iget-object v8, p1, Lcom/nuance/swype/connect/util/Response;->initialCommand:Lcom/nuance/swype/connect/util/Command;

    iget-object v8, v8, Lcom/nuance/swype/connect/util/Command;->parameters:Ljava/util/HashMap;

    if-eqz v8, :cond_0

    .line 1142
    iget-object v8, p1, Lcom/nuance/swype/connect/util/Response;->initialCommand:Lcom/nuance/swype/connect/util/Command;

    iget-object v4, v8, Lcom/nuance/swype/connect/util/Command;->parameters:Ljava/util/HashMap;

    .line 1143
    .restart local v4       #p:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v8, "78"

    invoke-virtual {v4, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1148
    .restart local v0       #category:I
    iget-object v8, p0, Lcom/nuance/swype/connect/manager/DLMManager;->categoryState:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;

    .line 1149
    .local v7, state:Lcom/nuance/swype/connect/manager/DLMManager$DlmState;
    if-eqz v7, :cond_0

    .line 1150
    invoke-virtual {v7}, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;->restoreComplete()V

    .line 1151
    invoke-virtual {v7}, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;->restoreRequested()V

    goto/16 :goto_0

    .line 1133
    .end local v7           #state:Lcom/nuance/swype/connect/manager/DLMManager$DlmState;
    :cond_5
    const-string v8, "Ignoring restore response because the current category is different"

    invoke-static {v8}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 1134
    const/4 v6, 0x1

    goto :goto_3

    .line 1138
    .end local v0           #category:I
    .end local v4           #p:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_6
    const/4 v6, 0x1

    goto :goto_3
.end method

.method private processRestoreRequestResponse(Lcom/nuance/swype/connect/util/Response;)V
    .locals 5
    .parameter "response"

    .prologue
    .line 1063
    iget-boolean v3, p0, Lcom/nuance/swype/connect/manager/DLMManager;->dlmEnabled:Z

    if-nez v3, :cond_1

    .line 1064
    const-string v3, "    DLM Sync Disabled. Ignoring request."

    invoke-static {v3}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 1089
    :cond_0
    :goto_0
    return-void

    .line 1068
    :cond_1
    iget v3, p1, Lcom/nuance/swype/connect/util/Response;->status:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1069
    iget-object v3, p1, Lcom/nuance/swype/connect/util/Response;->initialCommand:Lcom/nuance/swype/connect/util/Command;

    iget-object v1, v3, Lcom/nuance/swype/connect/util/Command;->parameters:Ljava/util/HashMap;

    .line 1070
    .local v1, p:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "78"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1071
    .local v0, category:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processRestoreRequestResponse cat="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v3, "78"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 1073
    iget v3, p0, Lcom/nuance/swype/connect/manager/DLMManager;->currentCategory:I

    if-ne v0, v3, :cond_2

    .line 1074
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/DLMManager;->categoryState:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;

    iget-object v4, p1, Lcom/nuance/swype/connect/util/Response;->transactionId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;->setRestoreTransactionId(Ljava/lang/String;)V

    .line 1075
    invoke-direct {p0, v0}, Lcom/nuance/swype/connect/manager/DLMManager;->restoreGet(I)V

    goto :goto_0

    .line 1077
    :cond_2
    const-string v3, "Ignoring restore because the current category is different from the request"

    invoke-static {v3}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 1082
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/DLMManager;->categoryState:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;

    .line 1083
    .local v2, state:Lcom/nuance/swype/connect/manager/DLMManager$DlmState;
    if-eqz v2, :cond_0

    .line 1084
    invoke-virtual {v2}, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;->restoreComplete()V

    .line 1085
    invoke-virtual {v2}, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;->restoreRequested()V

    goto :goto_0
.end method

.method private processSendImmediateEventsResponse(Lcom/nuance/swype/connect/util/Response;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 1169
    const-string v0, "processSendImmediateEventsResponse"

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 1170
    iget-boolean v0, p0, Lcom/nuance/swype/connect/manager/DLMManager;->dlmEnabled:Z

    if-nez v0, :cond_0

    .line 1171
    const-string v0, "    DLM Sync Disabled. Ignoring request."

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 1185
    :cond_0
    return-void
.end method

.method private pull()V
    .locals 4

    .prologue
    .line 880
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DLMManager.pull() currentCategory="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/nuance/swype/connect/manager/DLMManager;->currentCategory:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 881
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/DLMManager;->categoryState:Ljava/util/HashMap;

    iget v3, p0, Lcom/nuance/swype/connect/manager/DLMManager;->currentCategory:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nuance/swype/connect/manager/DLMManager;->categoryState:Ljava/util/HashMap;

    iget v3, p0, Lcom/nuance/swype/connect/manager/DLMManager;->currentCategory:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;

    invoke-virtual {v2}, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;->isPullHappening()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 883
    const-string v2, "    Pull already in progress. Ignoring."

    invoke-static {v2}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 893
    :goto_0
    return-void

    .line 887
    :cond_0
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/DLMManager;->categoryState:Ljava/util/HashMap;

    iget v3, p0, Lcom/nuance/swype/connect/manager/DLMManager;->currentCategory:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;

    invoke-virtual {v2}, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;->startPull()V

    .line 888
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 889
    .local v1, parameters:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "78"

    iget v3, p0, Lcom/nuance/swype/connect/manager/DLMManager;->currentCategory:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 890
    const-string v2, "pull"

    invoke-virtual {p0, v2, v1}, Lcom/nuance/swype/connect/manager/DLMManager;->createCommand(Ljava/lang/String;Ljava/util/HashMap;)Lcom/nuance/swype/connect/util/Command;

    move-result-object v0

    .line 891
    .local v0, command:Lcom/nuance/swype/connect/util/Command;
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/nuance/swype/connect/util/Command;->allowDuplicateOfCommand:Z

    .line 892
    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/manager/DLMManager;->sendCommand(Lcom/nuance/swype/connect/util/Command;)V

    goto :goto_0
.end method

.method private pullAck(I)V
    .locals 5
    .parameter "category"

    .prologue
    .line 931
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DLMManager.pullAck() category="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 932
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/DLMManager;->categoryState:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/nuance/swype/connect/manager/DLMManager;->categoryState:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;

    invoke-virtual {v3}, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;->getPullTransactionId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 934
    :cond_0
    const-string v3, "Something\'s wrong, trying to ack a pull without having a transaction ID"

    invoke-static {v3}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    .line 935
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/DLMManager;->checkDlmSync()V

    .line 950
    :goto_0
    return-void

    .line 937
    :cond_1
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/DLMManager;->categoryState:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;

    invoke-virtual {v3}, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;->isPullHappening()Z

    move-result v3

    if-nez v3, :cond_2

    .line 938
    const-string v3, "Error in state:  Expected pull to be in progress."

    invoke-static {v3}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    .line 942
    :cond_2
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/DLMManager;->categoryState:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;

    .line 943
    .local v2, state:Lcom/nuance/swype/connect/manager/DLMManager$DlmState;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 944
    .local v1, parameters:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "78"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 945
    const-string v3, "4"

    invoke-virtual {v2}, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;->getPullTransactionId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 946
    const-string v3, "pullAck"

    invoke-virtual {p0, v3, v1}, Lcom/nuance/swype/connect/manager/DLMManager;->createCommand(Ljava/lang/String;Ljava/util/HashMap;)Lcom/nuance/swype/connect/util/Command;

    move-result-object v0

    .line 947
    .local v0, command:Lcom/nuance/swype/connect/util/Command;
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/nuance/swype/connect/util/Command;->allowDuplicateOfCommand:Z

    .line 948
    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/manager/DLMManager;->sendCommand(Lcom/nuance/swype/connect/util/Command;)V

    .line 949
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/DLMManager;->categoryState:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;

    invoke-virtual {v3}, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;->pullComplete()V

    goto :goto_0
.end method

.method private push()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 839
    const-string v7, "DLMManager.push()"

    invoke-static {v7}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 840
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/DLMManager;->resetDlmEventsTimer()V

    .line 845
    iget-object v7, p0, Lcom/nuance/swype/connect/manager/DLMManager;->dataSource:Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;

    invoke-virtual {v7}, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->getEventCategories()[I

    move-result-object v0

    .line 846
    .local v0, categories:[I
    if-eqz v0, :cond_0

    array-length v7, v0

    if-nez v7, :cond_1

    .line 847
    :cond_0
    const-string v7, "DLMManager.push() found no categories; exitting push"

    invoke-static {v7}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 873
    :goto_0
    return-void

    .line 851
    :cond_1
    aget v1, v0, v9

    .line 852
    .local v1, category:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 854
    .local v3, currentTime:J
    sget-object v7, Lcom/nuance/swype/connect/manager/DLMManager;->supportedCategories:[Ljava/lang/Integer;

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 856
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "category not supported: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    .line 857
    iget-object v7, p0, Lcom/nuance/swype/connect/manager/DLMManager;->dataSource:Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8, v3, v4}, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->clearEvents(IJ)V

    .line 858
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/DLMManager;->push()V

    goto :goto_0

    .line 862
    :cond_2
    iget-object v7, p0, Lcom/nuance/swype/connect/manager/DLMManager;->dataSource:Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;

    invoke-virtual {v7, v1}, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->getEvents(I)Lorg/json/JSONArray;

    move-result-object v5

    .line 863
    .local v5, events:Lorg/json/JSONArray;
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 864
    .local v6, parameters:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v7, "1"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 865
    const-string v7, "78"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 866
    const-string v7, "88"

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 868
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "   DLMManager.push() category="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " time="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " events count="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 870
    const-string v7, "push"

    invoke-virtual {p0, v7, v6}, Lcom/nuance/swype/connect/manager/DLMManager;->createCommand(Ljava/lang/String;Ljava/util/HashMap;)Lcom/nuance/swype/connect/util/Command;

    move-result-object v2

    .line 871
    .local v2, command:Lcom/nuance/swype/connect/util/Command;
    iput-boolean v9, v2, Lcom/nuance/swype/connect/util/Command;->allowDuplicateOfCommand:Z

    .line 872
    invoke-virtual {p0, v2}, Lcom/nuance/swype/connect/manager/DLMManager;->sendCommand(Lcom/nuance/swype/connect/util/Command;)V

    goto/16 :goto_0
.end method

.method private resetDlmEventsTimer()V
    .locals 4

    .prologue
    .line 674
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/DLMManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectClient;->getDataStore()Lcom/nuance/swype/connect/store/PersistentDataStore;

    move-result-object v0

    const-string v1, "DLM_EVENTS_LAST_SENT"

    invoke-static {}, Lcom/nuance/swype/connect/util/TimeConversion;->getCurrentTime()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/swype/connect/store/PersistentDataStore;->saveLong(Ljava/lang/String;J)Z

    .line 675
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/DLMManager;->setDlmEventsTimer()V

    .line 676
    return-void
.end method

.method private restoreGet(I)V
    .locals 5
    .parameter "category"

    .prologue
    .line 777
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DLMManager.restoreGet() category="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 778
    iget v3, p0, Lcom/nuance/swype/connect/manager/DLMManager;->currentCategory:I

    if-eq p1, v3, :cond_0

    .line 779
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The current category has changed, currentCat="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/nuance/swype/connect/manager/DLMManager;->currentCategory:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " requestedCat="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 798
    :goto_0
    return-void

    .line 783
    :cond_0
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/DLMManager;->categoryState:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;

    invoke-virtual {v3}, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;->isRestoreRequested()Z

    move-result v3

    if-nez v3, :cond_1

    .line 784
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The category ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") does not have a pending restore request"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    .line 785
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/DLMManager;->categoryState:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;

    invoke-virtual {v3}, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;->restoreComplete()V

    goto :goto_0

    .line 790
    :cond_1
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/DLMManager;->categoryState:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;

    .line 791
    .local v2, state:Lcom/nuance/swype/connect/manager/DLMManager$DlmState;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 792
    .local v1, parameters:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "78"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 793
    const-string v3, "4"

    invoke-virtual {v2}, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;->getRestoreTransactionId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 795
    const-string v3, "restoreGet"

    invoke-virtual {p0, v3, v1}, Lcom/nuance/swype/connect/manager/DLMManager;->createCommand(Ljava/lang/String;Ljava/util/HashMap;)Lcom/nuance/swype/connect/util/Command;

    move-result-object v0

    .line 796
    .local v0, command:Lcom/nuance/swype/connect/util/Command;
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/nuance/swype/connect/util/Command;->allowDuplicateOfCommand:Z

    .line 797
    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/manager/DLMManager;->sendCommand(Lcom/nuance/swype/connect/util/Command;)V

    goto :goto_0
.end method

.method private restoreRequest()V
    .locals 4

    .prologue
    .line 748
    const-string v2, "DLMManager.restoreRequest()"

    invoke-static {v2}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 749
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/DLMManager;->categoryState:Ljava/util/HashMap;

    iget v3, p0, Lcom/nuance/swype/connect/manager/DLMManager;->currentCategory:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 750
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DLMManager.restoreRequest() unknown category="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/nuance/swype/connect/manager/DLMManager;->currentCategory:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    .line 766
    :goto_0
    return-void

    .line 753
    :cond_0
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/DLMManager;->categoryState:Ljava/util/HashMap;

    iget v3, p0, Lcom/nuance/swype/connect/manager/DLMManager;->currentCategory:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;

    invoke-virtual {v2}, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;->isRestoreHappening()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 754
    const-string v2, "    Restore already in progress. Ignoring request."

    invoke-static {v2}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 758
    :cond_1
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/DLMManager;->categoryState:Ljava/util/HashMap;

    iget v3, p0, Lcom/nuance/swype/connect/manager/DLMManager;->currentCategory:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;

    invoke-virtual {v2}, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;->startRestore()V

    .line 760
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 761
    .local v1, parameters:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "78"

    iget v3, p0, Lcom/nuance/swype/connect/manager/DLMManager;->currentCategory:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 763
    const-string v2, "restoreRequest"

    invoke-virtual {p0, v2, v1}, Lcom/nuance/swype/connect/manager/DLMManager;->createCommand(Ljava/lang/String;Ljava/util/HashMap;)Lcom/nuance/swype/connect/util/Command;

    move-result-object v0

    .line 764
    .local v0, command:Lcom/nuance/swype/connect/util/Command;
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/nuance/swype/connect/util/Command;->allowDuplicateOfCommand:Z

    .line 765
    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/manager/DLMManager;->sendCommand(Lcom/nuance/swype/connect/util/Command;)V

    goto :goto_0
.end method

.method private savePreferences()V
    .locals 5

    .prologue
    .line 1251
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/DLMManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v3}, Lcom/nuance/swype/connect/ConnectClient;->getDataStore()Lcom/nuance/swype/connect/store/PersistentDataStore;

    move-result-object v2

    .line 1252
    .local v2, store:Lcom/nuance/swype/connect/store/PersistentDataStore;
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/DLMManager;->categoryState:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1253
    .local v1, state:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/nuance/swype/connect/manager/DLMManager$DlmState;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CATEGORY_STATE"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;

    invoke-virtual {v3}, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Lcom/nuance/swype/connect/store/PersistentDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 1255
    .end local v1           #state:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/nuance/swype/connect/manager/DLMManager$DlmState;>;"
    :cond_0
    const-string v3, "DLM_SYNC_ENABLED"

    iget-boolean v4, p0, Lcom/nuance/swype/connect/manager/DLMManager;->dlmEnabled:Z

    invoke-interface {v2, v3, v4}, Lcom/nuance/swype/connect/store/PersistentDataStore;->saveBoolean(Ljava/lang/String;Z)Z

    .line 1256
    return-void
.end method

.method private sendRestoreEvents(ILjava/util/ArrayList;)V
    .locals 3
    .parameter "category"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1157
    .local p2, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1158
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "DLM_EVENT_DATA"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1159
    const-string v1, "DLM_EVENT_CATEGORY"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1160
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/DLMManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v2, 0x83

    invoke-virtual {v1, v2, v0}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(ILandroid/os/Bundle;)V

    .line 1161
    return-void
.end method

.method private setDlmEventsTimer()V
    .locals 9

    .prologue
    .line 656
    iget-boolean v5, p0, Lcom/nuance/swype/connect/manager/DLMManager;->dlmEnabled:Z

    if-nez v5, :cond_0

    .line 657
    const-string v5, "    DLM Sync Disabled. Ignoring request to set timer."

    invoke-static {v5}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 668
    :goto_0
    return-void

    .line 661
    :cond_0
    iget-object v5, p0, Lcom/nuance/swype/connect/manager/DLMManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v5}, Lcom/nuance/swype/connect/ConnectClient;->getDataStore()Lcom/nuance/swype/connect/store/PersistentDataStore;

    move-result-object v5

    const-string v6, "DLM_EVENTS_LAST_SENT"

    invoke-static {}, Lcom/nuance/swype/connect/util/TimeConversion;->getCurrentTime()J

    move-result-wide v7

    invoke-interface {v5, v6, v7, v8}, Lcom/nuance/swype/connect/store/PersistentDataStore;->readLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 662
    .local v1, lastRun:J
    iget v5, p0, Lcom/nuance/swype/connect/manager/DLMManager;->sendDlmEventsInterval:I

    int-to-long v5, v5

    invoke-static {v5, v6, v1, v2}, Lcom/nuance/swype/connect/util/TimeConversion;->convertSecondsToTimeStamp(JJ)J

    move-result-wide v3

    .line 664
    .local v3, nextRun:J
    new-instance v5, Lcom/nuance/swype/connect/util/Alarm$Builder;

    iget-object v6, p0, Lcom/nuance/swype/connect/manager/DLMManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v6}, Lcom/nuance/swype/connect/ConnectClient;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-class v7, Lcom/nuance/swype/connect/manager/DLMManager;

    const-string v8, "DLM_EVENTS_SEND"

    invoke-direct {v5, v6, v7, v8}, Lcom/nuance/swype/connect/util/Alarm$Builder;-><init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v5, v3, v4}, Lcom/nuance/swype/connect/util/Alarm$Builder;->triggerTime(J)Lcom/nuance/swype/connect/util/Alarm$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/connect/util/Alarm$Builder;->build()Lcom/nuance/swype/connect/util/Alarm;

    move-result-object v0

    .line 666
    .local v0, alarm:Lcom/nuance/swype/connect/util/Alarm;
    invoke-virtual {v0}, Lcom/nuance/swype/connect/util/Alarm;->set()V

    .line 667
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setDlmEventsTimer() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/nuance/swype/connect/util/Logger;->v(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private timerDlmEvents()V
    .locals 3

    .prologue
    .line 682
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "timerDlmEvents() isFull="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/connect/manager/DLMManager;->dataSource:Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;

    invoke-virtual {v2}, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->isFull()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/connect/util/Logger;->v(Ljava/lang/String;)V

    .line 683
    iget-boolean v1, p0, Lcom/nuance/swype/connect/manager/DLMManager;->dlmEnabled:Z

    if-nez v1, :cond_0

    .line 684
    const-string v1, "    DLM Sync Disabled. Ignoring request."

    invoke-static {v1}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 702
    :goto_0
    return-void

    .line 688
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/DLMManager;->categoryState:Ljava/util/HashMap;

    iget v2, p0, Lcom/nuance/swype/connect/manager/DLMManager;->currentCategory:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;

    .line 689
    .local v0, state:Lcom/nuance/swype/connect/manager/DLMManager$DlmState;
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/DLMManager;->dataSource:Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;

    invoke-virtual {v1}, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->isFull()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;->isBackupRequired()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;->isBackupHappening()Z

    move-result v1

    if-nez v1, :cond_4

    .line 691
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/DLMManager;->dataSource:Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;

    invoke-virtual {v1}, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->reset()V

    .line 692
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/DLMManager;->dataSource:Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;

    invoke-virtual {v1}, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->openSafe()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 693
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/DLMManager;->dataSource:Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;

    invoke-virtual {v1}, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->verifyDatabase()V

    .line 696
    :cond_2
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/DLMManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v2, 0x86

    invoke-virtual {v1, v2}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(I)V

    .line 701
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/DLMManager;->resetDlmEventsTimer()V

    goto :goto_0

    .line 697
    :cond_4
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;->isBackupRequired()Z

    move-result v1

    if-nez v1, :cond_3

    .line 698
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/DLMManager;->push()V

    goto :goto_1
.end method


# virtual methods
.method public alarmNotification(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .parameter "type"
    .parameter "data"

    .prologue
    .line 592
    if-eqz p1, :cond_0

    .line 593
    const-string v0, "DLM_EVENTS_SEND"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 594
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/DLMManager;->timerDlmEvents()V

    .line 597
    :cond_0
    return-void
.end method

.method protected createEvent(Landroid/os/Bundle;Z)V
    .locals 12
    .parameter "data"
    .parameter "highPriority"

    .prologue
    .line 517
    iget-boolean v0, p0, Lcom/nuance/swype/connect/manager/DLMManager;->dlmEnabled:Z

    if-nez v0, :cond_0

    .line 518
    const-string v0, "    Dlm disabled.  Ignoring event."

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->v(Ljava/lang/String;)V

    .line 545
    :goto_0
    return-void

    .line 522
    :cond_0
    const-string v0, "DLM_EVENT_DATA"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 523
    .local v1, event:Ljava/lang/String;
    const-string v0, "DLM_EVENT_APPNAME"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 524
    .local v5, appname:Ljava/lang/String;
    const-string v0, "DLM_EVENT_CATEGORY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 525
    .local v2, category:I
    const-string v0, "DLM_EVENT_TIMESTAMP"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 526
    .local v3, timestamp:J
    const-string v0, "DLM_EVENT_LOCATION"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 527
    .local v6, location:Ljava/lang/String;
    const-string v0, "DLM_EVENT_LOCALE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 528
    .local v7, locale:Ljava/lang/String;
    const-string v0, "DLM_EVENT_INPUT_TYPE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 530
    .local v8, inputType:I
    sget-object v0, Lcom/nuance/swype/connect/manager/DLMManager;->supportedCategories:[Ljava/lang/Integer;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 531
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "category not supported: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 535
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/DLMManager;->dataSource:Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;

    invoke-virtual/range {v0 .. v8}, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->insertEvent(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 537
    if-eqz p2, :cond_2

    .line 538
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/DLMManager;->dataSource:Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->insertHighPriorityEvent(Ljava/lang/String;IJ)Z

    .line 539
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/DLMManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectClient;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v9, p0, Lcom/nuance/swype/connect/manager/DLMManager;->immediateEventsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v9}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 540
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/DLMManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectClient;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v9, p0, Lcom/nuance/swype/connect/manager/DLMManager;->immediateEventsRunnable:Ljava/lang/Runnable;

    iget v10, p0, Lcom/nuance/swype/connect/manager/DLMManager;->immediateEventsDelay:I

    int-to-long v10, v10

    invoke-virtual {v0, v9, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 544
    :cond_2
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/DLMManager;->checkBackupRequired()V

    goto :goto_0
.end method

.method public deregister()V
    .locals 0

    .prologue
    .line 366
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 643
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/DLMManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    iget-object v1, p0, Lcom/nuance/swype/connect/manager/DLMManager;->accountListener:Lcom/nuance/swype/connect/manager/interfaces/AccountListener;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/ConnectClient;->unregisterAccountListener(Lcom/nuance/swype/connect/manager/interfaces/AccountListener;)V

    .line 646
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/DLMManager;->dataSource:Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;

    if-eqz v0, :cond_0

    .line 647
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/DLMManager;->dataSource:Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->close()V

    .line 649
    :cond_0
    invoke-super {p0}, Lcom/nuance/swype/connect/manager/AbstractCommandManager;->destroy()V

    .line 650
    return-void
.end method

.method public getDependencies()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 358
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "session"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "account"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public init()V
    .locals 2

    .prologue
    .line 601
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/DLMManager;->loadPreferences()V

    .line 602
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/DLMManager;->openDlmDB()V

    .line 603
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/DLMManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    iget-object v1, p0, Lcom/nuance/swype/connect/manager/DLMManager;->accountListener:Lcom/nuance/swype/connect/manager/interfaces/AccountListener;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/ConnectClient;->registerAccountListener(Lcom/nuance/swype/connect/manager/interfaces/AccountListener;)V

    .line 605
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/DLMManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    new-instance v1, Lcom/nuance/swype/connect/manager/DLMManager$5;

    invoke-direct {v1, p0}, Lcom/nuance/swype/connect/manager/DLMManager$5;-><init>(Lcom/nuance/swype/connect/manager/DLMManager;)V

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/ConnectClient;->registerLanguageListener(Lcom/nuance/swype/connect/manager/interfaces/LanguageListener;)V

    .line 630
    return-void
.end method

.method public onFailure(Lcom/nuance/swype/connect/util/Command;)V
    .locals 3
    .parameter "c"

    .prologue
    .line 579
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DlmManager.onFailure "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 580
    iget-object v1, p1, Lcom/nuance/swype/connect/util/Command;->command:Ljava/lang/String;

    const-string v2, "backup"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/nuance/swype/connect/util/Command;->command:Ljava/lang/String;

    const-string v2, "pull"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/nuance/swype/connect/util/Command;->command:Ljava/lang/String;

    const-string v2, "pullAck"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/nuance/swype/connect/util/Command;->command:Ljava/lang/String;

    const-string v2, "restoreRequest"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/nuance/swype/connect/util/Command;->command:Ljava/lang/String;

    const-string v2, "restoreGet"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 583
    :cond_0
    iget-object v1, p1, Lcom/nuance/swype/connect/util/Command;->parameters:Ljava/util/HashMap;

    const-string v2, "78"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 584
    .local v0, category:I
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/DLMManager;->categoryState:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 585
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/DLMManager;->categoryState:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;

    invoke-virtual {v1}, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;->pause()V

    .line 588
    .end local v0           #category:I
    :cond_1
    return-void
.end method

.method public onHandleMessage(Landroid/os/Message;)Z
    .locals 8
    .parameter "message"

    .prologue
    .line 392
    const/4 v3, 0x0

    .line 393
    .local v3, handled:Z
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    .line 507
    :goto_0
    return v3

    .line 395
    :sswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 396
    .local v1, data:Landroid/os/Bundle;
    const-string v5, "DLM_EVENT_CATEGORY"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 397
    .local v0, category:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MESSAGE_COMMAND_PULL_DLM_EVENTS category="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/nuance/swype/connect/util/Logger;->v(Ljava/lang/String;)V

    .line 398
    iget-object v5, p0, Lcom/nuance/swype/connect/manager/DLMManager;->categoryState:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 399
    iget-object v5, p0, Lcom/nuance/swype/connect/manager/DLMManager;->categoryState:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;

    invoke-virtual {v5}, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;->pullRequested()V

    .line 400
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    pullRequested = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v5, p0, Lcom/nuance/swype/connect/manager/DLMManager;->categoryState:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;

    invoke-virtual {v5}, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;->isPullRequested()Z

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " current cat="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/nuance/swype/connect/manager/DLMManager;->currentCategory:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/nuance/swype/connect/util/Logger;->v(Ljava/lang/String;)V

    .line 403
    :cond_0
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/DLMManager;->checkDlmSync()V

    .line 404
    const/4 v3, 0x1

    .line 405
    goto :goto_0

    .line 408
    .end local v0           #category:I
    .end local v1           #data:Landroid/os/Bundle;
    :sswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 409
    .restart local v1       #data:Landroid/os/Bundle;
    const-string v5, "DLM_EVENT_CATEGORY"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 410
    .restart local v0       #category:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MESSAGE_COMMAND_DLM_BACKUP_REQUIRED category="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/nuance/swype/connect/util/Logger;->v(Ljava/lang/String;)V

    .line 411
    iget-object v5, p0, Lcom/nuance/swype/connect/manager/DLMManager;->categoryState:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 412
    iget-object v5, p0, Lcom/nuance/swype/connect/manager/DLMManager;->categoryState:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;

    invoke-virtual {v5}, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;->backupRequired()V

    .line 413
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    backupRequired = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v5, p0, Lcom/nuance/swype/connect/manager/DLMManager;->categoryState:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;

    invoke-virtual {v5}, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;->isBackupRequired()Z

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " current cat="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/nuance/swype/connect/manager/DLMManager;->currentCategory:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/nuance/swype/connect/util/Logger;->v(Ljava/lang/String;)V

    .line 417
    :cond_1
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/DLMManager;->checkDlmSync()V

    .line 418
    const/4 v3, 0x1

    .line 419
    goto/16 :goto_0

    .line 422
    .end local v0           #category:I
    .end local v1           #data:Landroid/os/Bundle;
    :sswitch_2
    const-string v5, "MESSAGE_CLIENT_PROCESS_DLM_EVENTS_ACK"

    invoke-static {v5}, Lcom/nuance/swype/connect/util/Logger;->v(Ljava/lang/String;)V

    .line 423
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "DLM_EVENT_CATEGORY"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 424
    .restart local v0       #category:I
    invoke-direct {p0, v0}, Lcom/nuance/swype/connect/manager/DLMManager;->pullAck(I)V

    .line 425
    const/4 v3, 0x1

    .line 426
    goto/16 :goto_0

    .line 429
    .end local v0           #category:I
    :sswitch_3
    const-string v5, "MESSAGE_CLIENT_DLM_RESTORE"

    invoke-static {v5}, Lcom/nuance/swype/connect/util/Logger;->v(Ljava/lang/String;)V

    .line 430
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "DLM_EVENT_CATEGORY"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 431
    .restart local v0       #category:I
    iget-object v5, p0, Lcom/nuance/swype/connect/manager/DLMManager;->categoryState:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 432
    iget-object v5, p0, Lcom/nuance/swype/connect/manager/DLMManager;->categoryState:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;

    invoke-virtual {v5}, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;->restoreRequested()V

    .line 434
    :cond_2
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/DLMManager;->restoreRequest()V

    .line 435
    const/4 v3, 0x1

    .line 436
    goto/16 :goto_0

    .line 439
    .end local v0           #category:I
    :sswitch_4
    const-string v5, "MESSAGE_CLIENT_DLM_BACKUP_BEGIN"

    invoke-static {v5}, Lcom/nuance/swype/connect/util/Logger;->v(Ljava/lang/String;)V

    .line 440
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 441
    .restart local v1       #data:Landroid/os/Bundle;
    const-string v5, "DLM_EVENT_CATEGORY"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/nuance/swype/connect/manager/DLMManager;->backupCategory:I

    .line 442
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    iput-object v5, p0, Lcom/nuance/swype/connect/manager/DLMManager;->backupEvents:Ljava/util/List;

    .line 443
    const/4 v3, 0x1

    .line 444
    goto/16 :goto_0

    .line 447
    .end local v1           #data:Landroid/os/Bundle;
    :sswitch_5
    const-string v5, "MESSAGE_CLIENT_DLM_BACKUP_EVENTS"

    invoke-static {v5}, Lcom/nuance/swype/connect/util/Logger;->v(Ljava/lang/String;)V

    .line 448
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 450
    .restart local v1       #data:Landroid/os/Bundle;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "DLM_EVENT_DATA"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 452
    .local v2, events:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/nuance/swype/connect/manager/DLMManager;->backupEvents:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 453
    const/4 v3, 0x1

    .line 454
    goto/16 :goto_0

    .line 457
    .end local v1           #data:Landroid/os/Bundle;
    .end local v2           #events:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_6
    const-string v5, "MESSAGE_CLIENT_DLM_BACKUP_END"

    invoke-static {v5}, Lcom/nuance/swype/connect/util/Logger;->v(Ljava/lang/String;)V

    .line 458
    iget-object v5, p0, Lcom/nuance/swype/connect/manager/DLMManager;->backupEvents:Ljava/util/List;

    iget v6, p0, Lcom/nuance/swype/connect/manager/DLMManager;->backupCategory:I

    invoke-direct {p0, v5, v6}, Lcom/nuance/swype/connect/manager/DLMManager;->backup(Ljava/util/List;I)V

    .line 459
    iget-object v5, p0, Lcom/nuance/swype/connect/manager/DLMManager;->backupEvents:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 460
    const/4 v3, 0x1

    .line 461
    goto/16 :goto_0

    .line 464
    :sswitch_7
    const-string v5, "MESSAGE_CLIENT_DLM_SYNC_NOW"

    invoke-static {v5}, Lcom/nuance/swype/connect/util/Logger;->v(Ljava/lang/String;)V

    .line 465
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/DLMManager;->push()V

    .line 466
    const/4 v3, 0x1

    .line 467
    goto/16 :goto_0

    .line 471
    :sswitch_8
    const-string v5, "MESSAGE_CLIENT_SEND_DLM_EVENT"

    invoke-static {v5}, Lcom/nuance/swype/connect/util/Logger;->v(Ljava/lang/String;)V

    .line 472
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 473
    .restart local v1       #data:Landroid/os/Bundle;
    const/4 v5, 0x0

    invoke-virtual {p0, v1, v5}, Lcom/nuance/swype/connect/manager/DLMManager;->createEvent(Landroid/os/Bundle;Z)V

    .line 474
    const/4 v3, 0x1

    .line 475
    goto/16 :goto_0

    .line 479
    .end local v1           #data:Landroid/os/Bundle;
    :sswitch_9
    const-string v5, "MESSAGE_CLIENT_SEND_HIGH_PRIORITY_EVENT"

    invoke-static {v5}, Lcom/nuance/swype/connect/util/Logger;->v(Ljava/lang/String;)V

    .line 480
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 481
    .restart local v1       #data:Landroid/os/Bundle;
    const/4 v5, 0x1

    invoke-virtual {p0, v1, v5}, Lcom/nuance/swype/connect/manager/DLMManager;->createEvent(Landroid/os/Bundle;Z)V

    .line 482
    const/4 v3, 0x1

    .line 483
    goto/16 :goto_0

    .line 486
    .end local v1           #data:Landroid/os/Bundle;
    :sswitch_a
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 487
    .restart local v1       #data:Landroid/os/Bundle;
    const/4 v4, 0x0

    .line 488
    .local v4, statusChanged:Z
    iget-boolean v5, p0, Lcom/nuance/swype/connect/manager/DLMManager;->userDlmEnabled:Z

    const-string v6, "DEFAULT_KEY"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eq v5, v6, :cond_5

    .line 489
    const-string v5, "DEFAULT_KEY"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/nuance/swype/connect/manager/DLMManager;->userDlmEnabled:Z

    .line 490
    const/4 v4, 0x1

    .line 495
    :cond_3
    :goto_1
    if-eqz v4, :cond_4

    .line 496
    iget-boolean v5, p0, Lcom/nuance/swype/connect/manager/DLMManager;->userDlmEnabled:Z

    if-eqz v5, :cond_6

    .line 497
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/DLMManager;->enableDlmSync()V

    .line 503
    :cond_4
    :goto_2
    const/4 v3, 0x1

    .line 504
    goto/16 :goto_0

    .line 491
    :cond_5
    iget-boolean v5, p0, Lcom/nuance/swype/connect/manager/DLMManager;->dlmEnabled:Z

    iget-boolean v6, p0, Lcom/nuance/swype/connect/manager/DLMManager;->userDlmEnabled:Z

    if-eq v5, v6, :cond_3

    .line 492
    const/4 v4, 0x1

    goto :goto_1

    .line 499
    :cond_6
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/DLMManager;->disableDlmSync()V

    goto :goto_2

    .line 393
    :sswitch_data_0
    .sparse-switch
        0x1f -> :sswitch_0
        0x20 -> :sswitch_1
        0xf6 -> :sswitch_3
        0xf8 -> :sswitch_8
        0xf9 -> :sswitch_9
        0xfb -> :sswitch_2
        0x108 -> :sswitch_a
        0x10d -> :sswitch_7
        0x11f -> :sswitch_4
        0x120 -> :sswitch_6
        0x121 -> :sswitch_5
    .end sparse-switch
.end method

.method public onResponse(Lcom/nuance/swype/connect/util/Response;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 549
    const/4 v0, 0x0

    .line 550
    .local v0, check:Z
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/DLMManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v2, "pull"

    invoke-virtual {v1, v2, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/swype/connect/util/Response;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 551
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/manager/DLMManager;->processPullResponse(Lcom/nuance/swype/connect/util/Response;)V

    .line 570
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/DLMManager;->savePreferences()V

    .line 572
    if-eqz v0, :cond_1

    .line 573
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/DLMManager;->checkDlmSync()V

    .line 575
    :cond_1
    return-void

    .line 552
    :cond_2
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/DLMManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v2, "pullAck"

    invoke-virtual {v1, v2, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/swype/connect/util/Response;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 553
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/manager/DLMManager;->processPullAckResponse(Lcom/nuance/swype/connect/util/Response;)V

    .line 554
    const/4 v0, 0x1

    goto :goto_0

    .line 555
    :cond_3
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/DLMManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v2, "push"

    invoke-virtual {v1, v2, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/swype/connect/util/Response;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 556
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/manager/DLMManager;->processPushResponse(Lcom/nuance/swype/connect/util/Response;)V

    goto :goto_0

    .line 557
    :cond_4
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/DLMManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v2, "backup"

    invoke-virtual {v1, v2, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/swype/connect/util/Response;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 558
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/manager/DLMManager;->processBackupResponse(Lcom/nuance/swype/connect/util/Response;)V

    .line 559
    const/4 v0, 0x1

    goto :goto_0

    .line 560
    :cond_5
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/DLMManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v2, "restoreRequest"

    invoke-virtual {v1, v2, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/swype/connect/util/Response;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 561
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/manager/DLMManager;->processRestoreRequestResponse(Lcom/nuance/swype/connect/util/Response;)V

    goto :goto_0

    .line 562
    :cond_6
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/DLMManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v2, "restoreGet"

    invoke-virtual {v1, v2, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/swype/connect/util/Response;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 563
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/manager/DLMManager;->processRestoreGetResponse(Lcom/nuance/swype/connect/util/Response;)V

    .line 564
    const/4 v0, 0x1

    goto :goto_0

    .line 565
    :cond_7
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/DLMManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v2, "addEvents"

    invoke-virtual {v1, v2, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/swype/connect/util/Response;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 566
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/manager/DLMManager;->processSendImmediateEventsResponse(Lcom/nuance/swype/connect/util/Response;)V

    goto :goto_0

    .line 567
    :cond_8
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/DLMManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v2, "addEventsGet"

    invoke-virtual {v1, v2, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/swype/connect/util/Response;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 568
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/manager/DLMManager;->processGetImmediateEventsResponse(Lcom/nuance/swype/connect/util/Response;)V

    goto :goto_0
.end method

.method public prepareForUpgrade()V
    .locals 0

    .prologue
    .line 354
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/DLMManager;->push()V

    .line 355
    return-void
.end method

.method protected sendCommand(Lcom/nuance/swype/connect/util/Command;)V
    .locals 2
    .parameter "c"

    .prologue
    .line 1296
    iget-boolean v0, p0, Lcom/nuance/swype/connect/manager/DLMManager;->dlmEnabled:Z

    if-eqz v0, :cond_0

    .line 1297
    invoke-super {p0, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager;->sendCommand(Lcom/nuance/swype/connect/util/Command;)V

    .line 1302
    :goto_0
    return-void

    .line 1299
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendCommand(): dropping command: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/nuance/swype/connect/util/Command;->command:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 1300
    invoke-virtual {p0, p1}, Lcom/nuance/swype/connect/manager/DLMManager;->onFailure(Lcom/nuance/swype/connect/util/Command;)V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DLMManager.setEnabled(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 370
    iget-boolean v0, p0, Lcom/nuance/swype/connect/manager/DLMManager;->dlmEnabled:Z

    if-ne p1, v0, :cond_1

    .line 385
    :cond_0
    :goto_0
    return-void

    .line 373
    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/nuance/swype/connect/manager/DLMManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectClient;->isAccountLinked()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/nuance/swype/connect/manager/DLMManager;->dlmEnabled:Z

    .line 375
    iget-boolean v0, p0, Lcom/nuance/swype/connect/manager/DLMManager;->dlmEnabled:Z

    if-eqz v0, :cond_3

    .line 377
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/DLMManager;->resetDlmEventsTimer()V

    goto :goto_0

    .line 373
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 380
    :cond_3
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/DLMManager;->dataSource:Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->reset()V

    .line 381
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/DLMManager;->dataSource:Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->openSafe()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/DLMManager;->dataSource:Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->verifyDatabase()V

    goto :goto_0
.end method

.method public start()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 335
    sget-object v0, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;->STARTING:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/DLMManager;->managerStartState:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    .line 336
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/DLMManager;->setDlmEventsTimer()V

    .line 337
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/DLMManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v1, 0x85

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(I)V

    .line 338
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/DLMManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v1, 0x92

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(I)V

    .line 340
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/DLMManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectClient;->getConfiguration()Lcom/nuance/swype/connect/configuration/ConnectConfiguration;

    move-result-object v0

    const-string v1, "DLM_SYNC_FREQUENCY"

    iget-object v2, p0, Lcom/nuance/swype/connect/manager/DLMManager;->dlmEventsIntervalChangeListener:Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->setConfigurationListener(Ljava/lang/String;Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;Z)V

    .line 344
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/DLMManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectClient;->getConfiguration()Lcom/nuance/swype/connect/configuration/ConnectConfiguration;

    move-result-object v0

    const-string v1, "DLM_ADD_WORD_FREQUENCY"

    iget-object v2, p0, Lcom/nuance/swype/connect/manager/DLMManager;->dlmImmediateEventsTimer:Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->setConfigurationListener(Ljava/lang/String;Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;Z)V

    .line 348
    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/DLMManager;->managerStartComplete()V

    .line 349
    return-void
.end method
