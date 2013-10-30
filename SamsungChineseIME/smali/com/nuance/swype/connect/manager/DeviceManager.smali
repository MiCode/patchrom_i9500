.class public Lcom/nuance/swype/connect/manager/DeviceManager;
.super Lcom/nuance/swype/connect/manager/AbstractCommandManager;
.source "DeviceManager.java"


# static fields
.field public static final COMMAND_CONFIG:Ljava/lang/String; = "getConfig"

.field public static final COMMAND_FAMILY:Ljava/lang/String; = "device"

.field public static final COMMAND_GET_SWYPER_ID:Ljava/lang/String; = "getSwyperId"

.field public static final COMMAND_REGISTER:Ljava/lang/String; = "register"

.field public static final COMMAND_UPDATE:Ljava/lang/String; = "update"

.field public static final COMMAND_VALIDATE:Ljava/lang/String; = "validate"

.field public static final COMMAND_VERSION:I = 0x5

.field public static final DEVICE_PREFERENCE:Ljava/lang/String; = "DEVICE_ID"

.field private static final DEVICE_PROPERTIES_KEY_PREFIX:Ljava/lang/String; = "DEVICE_PROPERTIES_"

.field public static final DEVICE_TEMP_PREFERENCE:Ljava/lang/String; = "DEVICE_ACK_ID"

.field public static final DEVICE_TRANSACTION_PREFERENCE:Ljava/lang/String; = "DEVICE_TRANSID"

.field public static final DEVICE_TRIAL_PREFERENCE:Ljava/lang/String; = "DEVICE_LENGTH"

.field public static final KEY_ACCOUNT_PREFERENCE:Ljava/lang/String; = "KEY_ACCOUNT"

.field public static final KEY_BUILD_PREFERENCE:Ljava/lang/String; = "KEY_BUILD"

.field public static final KEY_DEVICE_PREFERENCE:Ljava/lang/String; = "KEY_DEVICE"

.field public static final MANAGER_NAME:Ljava/lang/String; = "device"

.field private static final MESSAGES_HANDLED:[I = null

.field public static final MQTT_ENABLED_PREFERENCE:Ljava/lang/String; = "MQTT_ENABLED"

.field public static final MQTT_HOSTS_PREFERENCE:Ljava/lang/String; = "MQTT_HOSTS"

.field public static final MQTT_KEEPALIVE_PREFERENCE:Ljava/lang/String; = "MQTT_KEEPALIVE"

.field public static final REGISTRATION_COMMANDS:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final SWYPER_ID_PREFERENCE:Ljava/lang/String; = "SWYPER_ID"

.field public static final SWYPER_TEMP_PREFERENCE:Ljava/lang/String; = "TEMP_SWYPER_ID"

.field public static final TIMER_AGGREGATE_FREQUENCY_PREFERENCE:Ljava/lang/String; = "AGGREGATE_FREQUENCY"

.field public static final TIMER_DEFAULT_DELAY_PREFERENCE:Ljava/lang/String; = "DEFAULT_DELAY"

.field public static final TIMER_DEFAULT_DLM_ADD_FREQUENCY_PREFERENCE:Ljava/lang/String; = "DEFAULT_DLM_ADD_FREQUENCY"

.field public static final TIMER_POLLING_FREQUENCY_PREFERENCE:Ljava/lang/String; = "POLLING_FREQUENCY"

.field public static final TIMER_STATISTICS_FREQUENCY_PREFERENCE:Ljava/lang/String; = "STATISTICS_FREQUENCY"

.field public static final TIMER_UDB_UPLOAD_FREQUENCY_PREFERENCE:Ljava/lang/String; = "UDB_UPLOAD_FREQUENCY"


# instance fields
.field private volatile deviceId:Ljava/lang/String;

.field private deviceProperties:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile preAckDeviceId:Ljava/lang/String;

.field private volatile preAckSwyperId:Ljava/lang/String;

.field private volatile swyperId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 47
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "register"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ack"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/connect/manager/DeviceManager;->REGISTRATION_COMMANDS:Ljava/util/List;

    .line 102
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/nuance/swype/connect/manager/DeviceManager;->MESSAGES_HANDLED:[I

    return-void

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0x8ct 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/nuance/swype/connect/ConnectClient;)V
    .locals 6
    .parameter "ctx"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 118
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager;-><init>(Lcom/nuance/swype/connect/ConnectClient;)V

    .line 119
    const/4 v0, 0x5

    iput v0, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->version:I

    .line 120
    const-string v0, "device"

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->commandFamily:Ljava/lang/String;

    .line 121
    sget-object v0, Lcom/nuance/swype/connect/manager/DeviceManager;->MESSAGES_HANDLED:[I

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->messages:[I

    .line 123
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "register"

    new-array v2, v5, [I

    fill-array-data v2, :array_0

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 128
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "validate"

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_1

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 132
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "ack"

    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 138
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "update"

    new-array v2, v5, [I

    fill-array-data v2, :array_3

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 143
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "getSwyperId"

    new-array v2, v3, [I

    aput v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 146
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "getConfig"

    new-array v2, v3, [I

    aput v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 150
    return-void

    .line 123
    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
    .end array-data

    .line 128
    :array_1
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 132
    :array_2
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
    .end array-data

    .line 138
    :array_3
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private loadPreferences()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 315
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectClient;->getDataStore()Lcom/nuance/swype/connect/store/PersistentDataStore;

    move-result-object v0

    const-string v1, "DEVICE_ID"

    invoke-interface {v0, v1, v2}, Lcom/nuance/swype/connect/store/PersistentDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->deviceId:Ljava/lang/String;

    .line 316
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectClient;->getDataStore()Lcom/nuance/swype/connect/store/PersistentDataStore;

    move-result-object v0

    const-string v1, "DEVICE_TRANSID"

    invoke-interface {v0, v1, v2}, Lcom/nuance/swype/connect/store/PersistentDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->transactionId:Ljava/lang/String;

    .line 317
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectClient;->getDataStore()Lcom/nuance/swype/connect/store/PersistentDataStore;

    move-result-object v0

    const-string v1, "DEVICE_ACK_ID"

    invoke-interface {v0, v1, v2}, Lcom/nuance/swype/connect/store/PersistentDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->preAckDeviceId:Ljava/lang/String;

    .line 318
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectClient;->getDataStore()Lcom/nuance/swype/connect/store/PersistentDataStore;

    move-result-object v0

    const-string v1, "SWYPER_ID"

    invoke-interface {v0, v1, v2}, Lcom/nuance/swype/connect/store/PersistentDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->swyperId:Ljava/lang/String;

    .line 319
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectClient;->getDataStore()Lcom/nuance/swype/connect/store/PersistentDataStore;

    move-result-object v0

    const-string v1, "TEMP_SWYPER_ID"

    invoke-interface {v0, v1, v2}, Lcom/nuance/swype/connect/store/PersistentDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->preAckSwyperId:Ljava/lang/String;

    .line 321
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/DeviceManager;->retrieveSerializedProperties()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->deviceProperties:Ljava/util/HashMap;

    .line 322
    return-void
.end method

.method private processDeviceValidateRequest(Lcom/nuance/swype/connect/util/Response;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 635
    iget-object v0, p1, Lcom/nuance/swype/connect/util/Response;->parameters:Ljava/util/HashMap;

    const-string v1, "9"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 641
    :cond_0
    return-void
.end method

.method private processRegisterDeviceAckResponse(Lcom/nuance/swype/connect/util/Response;)V
    .locals 5
    .parameter "response"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 497
    invoke-virtual {p0, p1, v4}, Lcom/nuance/swype/connect/manager/DeviceManager;->preProcessResponse(Lcom/nuance/swype/connect/util/Response;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 539
    :goto_0
    return-void

    .line 501
    :cond_0
    iget v0, p1, Lcom/nuance/swype/connect/util/Response;->status:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 507
    :sswitch_0
    iput-object v2, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->deviceId:Ljava/lang/String;

    .line 508
    iput-object v2, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->preAckDeviceId:Ljava/lang/String;

    .line 509
    iput-object v2, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->preAckSwyperId:Ljava/lang/String;

    .line 510
    iput-object v2, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->swyperId:Ljava/lang/String;

    .line 511
    iput-object v2, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->transactionId:Ljava/lang/String;

    .line 512
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "DEVICE_ACK_ID"

    aput-object v2, v0, v1

    const-string v1, "DEVICE_ID"

    aput-object v1, v0, v3

    const-string v1, "SWYPER_ID"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v2, "TEMP_SWYPER_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "DEVICE_TRANSID"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/manager/DeviceManager;->removePreferences([Ljava/lang/String;)V

    .line 519
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/DeviceManager;->calcMessageSendDelay()J

    move-result-wide v1

    invoke-virtual {v0, v3, v1, v2}, Lcom/nuance/swype/connect/ConnectClient;->postMessageDelayed(IJ)V

    goto :goto_0

    .line 523
    :sswitch_1
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->preAckDeviceId:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->deviceId:Ljava/lang/String;

    .line 524
    iput-object v2, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->preAckDeviceId:Ljava/lang/String;

    .line 525
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->preAckSwyperId:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->swyperId:Ljava/lang/String;

    .line 526
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processRegisterDeviceAckResponse() swyperId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->swyperId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 527
    iput-object v2, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->preAckSwyperId:Ljava/lang/String;

    .line 528
    iput-object v2, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->transactionId:Ljava/lang/String;

    .line 529
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/DeviceManager;->savePreferences()V

    .line 530
    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/DeviceManager;->requestConfiguration()V

    .line 531
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v1, 0x63

    iget-object v2, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->swyperId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(ILjava/lang/String;)V

    .line 532
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v1, 0x9c

    iget-object v2, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(ILjava/lang/String;)V

    .line 534
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectClient;->backupNow()V

    .line 535
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/ConnectClient;->postMessage(I)V

    .line 536
    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/DeviceManager;->managerStartComplete()V

    goto/16 :goto_0

    .line 501
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x6 -> :sswitch_0
        0xf -> :sswitch_0
    .end sparse-switch
.end method

.method private processRegisterDeviceResponse(Lcom/nuance/swype/connect/util/Response;)V
    .locals 5
    .parameter "response"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 406
    invoke-virtual {p0, p1, v3}, Lcom/nuance/swype/connect/manager/DeviceManager;->preProcessResponse(Lcom/nuance/swype/connect/util/Response;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 448
    :cond_0
    :goto_0
    return-void

    .line 410
    :cond_1
    iget v0, p1, Lcom/nuance/swype/connect/util/Response;->status:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 412
    :sswitch_0
    iget-object v0, p1, Lcom/nuance/swype/connect/util/Response;->deviceId:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->preAckDeviceId:Ljava/lang/String;

    .line 414
    iput-object v2, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->deviceId:Ljava/lang/String;

    .line 415
    iget-object v0, p1, Lcom/nuance/swype/connect/util/Response;->transactionId:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->transactionId:Ljava/lang/String;

    .line 416
    iget-object v0, p1, Lcom/nuance/swype/connect/util/Response;->parameters:Ljava/util/HashMap;

    const-string v1, "32"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->preAckSwyperId:Ljava/lang/String;

    .line 417
    iput-object v2, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->swyperId:Ljava/lang/String;

    .line 418
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/DeviceManager;->savePreferences()V

    .line 419
    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/DeviceManager;->registerDeviceAck()V

    goto :goto_0

    .line 425
    :sswitch_1
    iput-object v2, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->preAckDeviceId:Ljava/lang/String;

    .line 426
    iput-object v2, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->deviceId:Ljava/lang/String;

    .line 427
    iput-object v2, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->transactionId:Ljava/lang/String;

    .line 428
    iput-object v2, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->preAckSwyperId:Ljava/lang/String;

    .line 429
    iput-object v2, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->swyperId:Ljava/lang/String;

    .line 430
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "DEVICE_ACK_ID"

    aput-object v2, v0, v1

    const-string v1, "DEVICE_ID"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "SWYPER_ID"

    aput-object v2, v0, v1

    const-string v1, "TEMP_SWYPER_ID"

    aput-object v1, v0, v4

    const/4 v1, 0x4

    const-string v2, "DEVICE_TRANSID"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/manager/DeviceManager;->removePreferences([Ljava/lang/String;)V

    .line 442
    iget v0, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->lastCommandRetryCount:I

    if-ge v0, v4, :cond_0

    .line 443
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/DeviceManager;->calcMessageSendDelay()J

    move-result-wide v1

    invoke-virtual {v0, v3, v1, v2}, Lcom/nuance/swype/connect/ConnectClient;->postMessageDelayed(IJ)V

    goto :goto_0

    .line 410
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x4 -> :sswitch_1
        0xf -> :sswitch_1
    .end sparse-switch
.end method

.method private processRequestConfigurationResponse(Lcom/nuance/swype/connect/util/Response;)V
    .locals 13
    .parameter "response"

    .prologue
    const/4 v12, 0x1

    .line 715
    const-string v10, "processRequestConfigurationResponse"

    invoke-static {v10}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 717
    iget v10, p1, Lcom/nuance/swype/connect/util/Response;->status:I

    if-eq v10, v12, :cond_1

    .line 830
    :cond_0
    :goto_0
    return-void

    .line 721
    :cond_1
    iget-object v10, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v10}, Lcom/nuance/swype/connect/ConnectClient;->getConfiguration()Lcom/nuance/swype/connect/configuration/ConnectConfiguration;

    move-result-object v0

    .line 722
    .local v0, config:Lcom/nuance/swype/connect/configuration/ConnectConfiguration;
    iget-object v7, p1, Lcom/nuance/swype/connect/util/Response;->parameters:Ljava/util/HashMap;

    .line 724
    .local v7, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v8, 0x0

    .line 725
    .local v8, timers:Lorg/json/JSONObject;
    const-string v10, "80"

    invoke-virtual {v7, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 726
    const-string v10, "80"

    invoke-virtual {v7, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #timers:Lorg/json/JSONObject;
    check-cast v8, Lorg/json/JSONObject;

    .line 729
    .restart local v8       #timers:Lorg/json/JSONObject;
    :cond_2
    if-eqz v8, :cond_a

    .line 730
    invoke-virtual {v8}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 732
    .local v3, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 734
    :try_start_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 735
    .local v4, key:Ljava/lang/String;
    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 736
    .local v9, value:I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Configuration: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " value: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 738
    const-string v10, "53"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 739
    const-string v10, "DEFAULT_DELAY"

    invoke-virtual {v0, v10, v9}, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->overrideFromServer(Ljava/lang/String;I)V

    goto :goto_1

    .line 760
    .end local v4           #key:Ljava/lang/String;
    .end local v9           #value:I
    :catch_0
    move-exception v10

    goto :goto_1

    .line 741
    .restart local v4       #key:Ljava/lang/String;
    .restart local v9       #value:I
    :cond_4
    const-string v10, "34"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 742
    const-string v10, "POLLING_FREQUENCY"

    invoke-virtual {v0, v10, v9}, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->overrideFromServer(Ljava/lang/String;I)V

    goto :goto_1

    .line 761
    .end local v4           #key:Ljava/lang/String;
    .end local v9           #value:I
    :catch_1
    move-exception v10

    goto :goto_1

    .line 744
    .restart local v4       #key:Ljava/lang/String;
    .restart local v9       #value:I
    :cond_5
    const-string v10, "67"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 745
    const-string v10, "REPORTING_FREQUENCY"

    invoke-virtual {v0, v10, v9}, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->overrideFromServer(Ljava/lang/String;I)V

    goto :goto_1

    .line 747
    :cond_6
    const-string v10, "68"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 748
    const-string v10, "AGGREGATE_FREQUENCY"

    invoke-virtual {v0, v10, v9}, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->overrideFromServer(Ljava/lang/String;I)V

    goto :goto_1

    .line 750
    :cond_7
    const-string v10, "69"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 751
    const-string v10, "UDB_UPLOAD_FREQUENCY"

    invoke-virtual {v0, v10, v9}, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->overrideFromServer(Ljava/lang/String;I)V

    goto :goto_1

    .line 753
    :cond_8
    const-string v10, "84"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 754
    const-string v10, "DLM_SYNC_FREQUENCY"

    invoke-virtual {v0, v10, v9}, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->overrideFromServer(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 756
    :cond_9
    const-string v10, "85"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 757
    const-string v10, "DLM_ADD_WORD_FREQUENCY"

    invoke-virtual {v0, v10, v9}, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->overrideFromServer(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_1

    .line 766
    .end local v3           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    .end local v4           #key:Ljava/lang/String;
    .end local v9           #value:I
    :cond_a
    const/4 v6, 0x0

    .line 767
    .local v6, mqtt:Lorg/json/JSONObject;
    const-string v10, "81"

    invoke-virtual {v7, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 768
    const-string v10, "81"

    invoke-virtual {v7, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #mqtt:Lorg/json/JSONObject;
    check-cast v6, Lorg/json/JSONObject;

    .line 771
    .restart local v6       #mqtt:Lorg/json/JSONObject;
    :cond_b
    if-eqz v6, :cond_11

    .line 772
    invoke-virtual {v6}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 774
    .restart local v3       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :cond_c
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_e

    .line 776
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 777
    .restart local v4       #key:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MQTT Configuration: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 779
    const-string v10, "92"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 780
    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 781
    .restart local v9       #value:I
    const-string v10, "MQTT_KEEP_ALIVE"

    invoke-virtual {v0, v10, v9}, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->overrideFromServer(Ljava/lang/String;I)V

    goto :goto_2

    .line 789
    .end local v4           #key:Ljava/lang/String;
    .end local v9           #value:I
    :catch_2
    move-exception v10

    goto :goto_2

    .line 783
    .restart local v4       #key:Ljava/lang/String;
    :cond_d
    const-string v10, "82"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 784
    const-string v10, "82"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONArray;

    .line 785
    .local v1, hostList:Lorg/json/JSONArray;
    const-string v10, ","

    invoke-static {v1, v10}, Lcom/nuance/swype/connect/util/StringUtils;->implode(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 786
    .local v2, hosts:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MQTT_HOSTS: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 787
    const-string v10, "MQTT_HOSTS"

    invoke-virtual {v0, v10, v2}, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->overrideFromServer(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_2

    .line 790
    .end local v1           #hostList:Lorg/json/JSONArray;
    .end local v2           #hosts:Ljava/lang/String;
    .end local v4           #key:Ljava/lang/String;
    :catch_3
    move-exception v10

    goto :goto_2

    .line 794
    :cond_e
    const-string v10, "MQTT_ENABLED"

    invoke-virtual {v0, v10, v12}, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->overrideFromServer(Ljava/lang/String;Z)V

    .line 800
    .end local v3           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :goto_3
    const/4 v5, 0x0

    .line 801
    .local v5, keys:Lorg/json/JSONObject;
    const-string v10, "93"

    invoke-virtual {v7, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 802
    const-string v10, "93"

    invoke-virtual {v7, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #keys:Lorg/json/JSONObject;
    check-cast v5, Lorg/json/JSONObject;

    .line 805
    .restart local v5       #keys:Lorg/json/JSONObject;
    :cond_f
    if-eqz v5, :cond_14

    .line 806
    invoke-virtual {v5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 808
    .restart local v3       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :cond_10
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 810
    :try_start_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 811
    .restart local v4       #key:Ljava/lang/String;
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 813
    .local v9, value:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Key Configuration: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " value: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 815
    const-string v10, "95"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 816
    const-string v10, "KEY_DEVICE"

    invoke-virtual {v0, v10, v9}, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->overrideFromServer(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_5

    goto :goto_4

    .line 822
    .end local v4           #key:Ljava/lang/String;
    .end local v9           #value:Ljava/lang/String;
    :catch_4
    move-exception v10

    goto :goto_4

    .line 797
    .end local v3           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    .end local v5           #keys:Lorg/json/JSONObject;
    :cond_11
    const-string v10, "MQTT_ENABLED"

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->overrideFromServer(Ljava/lang/String;Z)V

    goto :goto_3

    .line 817
    .restart local v3       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    .restart local v4       #key:Ljava/lang/String;
    .restart local v5       #keys:Lorg/json/JSONObject;
    .restart local v9       #value:Ljava/lang/String;
    :cond_12
    :try_start_3
    const-string v10, "96"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_13

    .line 818
    const-string v10, "KEY_BUILD"

    invoke-virtual {v0, v10, v9}, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->overrideFromServer(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 823
    .end local v4           #key:Ljava/lang/String;
    .end local v9           #value:Ljava/lang/String;
    :catch_5
    move-exception v10

    goto :goto_4

    .line 819
    .restart local v4       #key:Ljava/lang/String;
    .restart local v9       #value:Ljava/lang/String;
    :cond_13
    const-string v10, "97"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 820
    const-string v10, "KEY_ACCOUNT"

    invoke-virtual {v0, v10, v9}, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->overrideFromServer(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_5

    goto :goto_4

    .line 828
    .end local v3           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    .end local v4           #key:Ljava/lang/String;
    .end local v9           #value:Ljava/lang/String;
    :cond_14
    const-string v10, "MQTT_ENABLED"

    invoke-virtual {v0, v10, v12}, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->overrideFromServer(Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method

.method private processRequestSwyperIdResponse(Lcom/nuance/swype/connect/util/Response;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 858
    const/16 v0, 0x1b

    invoke-virtual {p0, p1, v0}, Lcom/nuance/swype/connect/manager/DeviceManager;->preProcessResponse(Lcom/nuance/swype/connect/util/Response;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 868
    :cond_0
    :goto_0
    return-void

    .line 862
    :cond_1
    iget v0, p1, Lcom/nuance/swype/connect/util/Response;->status:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 863
    iget-object v0, p1, Lcom/nuance/swype/connect/util/Response;->parameters:Ljava/util/HashMap;

    const-string v1, "32"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->swyperId:Ljava/lang/String;

    .line 864
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/DeviceManager;->savePreferences()V

    .line 865
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v1, 0x63

    iget-object v2, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->swyperId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(ILjava/lang/String;)V

    .line 866
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v1, 0x9c

    iget-object v2, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private processUpdateDeviceRegistrationResponse(Lcom/nuance/swype/connect/util/Response;)V
    .locals 7
    .parameter "response"

    .prologue
    const/4 v6, 0x3

    .line 605
    invoke-virtual {p0, p1, v6}, Lcom/nuance/swype/connect/manager/DeviceManager;->preProcessResponse(Lcom/nuance/swype/connect/util/Response;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 632
    :cond_0
    :goto_0
    return-void

    .line 609
    :cond_1
    iget v3, p1, Lcom/nuance/swype/connect/util/Response;->status:I

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 622
    :pswitch_1
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v4, "update"

    invoke-virtual {v3, v4}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->lastCommand:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->lastCommandRetryCount:I

    if-gt v3, v6, :cond_0

    .line 624
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/DeviceManager;->calcMessageSendDelay()J

    move-result-wide v4

    invoke-virtual {v3, v6, v4, v5}, Lcom/nuance/swype/connect/ConnectClient;->postMessageDelayed(IJ)V

    goto :goto_0

    .line 612
    :pswitch_2
    iget-object v3, p1, Lcom/nuance/swype/connect/util/Response;->initialCommand:Lcom/nuance/swype/connect/util/Command;

    iget-object v3, v3, Lcom/nuance/swype/connect/util/Command;->parameters:Ljava/util/HashMap;

    const-string v4, "31"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 614
    .local v2, updatedProps:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v2, :cond_2

    .line 615
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 616
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->deviceProperties:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 619
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_2
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->deviceProperties:Ljava/util/HashMap;

    invoke-direct {p0, v3}, Lcom/nuance/swype/connect/manager/DeviceManager;->saveSerializedProperties(Ljava/util/HashMap;)V

    goto :goto_0

    .line 629
    .end local v2           #updatedProps:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :pswitch_3
    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/DeviceManager;->registerDevice()V

    goto :goto_0

    .line 609
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private processValidateDeviceRegistrationResponse(Lcom/nuance/swype/connect/util/Response;)V
    .locals 4
    .parameter "response"

    .prologue
    const/4 v3, 0x4

    .line 673
    invoke-virtual {p0, p1, v3}, Lcom/nuance/swype/connect/manager/DeviceManager;->preProcessResponse(Lcom/nuance/swype/connect/util/Response;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 690
    :goto_0
    :pswitch_0
    return-void

    .line 677
    :cond_0
    iget v0, p1, Lcom/nuance/swype/connect/util/Response;->status:I

    packed-switch v0, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    .line 681
    :pswitch_2
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "validate"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->lastCommand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->lastCommandRetryCount:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_1

    .line 683
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/DeviceManager;->calcMessageSendDelay()J

    move-result-wide v1

    invoke-virtual {v0, v3, v1, v2}, Lcom/nuance/swype/connect/ConnectClient;->postMessageDelayed(IJ)V

    .line 686
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->deviceId:Ljava/lang/String;

    .line 687
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/ConnectClient;->postMessage(I)V

    goto :goto_0

    .line 677
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private retrieveSerializedProperties()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 905
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v1}, Lcom/nuance/swype/connect/ConnectClient;->getDataStore()Lcom/nuance/swype/connect/store/PersistentDataStore;

    move-result-object v1

    const-string v2, "DEVICE_PROPERTIES_"

    invoke-interface {v1, v2}, Lcom/nuance/swype/connect/store/PersistentDataStore;->readObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 907
    .local v0, deviceProps:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 908
    new-instance v0, Ljava/util/HashMap;

    .end local v0           #deviceProps:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 910
    .restart local v0       #deviceProps:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-object v0
.end method

.method private savePreferences()V
    .locals 3

    .prologue
    .line 329
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->preAckDeviceId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 330
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectClient;->getDataStore()Lcom/nuance/swype/connect/store/PersistentDataStore;

    move-result-object v0

    const-string v1, "DEVICE_ACK_ID"

    iget-object v2, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->preAckDeviceId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/nuance/swype/connect/store/PersistentDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 335
    :goto_0
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->transactionId:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 336
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectClient;->getDataStore()Lcom/nuance/swype/connect/store/PersistentDataStore;

    move-result-object v0

    const-string v1, "DEVICE_TRANSID"

    iget-object v2, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->transactionId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/nuance/swype/connect/store/PersistentDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 341
    :goto_1
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->preAckSwyperId:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 342
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectClient;->getDataStore()Lcom/nuance/swype/connect/store/PersistentDataStore;

    move-result-object v0

    const-string v1, "TEMP_SWYPER_ID"

    iget-object v2, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->preAckSwyperId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/nuance/swype/connect/store/PersistentDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 347
    :goto_2
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->swyperId:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 348
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectClient;->getDataStore()Lcom/nuance/swype/connect/store/PersistentDataStore;

    move-result-object v0

    const-string v1, "SWYPER_ID"

    iget-object v2, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->swyperId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/nuance/swype/connect/store/PersistentDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 353
    :goto_3
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->deviceId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectClient;->getDataStore()Lcom/nuance/swype/connect/store/PersistentDataStore;

    move-result-object v0

    const-string v1, "DEVICE_ID"

    iget-object v2, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->deviceId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/nuance/swype/connect/store/PersistentDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 356
    :cond_0
    return-void

    .line 332
    :cond_1
    const-string v0, "DEVICE_ACK_ID"

    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/manager/DeviceManager;->removePreference(Ljava/lang/String;)V

    goto :goto_0

    .line 338
    :cond_2
    const-string v0, "DEVICE_TRANSID"

    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/manager/DeviceManager;->removePreference(Ljava/lang/String;)V

    goto :goto_1

    .line 344
    :cond_3
    const-string v0, "TEMP_SWYPER_ID"

    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/manager/DeviceManager;->removePreference(Ljava/lang/String;)V

    goto :goto_2

    .line 350
    :cond_4
    const-string v0, "SWYPER_ID"

    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/manager/DeviceManager;->removePreference(Ljava/lang/String;)V

    goto :goto_3
.end method

.method private saveSerializedProperties(Ljava/util/HashMap;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 893
    .local p1, properties:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectClient;->getDataStore()Lcom/nuance/swype/connect/store/PersistentDataStore;

    move-result-object v0

    const-string v1, "DEVICE_PROPERTIES_"

    invoke-interface {v0, v1, p1}, Lcom/nuance/swype/connect/store/PersistentDataStore;->saveObject(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 894
    return-void
.end method


# virtual methods
.method public alarmNotification(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .parameter "type"
    .parameter "data"

    .prologue
    .line 308
    return-void
.end method

.method public delayFirstStart()J
    .locals 2

    .prologue
    .line 232
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public deregister()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 223
    iput-object v0, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->deviceId:Ljava/lang/String;

    .line 224
    iput-object v0, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->swyperId:Ljava/lang/String;

    .line 225
    iput-object v0, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->preAckDeviceId:Ljava/lang/String;

    .line 226
    iput-object v0, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->transactionId:Ljava/lang/String;

    .line 227
    iput-object v0, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->preAckSwyperId:Ljava/lang/String;

    .line 228
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/DeviceManager;->savePreferences()V

    .line 229
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 216
    iput-object v0, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->deviceId:Ljava/lang/String;

    .line 217
    iput-object v0, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->deviceProperties:Ljava/util/HashMap;

    .line 218
    invoke-super {p0}, Lcom/nuance/swype/connect/manager/AbstractCommandManager;->destroy()V

    .line 219
    return-void
.end method

.method public getDependencies()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 196
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "swypeconfig"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 876
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->deviceId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 881
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/DeviceManager;->loadPreferences()V

    .line 883
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public init()V
    .locals 0

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/DeviceManager;->loadPreferences()V

    .line 193
    return-void
.end method

.method public onHandleMessage(Landroid/os/Message;)Z
    .locals 4
    .parameter "message"

    .prologue
    .line 239
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DeviceManager.onHandleMessage("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 240
    const/4 v0, 0x0

    .line 241
    .local v0, handled:Z
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 283
    :goto_0
    return v0

    .line 243
    :sswitch_0
    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/DeviceManager;->registerDevice()V

    .line 244
    const/4 v0, 0x1

    .line 245
    goto :goto_0

    .line 248
    :sswitch_1
    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/DeviceManager;->registerDeviceAck()V

    .line 249
    const/4 v0, 0x1

    .line 250
    goto :goto_0

    .line 253
    :sswitch_2
    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/DeviceManager;->updateDeviceRegistration()V

    .line 254
    const/4 v0, 0x1

    .line 255
    goto :goto_0

    .line 258
    :sswitch_3
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/nuance/swype/connect/util/Response;

    if-ne v2, v3, :cond_0

    .line 259
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/nuance/swype/connect/util/Response;

    .line 260
    .local v1, response:Lcom/nuance/swype/connect/util/Response;
    iget-object v2, v1, Lcom/nuance/swype/connect/util/Response;->parameters:Ljava/util/HashMap;

    const-string v3, "9"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 266
    invoke-direct {p0, v1}, Lcom/nuance/swype/connect/manager/DeviceManager;->processDeviceValidateRequest(Lcom/nuance/swype/connect/util/Response;)V

    .line 269
    .end local v1           #response:Lcom/nuance/swype/connect/util/Response;
    :cond_0
    const/4 v0, 0x1

    .line 270
    goto :goto_0

    .line 273
    :sswitch_4
    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/DeviceManager;->requestSwyperId()V

    .line 274
    const/4 v0, 0x1

    .line 275
    goto :goto_0

    .line 278
    :sswitch_5
    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/DeviceManager;->requestConfiguration()V

    .line 279
    const/4 v0, 0x1

    goto :goto_0

    .line 241
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x1b -> :sswitch_4
        0x8c -> :sswitch_5
    .end sparse-switch
.end method

.method public onResponse(Lcom/nuance/swype/connect/util/Response;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 289
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "register"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/nuance/swype/connect/util/Response;->command:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/manager/DeviceManager;->processRegisterDeviceResponse(Lcom/nuance/swype/connect/util/Response;)V

    .line 304
    :goto_0
    return-void

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "ack"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/nuance/swype/connect/util/Response;->command:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 292
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/manager/DeviceManager;->processRegisterDeviceAckResponse(Lcom/nuance/swype/connect/util/Response;)V

    goto :goto_0

    .line 293
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "update"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/nuance/swype/connect/util/Response;->command:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 294
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/manager/DeviceManager;->processUpdateDeviceRegistrationResponse(Lcom/nuance/swype/connect/util/Response;)V

    goto :goto_0

    .line 295
    :cond_2
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "validate"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/nuance/swype/connect/util/Response;->command:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 296
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/manager/DeviceManager;->processValidateDeviceRegistrationResponse(Lcom/nuance/swype/connect/util/Response;)V

    goto :goto_0

    .line 297
    :cond_3
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "getConfig"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/nuance/swype/connect/util/Response;->command:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 298
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/manager/DeviceManager;->processRequestConfigurationResponse(Lcom/nuance/swype/connect/util/Response;)V

    goto :goto_0

    .line 299
    :cond_4
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "getSwyperId"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/nuance/swype/connect/util/Response;->command:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 300
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/manager/DeviceManager;->processRequestSwyperIdResponse(Lcom/nuance/swype/connect/util/Response;)V

    goto :goto_0

    .line 302
    :cond_5
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

.method public postStart()V
    .locals 0

    .prologue
    .line 212
    return-void
.end method

.method public rebind()V
    .locals 3

    .prologue
    .line 203
    const-string v0, "DeviceManager.rebind()"

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 204
    sget-object v0, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;->STARTED:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/DeviceManager;->getManagerStartState()Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->swyperId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v1, 0x63

    iget-object v2, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->swyperId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(ILjava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v1, 0x9c

    iget-object v2, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(ILjava/lang/String;)V

    .line 208
    :cond_0
    return-void
.end method

.method public registerDevice()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 367
    iget-object v4, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v4}, Lcom/nuance/swype/connect/ConnectClient;->getBuildProps()Lcom/nuance/swype/connect/util/BuildProps;

    move-result-object v4

    invoke-interface {v4}, Lcom/nuance/swype/connect/util/BuildProps;->getDeviceProperties()Ljava/util/HashMap;

    move-result-object v4

    iput-object v4, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->deviceProperties:Ljava/util/HashMap;

    .line 368
    iget-object v4, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->deviceProperties:Ljava/util/HashMap;

    invoke-direct {p0, v4}, Lcom/nuance/swype/connect/manager/DeviceManager;->saveSerializedProperties(Ljava/util/HashMap;)V

    .line 369
    iget-object v4, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v4}, Lcom/nuance/swype/connect/ConnectClient;->getBuildProps()Lcom/nuance/swype/connect/util/BuildProps;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->deviceProperties:Ljava/util/HashMap;

    invoke-interface {v4, v5}, Lcom/nuance/swype/connect/util/BuildProps;->hasRequiredDeviceProperties(Ljava/util/HashMap;)[Ljava/lang/String;

    move-result-object v1

    .line 372
    .local v1, missingProperties:[Ljava/lang/String;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 374
    .local v2, parameters:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v1, :cond_0

    array-length v4, v1

    if-lez v4, :cond_0

    .line 375
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Missing Required Device Properties required to register: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-static {v1, v5}, Lcom/nuance/swype/connect/util/StringUtils;->implode([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    .line 377
    iget-object v4, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/DeviceManager;->calcDefaultMilliDelay()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Lcom/nuance/swype/connect/ConnectClient;->postMessageDelayed(IJ)V

    .line 391
    :goto_0
    return-void

    .line 382
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/nuance/swype/connect/util/UUIDFactory;->generateUUID(J)Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    .line 383
    .local v3, uuid:Ljava/lang/String;
    const-string v4, "5"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    const-string v4, "30"

    const-string v5, "Android"

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    const-string v4, "31"

    iget-object v5, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->deviceProperties:Ljava/util/HashMap;

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    const-string v4, "register"

    invoke-virtual {p0, v4, v2}, Lcom/nuance/swype/connect/manager/DeviceManager;->createCommand(Ljava/lang/String;Ljava/util/HashMap;)Lcom/nuance/swype/connect/util/Command;

    move-result-object v0

    .line 387
    .local v0, command:Lcom/nuance/swype/connect/util/Command;
    iput-boolean v6, v0, Lcom/nuance/swype/connect/util/Command;->requireSession:Z

    .line 388
    iput-boolean v6, v0, Lcom/nuance/swype/connect/util/Command;->requireDevice:Z

    .line 389
    iput-boolean v6, v0, Lcom/nuance/swype/connect/util/Command;->needDevice:Z

    .line 390
    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/manager/DeviceManager;->sendCommand(Lcom/nuance/swype/connect/util/Command;)V

    goto :goto_0
.end method

.method public registerDeviceAck()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 459
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->preAckDeviceId:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->transactionId:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 460
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 461
    .local v1, parameters:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "5"

    iget-object v3, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->preAckDeviceId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    const-string v2, "ack"

    invoke-virtual {p0, v2, v1}, Lcom/nuance/swype/connect/manager/DeviceManager;->createCommand(Ljava/lang/String;Ljava/util/HashMap;)Lcom/nuance/swype/connect/util/Command;

    move-result-object v0

    .line 463
    .local v0, command:Lcom/nuance/swype/connect/util/Command;
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->transactionId:Ljava/lang/String;

    iput-object v2, v0, Lcom/nuance/swype/connect/util/Command;->transactionId:Ljava/lang/String;

    .line 464
    iput-boolean v4, v0, Lcom/nuance/swype/connect/util/Command;->requireSession:Z

    .line 465
    iput-boolean v4, v0, Lcom/nuance/swype/connect/util/Command;->needDevice:Z

    .line 466
    iput-boolean v4, v0, Lcom/nuance/swype/connect/util/Command;->requireDevice:Z

    .line 467
    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/manager/DeviceManager;->sendCommand(Lcom/nuance/swype/connect/util/Command;)V

    .line 484
    .end local v0           #command:Lcom/nuance/swype/connect/util/Command;
    .end local v1           #parameters:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    return-void

    .line 469
    :cond_0
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "DEVICE_ACK_ID"

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const-string v4, "DEVICE_ID"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "SWYPER_ID"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "TEMP_SWYPER_ID"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "DEVICE_TRANSID"

    aput-object v4, v2, v3

    invoke-virtual {p0, v2}, Lcom/nuance/swype/connect/manager/DeviceManager;->removePreferences([Ljava/lang/String;)V

    .line 476
    iput-object v5, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->preAckDeviceId:Ljava/lang/String;

    .line 477
    iput-object v5, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->deviceId:Ljava/lang/String;

    .line 478
    iput-object v5, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->preAckSwyperId:Ljava/lang/String;

    .line 479
    iput-object v5, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->swyperId:Ljava/lang/String;

    .line 480
    iput-object v5, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->transactionId:Ljava/lang/String;

    .line 481
    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/DeviceManager;->registerDevice()V

    goto :goto_0
.end method

.method public requestConfiguration()V
    .locals 2

    .prologue
    .line 700
    const-string v1, "getConfig"

    invoke-virtual {p0, v1}, Lcom/nuance/swype/connect/manager/DeviceManager;->createCommand(Ljava/lang/String;)Lcom/nuance/swype/connect/util/Command;

    move-result-object v0

    .line 701
    .local v0, command:Lcom/nuance/swype/connect/util/Command;
    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/manager/DeviceManager;->sendCommand(Lcom/nuance/swype/connect/util/Command;)V

    .line 702
    return-void
.end method

.method public requestSwyperId()V
    .locals 2

    .prologue
    .line 841
    const-string v1, "getSwyperId"

    invoke-virtual {p0, v1}, Lcom/nuance/swype/connect/manager/DeviceManager;->createCommand(Ljava/lang/String;)Lcom/nuance/swype/connect/util/Command;

    move-result-object v0

    .line 842
    .local v0, command:Lcom/nuance/swype/connect/util/Command;
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/nuance/swype/connect/util/Command;->requireSession:Z

    .line 843
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/nuance/swype/connect/util/Command;->requireDevice:Z

    .line 844
    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/manager/DeviceManager;->sendCommand(Lcom/nuance/swype/connect/util/Command;)V

    .line 845
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 156
    sget-object v0, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;->STARTING:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->managerStartState:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    .line 158
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->preAckDeviceId:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->transactionId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->deviceId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/DeviceManager;->registerDeviceAck()V

    .line 189
    :goto_0
    return-void

    .line 165
    :cond_0
    const-string v0, "DeviceManager- deviceId state mismatch"

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/DeviceManager;->registerDevice()V

    goto :goto_0

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->deviceId:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 170
    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/DeviceManager;->registerDevice()V

    goto :goto_0

    .line 173
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/DeviceManager;->requestConfiguration()V

    .line 176
    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/DeviceManager;->updateDeviceRegistration()V

    .line 180
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->swyperId:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 181
    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/DeviceManager;->requestSwyperId()V

    .line 185
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v1, 0x9c

    iget-object v2, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(ILjava/lang/String;)V

    .line 187
    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/DeviceManager;->managerStartComplete()V

    goto :goto_0

    .line 182
    :cond_4
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->swyperId:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 183
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v1, 0x63

    iget-object v2, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->swyperId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(ILjava/lang/String;)V

    goto :goto_1
.end method

.method public updateDeviceRegistration()V
    .locals 12

    .prologue
    .line 550
    const/4 v5, 0x0

    .line 552
    .local v5, possibleUpgrade:Z
    iget-object v9, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v9}, Lcom/nuance/swype/connect/ConnectClient;->getBuildProps()Lcom/nuance/swype/connect/util/BuildProps;

    move-result-object v9

    iget-object v10, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->deviceProperties:Ljava/util/HashMap;

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Lcom/nuance/swype/connect/util/BuildProps;->compareDeviceProperties(Ljava/util/HashMap;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 553
    .local v0, changedProps:[Ljava/lang/String;
    iget-object v9, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v9}, Lcom/nuance/swype/connect/ConnectClient;->getBuildProps()Lcom/nuance/swype/connect/util/BuildProps;

    move-result-object v9

    invoke-interface {v9}, Lcom/nuance/swype/connect/util/BuildProps;->getDeviceProperties()Ljava/util/HashMap;

    move-result-object v6

    .line 554
    .local v6, props:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 557
    .local v7, updatedProps:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    array-length v9, v0

    if-nez v9, :cond_1

    .line 591
    :cond_0
    :goto_0
    return-void

    .line 561
    :cond_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v9, v0

    if-ge v2, v9, :cond_4

    .line 562
    aget-object v3, v0, v2

    .line 563
    .local v3, key:Ljava/lang/String;
    aget-object v9, v0, v2

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 564
    .local v8, value:Ljava/lang/String;
    invoke-virtual {v6, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    if-eqz v8, :cond_3

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 565
    invoke-virtual {v7, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Updated property detected "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 568
    const-string v9, "SWYPE_VERSION"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "SWIB"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 569
    :cond_2
    const/4 v5, 0x1

    .line 561
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 577
    .end local v3           #key:Ljava/lang/String;
    .end local v8           #value:Ljava/lang/String;
    :cond_4
    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v9

    if-lez v9, :cond_0

    .line 578
    if-eqz v5, :cond_5

    .line 579
    iget-object v9, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v9}, Lcom/nuance/swype/connect/ConnectClient;->notifyPossibleUpgrade()V

    .line 581
    :cond_5
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 582
    .local v4, parameters:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v9, "5"

    iget-object v10, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->deviceId:Ljava/lang/String;

    invoke-virtual {v4, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    const-string v9, "31"

    invoke-virtual {v4, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    const-string v9, "update"

    invoke-virtual {p0, v9, v4}, Lcom/nuance/swype/connect/manager/DeviceManager;->createCommand(Ljava/lang/String;Ljava/util/HashMap;)Lcom/nuance/swype/connect/util/Command;

    move-result-object v1

    .line 586
    .local v1, command:Lcom/nuance/swype/connect/util/Command;
    const/4 v9, 0x0

    iput-boolean v9, v1, Lcom/nuance/swype/connect/util/Command;->requireSession:Z

    .line 587
    const/4 v9, 0x1

    iput-boolean v9, v1, Lcom/nuance/swype/connect/util/Command;->requireDevice:Z

    .line 588
    invoke-virtual {p0, v1}, Lcom/nuance/swype/connect/manager/DeviceManager;->sendCommand(Lcom/nuance/swype/connect/util/Command;)V

    goto/16 :goto_0
.end method

.method public validateDeviceData()V
    .locals 4

    .prologue
    .line 652
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 653
    .local v1, parameters:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "31"

    iget-object v3, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->deviceProperties:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    const-string v2, "validate"

    invoke-virtual {p0, v2, v1}, Lcom/nuance/swype/connect/manager/DeviceManager;->createCommand(Ljava/lang/String;Ljava/util/HashMap;)Lcom/nuance/swype/connect/util/Command;

    move-result-object v0

    .line 655
    .local v0, command:Lcom/nuance/swype/connect/util/Command;
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/nuance/swype/connect/util/Command;->requireSession:Z

    .line 656
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/DeviceManager;->transactionId:Ljava/lang/String;

    iput-object v2, v0, Lcom/nuance/swype/connect/util/Command;->transactionId:Ljava/lang/String;

    .line 657
    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/manager/DeviceManager;->sendCommand(Lcom/nuance/swype/connect/util/Command;)V

    .line 658
    return-void
.end method
