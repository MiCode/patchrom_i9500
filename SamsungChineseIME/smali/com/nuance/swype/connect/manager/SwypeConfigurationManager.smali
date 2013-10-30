.class public Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;
.super Ljava/lang/Object;
.source "SwypeConfigurationManager.java"

# interfaces
.implements Lcom/nuance/swype/connect/manager/interfaces/Manager;
.implements Lcom/nuance/swype/connect/manager/interfaces/MessageProcessor;


# static fields
.field private static final ALM_ACTIVE_LANGUAGE:Ljava/lang/String; = "ALM_ACTIVE_LANGUAGE"

.field public static final MANAGER_NAME:Ljava/lang/String; = "swypeconfig"

.field private static final PROP_APPLICATION_ID:Ljava/lang/String; = "application_id"

.field public static final PROP_BUILD_TYPE:Ljava/lang/String; = "SWYPE_BUILD_TYPE"

.field private static final PROP_CELLULAR_DATA_PERMITTED:Ljava/lang/String; = "cellularDataPermitted"

.field private static final PROP_CONNECT_FEATURES_STATUS:Ljava/lang/String; = "connectFeaturesStatus"

.field private static final PROP_CUSTOMER_STRING:Ljava/lang/String; = "customer_string"

.field private static final PROP_LANGUAGES:Ljava/lang/String; = "languages"

.field private static final PROP_LANGUAGE_IDLE_TIMEOUT:Ljava/lang/String; = "language_timeout"

.field private static final PROP_OEM_ID:Ljava/lang/String; = "oemId"

.field private static final PROP_SDK_VERSION:Ljava/lang/String; = "sdk_version"

.field private static final PROP_STATISTICS_STATUS:Ljava/lang/String; = "statisticsStatus"

.field private static final PROP_SWIB:Ljava/lang/String; = "swib"

.field private static final PROP_TRIAL_STATUS:Ljava/lang/String; = "trialStatus"

.field private static final PROP_USAGE_STATUS:Ljava/lang/String; = "usageStatus"

.field private static final PROP_VERSION:Ljava/lang/String; = "currentVersion"

.field private static final SDK_REQUIRED_PROPS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SWYPE_REQUIRED_PROPS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private REQUIRED_PROPS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private activeLanguage:Ljava/lang/String;

.field private activeLanguageCategory:I

.field private activeLanguageCode:I

.field private activeLocale:Ljava/lang/String;

.field private applicationId:Ljava/lang/String;

.field private cellularDataPermitted:Z

.field private client:Lcom/nuance/swype/connect/ConnectClient;

.field private currentVersion:Ljava/lang/String;

.field private customerString:Ljava/lang/String;

.field private downloadIdleTimeout:I

.field private languagesAvailable:Ljava/lang/String;

.field private messages:[I

.field private oemId:Ljava/lang/String;

.field private final properties:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private sdkVersion:Ljava/lang/String;

.field private state:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

.field private statisticsStatus:Z

.field private swib:Ljava/lang/String;

.field private trialStatus:Z

.field private usageStatus:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 36
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "cellularDataPermitted"

    aput-object v1, v0, v3

    const-string v1, "languages"

    aput-object v1, v0, v4

    const-string v1, "oemId"

    aput-object v1, v0, v5

    const-string v1, "sdk_version"

    aput-object v1, v0, v6

    const-string v1, "application_id"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "customer_string"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->SDK_REQUIRED_PROPS:Ljava/util/List;

    .line 45
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "cellularDataPermitted"

    aput-object v1, v0, v3

    const-string v1, "trialStatus"

    aput-object v1, v0, v4

    const-string v1, "languages"

    aput-object v1, v0, v5

    const-string v1, "currentVersion"

    aput-object v1, v0, v6

    const-string v1, "connectFeaturesStatus"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "swib"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->SWYPE_REQUIRED_PROPS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/nuance/swype/connect/ConnectClient;)V
    .locals 1
    .parameter "ctx"

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    sget-object v0, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;->DISABLED:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->state:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->properties:Ljava/util/HashMap;

    .line 80
    const/16 v0, 0x14

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->messages:[I

    .line 104
    iput-object p1, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    .line 105
    return-void

    .line 80
    :array_0
    .array-data 0x4
        0xd1t 0x0t 0x0t 0x0t
        0xd3t 0x0t 0x0t 0x0t
        0xdbt 0x0t 0x0t 0x0t
        0xddt 0x0t 0x0t 0x0t
        0xdct 0x0t 0x0t 0x0t
        0xf4t 0x0t 0x0t 0x0t
        0xcdt 0x0t 0x0t 0x0t
        0xe9t 0x0t 0x0t 0x0t
        0xedt 0x0t 0x0t 0x0t
        0xf3t 0x0t 0x0t 0x0t
        0xfct 0x0t 0x0t 0x0t
        0xct 0x1t 0x0t 0x0t
        0x15t 0x1t 0x0t 0x0t
        0x16t 0x1t 0x0t 0x0t
        0x17t 0x1t 0x0t 0x0t
        0x18t 0x1t 0x0t 0x0t
        0x1at 0x1t 0x0t 0x0t
        0x1ct 0x1t 0x0t 0x0t
        0x1dt 0x1t 0x0t 0x0t
        0x22t 0x1t 0x0t 0x0t
    .end array-data
.end method

.method private managerStartComplete()V
    .locals 2

    .prologue
    .line 108
    sget-object v0, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;->STARTED:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->state:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    .line 109
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const-string v1, "swypeconfig"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/ConnectClient;->managerStartComplete(Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method private propertyReceived(Ljava/lang/String;)V
    .locals 2
    .parameter "property"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->properties:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->REQUIRED_PROPS:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->properties:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->REQUIRED_PROPS:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->managerStartComplete()V

    .line 117
    :cond_0
    return-void
.end method

.method private sendALMAlarm(Ljava/lang/String;)V
    .locals 4
    .parameter "lang"

    .prologue
    .line 438
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->activeLanguage:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 439
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v2}, Lcom/nuance/swype/connect/ConnectClient;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0xec

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 441
    .local v1, message:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 442
    .local v0, b:Landroid/os/Bundle;
    const-string v2, "DEFAULT_KEY"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 444
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v2, v1}, Lcom/nuance/swype/connect/ConnectClient;->postMessage(Landroid/os/Message;)V

    .line 446
    .end local v0           #b:Landroid/os/Bundle;
    .end local v1           #message:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private sendPropertyRequests()V
    .locals 3

    .prologue
    const/16 v2, 0x7a

    const/16 v1, 0x49

    .line 410
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->swib:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 412
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(I)V

    .line 413
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(I)V

    .line 414
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v1, 0x57

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(I)V

    .line 415
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v1, 0x5e

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(I)V

    .line 416
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(I)V

    .line 417
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v1, 0x60

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(I)V

    .line 418
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v1, 0x4a

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(I)V

    .line 419
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v0, v2}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(I)V

    .line 420
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v1, 0x7f

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(I)V

    .line 421
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectClient;->getDataStore()Lcom/nuance/swype/connect/store/PersistentDataStore;

    move-result-object v0

    const-string v1, "SWYPE_BUILD_TYPE"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/nuance/swype/connect/store/PersistentDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v1, 0x91

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(I)V

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v1, 0x122

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(I)V

    .line 435
    :cond_1
    :goto_0
    return-void

    .line 425
    :cond_2
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->oemId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 427
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(I)V

    .line 428
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v1, 0x9a

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(I)V

    .line 429
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v1, 0x9d

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(I)V

    .line 430
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v0, v2}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(I)V

    .line 431
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v1, 0x9f

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(I)V

    .line 432
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v1, 0x9e

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(I)V

    .line 433
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v1, 0xa1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(I)V

    goto :goto_0
.end method


# virtual methods
.method public delayFirstStart()J
    .locals 2

    .prologue
    .line 449
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public deregister()V
    .locals 0

    .prologue
    .line 453
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    .line 151
    return-void
.end method

.method public getDependencies()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    return-object v0
.end method

.method public getManagerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    const-string v0, "swypeconfig"

    return-object v0
.end method

.method public getManagerStartState()Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->state:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    return-object v0
.end method

.method public getMessageIDs()[I
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->messages:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public init()V
    .locals 3

    .prologue
    .line 124
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectClient;->getDataStore()Lcom/nuance/swype/connect/store/PersistentDataStore;

    move-result-object v0

    const-string v1, "ALM_ACTIVE_LANGUAGE"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/nuance/swype/connect/store/PersistentDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->activeLanguage:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public onHandleMessage(Landroid/os/Message;)Z
    .locals 12
    .parameter "message"

    .prologue
    const/16 v9, 0x5dc

    .line 166
    const/4 v1, 0x0

    .line 167
    .local v1, handled:Z
    iget v7, p1, Landroid/os/Message;->what:I

    sparse-switch v7, :sswitch_data_0

    .line 402
    :goto_0
    return v1

    .line 169
    :sswitch_0
    const-string v7, "SwypeConfigurationManager.onHandleMessage(MESSAGE_CLIENT_SET_LANGUAGES_AVAILABLE)"

    invoke-static {v7}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "DEFAULT_KEY"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->languagesAvailable:Ljava/lang/String;

    .line 173
    iget-object v7, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->oemId:Ljava/lang/String;

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->languagesAvailable:Ljava/lang/String;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->languagesAvailable:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1

    .line 174
    :cond_0
    iget-object v7, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v8, 0x49

    invoke-virtual {v7, v8, v9}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHostDelayed(II)V

    .line 180
    :goto_1
    const/4 v1, 0x1

    .line 181
    goto :goto_0

    .line 177
    :cond_1
    iget-object v7, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    iget-object v8, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->languagesAvailable:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/nuance/swype/connect/ConnectClient;->setLanguagesAvailable(Ljava/lang/String;)V

    .line 178
    const-string v7, "languages"

    invoke-direct {p0, v7}, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->propertyReceived(Ljava/lang/String;)V

    goto :goto_1

    .line 184
    :sswitch_1
    const-string v7, "SwypeConfigurationManager.onHandleMessage(MESSAGE_CLIENT_SET_ACTIVE_LANGUAGE)"

    invoke-static {v7}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "DEFAULT_KEY"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 186
    .local v3, newActiveLang:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "LANGUAGE_CODE"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 188
    .local v5, newActiveLanguageCode:I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SwypeConfigurationManager.onHandleMessage(MESSAGE_CLIENT_SET_ACTIVE_LANGUAGE) Language: ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] Code: ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_2

    .line 192
    iget-object v7, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v8, 0x4a

    invoke-virtual {v7, v8, v9}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHostDelayed(II)V

    .line 198
    :goto_2
    const/4 v1, 0x1

    .line 199
    goto/16 :goto_0

    .line 195
    :cond_2
    invoke-direct {p0, v3}, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->sendALMAlarm(Ljava/lang/String;)V

    .line 196
    iget-object v7, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v7}, Lcom/nuance/swype/connect/ConnectClient;->getDataStore()Lcom/nuance/swype/connect/store/PersistentDataStore;

    move-result-object v7

    const-string v8, "ALM_ACTIVE_LANGUAGE"

    iget-object v9, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->activeLanguage:Ljava/lang/String;

    invoke-interface {v7, v8, v9}, Lcom/nuance/swype/connect/store/PersistentDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    .line 202
    .end local v3           #newActiveLang:Ljava/lang/String;
    .end local v5           #newActiveLanguageCode:I
    :sswitch_2
    const-string v7, "SwypeConfigurationManager.onHandleMessage(MESSAGE_CLIENT_UPDATE_CURRENT_LANGUAGE)"

    invoke-static {v7}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "DEFAULT_KEY"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 204
    .restart local v3       #newActiveLang:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "LANGUAGE_CODE"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 205
    .restart local v5       #newActiveLanguageCode:I
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "LANGUAGE_CATEGORY"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 206
    .local v4, newActiveLanguageCategory:I
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "LOCALE"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 207
    .local v2, locale:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SwypeConfigurationManager.onHandleMessage(MESSAGE_CLIENT_UPDATE_CURRENT_LANGUAGE) Language: ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] Code: ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] Locale: ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 215
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_3

    .line 216
    iput-object v3, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->activeLanguage:Ljava/lang/String;

    .line 217
    iput v5, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->activeLanguageCode:I

    .line 218
    iput v4, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->activeLanguageCategory:I

    .line 219
    iput-object v2, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->activeLocale:Ljava/lang/String;

    .line 220
    iget-object v7, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    iget-object v8, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->activeLanguage:Ljava/lang/String;

    iget v9, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->activeLanguageCode:I

    iget v10, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->activeLanguageCategory:I

    iget-object v11, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->activeLocale:Ljava/lang/String;

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/nuance/swype/connect/ConnectClient;->setCurrentLanguageInfo(Ljava/lang/String;IILjava/lang/String;)V

    .line 223
    :cond_3
    const/4 v1, 0x1

    .line 224
    goto/16 :goto_0

    .line 227
    .end local v2           #locale:Ljava/lang/String;
    .end local v3           #newActiveLang:Ljava/lang/String;
    .end local v4           #newActiveLanguageCategory:I
    .end local v5           #newActiveLanguageCode:I
    :sswitch_3
    const-string v7, "SwypeConfigurationManager.onHandleMessage(MESSAGE_CLIENT_SET_SWIB)"

    invoke-static {v7}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 228
    sget-object v7, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->SWYPE_REQUIRED_PROPS:Ljava/util/List;

    iput-object v7, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->REQUIRED_PROPS:Ljava/util/List;

    .line 230
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "DEFAULT_KEY"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->swib:Ljava/lang/String;

    .line 232
    iget-object v7, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->swib:Ljava/lang/String;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->swib:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_5

    .line 233
    :cond_4
    iget-object v7, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v8, 0x51

    invoke-virtual {v7, v8, v9}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHostDelayed(II)V

    .line 250
    :goto_3
    const/4 v1, 0x1

    .line 251
    goto/16 :goto_0

    .line 235
    :cond_5
    iget-object v7, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v7}, Lcom/nuance/swype/connect/ConnectClient;->getDataStore()Lcom/nuance/swype/connect/store/PersistentDataStore;

    move-result-object v7

    const-string v8, "swib"

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Lcom/nuance/swype/connect/store/PersistentDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 236
    .local v6, oldSwib:Ljava/lang/String;
    iget-object v7, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    iget-object v8, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->swib:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/nuance/swype/connect/ConnectClient;->setSwib(Ljava/lang/String;)V

    .line 237
    iget-object v7, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v7}, Lcom/nuance/swype/connect/ConnectClient;->getDataStore()Lcom/nuance/swype/connect/store/PersistentDataStore;

    move-result-object v7

    const-string v8, "swib"

    iget-object v9, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->swib:Ljava/lang/String;

    invoke-interface {v7, v8, v9}, Lcom/nuance/swype/connect/store/PersistentDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 238
    const-string v7, "swib"

    invoke-direct {p0, v7}, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->propertyReceived(Ljava/lang/String;)V

    .line 242
    if-eqz v6, :cond_6

    iget-object v7, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->swib:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 245
    iget-object v7, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v8, 0x56

    invoke-virtual {v7, v8}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(I)V

    goto :goto_3

    .line 247
    :cond_6
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->sendPropertyRequests()V

    goto :goto_3

    .line 254
    .end local v6           #oldSwib:Ljava/lang/String;
    :sswitch_4
    const-string v7, "SwypeConfigurationManager.onHandleMessage(MESSAGE_CLIENT_SET_TRIAL_STATUS)"

    invoke-static {v7}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "DEFAULT_KEY"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 256
    iget-object v7, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v8, 0x5e

    invoke-virtual {v7, v8, v9}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHostDelayed(II)V

    .line 263
    :goto_4
    const/4 v1, 0x1

    .line 264
    goto/16 :goto_0

    .line 259
    :cond_7
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "DEFAULT_KEY"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->trialStatus:Z

    .line 260
    iget-object v7, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    iget-boolean v8, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->trialStatus:Z

    invoke-virtual {v7, v8}, Lcom/nuance/swype/connect/ConnectClient;->setTrialStatus(Z)V

    .line 261
    const-string v7, "trialStatus"

    invoke-direct {p0, v7}, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->propertyReceived(Ljava/lang/String;)V

    goto :goto_4

    .line 267
    :sswitch_5
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "DEFAULT_KEY"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 268
    iget-object v7, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v8, 0xdc

    invoke-virtual {v7, v8, v9}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHostDelayed(II)V

    .line 275
    :goto_5
    const/4 v1, 0x1

    .line 276
    goto/16 :goto_0

    .line 271
    :cond_8
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "DEFAULT_KEY"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    iput-boolean v7, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->usageStatus:Z

    .line 272
    iget-object v7, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    iget-boolean v8, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->usageStatus:Z

    invoke-virtual {v7, v8}, Lcom/nuance/swype/connect/ConnectClient;->setReportingUsageStatus(Z)V

    .line 273
    const-string v7, "usageStatus"

    invoke-direct {p0, v7}, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->propertyReceived(Ljava/lang/String;)V

    goto :goto_5

    .line 279
    :sswitch_6
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "DEFAULT_KEY"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 280
    iget-object v7, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v8, 0xdd

    invoke-virtual {v7, v8, v9}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHostDelayed(II)V

    .line 287
    :goto_6
    const/4 v1, 0x1

    .line 288
    goto/16 :goto_0

    .line 283
    :cond_9
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "DEFAULT_KEY"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    iput-boolean v7, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->statisticsStatus:Z

    .line 284
    iget-object v7, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    iget-boolean v8, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->statisticsStatus:Z

    invoke-virtual {v7, v8}, Lcom/nuance/swype/connect/ConnectClient;->setReportingStatisticsStatus(Z)V

    .line 285
    const-string v7, "statisticsStatus"

    invoke-direct {p0, v7}, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->propertyReceived(Ljava/lang/String;)V

    goto :goto_6

    .line 292
    :sswitch_7
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "DEFAULT_KEY"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->currentVersion:Ljava/lang/String;

    .line 293
    iget-object v7, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    iget-object v8, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->currentVersion:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/nuance/swype/connect/ConnectClient;->setSwypeVersion(Ljava/lang/String;)V

    .line 296
    iget-object v7, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v8, 0x62

    iget-object v9, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v9}, Lcom/nuance/swype/connect/ConnectClient;->getConnectVersion()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(ILjava/lang/String;)V

    .line 299
    const-string v7, "currentVersion"

    invoke-direct {p0, v7}, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->propertyReceived(Ljava/lang/String;)V

    .line 300
    const/4 v1, 0x1

    .line 301
    goto/16 :goto_0

    .line 304
    :sswitch_8
    const-string v7, "SwypeConfigurationManager.onHandleMessage(MESSAGE_CLIENT_SET_CELLULAR_DATA)"

    invoke-static {v7}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 305
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "DEFAULT_KEY"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->cellularDataPermitted:Z

    .line 306
    iget-object v7, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    iget-boolean v8, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->cellularDataPermitted:Z

    invoke-virtual {v7, v8}, Lcom/nuance/swype/connect/ConnectClient;->setCellularDataPermitted(Z)V

    .line 307
    const-string v7, "cellularDataPermitted"

    invoke-direct {p0, v7}, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->propertyReceived(Ljava/lang/String;)V

    .line 308
    const/4 v1, 0x1

    .line 309
    goto/16 :goto_0

    .line 312
    :sswitch_9
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->sendPropertyRequests()V

    .line 313
    const/4 v1, 0x1

    .line 314
    goto/16 :goto_0

    .line 317
    :sswitch_a
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "DEFAULT_KEY"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 318
    .local v0, connectFeaturesStatus:Z
    iget-object v7, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v7, v0}, Lcom/nuance/swype/connect/ConnectClient;->setConnectFeaturesStatus(Z)V

    .line 319
    const-string v7, "connectFeaturesStatus"

    invoke-direct {p0, v7}, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->propertyReceived(Ljava/lang/String;)V

    .line 320
    const/4 v1, 0x1

    .line 321
    goto/16 :goto_0

    .line 324
    .end local v0           #connectFeaturesStatus:Z
    :sswitch_b
    const-string v7, "SwypeConfigurationManager.onHandleMessage(MESSAGE_CLIENT_SET_BUILD_TYPE)"

    invoke-static {v7}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 325
    iget-object v7, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v7}, Lcom/nuance/swype/connect/ConnectClient;->getDataStore()Lcom/nuance/swype/connect/store/PersistentDataStore;

    move-result-object v7

    const-string v8, "SWYPE_BUILD_TYPE"

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "DEFAULT_KEY"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lcom/nuance/swype/connect/store/PersistentDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 327
    const/4 v1, 0x1

    .line 328
    goto/16 :goto_0

    .line 331
    :sswitch_c
    const-string v7, "SDKConfigurationManager.onHandleMessage(MESSAGE_CLIENT_SET_OEM_ID)"

    invoke-static {v7}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 332
    sget-object v7, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->SDK_REQUIRED_PROPS:Ljava/util/List;

    iput-object v7, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->REQUIRED_PROPS:Ljava/util/List;

    .line 334
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "DEFAULT_KEY"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->oemId:Ljava/lang/String;

    .line 336
    iget-object v7, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->oemId:Ljava/lang/String;

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->oemId:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_b

    .line 337
    :cond_a
    const-string v7, "SDKConfigurationManager.onHandleMessage(MESSAGE_CLIENT_SET_OEM_ID) invalid OEM"

    invoke-static {v7}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    .line 338
    iget-object v7, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v8, 0x99

    invoke-virtual {v7, v8, v9}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHostDelayed(II)V

    .line 346
    :goto_7
    const/4 v1, 0x1

    .line 347
    goto/16 :goto_0

    .line 340
    :cond_b
    iget-object v7, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    iget-object v8, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->oemId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/nuance/swype/connect/ConnectClient;->setOemId(Ljava/lang/String;)V

    .line 341
    iget-object v7, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v7}, Lcom/nuance/swype/connect/ConnectClient;->getDataStore()Lcom/nuance/swype/connect/store/PersistentDataStore;

    move-result-object v7

    const-string v8, "oemId"

    iget-object v9, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->oemId:Ljava/lang/String;

    invoke-interface {v7, v8, v9}, Lcom/nuance/swype/connect/store/PersistentDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 342
    const-string v7, "oemId"

    invoke-direct {p0, v7}, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->propertyReceived(Ljava/lang/String;)V

    .line 344
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->sendPropertyRequests()V

    goto :goto_7

    .line 350
    :sswitch_d
    const-string v7, "SDKConfigurationManager.onHandleMessage(MESSAGE_CLIENT_SET_CORE_VERSIONS)"

    invoke-static {v7}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 351
    iget-object v7, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "PROP_CORE_ALPHA"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/nuance/swype/connect/ConnectClient;->setCoreVersionAlpha(Ljava/lang/String;)V

    .line 352
    iget-object v7, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "PROP_CORE_CHINESE"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/nuance/swype/connect/ConnectClient;->setCoreVersionChinese(Ljava/lang/String;)V

    .line 353
    iget-object v7, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "PROP_CORE_JAPANESE"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/nuance/swype/connect/ConnectClient;->setCoreVersionJapanese(Ljava/lang/String;)V

    .line 354
    iget-object v7, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "PROP_CORE_KOREAN"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/nuance/swype/connect/ConnectClient;->setCoreVersionKorean(Ljava/lang/String;)V

    .line 355
    const/4 v1, 0x1

    .line 356
    goto/16 :goto_0

    .line 359
    :sswitch_e
    const-string v7, "SwypeConfigurationManager.onHandleMessage(MESSAGE_CLIENT_SET_APPLICATION_ID)"

    invoke-static {v7}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 360
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "DEFAULT_KEY"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->applicationId:Ljava/lang/String;

    .line 361
    iget-object v7, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    iget-object v8, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->applicationId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/nuance/swype/connect/ConnectClient;->setApplicationId(Ljava/lang/String;)V

    .line 362
    const-string v7, "sdk_version"

    invoke-direct {p0, v7}, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->propertyReceived(Ljava/lang/String;)V

    .line 363
    const/4 v1, 0x1

    .line 364
    goto/16 :goto_0

    .line 367
    :sswitch_f
    const-string v7, "SwypeConfigurationManager.onHandleMessage(MESSAGE_CLIENT_SET_SDK_VERSION)"

    invoke-static {v7}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 368
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "DEFAULT_KEY"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->sdkVersion:Ljava/lang/String;

    .line 369
    iget-object v7, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    iget-object v8, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->sdkVersion:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/nuance/swype/connect/ConnectClient;->setSdkVersion(Ljava/lang/String;)V

    .line 370
    const-string v7, "application_id"

    invoke-direct {p0, v7}, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->propertyReceived(Ljava/lang/String;)V

    .line 371
    const/4 v1, 0x1

    .line 372
    goto/16 :goto_0

    .line 375
    :sswitch_10
    const-string v7, "SwypeConfigurationManager.onHandleMessage(MESSAGE_CLIENT_SET_WIFI_DATA)"

    invoke-static {v7}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 376
    iget-object v7, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "DEFAULT_KEY"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/nuance/swype/connect/ConnectClient;->setWifiPermitted(Z)V

    .line 377
    const/4 v1, 0x1

    .line 378
    goto/16 :goto_0

    .line 381
    :sswitch_11
    const-string v7, "SwypeConfigurationManager.onHandleMessage(MESSAGE_CLIENT_SET_ROAMING_DATA)"

    invoke-static {v7}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 382
    iget-object v7, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "DEFAULT_KEY"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/nuance/swype/connect/ConnectClient;->setRoamingPermitted(Z)V

    .line 383
    const/4 v1, 0x1

    .line 384
    goto/16 :goto_0

    .line 387
    :sswitch_12
    const-string v7, "SwypeConfigurationManager.onHandleMessage(MESSAGE_CLIENT_SET_CUSTOMER_STRING)"

    invoke-static {v7}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 388
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "DEFAULT_KEY"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->customerString:Ljava/lang/String;

    .line 389
    iget-object v7, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    iget-object v8, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->customerString:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/nuance/swype/connect/ConnectClient;->setCustomerString(Ljava/lang/String;)V

    .line 390
    const-string v7, "customer_string"

    invoke-direct {p0, v7}, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->propertyReceived(Ljava/lang/String;)V

    .line 391
    const/4 v1, 0x1

    .line 392
    goto/16 :goto_0

    .line 395
    :sswitch_13
    const-string v7, "SwypeConfigurationManager.onHandleMessage(MESSAGE_CLIENT_SET_NETWORK_IDLE_TIMEOUT)"

    invoke-static {v7}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 396
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "DEFAULT_KEY"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->downloadIdleTimeout:I

    .line 397
    iget-object v7, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    iget v8, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->downloadIdleTimeout:I

    invoke-virtual {v7, v8}, Lcom/nuance/swype/connect/ConnectClient;->setNetworkTimeout(I)V

    .line 398
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 167
    :sswitch_data_0
    .sparse-switch
        0xcd -> :sswitch_7
        0xd1 -> :sswitch_0
        0xd3 -> :sswitch_3
        0xdb -> :sswitch_4
        0xdc -> :sswitch_5
        0xdd -> :sswitch_6
        0xe9 -> :sswitch_1
        0xed -> :sswitch_8
        0xf3 -> :sswitch_9
        0xf4 -> :sswitch_a
        0xfc -> :sswitch_2
        0x10c -> :sswitch_b
        0x115 -> :sswitch_c
        0x116 -> :sswitch_d
        0x117 -> :sswitch_f
        0x118 -> :sswitch_e
        0x11a -> :sswitch_10
        0x11c -> :sswitch_11
        0x11d -> :sswitch_12
        0x122 -> :sswitch_13
    .end sparse-switch
.end method

.method public postStart()V
    .locals 0

    .prologue
    .line 147
    return-void
.end method

.method public postUpgrade()V
    .locals 0

    .prologue
    .line 459
    return-void
.end method

.method public prepareForUpgrade()V
    .locals 0

    .prologue
    .line 456
    return-void
.end method

.method public rebind()V
    .locals 0

    .prologue
    .line 144
    return-void
.end method

.method public restart()V
    .locals 0

    .prologue
    .line 141
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 128
    sget-object v0, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;->STARTING:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->state:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    .line 132
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v1, 0x51

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(I)V

    .line 133
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/SwypeConfigurationManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v1, 0x99

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(I)V

    .line 134
    return-void
.end method
