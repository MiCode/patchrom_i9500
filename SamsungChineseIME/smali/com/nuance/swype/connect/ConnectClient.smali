.class public Lcom/nuance/swype/connect/ConnectClient;
.super Landroid/app/Service;
.source "ConnectClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/connect/ConnectClient$MessageHandler;,
        Lcom/nuance/swype/connect/ConnectClient$ResponseListener;
    }
.end annotation


# static fields
.field public static final ALARM_CLASS:Ljava/lang/String; = "ALARM_CLASS"

.field public static final ALARM_TYPE:Ljava/lang/String; = "ALARM_TYPE"

.field public static final CONNECTION_TYPE:Ljava/lang/String; = "CONNECTION_TYPE"

.field public static final DEFAULT_MESSAGE_DELAY:I = 0x5dc

.field public static final DEVICE_FIRST_TIMESTARTUP_PREFERENCE:Ljava/lang/String; = "DeviceFirstTimeStartup"

.field public static final INITIAL_STARTUP_ALARM:Ljava/lang/String; = "INITIAL_STARTUP_ALARM"

.field public static final MAJOR_VERSION:Ljava/lang/String; = "6"

.field private static final START_ALARM_MANAGER_NAME:Ljava/lang/String; = "MANAGER_NAME"

.field public static final TASK_CDB_AVAILABLE:Ljava/lang/String; = "CDB_AVAILABLE"

.field public static final TASK_CDB_LIST_UPDATE:Ljava/lang/String; = "CDB_LIST_UPDATE"

.field public static final TASK_DLM_BACKUP:Ljava/lang/String; = "DLM_BACKUP_"

.field public static final TASK_DLM_SYNC_AVAILABLE:Ljava/lang/String; = "DLM_SYNC_"

.field public static final TASK_GET_CONFIG:Ljava/lang/String; = "GET_CONFIG"

.field public static final TASK_MESSAGE_AVAILABLE:Ljava/lang/String; = "MESSAGE_AVAILABLE"

.field public static final TASK_SEND_REPORTING:Ljava/lang/String; = "SEND_REPORTING"

.field public static final TASK_UPDATE_LICENSE:Ljava/lang/String; = "UPDATE_LICENSE"

.field public static final TASK_UPDATE_TIMERS:Ljava/lang/String; = "TIMERS_UPDATED"

.field public static final TASK_UPGRADE_AVAILABLE:Ljava/lang/String; = "UPGRADE_AVAILABLE"


# instance fields
.field private accountListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/nuance/swype/connect/manager/interfaces/AccountListener;",
            ">;"
        }
    .end annotation
.end field

.field private activeCategory:I

.field private activeLanguage:Ljava/lang/String;

.field private activeLanguageCode:I

.field private activeLocale:Ljava/lang/String;

.field protected alarmUniqueId:I

.field private applicationId:Ljava/lang/String;

.field private bindCount:I

.field private broadcastResponse:Z

.field protected buildProperties:Lcom/nuance/swype/connect/util/BuildProperties;

.field private cellularDataPermitted:Z

.field private connectConfiguration:Lcom/nuance/swype/connect/configuration/ConnectConfiguration;

.field private connectFeaturesStatus:Z

.field private connectManager:Lcom/nuance/swype/connect/ConnectManager;

.field private connectivity:Lcom/nuance/swype/connect/system/Connectivity;

.field private coreVersionAlpha:Ljava/lang/String;

.field private coreVersionChinese:Ljava/lang/String;

.field private coreVersionJapanese:Ljava/lang/String;

.field private coreVersionKorean:Ljava/lang/String;

.field private currentLocale:Ljava/lang/String;

.field private customerString:Ljava/lang/String;

.field private debugResponse:I

.field private isRegistered:Z

.field private languageListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/nuance/swype/connect/manager/interfaces/LanguageListener;",
            ">;"
        }
    .end annotation
.end field

.field private languagesAvailable:Ljava/lang/String;

.field private mHostMessenger:Landroid/os/Messenger;

.field protected final messenger:Landroid/os/Messenger;

.field private mqttManager:Lcom/nuance/swype/connect/comm/MqttConnector;

.field protected msgHandler:Lcom/nuance/swype/connect/ConnectClient$MessageHandler;

.field private networkTimeout:I

.field private oemId:Ljava/lang/String;

.field private prefManager:Lcom/nuance/swype/connect/manager/PreferencesManager;

.field protected registry:Lcom/nuance/swype/connect/manager/ManagerRegistry;

.field private reportingStatisticsStatus:Z

.field private reportingUsageStatus:Z

.field private roamingPermitted:Z

.field private sdkVersion:Ljava/lang/String;

.field private swib:Ljava/lang/String;

.field private swypeVersion:Ljava/lang/String;

.field private trialStatus:Z

.field private wifiPermitted:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 125
    const v0, 0x42f48590

    iput v0, p0, Lcom/nuance/swype/connect/ConnectClient;->alarmUniqueId:I

    .line 135
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/nuance/swype/connect/ConnectClient;->debugResponse:I

    .line 137
    new-instance v0, Lcom/nuance/swype/connect/ConnectClient$MessageHandler;

    invoke-direct {v0, p0}, Lcom/nuance/swype/connect/ConnectClient$MessageHandler;-><init>(Lcom/nuance/swype/connect/ConnectClient;)V

    iput-object v0, p0, Lcom/nuance/swype/connect/ConnectClient;->msgHandler:Lcom/nuance/swype/connect/ConnectClient$MessageHandler;

    .line 138
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/nuance/swype/connect/ConnectClient;->msgHandler:Lcom/nuance/swype/connect/ConnectClient$MessageHandler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/nuance/swype/connect/ConnectClient;->messenger:Landroid/os/Messenger;

    .line 145
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/connect/ConnectClient;->accountListeners:Ljava/util/Set;

    .line 146
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/connect/ConnectClient;->languageListeners:Ljava/util/Set;

    .line 157
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/connect/ConnectClient;->isRegistered:Z

    .line 163
    return-void
.end method

.method private sendMessageToHost(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 369
    iget-object v1, p0, Lcom/nuance/swype/connect/ConnectClient;->mHostMessenger:Landroid/os/Messenger;

    if-eqz v1, :cond_0

    .line 371
    :try_start_0
    iget-object v1, p0, Lcom/nuance/swype/connect/ConnectClient;->mHostMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    :cond_0
    :goto_0
    return-void

    .line 373
    :catch_0
    move-exception v0

    .line 375
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nuance/swype/connect/ConnectClient;->mHostMessenger:Landroid/os/Messenger;

    goto :goto_0
.end method

.method private setStartAlarm(JLjava/lang/String;)V
    .locals 6
    .parameter "triggerAtTime"
    .parameter "managerName"

    .prologue
    .line 500
    const-string v2, "Delaying start of Connect, this is the first time its started on this device"

    invoke-static {v2}, Lcom/nuance/swype/connect/util/Logger;->i(Ljava/lang/String;)V

    .line 502
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 503
    .local v1, extras:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "MANAGER_NAME"

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    new-instance v2, Lcom/nuance/swype/connect/util/Alarm$Builder;

    invoke-virtual {p0}, Lcom/nuance/swype/connect/ConnectClient;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/nuance/swype/connect/ConnectClient;

    const-string v5, "INITIAL_STARTUP_ALARM"

    invoke-direct {v2, v3, v4, v5}, Lcom/nuance/swype/connect/util/Alarm$Builder;-><init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Lcom/nuance/swype/connect/util/Alarm$Builder;->triggerTime(J)Lcom/nuance/swype/connect/util/Alarm$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/nuance/swype/connect/util/Alarm$Builder;->wakeDevice(Z)Lcom/nuance/swype/connect/util/Alarm$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/nuance/swype/connect/util/Alarm$Builder;->extras(Ljava/util/Map;)Lcom/nuance/swype/connect/util/Alarm$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/connect/util/Alarm$Builder;->build()Lcom/nuance/swype/connect/util/Alarm;

    move-result-object v0

    .line 509
    .local v0, alarm:Lcom/nuance/swype/connect/util/Alarm;
    invoke-virtual {v0}, Lcom/nuance/swype/connect/util/Alarm;->set()V

    .line 510
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setStartAlarm "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/nuance/swype/connect/util/Alarm;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/connect/util/Logger;->v(Ljava/lang/String;)V

    .line 511
    return-void
.end method

.method private startClientAfterAlarm(Ljava/lang/String;)V
    .locals 3
    .parameter "managerName"

    .prologue
    .line 492
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Alarm Complete, starting Connect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/connect/util/Logger;->i(Ljava/lang/String;)V

    .line 493
    iget-object v1, p0, Lcom/nuance/swype/connect/ConnectClient;->registry:Lcom/nuance/swype/connect/manager/ManagerRegistry;

    invoke-virtual {v1, p1}, Lcom/nuance/swype/connect/manager/ManagerRegistry;->getManagerReference(Ljava/lang/String;)Lcom/nuance/swype/connect/manager/interfaces/Manager;

    move-result-object v0

    .line 494
    .local v0, manager:Lcom/nuance/swype/connect/manager/interfaces/Manager;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/nuance/swype/connect/manager/interfaces/Manager;->getManagerStartState()Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    move-result-object v1

    sget-object v2, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;->DISABLED:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    if-ne v1, v2, :cond_0

    .line 495
    invoke-interface {v0}, Lcom/nuance/swype/connect/manager/interfaces/Manager;->start()V

    .line 497
    :cond_0
    return-void
.end method


# virtual methods
.method public alarmNotification(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .parameter "type"
    .parameter "data"

    .prologue
    .line 644
    const-string v1, "INITIAL_STARTUP_ALARM"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 645
    const-string v1, "MANAGER_NAME"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 646
    .local v0, managerName:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INITIAL_STARTUP_ALARM : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 648
    invoke-direct {p0, v0}, Lcom/nuance/swype/connect/ConnectClient;->startClientAfterAlarm(Ljava/lang/String;)V

    .line 650
    .end local v0           #managerName:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public backupNow()V
    .locals 0

    .prologue
    .line 475
    return-void
.end method

.method public cancelCommand(Lcom/nuance/swype/connect/util/Command;)Z
    .locals 1
    .parameter "command"

    .prologue
    .line 737
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectClient;->connectManager:Lcom/nuance/swype/connect/ConnectManager;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/connect/ConnectManager;->cancelCommand(Lcom/nuance/swype/connect/util/Command;)Z

    move-result v0

    return v0
.end method

.method public doesFileExist(Ljava/lang/String;)Z
    .locals 3
    .parameter "filePath"

    .prologue
    .line 1191
    const/4 v1, 0x0

    .line 1193
    .local v1, fileExists:Z
    if-eqz p1, :cond_0

    const-string v2, ""

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1194
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1195
    .local v0, f:Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1197
    const/4 v1, 0x1

    .line 1201
    .end local v0           #f:Ljava/io/File;
    :cond_0
    return v1
.end method

.method public getAccountId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 757
    iget-object v1, p0, Lcom/nuance/swype/connect/ConnectClient;->registry:Lcom/nuance/swype/connect/manager/ManagerRegistry;

    const-string v2, "account"

    invoke-virtual {v1, v2}, Lcom/nuance/swype/connect/manager/ManagerRegistry;->getManagerReference(Ljava/lang/String;)Lcom/nuance/swype/connect/manager/interfaces/Manager;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/connect/manager/AccountManager;

    .line 758
    .local v0, accountManager:Lcom/nuance/swype/connect/manager/AccountManager;
    if-eqz v0, :cond_0

    .line 759
    invoke-virtual {v0}, Lcom/nuance/swype/connect/manager/AccountManager;->getAccountId()Ljava/lang/String;

    move-result-object v1

    .line 761
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getActiveLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 845
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectClient;->activeLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getApplicationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 873
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectClient;->applicationId:Ljava/lang/String;

    return-object v0
.end method

.method public getBuildProps()Lcom/nuance/swype/connect/util/BuildProps;
    .locals 1

    .prologue
    .line 971
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectClient;->buildProperties:Lcom/nuance/swype/connect/util/BuildProperties;

    return-object v0
.end method

.method public getConfiguration()Lcom/nuance/swype/connect/configuration/ConnectConfiguration;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectClient;->connectConfiguration:Lcom/nuance/swype/connect/configuration/ConnectConfiguration;

    return-object v0
.end method

.method public getConfigurationBooleanValue(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 467
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectClient;->connectConfiguration:Lcom/nuance/swype/connect/configuration/ConnectConfiguration;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->getBooleanProperty(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getConfigurationIntValue(Ljava/lang/String;)I
    .locals 1
    .parameter "name"

    .prologue
    .line 463
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectClient;->connectConfiguration:Lcom/nuance/swype/connect/configuration/ConnectConfiguration;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->getIntProperty(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getConfigurationValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "name"

    .prologue
    .line 459
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectClient;->connectConfiguration:Lcom/nuance/swype/connect/configuration/ConnectConfiguration;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConnectFeaturesStatus()Z
    .locals 1

    .prologue
    .line 792
    iget-boolean v0, p0, Lcom/nuance/swype/connect/ConnectClient;->connectFeaturesStatus:Z

    return v0
.end method

.method public getConnectVersion()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x3

    .line 1059
    const-string v1, "0"

    .line 1060
    .local v1, minorVersion:Ljava/lang/String;
    const/16 v5, 0x122

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 1061
    .local v0, buildVersion:Ljava/lang/String;
    const-string v2, "d"

    .line 1062
    .local v2, patchVersion:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/nuance/swype/connect/ConnectClient;->getSwypeVersion()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1063
    invoke-virtual {p0}, Lcom/nuance/swype/connect/ConnectClient;->getSwypeVersion()Ljava/lang/String;

    move-result-object v5

    const-string v6, "\\."

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1064
    .local v3, swypeVersion:[Ljava/lang/String;
    array-length v5, v3

    if-le v5, v7, :cond_0

    .line 1066
    aget-object v2, v3, v7

    .line 1069
    .end local v3           #swypeVersion:[Ljava/lang/String;
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "6"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1075
    .local v4, version:Ljava/lang/StringBuilder;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public getCoreVersionAlpha()Ljava/lang/String;
    .locals 1

    .prologue
    .line 889
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectClient;->coreVersionAlpha:Ljava/lang/String;

    return-object v0
.end method

.method public getCoreVersionChinese()Ljava/lang/String;
    .locals 1

    .prologue
    .line 897
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectClient;->coreVersionChinese:Ljava/lang/String;

    return-object v0
.end method

.method public getCoreVersionJapanese()Ljava/lang/String;
    .locals 1

    .prologue
    .line 905
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectClient;->coreVersionJapanese:Ljava/lang/String;

    return-object v0
.end method

.method public getCoreVersionKorean()Ljava/lang/String;
    .locals 1

    .prologue
    .line 913
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectClient;->coreVersionKorean:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 975
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectClient;->currentLocale:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomerString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 881
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectClient;->customerString:Ljava/lang/String;

    return-object v0
.end method

.method public getDataStore()Lcom/nuance/swype/connect/store/PersistentDataStore;
    .locals 1

    .prologue
    .line 1042
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectClient;->prefManager:Lcom/nuance/swype/connect/manager/PreferencesManager;

    return-object v0
.end method

.method public getDebugResponse()I
    .locals 2

    .prologue
    .line 804
    iget v0, p0, Lcom/nuance/swype/connect/ConnectClient;->debugResponse:I

    .line 805
    .local v0, response:I
    const/high16 v1, -0x8000

    iput v1, p0, Lcom/nuance/swype/connect/ConnectClient;->debugResponse:I

    .line 806
    return v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 741
    iget-object v1, p0, Lcom/nuance/swype/connect/ConnectClient;->registry:Lcom/nuance/swype/connect/manager/ManagerRegistry;

    const-string v2, "device"

    invoke-virtual {v1, v2}, Lcom/nuance/swype/connect/manager/ManagerRegistry;->getManagerReference(Ljava/lang/String;)Lcom/nuance/swype/connect/manager/interfaces/Manager;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/connect/manager/DeviceManager;

    .line 742
    .local v0, deviceManager:Lcom/nuance/swype/connect/manager/DeviceManager;
    if-eqz v0, :cond_0

    .line 743
    invoke-virtual {v0}, Lcom/nuance/swype/connect/manager/DeviceManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 745
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 713
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectClient;->msgHandler:Lcom/nuance/swype/connect/ConnectClient$MessageHandler;

    return-object v0
.end method

.method public getLanguagesAvailable()Ljava/lang/String;
    .locals 1

    .prologue
    .line 818
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectClient;->languagesAvailable:Ljava/lang/String;

    return-object v0
.end method

.method public getLocaleWithVariant()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1183
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectClient;->activeLocale:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkState()Lcom/nuance/swype/connect/system/NetworkState;
    .locals 1

    .prologue
    .line 1187
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectClient;->connectivity:Lcom/nuance/swype/connect/system/Connectivity;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/system/Connectivity;->getNetworkState()Lcom/nuance/swype/connect/system/NetworkState;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkTimeout()I
    .locals 1

    .prologue
    .line 827
    iget v0, p0, Lcom/nuance/swype/connect/ConnectClient;->networkTimeout:I

    return v0
.end method

.method public getOemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 857
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectClient;->oemId:Ljava/lang/String;

    return-object v0
.end method

.method public getReportingStatisticsStatus()Z
    .locals 1

    .prologue
    .line 943
    iget-boolean v0, p0, Lcom/nuance/swype/connect/ConnectClient;->reportingStatisticsStatus:Z

    return v0
.end method

.method public getReportingUsageStatus()Z
    .locals 1

    .prologue
    .line 937
    iget-boolean v0, p0, Lcom/nuance/swype/connect/ConnectClient;->reportingUsageStatus:Z

    return v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 865
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectClient;->sdkVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 749
    iget-object v1, p0, Lcom/nuance/swype/connect/ConnectClient;->registry:Lcom/nuance/swype/connect/manager/ManagerRegistry;

    const-string v2, "session"

    invoke-virtual {v1, v2}, Lcom/nuance/swype/connect/manager/ManagerRegistry;->getManagerReference(Ljava/lang/String;)Lcom/nuance/swype/connect/manager/interfaces/Manager;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/connect/manager/SessionManager;

    .line 750
    .local v0, sessionManager:Lcom/nuance/swype/connect/manager/SessionManager;
    if-eqz v0, :cond_0

    .line 751
    invoke-virtual {v0}, Lcom/nuance/swype/connect/manager/SessionManager;->getSessionId()Ljava/lang/String;

    move-result-object v1

    .line 753
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSwib()Ljava/lang/String;
    .locals 1

    .prologue
    .line 849
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectClient;->swib:Ljava/lang/String;

    return-object v0
.end method

.method public getSwypeVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 810
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectClient;->swypeVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getTrialStatus()Z
    .locals 1

    .prologue
    .line 921
    iget-boolean v0, p0, Lcom/nuance/swype/connect/ConnectClient;->trialStatus:Z

    return v0
.end method

.method protected handleCommand(Landroid/content/Intent;)V
    .locals 9
    .parameter "intent"

    .prologue
    .line 589
    if-eqz p1, :cond_0

    .line 590
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 591
    .local v3, extras:Landroid/os/Bundle;
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 592
    .local v0, action:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ConnectClient.handleCommand() action: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/nuance/swype/connect/util/Logger;->v(Ljava/lang/String;)V

    .line 593
    if-eqz v0, :cond_1

    const-string v7, ".RefreshMessages"

    invoke-virtual {v0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 594
    const/16 v7, 0x3f

    invoke-virtual {p0, v7}, Lcom/nuance/swype/connect/ConnectClient;->postMessage(I)V

    .line 635
    .end local v0           #action:Ljava/lang/String;
    .end local v3           #extras:Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 595
    .restart local v0       #action:Ljava/lang/String;
    .restart local v3       #extras:Landroid/os/Bundle;
    :cond_1
    if-eqz v0, :cond_2

    const-string v7, ".RefreshConnect"

    invoke-virtual {v0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 596
    const/16 v7, 0x8

    invoke-virtual {p0, v7}, Lcom/nuance/swype/connect/ConnectClient;->postMessage(I)V

    goto :goto_0

    .line 597
    :cond_2
    if-eqz v0, :cond_3

    const-string v7, "com.nuance.swype.input.Upgrade"

    invoke-virtual {v0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 598
    const/16 v7, 0xd5

    invoke-virtual {p0, v7}, Lcom/nuance/swype/connect/ConnectClient;->postMessage(I)V

    goto :goto_0

    .line 599
    :cond_3
    if-eqz v0, :cond_4

    const-string v7, "com.nuance.swype.input.InstallALM"

    invoke-virtual {v0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 600
    invoke-virtual {p0}, Lcom/nuance/swype/connect/ConnectClient;->getHandler()Landroid/os/Handler;

    move-result-object v7

    const/16 v8, 0xea

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 602
    .local v5, msg:Landroid/os/Message;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MESSAGE_CLIENT_ALM_INSTALL extras: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "DEFAULT_KEY"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 604
    invoke-virtual {v5, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 605
    invoke-virtual {p0, v5}, Lcom/nuance/swype/connect/ConnectClient;->postMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 606
    .end local v5           #msg:Landroid/os/Message;
    :cond_4
    if-eqz v0, :cond_6

    const-string v7, "com.nuance.swype.input.DisplaySettings"

    invoke-virtual {v0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 607
    const-string v6, "SETTINGS"

    .line 608
    .local v6, settingsPage:Ljava/lang/String;
    if-eqz v3, :cond_5

    const-string v7, "DEFAULT_KEY"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 609
    const-string v7, "DEFAULT_KEY"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 611
    :cond_5
    const/16 v7, 0x79

    invoke-virtual {p0, v7, v6}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(ILjava/lang/String;)V

    goto :goto_0

    .line 612
    .end local v6           #settingsPage:Ljava/lang/String;
    :cond_6
    if-eqz v3, :cond_0

    .line 613
    const-string v7, "ALARM_CLASS"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 614
    .local v1, alarmClass:Ljava/lang/String;
    const-string v7, "ALARM_TYPE"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 616
    .local v2, alarmType:Ljava/lang/String;
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 617
    const-class v7, Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v7}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 618
    invoke-virtual {p0, v2, v3}, Lcom/nuance/swype/connect/ConnectClient;->alarmNotification(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 619
    :cond_7
    const-class v7, Lcom/nuance/swype/connect/comm/MqttConnector;

    invoke-virtual {v7}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 620
    iget-object v7, p0, Lcom/nuance/swype/connect/ConnectClient;->mqttManager:Lcom/nuance/swype/connect/comm/MqttConnector;

    invoke-virtual {v7, v2, v3}, Lcom/nuance/swype/connect/comm/MqttConnector;->alarmNotification(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 621
    :cond_8
    const-class v7, Lcom/nuance/swype/connect/system/Connectivity;

    invoke-virtual {v7}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 622
    iget-object v7, p0, Lcom/nuance/swype/connect/ConnectClient;->connectivity:Lcom/nuance/swype/connect/system/Connectivity;

    invoke-virtual {v7, v2, v3}, Lcom/nuance/swype/connect/system/Connectivity;->alarmNotification(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 624
    :cond_9
    iget-object v7, p0, Lcom/nuance/swype/connect/ConnectClient;->registry:Lcom/nuance/swype/connect/manager/ManagerRegistry;

    invoke-virtual {v7, v1}, Lcom/nuance/swype/connect/manager/ManagerRegistry;->getManagerReferenceByClass(Ljava/lang/String;)Lcom/nuance/swype/connect/manager/interfaces/Manager;

    move-result-object v4

    .line 625
    .local v4, manager:Lcom/nuance/swype/connect/manager/interfaces/Manager;
    if-eqz v4, :cond_a

    instance-of v7, v4, Lcom/nuance/swype/connect/manager/interfaces/CommandManager;

    if-eqz v7, :cond_a

    move-object v7, v4

    .line 626
    check-cast v7, Lcom/nuance/swype/connect/manager/interfaces/CommandManager;

    invoke-interface {v7, v2, v3}, Lcom/nuance/swype/connect/manager/interfaces/CommandManager;->alarmNotification(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 627
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Alarm handled by: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 629
    :cond_a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to find reference for alarm. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected handleMessage(Landroid/os/Handler;Landroid/os/Message;)V
    .locals 9
    .parameter "handler"
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    const/16 v8, 0x5dc

    const/4 v7, 0x1

    .line 202
    iget-object v5, p0, Lcom/nuance/swype/connect/ConnectClient;->registry:Lcom/nuance/swype/connect/manager/ManagerRegistry;

    invoke-virtual {v5, p2}, Lcom/nuance/swype/connect/manager/ManagerRegistry;->handleMessage(Landroid/os/Message;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    iget v5, p2, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    goto :goto_0

    .line 303
    :sswitch_0
    const-string v5, "MESSAGE_HOST_DEREGISTER"

    invoke-static {v5}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 304
    iget-object v5, p0, Lcom/nuance/swype/connect/ConnectClient;->registry:Lcom/nuance/swype/connect/manager/ManagerRegistry;

    invoke-virtual {v5}, Lcom/nuance/swype/connect/manager/ManagerRegistry;->deregister()V

    .line 305
    invoke-virtual {p0}, Lcom/nuance/swype/connect/ConnectClient;->startNextManager()V

    .line 306
    invoke-virtual {p0, v7, v8}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHostDelayed(II)V

    goto :goto_0

    .line 214
    :sswitch_1
    const-string v5, "Message: Client Register"

    invoke-static {v5}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 215
    iget v5, p0, Lcom/nuance/swype/connect/ConnectClient;->bindCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/nuance/swype/connect/ConnectClient;->bindCount:I

    .line 216
    const/4 v2, 0x0

    .line 217
    .local v2, handlerList:Ljava/lang/String;
    iput-boolean v7, p0, Lcom/nuance/swype/connect/ConnectClient;->isRegistered:Z

    .line 219
    iget-object v5, p2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iput-object v5, p0, Lcom/nuance/swype/connect/ConnectClient;->mHostMessenger:Landroid/os/Messenger;

    .line 220
    invoke-virtual {p2}, Landroid/os/Message;->peekData()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 221
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 222
    .local v1, data:Landroid/os/Bundle;
    const-string v5, "HANDLER_LIST"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 224
    .local v3, list:Ljava/lang/String;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 225
    move-object v2, v3

    .line 228
    :cond_2
    const-string v5, "ENABLE_BROADCAST_RESPONSE"

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/nuance/swype/connect/ConnectClient;->broadcastResponse:Z

    .line 231
    .end local v1           #data:Landroid/os/Bundle;
    .end local v3           #list:Ljava/lang/String;
    :cond_3
    if-eqz v2, :cond_4

    .line 232
    invoke-virtual {p0, v2}, Lcom/nuance/swype/connect/ConnectClient;->registerHandlers(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 233
    const/16 v5, 0x7c

    invoke-virtual {p0}, Lcom/nuance/swype/connect/ConnectClient;->getConnectVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(ILjava/lang/String;)V

    goto :goto_0

    .line 241
    :cond_4
    const/16 v5, 0x7b

    invoke-virtual {p0}, Lcom/nuance/swype/connect/ConnectClient;->getConnectVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(ILjava/lang/String;)V

    goto :goto_0

    .line 249
    :cond_5
    iget v5, p0, Lcom/nuance/swype/connect/ConnectClient;->bindCount:I

    if-le v5, v7, :cond_6

    .line 250
    iget-object v5, p0, Lcom/nuance/swype/connect/ConnectClient;->registry:Lcom/nuance/swype/connect/manager/ManagerRegistry;

    invoke-virtual {v5}, Lcom/nuance/swype/connect/manager/ManagerRegistry;->rebind()Z

    .line 253
    :cond_6
    iget-object v5, p0, Lcom/nuance/swype/connect/ConnectClient;->registry:Lcom/nuance/swype/connect/manager/ManagerRegistry;

    invoke-virtual {v5}, Lcom/nuance/swype/connect/manager/ManagerRegistry;->isValid()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 254
    invoke-virtual {p0}, Lcom/nuance/swype/connect/ConnectClient;->startNextManager()V

    goto :goto_0

    .line 256
    :cond_7
    const-string v5, "There are no managers registered!!!"

    invoke-static {v5}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 257
    const-wide/16 v5, 0x5dc

    invoke-virtual {p0, p2, v5, v6}, Lcom/nuance/swype/connect/ConnectClient;->postMessageDelayed(Landroid/os/Message;J)V

    goto/16 :goto_0

    .line 263
    .end local v2           #handlerList:Ljava/lang/String;
    :sswitch_2
    const-string v5, "Message: Client Unregister"

    invoke-static {v5}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 264
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/nuance/swype/connect/ConnectClient;->mHostMessenger:Landroid/os/Messenger;

    .line 265
    iput-boolean v6, p0, Lcom/nuance/swype/connect/ConnectClient;->isRegistered:Z

    .line 266
    iget v5, p0, Lcom/nuance/swype/connect/ConnectClient;->bindCount:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/nuance/swype/connect/ConnectClient;->bindCount:I

    .line 268
    iget-object v5, p0, Lcom/nuance/swype/connect/ConnectClient;->registry:Lcom/nuance/swype/connect/manager/ManagerRegistry;

    invoke-virtual {v5}, Lcom/nuance/swype/connect/manager/ManagerRegistry;->destroy()V

    goto/16 :goto_0

    .line 273
    :sswitch_3
    iget-object v5, p0, Lcom/nuance/swype/connect/ConnectClient;->languagesAvailable:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_0

    .line 274
    const/16 v5, 0x49

    invoke-virtual {p0, v5, v8}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHostDelayed(II)V

    goto/16 :goto_0

    .line 282
    :sswitch_4
    const-string v5, "Message: MESSAGE_CLIENT_START_IMMEDIDATELY"

    invoke-static {v5}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 286
    invoke-virtual {p0}, Lcom/nuance/swype/connect/ConnectClient;->getDataStore()Lcom/nuance/swype/connect/store/PersistentDataStore;

    move-result-object v5

    const-string v6, "DeviceFirstTimeStartup"

    invoke-interface {v5, v6, v7}, Lcom/nuance/swype/connect/store/PersistentDataStore;->saveBoolean(Ljava/lang/String;Z)Z

    .line 287
    invoke-virtual {p0}, Lcom/nuance/swype/connect/ConnectClient;->startNextManager()V

    goto/16 :goto_0

    .line 291
    :sswitch_5
    const-string v5, "Message: MESSAGE_CLIENT_SET_CURRENT_LOCALE"

    invoke-static {v5}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 292
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "DEFAULT_KEY"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/nuance/swype/connect/ConnectClient;->currentLocale:Ljava/lang/String;

    .line 293
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Message: Receive Locale Change = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/nuance/swype/connect/ConnectClient;->currentLocale:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 294
    iget-object v5, p0, Lcom/nuance/swype/connect/ConnectClient;->currentLocale:Ljava/lang/String;

    if-nez v5, :cond_8

    .line 295
    const/16 v5, 0x50

    invoke-virtual {p0, v5, v8}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHostDelayed(II)V

    goto/16 :goto_0

    .line 298
    :cond_8
    iget-object v5, p0, Lcom/nuance/swype/connect/ConnectClient;->currentLocale:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/nuance/swype/connect/ConnectClient;->setCurrentLocale(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 311
    :sswitch_6
    const-string v5, "APICommandMessages.MESSAGE_CLIENT_PROCESS_RESPONSE_DELAYED"

    invoke-static {v5}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 312
    iget-object v4, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/nuance/swype/connect/util/Response;

    .line 313
    .local v4, response:Lcom/nuance/swype/connect/util/Response;
    invoke-virtual {p0, v4}, Lcom/nuance/swype/connect/ConnectClient;->processResponse(Lcom/nuance/swype/connect/util/Response;)V

    goto/16 :goto_0

    .line 317
    .end local v4           #response:Lcom/nuance/swype/connect/util/Response;
    :sswitch_7
    const-string v5, "Message: MESSAGE_CLIENT_UPDATE_CONFIGURATION"

    invoke-static {v5}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 318
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "DEFAULT_KEY"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 319
    .local v0, configuration:Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v5, p0, Lcom/nuance/swype/connect/ConnectClient;->connectConfiguration:Lcom/nuance/swype/connect/configuration/ConnectConfiguration;

    if-eqz v5, :cond_0

    .line 320
    iget-object v5, p0, Lcom/nuance/swype/connect/ConnectClient;->connectConfiguration:Lcom/nuance/swype/connect/configuration/ConnectConfiguration;

    invoke-virtual {v5, v0}, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->updateFromString(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 206
    :sswitch_data_0
    .sparse-switch
        0x81 -> :sswitch_0
        0xc9 -> :sswitch_1
        0xca -> :sswitch_2
        0xd2 -> :sswitch_5
        0xd6 -> :sswitch_3
        0xde -> :sswitch_4
        0x119 -> :sswitch_7
        0x11e -> :sswitch_6
    .end sparse-switch
.end method

.method public invalidAccount()V
    .locals 3

    .prologue
    .line 1131
    iget-object v2, p0, Lcom/nuance/swype/connect/ConnectClient;->accountListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/connect/manager/interfaces/AccountListener;

    .line 1132
    .local v1, l:Lcom/nuance/swype/connect/manager/interfaces/AccountListener;
    invoke-interface {v1}, Lcom/nuance/swype/connect/manager/interfaces/AccountListener;->onInvalidated()V

    goto :goto_0

    .line 1134
    .end local v1           #l:Lcom/nuance/swype/connect/manager/interfaces/AccountListener;
    :cond_0
    return-void
.end method

.method public isAccountLinked()Z
    .locals 3

    .prologue
    .line 1143
    iget-object v1, p0, Lcom/nuance/swype/connect/ConnectClient;->registry:Lcom/nuance/swype/connect/manager/ManagerRegistry;

    const-string v2, "account"

    invoke-virtual {v1, v2}, Lcom/nuance/swype/connect/manager/ManagerRegistry;->getManagerReference(Ljava/lang/String;)Lcom/nuance/swype/connect/manager/interfaces/Manager;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/connect/manager/AccountManager;

    .line 1144
    .local v0, manager:Lcom/nuance/swype/connect/manager/AccountManager;
    if-eqz v0, :cond_0

    .line 1145
    invoke-virtual {v0}, Lcom/nuance/swype/connect/manager/AccountManager;->isAccountLinked()Z

    move-result v1

    .line 1147
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isBroadcastResponseEnabled()Z
    .locals 1

    .prologue
    .line 1118
    iget-boolean v0, p0, Lcom/nuance/swype/connect/ConnectClient;->broadcastResponse:Z

    return v0
.end method

.method public isCellularDataPermitted()Z
    .locals 1

    .prologue
    .line 765
    iget-boolean v0, p0, Lcom/nuance/swype/connect/ConnectClient;->cellularDataPermitted:Z

    return v0
.end method

.method public isClientActive()Z
    .locals 1

    .prologue
    .line 192
    iget-boolean v0, p0, Lcom/nuance/swype/connect/ConnectClient;->isRegistered:Z

    return v0
.end method

.method public isMQTTEnabled()Z
    .locals 2

    .prologue
    .line 1087
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectClient;->connectConfiguration:Lcom/nuance/swype/connect/configuration/ConnectConfiguration;

    const-string v1, "MQTT_ENABLED"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->getBooleanProperty(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isOnline()Z
    .locals 1

    .prologue
    .line 1038
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectClient;->connectManager:Lcom/nuance/swype/connect/ConnectManager;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectManager;->isOnline()Z

    move-result v0

    return v0
.end method

.method public isRoamingPermitted()Z
    .locals 1

    .prologue
    .line 783
    iget-boolean v0, p0, Lcom/nuance/swype/connect/ConnectClient;->roamingPermitted:Z

    return v0
.end method

.method public isWifiPermitted()Z
    .locals 1

    .prologue
    .line 774
    iget-boolean v0, p0, Lcom/nuance/swype/connect/ConnectClient;->wifiPermitted:Z

    return v0
.end method

.method public linkedAccount()V
    .locals 3

    .prologue
    .line 1137
    iget-object v2, p0, Lcom/nuance/swype/connect/ConnectClient;->accountListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/connect/manager/interfaces/AccountListener;

    .line 1138
    .local v1, l:Lcom/nuance/swype/connect/manager/interfaces/AccountListener;
    invoke-interface {v1}, Lcom/nuance/swype/connect/manager/interfaces/AccountListener;->onLinked()V

    goto :goto_0

    .line 1140
    .end local v1           #l:Lcom/nuance/swype/connect/manager/interfaces/AccountListener;
    :cond_0
    return-void
.end method

.method public managerStartComplete(Ljava/lang/String;)V
    .locals 2
    .parameter "managerName"

    .prologue
    .line 521
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "managerStartComplete("

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

    .line 523
    const-string v0, "session"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectClient;->mqttManager:Lcom/nuance/swype/connect/comm/MqttConnector;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/comm/MqttConnector;->postStart()V

    .line 526
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectClient;->mqttManager:Lcom/nuance/swype/connect/comm/MqttConnector;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/comm/MqttConnector;->start()V

    .line 529
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/connect/ConnectClient;->startNextManager()V

    .line 530
    return-void
.end method

.method public notifyPossibleUpgrade()V
    .locals 1

    .prologue
    .line 481
    const-string v0, "ConnectClient.notifyPossibleUpgrade()"

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 482
    const/16 v0, 0x41

    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/ConnectClient;->postMessage(I)V

    .line 483
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "i"

    .prologue
    .line 395
    const-string v0, "onBind()"

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 396
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectClient;->messenger:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 403
    new-instance v0, Lcom/nuance/swype/connect/manager/PreferencesManager;

    invoke-direct {v0, p0}, Lcom/nuance/swype/connect/manager/PreferencesManager;-><init>(Lcom/nuance/swype/connect/ConnectClient;)V

    iput-object v0, p0, Lcom/nuance/swype/connect/ConnectClient;->prefManager:Lcom/nuance/swype/connect/manager/PreferencesManager;

    .line 404
    new-instance v0, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;

    invoke-direct {v0, p0}, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;-><init>(Lcom/nuance/swype/connect/ConnectClient;)V

    iput-object v0, p0, Lcom/nuance/swype/connect/ConnectClient;->connectConfiguration:Lcom/nuance/swype/connect/configuration/ConnectConfiguration;

    .line 405
    new-instance v0, Lcom/nuance/swype/connect/util/BuildProperties;

    invoke-direct {v0, p0}, Lcom/nuance/swype/connect/util/BuildProperties;-><init>(Lcom/nuance/swype/connect/ConnectClient;)V

    iput-object v0, p0, Lcom/nuance/swype/connect/ConnectClient;->buildProperties:Lcom/nuance/swype/connect/util/BuildProperties;

    .line 408
    const-string v0, "Connect"

    iget-object v1, p0, Lcom/nuance/swype/connect/ConnectClient;->connectConfiguration:Lcom/nuance/swype/connect/configuration/ConnectConfiguration;

    const-string v2, "LOGGING"

    invoke-virtual {v1, v2}, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->getIntProperty(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/nuance/swype/connect/util/Logger;->configure(Ljava/lang/String;I)V

    .line 411
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectClient;->connectConfiguration:Lcom/nuance/swype/connect/configuration/ConnectConfiguration;

    const-string v1, "LOGGING"

    new-instance v2, Lcom/nuance/swype/connect/ConnectClient$2;

    invoke-direct {v2, p0}, Lcom/nuance/swype/connect/ConnectClient$2;-><init>(Lcom/nuance/swype/connect/ConnectClient;)V

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->setConfigurationListener(Ljava/lang/String;Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;)V

    .line 418
    new-instance v0, Lcom/nuance/swype/connect/system/Connectivity;

    invoke-direct {v0, p0}, Lcom/nuance/swype/connect/system/Connectivity;-><init>(Lcom/nuance/swype/connect/ConnectClient;)V

    iput-object v0, p0, Lcom/nuance/swype/connect/ConnectClient;->connectivity:Lcom/nuance/swype/connect/system/Connectivity;

    .line 419
    new-instance v0, Lcom/nuance/swype/connect/ConnectManager;

    invoke-direct {v0, p0}, Lcom/nuance/swype/connect/ConnectManager;-><init>(Lcom/nuance/swype/connect/ConnectClient;)V

    iput-object v0, p0, Lcom/nuance/swype/connect/ConnectClient;->connectManager:Lcom/nuance/swype/connect/ConnectManager;

    .line 420
    new-instance v0, Lcom/nuance/swype/connect/comm/MqttConnector;

    invoke-direct {v0, p0}, Lcom/nuance/swype/connect/comm/MqttConnector;-><init>(Lcom/nuance/swype/connect/ConnectClient;)V

    iput-object v0, p0, Lcom/nuance/swype/connect/ConnectClient;->mqttManager:Lcom/nuance/swype/connect/comm/MqttConnector;

    .line 422
    invoke-static {}, Lcom/nuance/swype/connect/manager/ManagerRegistry;->getInstance()Lcom/nuance/swype/connect/manager/ManagerRegistry;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/connect/ConnectClient;->registry:Lcom/nuance/swype/connect/manager/ManagerRegistry;

    .line 424
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectClient;->connectManager:Lcom/nuance/swype/connect/ConnectManager;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectManager;->start()V

    .line 426
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 427
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 654
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectClient;->msgHandler:Lcom/nuance/swype/connect/ConnectClient$MessageHandler;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectClient$MessageHandler;->stop()V

    .line 656
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectClient;->connectConfiguration:Lcom/nuance/swype/connect/configuration/ConnectConfiguration;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->destroy()V

    .line 657
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectClient;->connectManager:Lcom/nuance/swype/connect/ConnectManager;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectManager;->destroyConnection()V

    .line 658
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectClient;->registry:Lcom/nuance/swype/connect/manager/ManagerRegistry;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/manager/ManagerRegistry;->destroy()V

    .line 659
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectClient;->connectivity:Lcom/nuance/swype/connect/system/Connectivity;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/system/Connectivity;->destroy()V

    .line 660
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 661
    return-void
.end method

.method public onPostUpgrade()V
    .locals 1

    .prologue
    .line 1083
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectClient;->registry:Lcom/nuance/swype/connect/manager/ManagerRegistry;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/manager/ManagerRegistry;->postUpgrade()V

    .line 1084
    return-void
.end method

.method public onPrepareForUpgrade()V
    .locals 1

    .prologue
    .line 1079
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectClient;->registry:Lcom/nuance/swype/connect/manager/ManagerRegistry;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/manager/ManagerRegistry;->prepareForUpgrade()V

    .line 1080
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 571
    invoke-virtual {p0, p1}, Lcom/nuance/swype/connect/ConnectClient;->handleCommand(Landroid/content/Intent;)V

    .line 575
    const/4 v0, 0x1

    return v0
.end method

.method public performTask(Ljava/lang/String;)V
    .locals 7
    .parameter "task"

    .prologue
    .line 989
    const-string v5, "MESSAGE_AVAILABLE"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 990
    const/16 v5, 0xc

    invoke-virtual {p0, v5}, Lcom/nuance/swype/connect/ConnectClient;->postMessage(I)V

    .line 1035
    :cond_0
    :goto_0
    return-void

    .line 991
    :cond_1
    const-string v5, "UPDATE_LICENSE"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 992
    invoke-virtual {p0}, Lcom/nuance/swype/connect/ConnectClient;->getHandler()Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x9

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 994
    .local v4, msg:Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 995
    .local v1, data:Landroid/os/Bundle;
    const-string v5, "DEFAULT_KEY"

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 996
    invoke-virtual {v4, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 997
    invoke-virtual {p0, v4}, Lcom/nuance/swype/connect/ConnectClient;->postMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 998
    .end local v1           #data:Landroid/os/Bundle;
    .end local v4           #msg:Landroid/os/Message;
    :cond_2
    const-string v5, "UPGRADE_AVAILABLE"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 999
    const/16 v5, 0x40

    invoke-virtual {p0, v5}, Lcom/nuance/swype/connect/ConnectClient;->postMessage(I)V

    goto :goto_0

    .line 1000
    :cond_3
    const-string v5, "SEND_REPORTING"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1001
    const/16 v5, 0x42

    invoke-virtual {p0, v5}, Lcom/nuance/swype/connect/ConnectClient;->postMessage(I)V

    goto :goto_0

    .line 1002
    :cond_4
    const-string v5, "TIMERS_UPDATED"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1003
    const/16 v5, 0x1a

    invoke-virtual {p0, v5}, Lcom/nuance/swype/connect/ConnectClient;->postMessage(I)V

    goto :goto_0

    .line 1004
    :cond_5
    const-string v5, "DLM_BACKUP_"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1006
    :try_start_0
    invoke-virtual {p0}, Lcom/nuance/swype/connect/ConnectClient;->getHandler()Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 1008
    .local v3, m:Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1009
    .restart local v1       #data:Landroid/os/Bundle;
    const-string v5, "DLM_BACKUP_"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1010
    .local v0, category:I
    const-string v5, "DLM_EVENT_CATEGORY"

    invoke-virtual {v1, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1011
    invoke-virtual {v3, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1012
    invoke-virtual {p0, v3}, Lcom/nuance/swype/connect/ConnectClient;->postMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1013
    .end local v0           #category:I
    .end local v1           #data:Landroid/os/Bundle;
    .end local v3           #m:Landroid/os/Message;
    :catch_0
    move-exception v2

    .line 1014
    .local v2, e:Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DLM_BACKUP_ Could not parse task: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1016
    .end local v2           #e:Ljava/lang/NumberFormatException;
    :cond_6
    const-string v5, "DLM_SYNC_"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1018
    :try_start_1
    invoke-virtual {p0}, Lcom/nuance/swype/connect/ConnectClient;->getHandler()Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x1f

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 1020
    .restart local v3       #m:Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1021
    .restart local v1       #data:Landroid/os/Bundle;
    const-string v5, "DLM_SYNC_"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1022
    .restart local v0       #category:I
    const-string v5, "DLM_EVENT_CATEGORY"

    invoke-virtual {v1, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1023
    invoke-virtual {v3, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1024
    invoke-virtual {p0, v3}, Lcom/nuance/swype/connect/ConnectClient;->postMessage(Landroid/os/Message;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 1025
    .end local v0           #category:I
    .end local v1           #data:Landroid/os/Bundle;
    .end local v3           #m:Landroid/os/Message;
    :catch_1
    move-exception v2

    .line 1026
    .restart local v2       #e:Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DLM_SYNC_ Could not parse task: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1028
    .end local v2           #e:Ljava/lang/NumberFormatException;
    :cond_7
    const-string v5, "GET_CONFIG"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1029
    const/16 v5, 0x8c

    invoke-virtual {p0, v5}, Lcom/nuance/swype/connect/ConnectClient;->postMessage(I)V

    goto/16 :goto_0

    .line 1030
    :cond_8
    const-string v5, "CDB_LIST_UPDATE"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1031
    const/16 v5, 0x21

    invoke-virtual {p0, v5}, Lcom/nuance/swype/connect/ConnectClient;->postMessage(I)V

    goto/16 :goto_0

    .line 1032
    :cond_9
    const-string v5, "CDB_AVAILABLE"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1033
    const/16 v5, 0x22

    invoke-virtual {p0, v5}, Lcom/nuance/swype/connect/ConnectClient;->postMessage(I)V

    goto/16 :goto_0
.end method

.method public postMessage(I)V
    .locals 2
    .parameter "message"

    .prologue
    .line 664
    iget-object v1, p0, Lcom/nuance/swype/connect/ConnectClient;->msgHandler:Lcom/nuance/swype/connect/ConnectClient$MessageHandler;

    invoke-virtual {v1, p1}, Lcom/nuance/swype/connect/ConnectClient$MessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 665
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/nuance/swype/connect/ConnectClient;->msgHandler:Lcom/nuance/swype/connect/ConnectClient$MessageHandler;

    invoke-virtual {v1, v0}, Lcom/nuance/swype/connect/ConnectClient$MessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 666
    return-void
.end method

.method public postMessage(ILandroid/os/Bundle;)V
    .locals 2
    .parameter "message"
    .parameter "data"

    .prologue
    .line 704
    invoke-virtual {p0}, Lcom/nuance/swype/connect/ConnectClient;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 706
    .local v0, msg:Landroid/os/Message;
    if-eqz v0, :cond_0

    .line 707
    invoke-virtual {v0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 708
    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/ConnectClient;->postMessage(Landroid/os/Message;)V

    .line 710
    :cond_0
    return-void
.end method

.method public postMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 669
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectClient;->msgHandler:Lcom/nuance/swype/connect/ConnectClient$MessageHandler;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/connect/ConnectClient$MessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 670
    return-void
.end method

.method public postMessageDelayed(IJ)V
    .locals 2
    .parameter "message"
    .parameter "millis"

    .prologue
    .line 677
    iget-object v1, p0, Lcom/nuance/swype/connect/ConnectClient;->msgHandler:Lcom/nuance/swype/connect/ConnectClient$MessageHandler;

    invoke-virtual {v1, p1}, Lcom/nuance/swype/connect/ConnectClient$MessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 678
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/nuance/swype/connect/ConnectClient;->msgHandler:Lcom/nuance/swype/connect/ConnectClient$MessageHandler;

    invoke-virtual {v1, v0, p2, p3}, Lcom/nuance/swype/connect/ConnectClient$MessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 679
    return-void
.end method

.method public postMessageDelayed(Landroid/os/Message;J)V
    .locals 1
    .parameter "msg"
    .parameter "millis"

    .prologue
    .line 673
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectClient;->msgHandler:Lcom/nuance/swype/connect/ConnectClient$MessageHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/nuance/swype/connect/ConnectClient$MessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 674
    return-void
.end method

.method public postMessageWithInt(II)V
    .locals 3
    .parameter "message"
    .parameter "value"

    .prologue
    .line 682
    invoke-virtual {p0}, Lcom/nuance/swype/connect/ConnectClient;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 684
    .local v1, msg:Landroid/os/Message;
    if-eqz v1, :cond_0

    .line 685
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 686
    .local v0, data:Landroid/os/Bundle;
    const-string v2, "DEFAULT_KEY"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 687
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 688
    invoke-virtual {p0, v1}, Lcom/nuance/swype/connect/ConnectClient;->postMessage(Landroid/os/Message;)V

    .line 690
    .end local v0           #data:Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public postMessageWithString(ILjava/lang/String;)V
    .locals 3
    .parameter "message"
    .parameter "value"

    .prologue
    .line 693
    invoke-virtual {p0}, Lcom/nuance/swype/connect/ConnectClient;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 695
    .local v1, msg:Landroid/os/Message;
    if-eqz v1, :cond_0

    .line 696
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 697
    .local v0, data:Landroid/os/Bundle;
    const-string v2, "DEFAULT_KEY"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 699
    invoke-virtual {p0, v1}, Lcom/nuance/swype/connect/ConnectClient;->postMessage(Landroid/os/Message;)V

    .line 701
    .end local v0           #data:Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public postStart()V
    .locals 0

    .prologue
    .line 567
    return-void
.end method

.method public processMQTTCommand(Lcom/nuance/swype/connect/util/Command;)Z
    .locals 2
    .parameter "command"

    .prologue
    .line 1091
    const/4 v0, 0x0

    .line 1093
    .local v0, sent:Z
    invoke-virtual {p0}, Lcom/nuance/swype/connect/ConnectClient;->isMQTTEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1094
    iget-object v1, p0, Lcom/nuance/swype/connect/ConnectClient;->mqttManager:Lcom/nuance/swype/connect/comm/MqttConnector;

    invoke-virtual {v1, p1}, Lcom/nuance/swype/connect/comm/MqttConnector;->sendCommand(Lcom/nuance/swype/connect/util/Command;)V

    .line 1095
    const/4 v0, 0x1

    .line 1098
    :cond_0
    return v0
.end method

.method public processResponse(Lcom/nuance/swype/connect/util/Response;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 1102
    iget-object v1, p0, Lcom/nuance/swype/connect/ConnectClient;->registry:Lcom/nuance/swype/connect/manager/ManagerRegistry;

    iget-object v2, p1, Lcom/nuance/swype/connect/util/Response;->commandFamily:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/nuance/swype/connect/manager/ManagerRegistry;->getManagerReference(Ljava/lang/String;)Lcom/nuance/swype/connect/manager/interfaces/Manager;

    move-result-object v0

    .line 1103
    .local v0, mgr:Lcom/nuance/swype/connect/manager/interfaces/Manager;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/nuance/swype/connect/manager/interfaces/CommandManager;

    if-eqz v1, :cond_0

    .line 1104
    check-cast v0, Lcom/nuance/swype/connect/manager/interfaces/CommandManager;

    .end local v0           #mgr:Lcom/nuance/swype/connect/manager/interfaces/Manager;
    invoke-interface {v0, p1}, Lcom/nuance/swype/connect/manager/interfaces/CommandManager;->onResponse(Lcom/nuance/swype/connect/util/Response;)V

    .line 1106
    :cond_0
    return-void
.end method

.method public registerAccountListener(Lcom/nuance/swype/connect/manager/interfaces/AccountListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 1123
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectClient;->accountListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1124
    return-void
.end method

.method public registerHandlers(Ljava/lang/String;)Z
    .locals 7
    .parameter "handlerList"

    .prologue
    const/4 v4, 0x0

    .line 430
    const-string v5, "registerHandlers()"

    invoke-static {v5}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 432
    const/4 v1, 0x0

    .line 434
    .local v1, registrationComplete:Z
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 455
    :cond_0
    :goto_0
    return v4

    .line 439
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/connect/ConnectClient;->getDataStore()Lcom/nuance/swype/connect/store/PersistentDataStore;

    move-result-object v5

    const-string v6, "DeviceFirstTimeStartup"

    invoke-interface {v5, v6, v4}, Lcom/nuance/swype/connect/store/PersistentDataStore;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 441
    .local v0, hasRunFirstTime:Z
    iget-object v4, p0, Lcom/nuance/swype/connect/ConnectClient;->registry:Lcom/nuance/swype/connect/manager/ManagerRegistry;

    invoke-virtual {v4, p0, v0}, Lcom/nuance/swype/connect/manager/ManagerRegistry;->setup(Lcom/nuance/swype/connect/ConnectClient;Z)V

    .line 443
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v4, ","

    invoke-direct {v2, p1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    .local v2, st:Ljava/util/StringTokenizer;
    :goto_1
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 445
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 446
    .local v3, token:Ljava/lang/String;
    iget-object v4, p0, Lcom/nuance/swype/connect/ConnectClient;->registry:Lcom/nuance/swype/connect/manager/ManagerRegistry;

    invoke-virtual {v4, v3}, Lcom/nuance/swype/connect/manager/ManagerRegistry;->addHandler(Ljava/lang/String;)V

    goto :goto_1

    .line 449
    .end local v3           #token:Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/nuance/swype/connect/ConnectClient;->registry:Lcom/nuance/swype/connect/manager/ManagerRegistry;

    invoke-virtual {v4}, Lcom/nuance/swype/connect/manager/ManagerRegistry;->validate()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 450
    iget-object v4, p0, Lcom/nuance/swype/connect/ConnectClient;->registry:Lcom/nuance/swype/connect/manager/ManagerRegistry;

    invoke-virtual {v4}, Lcom/nuance/swype/connect/manager/ManagerRegistry;->complete()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 451
    const/4 v1, 0x1

    :cond_3
    move v4, v1

    .line 455
    goto :goto_0
.end method

.method public registerLanguageListener(Lcom/nuance/swype/connect/manager/interfaces/LanguageListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 1152
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectClient;->languageListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1153
    return-void
.end method

.method public registerNetworkListener(Lcom/nuance/swype/connect/system/NetworkListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 1110
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectClient;->connectivity:Lcom/nuance/swype/connect/system/Connectivity;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/connect/system/Connectivity;->registerNetworkListener(Lcom/nuance/swype/connect/system/NetworkListener;)V

    .line 1111
    return-void
.end method

.method public registerResponseListener(Lcom/nuance/swype/connect/ConnectClient$ResponseListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 725
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectClient;->connectManager:Lcom/nuance/swype/connect/ConnectManager;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/connect/ConnectManager;->registerResponseListener(Lcom/nuance/swype/connect/ConnectClient$ResponseListener;)V

    .line 726
    return-void
.end method

.method public sendCommand(Lcom/nuance/swype/connect/util/Command;)V
    .locals 1
    .parameter "command"

    .prologue
    .line 717
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectClient;->connectManager:Lcom/nuance/swype/connect/ConnectManager;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/connect/ConnectManager;->sendCommand(Lcom/nuance/swype/connect/util/Command;)V

    .line 718
    return-void
.end method

.method public sendCommandConfirmed(Lcom/nuance/swype/connect/util/Command;)V
    .locals 1
    .parameter "command"

    .prologue
    .line 721
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectClient;->connectManager:Lcom/nuance/swype/connect/ConnectManager;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/connect/ConnectManager;->sendCommandConfirmed(Lcom/nuance/swype/connect/util/Command;)V

    .line 722
    return-void
.end method

.method public sendMessageToHost(I)V
    .locals 2
    .parameter "what"

    .prologue
    .line 336
    const/4 v1, 0x0

    invoke-static {v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 337
    .local v0, send:Landroid/os/Message;
    invoke-direct {p0, v0}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(Landroid/os/Message;)V

    .line 338
    return-void
.end method

.method public sendMessageToHost(ILandroid/os/Bundle;)V
    .locals 2
    .parameter "what"
    .parameter "b"

    .prologue
    .line 363
    const/4 v1, 0x0

    invoke-static {v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 364
    .local v0, send:Landroid/os/Message;
    invoke-virtual {v0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 365
    invoke-direct {p0, v0}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(Landroid/os/Message;)V

    .line 366
    return-void
.end method

.method public sendMessageToHost(ILjava/lang/String;)V
    .locals 3
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 355
    const/4 v2, 0x0

    invoke-static {v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 356
    .local v1, send:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 357
    .local v0, data:Landroid/os/Bundle;
    const-string v2, "DEFAULT_KEY"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 359
    invoke-direct {p0, v1}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(Landroid/os/Message;)V

    .line 360
    return-void
.end method

.method public sendMessageToHostDelayed(II)V
    .locals 4
    .parameter "what"
    .parameter "delayMillis"

    .prologue
    .line 381
    new-instance v0, Lcom/nuance/swype/connect/ConnectClient$1;

    invoke-direct {v0, p0, p1}, Lcom/nuance/swype/connect/ConnectClient$1;-><init>(Lcom/nuance/swype/connect/ConnectClient;I)V

    .line 387
    .local v0, r:Ljava/lang/Runnable;
    invoke-virtual {p0}, Lcom/nuance/swype/connect/ConnectClient;->getHandler()Landroid/os/Handler;

    move-result-object v1

    int-to-long v2, p2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 388
    return-void
.end method

.method public setApplicationId(Ljava/lang/String;)V
    .locals 0
    .parameter "applicationId"

    .prologue
    .line 877
    iput-object p1, p0, Lcom/nuance/swype/connect/ConnectClient;->applicationId:Ljava/lang/String;

    .line 878
    return-void
.end method

.method public setCellularDataPermitted(Z)V
    .locals 1
    .parameter "permitted"

    .prologue
    .line 769
    iput-boolean p1, p0, Lcom/nuance/swype/connect/ConnectClient;->cellularDataPermitted:Z

    .line 770
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectClient;->connectivity:Lcom/nuance/swype/connect/system/Connectivity;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/connect/system/Connectivity;->setAllowedMobile(Z)V

    .line 771
    return-void
.end method

.method public setConnectFeaturesStatus(Z)V
    .locals 0
    .parameter "permitted"

    .prologue
    .line 796
    iput-boolean p1, p0, Lcom/nuance/swype/connect/ConnectClient;->connectFeaturesStatus:Z

    .line 797
    return-void
.end method

.method public setConnectSettings(Ljava/lang/String;)V
    .locals 2
    .parameter "settings"

    .prologue
    .line 930
    new-instance v0, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;

    invoke-direct {v0, p0, p1}, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;-><init>(Lcom/nuance/swype/connect/ConnectClient;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nuance/swype/connect/ConnectClient;->connectConfiguration:Lcom/nuance/swype/connect/configuration/ConnectConfiguration;

    .line 931
    const-string v0, "Connect"

    const-string v1, "LOGGING"

    invoke-virtual {p0, v1}, Lcom/nuance/swype/connect/ConnectClient;->getConfigurationIntValue(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/nuance/swype/connect/util/Logger;->configure(Ljava/lang/String;I)V

    .line 933
    return-void
.end method

.method public setCoreVersionAlpha(Ljava/lang/String;)V
    .locals 0
    .parameter "version"

    .prologue
    .line 893
    iput-object p1, p0, Lcom/nuance/swype/connect/ConnectClient;->coreVersionAlpha:Ljava/lang/String;

    .line 894
    return-void
.end method

.method public setCoreVersionChinese(Ljava/lang/String;)V
    .locals 0
    .parameter "version"

    .prologue
    .line 901
    iput-object p1, p0, Lcom/nuance/swype/connect/ConnectClient;->coreVersionChinese:Ljava/lang/String;

    .line 902
    return-void
.end method

.method public setCoreVersionJapanese(Ljava/lang/String;)V
    .locals 0
    .parameter "version"

    .prologue
    .line 909
    iput-object p1, p0, Lcom/nuance/swype/connect/ConnectClient;->coreVersionJapanese:Ljava/lang/String;

    .line 910
    return-void
.end method

.method public setCoreVersionKorean(Ljava/lang/String;)V
    .locals 0
    .parameter "version"

    .prologue
    .line 917
    iput-object p1, p0, Lcom/nuance/swype/connect/ConnectClient;->coreVersionKorean:Ljava/lang/String;

    .line 918
    return-void
.end method

.method public declared-synchronized setCurrentLanguageInfo(Ljava/lang/String;IILjava/lang/String;)V
    .locals 3
    .parameter "language"
    .parameter "code"
    .parameter "category"
    .parameter "locale"

    .prologue
    .line 1161
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/nuance/swype/connect/ConnectClient;->activeLanguage:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/nuance/swype/connect/ConnectClient;->activeLanguageCode:I

    if-ne v2, p2, :cond_0

    iget v2, p0, Lcom/nuance/swype/connect/ConnectClient;->activeCategory:I

    if-eq v2, p3, :cond_1

    .line 1164
    :cond_0
    iput-object p1, p0, Lcom/nuance/swype/connect/ConnectClient;->activeLanguage:Ljava/lang/String;

    .line 1165
    iput p2, p0, Lcom/nuance/swype/connect/ConnectClient;->activeLanguageCode:I

    .line 1166
    iput p3, p0, Lcom/nuance/swype/connect/ConnectClient;->activeCategory:I

    .line 1168
    iget-object v2, p0, Lcom/nuance/swype/connect/ConnectClient;->languageListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/connect/manager/interfaces/LanguageListener;

    .line 1169
    .local v1, l:Lcom/nuance/swype/connect/manager/interfaces/LanguageListener;
    invoke-interface {v1, p1, p2, p3}, Lcom/nuance/swype/connect/manager/interfaces/LanguageListener;->onLanguageUpdate(Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1161
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #l:Lcom/nuance/swype/connect/manager/interfaces/LanguageListener;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1173
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/nuance/swype/connect/ConnectClient;->activeLocale:Ljava/lang/String;

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1174
    iput-object p4, p0, Lcom/nuance/swype/connect/ConnectClient;->activeLocale:Ljava/lang/String;

    .line 1176
    iget-object v2, p0, Lcom/nuance/swype/connect/ConnectClient;->languageListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/connect/manager/interfaces/LanguageListener;

    .line 1177
    .restart local v1       #l:Lcom/nuance/swype/connect/manager/interfaces/LanguageListener;
    invoke-interface {v1, p4}, Lcom/nuance/swype/connect/manager/interfaces/LanguageListener;->onLocaleUpdate(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1180
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #l:Lcom/nuance/swype/connect/manager/interfaces/LanguageListener;
    :cond_2
    monitor-exit p0

    return-void
.end method

.method public setCurrentLocale(Ljava/lang/String;)V
    .locals 0
    .parameter "locale"

    .prologue
    .line 979
    iput-object p1, p0, Lcom/nuance/swype/connect/ConnectClient;->currentLocale:Ljava/lang/String;

    .line 980
    return-void
.end method

.method public setCustomerString(Ljava/lang/String;)V
    .locals 0
    .parameter "customerString"

    .prologue
    .line 885
    iput-object p1, p0, Lcom/nuance/swype/connect/ConnectClient;->customerString:Ljava/lang/String;

    .line 886
    return-void
.end method

.method public setDebugResponse(I)V
    .locals 0
    .parameter "responseCode"

    .prologue
    .line 800
    iput p1, p0, Lcom/nuance/swype/connect/ConnectClient;->debugResponse:I

    .line 801
    return-void
.end method

.method public setLanguagesAvailable(Ljava/lang/String;)V
    .locals 2
    .parameter "languages"

    .prologue
    .line 839
    new-instance v0, Ljava/util/TreeSet;

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 841
    .local v0, installedLanguages:Ljava/util/TreeSet;,"Ljava/util/TreeSet<Ljava/lang/String;>;"
    const-string v1, ","

    invoke-static {v0, v1}, Lcom/nuance/swype/connect/util/StringUtils;->implode(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/connect/ConnectClient;->languagesAvailable:Ljava/lang/String;

    .line 842
    return-void
.end method

.method public setNetworkTimeout(I)V
    .locals 1
    .parameter "timeout"

    .prologue
    .line 822
    iput p1, p0, Lcom/nuance/swype/connect/ConnectClient;->networkTimeout:I

    .line 823
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectClient;->connectManager:Lcom/nuance/swype/connect/ConnectManager;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/connect/ConnectManager;->setNetworkTimeout(I)V

    .line 824
    return-void
.end method

.method public setOemId(Ljava/lang/String;)V
    .locals 0
    .parameter "oemId"

    .prologue
    .line 861
    iput-object p1, p0, Lcom/nuance/swype/connect/ConnectClient;->oemId:Ljava/lang/String;

    .line 862
    return-void
.end method

.method public setReportingStatisticsStatus(Z)V
    .locals 3
    .parameter "status"

    .prologue
    .line 959
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setReportingStatisticsStatus("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 960
    iput-boolean p1, p0, Lcom/nuance/swype/connect/ConnectClient;->reportingStatisticsStatus:Z

    .line 962
    if-nez p1, :cond_0

    .line 963
    iget-object v1, p0, Lcom/nuance/swype/connect/ConnectClient;->registry:Lcom/nuance/swype/connect/manager/ManagerRegistry;

    const-string v2, "report"

    invoke-virtual {v1, v2}, Lcom/nuance/swype/connect/manager/ManagerRegistry;->getManagerReference(Ljava/lang/String;)Lcom/nuance/swype/connect/manager/interfaces/Manager;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/connect/manager/ReportingManager;

    .line 964
    .local v0, reporting:Lcom/nuance/swype/connect/manager/ReportingManager;
    if-eqz v0, :cond_0

    .line 965
    invoke-virtual {v0}, Lcom/nuance/swype/connect/manager/ReportingManager;->clearStoredStatistics()V

    .line 968
    .end local v0           #reporting:Lcom/nuance/swype/connect/manager/ReportingManager;
    :cond_0
    return-void
.end method

.method public setReportingUsageStatus(Z)V
    .locals 3
    .parameter "status"

    .prologue
    .line 947
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setReportingUsageStatus("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 948
    iput-boolean p1, p0, Lcom/nuance/swype/connect/ConnectClient;->reportingUsageStatus:Z

    .line 950
    if-nez p1, :cond_0

    .line 951
    iget-object v1, p0, Lcom/nuance/swype/connect/ConnectClient;->registry:Lcom/nuance/swype/connect/manager/ManagerRegistry;

    const-string v2, "report"

    invoke-virtual {v1, v2}, Lcom/nuance/swype/connect/manager/ManagerRegistry;->getManagerReference(Ljava/lang/String;)Lcom/nuance/swype/connect/manager/interfaces/Manager;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/connect/manager/ReportingManager;

    .line 952
    .local v0, reporting:Lcom/nuance/swype/connect/manager/ReportingManager;
    if-eqz v0, :cond_0

    .line 953
    invoke-virtual {v0}, Lcom/nuance/swype/connect/manager/ReportingManager;->clearStoredUsage()V

    .line 956
    .end local v0           #reporting:Lcom/nuance/swype/connect/manager/ReportingManager;
    :cond_0
    return-void
.end method

.method public setRoamingPermitted(Z)V
    .locals 1
    .parameter "permitted"

    .prologue
    .line 787
    iput-boolean p1, p0, Lcom/nuance/swype/connect/ConnectClient;->roamingPermitted:Z

    .line 788
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectClient;->connectivity:Lcom/nuance/swype/connect/system/Connectivity;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/connect/system/Connectivity;->setAllowedRoaming(Z)V

    .line 789
    return-void
.end method

.method public setSdkVersion(Ljava/lang/String;)V
    .locals 0
    .parameter "sdkVersion"

    .prologue
    .line 869
    iput-object p1, p0, Lcom/nuance/swype/connect/ConnectClient;->sdkVersion:Ljava/lang/String;

    .line 870
    return-void
.end method

.method public setSwib(Ljava/lang/String;)V
    .locals 0
    .parameter "swib"

    .prologue
    .line 853
    iput-object p1, p0, Lcom/nuance/swype/connect/ConnectClient;->swib:Ljava/lang/String;

    .line 854
    return-void
.end method

.method public setSwypeVersion(Ljava/lang/String;)V
    .locals 0
    .parameter "version"

    .prologue
    .line 814
    iput-object p1, p0, Lcom/nuance/swype/connect/ConnectClient;->swypeVersion:Ljava/lang/String;

    .line 815
    return-void
.end method

.method public setTrialStatus(Z)V
    .locals 3
    .parameter "status"

    .prologue
    .line 925
    iput-boolean p1, p0, Lcom/nuance/swype/connect/ConnectClient;->trialStatus:Z

    .line 926
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectClient;->prefManager:Lcom/nuance/swype/connect/manager/PreferencesManager;

    const-string v1, "DEVICE_LENGTH"

    iget-boolean v2, p0, Lcom/nuance/swype/connect/ConnectClient;->trialStatus:Z

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/connect/manager/PreferencesManager;->saveBoolean(Ljava/lang/String;Z)Z

    .line 927
    return-void
.end method

.method public setWifiPermitted(Z)V
    .locals 1
    .parameter "permitted"

    .prologue
    .line 778
    iput-boolean p1, p0, Lcom/nuance/swype/connect/ConnectClient;->wifiPermitted:Z

    .line 779
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectClient;->connectivity:Lcom/nuance/swype/connect/system/Connectivity;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/connect/system/Connectivity;->setAllowedWifi(Z)V

    .line 780
    return-void
.end method

.method protected startNextManager()V
    .locals 7

    .prologue
    .line 533
    const-string v4, "startNextManager()"

    invoke-static {v4}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 535
    iget-object v4, p0, Lcom/nuance/swype/connect/ConnectClient;->registry:Lcom/nuance/swype/connect/manager/ManagerRegistry;

    invoke-virtual {v4}, Lcom/nuance/swype/connect/manager/ManagerRegistry;->getNextPendingManager()Lcom/nuance/swype/connect/manager/interfaces/Manager;

    move-result-object v1

    .line 536
    .local v1, manager:Lcom/nuance/swype/connect/manager/interfaces/Manager;
    if-eqz v1, :cond_2

    .line 537
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startNextManager() -- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Lcom/nuance/swype/connect/manager/interfaces/Manager;->getManagerName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 539
    invoke-interface {v1}, Lcom/nuance/swype/connect/manager/interfaces/Manager;->delayFirstStart()J

    move-result-wide v2

    .line 541
    .local v2, triggerAtTime:J
    invoke-virtual {p0}, Lcom/nuance/swype/connect/ConnectClient;->getDataStore()Lcom/nuance/swype/connect/store/PersistentDataStore;

    move-result-object v4

    const-string v5, "DeviceFirstTimeStartup"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lcom/nuance/swype/connect/store/PersistentDataStore;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 543
    .local v0, hasRunFirstTime:Z
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    .line 545
    invoke-interface {v1}, Lcom/nuance/swype/connect/manager/interfaces/Manager;->getManagerName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lcom/nuance/swype/connect/ConnectClient;->setStartAlarm(JLjava/lang/String;)V

    .line 546
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Delaying start of next manager: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Lcom/nuance/swype/connect/manager/interfaces/Manager;->getManagerName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " until: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 560
    .end local v0           #hasRunFirstTime:Z
    .end local v2           #triggerAtTime:J
    :cond_0
    :goto_0
    return-void

    .line 549
    .restart local v0       #hasRunFirstTime:Z
    .restart local v2       #triggerAtTime:J
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Starting next manager: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Lcom/nuance/swype/connect/manager/interfaces/Manager;->getManagerName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 550
    invoke-interface {v1}, Lcom/nuance/swype/connect/manager/interfaces/Manager;->start()V

    goto :goto_0

    .line 553
    .end local v0           #hasRunFirstTime:Z
    .end local v2           #triggerAtTime:J
    :cond_2
    iget-object v4, p0, Lcom/nuance/swype/connect/ConnectClient;->registry:Lcom/nuance/swype/connect/manager/ManagerRegistry;

    invoke-virtual {v4}, Lcom/nuance/swype/connect/manager/ManagerRegistry;->allStarted()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 554
    const-string v4, "startNextManager() -- handling post start"

    invoke-static {v4}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 557
    invoke-virtual {p0}, Lcom/nuance/swype/connect/ConnectClient;->getDataStore()Lcom/nuance/swype/connect/store/PersistentDataStore;

    move-result-object v4

    const-string v5, "DeviceFirstTimeStartup"

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Lcom/nuance/swype/connect/store/PersistentDataStore;->saveBoolean(Ljava/lang/String;Z)Z

    .line 558
    iget-object v4, p0, Lcom/nuance/swype/connect/ConnectClient;->registry:Lcom/nuance/swype/connect/manager/ManagerRegistry;

    invoke-virtual {v4}, Lcom/nuance/swype/connect/manager/ManagerRegistry;->postStart()V

    goto :goto_0
.end method

.method public unregisterAccountListener(Lcom/nuance/swype/connect/manager/interfaces/AccountListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 1127
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectClient;->accountListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1128
    return-void
.end method

.method public unregisterLanguageListener(Lcom/nuance/swype/connect/manager/interfaces/LanguageListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 1156
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectClient;->languageListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1157
    return-void
.end method

.method public unregisterNetworkListener(Lcom/nuance/swype/connect/system/NetworkListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 1114
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectClient;->connectivity:Lcom/nuance/swype/connect/system/Connectivity;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/connect/system/Connectivity;->unregisterNetworkListener(Lcom/nuance/swype/connect/system/NetworkListener;)V

    .line 1115
    return-void
.end method
