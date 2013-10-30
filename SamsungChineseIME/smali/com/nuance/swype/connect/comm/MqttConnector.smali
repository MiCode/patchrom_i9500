.class public Lcom/nuance/swype/connect/comm/MqttConnector;
.super Ljava/lang/Object;
.source "MqttConnector.java"

# interfaces
.implements Lorg/eclipse/paho/client/mqttv3/MqttCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/connect/comm/MqttConnector$12;,
        Lcom/nuance/swype/connect/comm/MqttConnector$MQTTStartupStatus;,
        Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;
    }
.end annotation


# static fields
.field public static final HOURS_BETWEEN_HELLO:I = 0xc

.field public static final MAX_MQTT_CLIENTID_LENGTH:I = 0x17

.field public static final MQTT_PING_ACTION:Ljava/lang/String; = "com.nuance.swype.connect.mqtt.PING"

.field public static final MQTT_RECONNECT_ACTION:Ljava/lang/String; = "com.nuance.swype.connect.mqtt.RECONNECT"

.field protected static final QOS:I = 0x1

.field protected static final SUBSCRIPTION_QOS:I = 0x1

.field public static final TAG:Ljava/lang/String; = "ConnectMQTT"

.field public static final WAKE_LOCK:Ljava/lang/String; = "ConnectMQTT"


# instance fields
.field private accountId:Ljava/lang/String;

.field private accountListener:Lcom/nuance/swype/connect/manager/interfaces/AccountListener;

.field private brokerHostName:Ljava/lang/String;

.field private brokerList:[Ljava/lang/String;

.field private final brokerPortNumber:Ljava/lang/String;

.field private brokerUrl:Ljava/lang/String;

.field private volatile commandQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/nuance/swype/connect/util/Command;",
            ">;"
        }
    .end annotation
.end field

.field private connectClient:Lcom/nuance/swype/connect/ConnectClient;

.field private connectOptions:Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

.field private connectedPreviously:Z

.field private connectionStatus:Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;

.field private deviceId:Ljava/lang/String;

.field private isEnabled:Z

.field private keepAliveSeconds:I

.field private keyAccount:Ljava/lang/String;

.field private keyAccountChangeListener:Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;

.field private keyBuild:Ljava/lang/String;

.field private keyBuildChangeListener:Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;

.field private keyDevice:Ljava/lang/String;

.field private keyDeviceChangeListener:Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;

.field private lastHelloSent:J

.field private mqttClient:Lorg/eclipse/paho/client/mqttv3/MqttClient;

.field private mqttClientId:Ljava/lang/String;

.field private mqttEnabledChangeListener:Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;

.field private mqttHostsChangeListener:Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;

.field private mqttKeepAliveChangeListener:Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;

.field private mqttReconnectCellularChangeListener:Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;

.field private mqttReconnectWifiChangeListener:Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;

.field private networkListener:Lcom/nuance/swype/connect/system/NetworkListener;

.field private networkState:Lcom/nuance/swype/connect/system/NetworkState;

.field private final protocol:Ljava/lang/String;

.field private reconnectCeullularTimeSeconds:I

.field private reconnectWifiTimeSeconds:I

.field private volatile sessionId:Ljava/lang/String;

.field private startupStatus:Lcom/nuance/swype/connect/comm/MqttConnector$MQTTStartupStatus;

.field private swib:Ljava/lang/String;

.field private thread:Ljava/lang/Thread;

.field private threadContinue:Z

.field private threadReconnect:Z

.field private threadRunning:Z

.field private threadStart:Z

.field private final topics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/nuance/swype/connect/ConnectClient;)V
    .locals 6
    .parameter "client"

    .prologue
    const/16 v5, 0x4b0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 412
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-boolean v3, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->threadContinue:Z

    .line 63
    iput-boolean v4, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->threadRunning:Z

    .line 64
    iput-boolean v4, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->threadStart:Z

    .line 65
    iput-boolean v4, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->threadReconnect:Z

    .line 67
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/nuance/swype/connect/comm/MqttConnector$1;

    invoke-direct {v1, p0}, Lcom/nuance/swype/connect/comm/MqttConnector$1;-><init>(Lcom/nuance/swype/connect/comm/MqttConnector;)V

    const-string v2, "MQTTservice"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->thread:Ljava/lang/Thread;

    .line 150
    const-string v0, "tcp://"

    iput-object v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->protocol:Ljava/lang/String;

    .line 151
    const-string v0, "80"

    iput-object v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->brokerPortNumber:Ljava/lang/String;

    .line 183
    iput v5, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->keepAliveSeconds:I

    .line 189
    iput v5, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->reconnectCeullularTimeSeconds:I

    .line 191
    iput v5, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->reconnectWifiTimeSeconds:I

    .line 199
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->mqttClientId:Ljava/lang/String;

    .line 204
    iput-boolean v4, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->isEnabled:Z

    .line 209
    iput-boolean v4, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->connectedPreviously:Z

    .line 247
    sget-object v0, Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;->INITIAL:Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;

    iput-object v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->connectionStatus:Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;

    .line 260
    sget-object v0, Lcom/nuance/swype/connect/comm/MqttConnector$MQTTStartupStatus;->INITIAL:Lcom/nuance/swype/connect/comm/MqttConnector$MQTTStartupStatus;

    iput-object v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->startupStatus:Lcom/nuance/swype/connect/comm/MqttConnector$MQTTStartupStatus;

    .line 265
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->topics:Ljava/util/List;

    .line 270
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->commandQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 276
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->lastHelloSent:J

    .line 280
    new-instance v0, Lcom/nuance/swype/connect/comm/MqttConnector$2;

    invoke-direct {v0, p0}, Lcom/nuance/swype/connect/comm/MqttConnector$2;-><init>(Lcom/nuance/swype/connect/comm/MqttConnector;)V

    iput-object v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->networkListener:Lcom/nuance/swype/connect/system/NetworkListener;

    .line 312
    new-instance v0, Lcom/nuance/swype/connect/comm/MqttConnector$3;

    invoke-direct {v0, p0}, Lcom/nuance/swype/connect/comm/MqttConnector$3;-><init>(Lcom/nuance/swype/connect/comm/MqttConnector;)V

    iput-object v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->accountListener:Lcom/nuance/swype/connect/manager/interfaces/AccountListener;

    .line 322
    new-instance v0, Lcom/nuance/swype/connect/comm/MqttConnector$4;

    invoke-direct {v0, p0}, Lcom/nuance/swype/connect/comm/MqttConnector$4;-><init>(Lcom/nuance/swype/connect/comm/MqttConnector;)V

    iput-object v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->mqttEnabledChangeListener:Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;

    .line 339
    new-instance v0, Lcom/nuance/swype/connect/comm/MqttConnector$5;

    invoke-direct {v0, p0}, Lcom/nuance/swype/connect/comm/MqttConnector$5;-><init>(Lcom/nuance/swype/connect/comm/MqttConnector;)V

    iput-object v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->mqttHostsChangeListener:Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;

    .line 355
    new-instance v0, Lcom/nuance/swype/connect/comm/MqttConnector$6;

    invoke-direct {v0, p0}, Lcom/nuance/swype/connect/comm/MqttConnector$6;-><init>(Lcom/nuance/swype/connect/comm/MqttConnector;)V

    iput-object v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->mqttKeepAliveChangeListener:Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;

    .line 364
    new-instance v0, Lcom/nuance/swype/connect/comm/MqttConnector$7;

    invoke-direct {v0, p0}, Lcom/nuance/swype/connect/comm/MqttConnector$7;-><init>(Lcom/nuance/swype/connect/comm/MqttConnector;)V

    iput-object v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->mqttReconnectCellularChangeListener:Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;

    .line 373
    new-instance v0, Lcom/nuance/swype/connect/comm/MqttConnector$8;

    invoke-direct {v0, p0}, Lcom/nuance/swype/connect/comm/MqttConnector$8;-><init>(Lcom/nuance/swype/connect/comm/MqttConnector;)V

    iput-object v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->mqttReconnectWifiChangeListener:Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;

    .line 382
    new-instance v0, Lcom/nuance/swype/connect/comm/MqttConnector$9;

    invoke-direct {v0, p0}, Lcom/nuance/swype/connect/comm/MqttConnector$9;-><init>(Lcom/nuance/swype/connect/comm/MqttConnector;)V

    iput-object v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->keyAccountChangeListener:Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;

    .line 390
    new-instance v0, Lcom/nuance/swype/connect/comm/MqttConnector$10;

    invoke-direct {v0, p0}, Lcom/nuance/swype/connect/comm/MqttConnector$10;-><init>(Lcom/nuance/swype/connect/comm/MqttConnector;)V

    iput-object v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->keyDeviceChangeListener:Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;

    .line 398
    new-instance v0, Lcom/nuance/swype/connect/comm/MqttConnector$11;

    invoke-direct {v0, p0}, Lcom/nuance/swype/connect/comm/MqttConnector$11;-><init>(Lcom/nuance/swype/connect/comm/MqttConnector;)V

    iput-object v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->keyBuildChangeListener:Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;

    .line 413
    const-string v0, "ConnectMQTT"

    const-string v1, "MqttConnector()"

    invoke-static {v0, v1}, Lcom/nuance/swype/connect/util/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    iput-object p1, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->connectClient:Lcom/nuance/swype/connect/ConnectClient;

    .line 415
    iget-object v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->networkListener:Lcom/nuance/swype/connect/system/NetworkListener;

    invoke-virtual {p1, v0}, Lcom/nuance/swype/connect/ConnectClient;->registerNetworkListener(Lcom/nuance/swype/connect/system/NetworkListener;)V

    .line 416
    iget-object v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->accountListener:Lcom/nuance/swype/connect/manager/interfaces/AccountListener;

    invoke-virtual {p1, v0}, Lcom/nuance/swype/connect/ConnectClient;->registerAccountListener(Lcom/nuance/swype/connect/manager/interfaces/AccountListener;)V

    .line 419
    iget-object v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->connectClient:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectClient;->getConfiguration()Lcom/nuance/swype/connect/configuration/ConnectConfiguration;

    move-result-object v0

    const-string v1, "MQTT_ENABLED"

    iget-object v2, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->mqttEnabledChangeListener:Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->setConfigurationListener(Ljava/lang/String;Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;Z)V

    .line 421
    iget-object v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->connectClient:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectClient;->getConfiguration()Lcom/nuance/swype/connect/configuration/ConnectConfiguration;

    move-result-object v0

    const-string v1, "MQTT_HOSTS"

    iget-object v2, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->mqttHostsChangeListener:Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->setConfigurationListener(Ljava/lang/String;Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;Z)V

    .line 423
    iget-object v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->connectClient:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectClient;->getConfiguration()Lcom/nuance/swype/connect/configuration/ConnectConfiguration;

    move-result-object v0

    const-string v1, "KEY_ACCOUNT"

    iget-object v2, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->keyAccountChangeListener:Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->setConfigurationListener(Ljava/lang/String;Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;Z)V

    .line 425
    iget-object v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->connectClient:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectClient;->getConfiguration()Lcom/nuance/swype/connect/configuration/ConnectConfiguration;

    move-result-object v0

    const-string v1, "KEY_DEVICE"

    iget-object v2, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->keyDeviceChangeListener:Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->setConfigurationListener(Ljava/lang/String;Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;Z)V

    .line 427
    iget-object v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->connectClient:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectClient;->getConfiguration()Lcom/nuance/swype/connect/configuration/ConnectConfiguration;

    move-result-object v0

    const-string v1, "KEY_BUILD"

    iget-object v2, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->keyBuildChangeListener:Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->setConfigurationListener(Ljava/lang/String;Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;Z)V

    .line 429
    iget-object v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->connectClient:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectClient;->getConfiguration()Lcom/nuance/swype/connect/configuration/ConnectConfiguration;

    move-result-object v0

    const-string v1, "MQTT_KEEP_ALIVE"

    iget-object v2, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->mqttKeepAliveChangeListener:Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->setConfigurationListener(Ljava/lang/String;Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;Z)V

    .line 432
    iget-object v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->connectClient:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectClient;->getConfiguration()Lcom/nuance/swype/connect/configuration/ConnectConfiguration;

    move-result-object v0

    const-string v1, "MQTT_RECONNECT_CELLULAR"

    iget-object v2, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->mqttReconnectCellularChangeListener:Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->setConfigurationListener(Ljava/lang/String;Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;Z)V

    .line 435
    iget-object v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->connectClient:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectClient;->getConfiguration()Lcom/nuance/swype/connect/configuration/ConnectConfiguration;

    move-result-object v0

    const-string v1, "MQTT_RECONNECT_WIFI"

    iget-object v2, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->mqttReconnectWifiChangeListener:Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->setConfigurationListener(Ljava/lang/String;Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;Z)V

    .line 438
    return-void
.end method

.method static synthetic access$002(Lcom/nuance/swype/connect/comm/MqttConnector;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->threadRunning:Z

    return p1
.end method

.method static synthetic access$100(Lcom/nuance/swype/connect/comm/MqttConnector;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->threadContinue:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/nuance/swype/connect/comm/MqttConnector;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/nuance/swype/connect/comm/MqttConnector;->resubscribe()V

    return-void
.end method

.method static synthetic access$1100(Lcom/nuance/swype/connect/comm/MqttConnector;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/nuance/swype/connect/comm/MqttConnector;->notifyConnection()V

    return-void
.end method

.method static synthetic access$1200(Lcom/nuance/swype/connect/comm/MqttConnector;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->connectedPreviously:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/nuance/swype/connect/comm/MqttConnector;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->connectedPreviously:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/nuance/swype/connect/comm/MqttConnector;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/nuance/swype/connect/comm/MqttConnector;->doPing()V

    return-void
.end method

.method static synthetic access$1402(Lcom/nuance/swype/connect/comm/MqttConnector;Lcom/nuance/swype/connect/system/NetworkState;)Lcom/nuance/swype/connect/system/NetworkState;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->networkState:Lcom/nuance/swype/connect/system/NetworkState;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/nuance/swype/connect/comm/MqttConnector;)Lcom/nuance/swype/connect/ConnectClient;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->connectClient:Lcom/nuance/swype/connect/ConnectClient;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/nuance/swype/connect/comm/MqttConnector;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/nuance/swype/connect/comm/MqttConnector;->disconnectFromBroker()V

    return-void
.end method

.method static synthetic access$1700(Lcom/nuance/swype/connect/comm/MqttConnector;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->brokerList:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/nuance/swype/connect/comm/MqttConnector;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->brokerList:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1802(Lcom/nuance/swype/connect/comm/MqttConnector;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->keepAliveSeconds:I

    return p1
.end method

.method static synthetic access$1902(Lcom/nuance/swype/connect/comm/MqttConnector;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->reconnectCeullularTimeSeconds:I

    return p1
.end method

.method static synthetic access$200(Lcom/nuance/swype/connect/comm/MqttConnector;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->threadStart:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/nuance/swype/connect/comm/MqttConnector;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->reconnectWifiTimeSeconds:I

    return p1
.end method

.method static synthetic access$202(Lcom/nuance/swype/connect/comm/MqttConnector;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->threadStart:Z

    return p1
.end method

.method static synthetic access$2102(Lcom/nuance/swype/connect/comm/MqttConnector;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->keyAccount:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2202(Lcom/nuance/swype/connect/comm/MqttConnector;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->keyDevice:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2302(Lcom/nuance/swype/connect/comm/MqttConnector;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->keyBuild:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/nuance/swype/connect/comm/MqttConnector;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->threadReconnect:Z

    return v0
.end method

.method static synthetic access$302(Lcom/nuance/swype/connect/comm/MqttConnector;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->threadReconnect:Z

    return p1
.end method

.method static synthetic access$400(Lcom/nuance/swype/connect/comm/MqttConnector;)Lorg/eclipse/paho/client/mqttv3/MqttClient;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->mqttClient:Lorg/eclipse/paho/client/mqttv3/MqttClient;

    return-object v0
.end method

.method static synthetic access$500(Lcom/nuance/swype/connect/comm/MqttConnector;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->isEnabled:Z

    return v0
.end method

.method static synthetic access$502(Lcom/nuance/swype/connect/comm/MqttConnector;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->isEnabled:Z

    return p1
.end method

.method static synthetic access$600(Lcom/nuance/swype/connect/comm/MqttConnector;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/nuance/swype/connect/comm/MqttConnector;->isAlreadyConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$702(Lcom/nuance/swype/connect/comm/MqttConnector;Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;)Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->connectionStatus:Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;

    return-object p1
.end method

.method static synthetic access$800(Lcom/nuance/swype/connect/comm/MqttConnector;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/nuance/swype/connect/comm/MqttConnector;->ready()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/nuance/swype/connect/comm/MqttConnector;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/nuance/swype/connect/comm/MqttConnector;->connectToBroker()Z

    move-result v0

    return v0
.end method

.method private addTopic(Ljava/lang/String;)V
    .locals 3
    .parameter "topic"

    .prologue
    .line 1077
    const-string v0, "ConnectMQTT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " addTopic("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/swype/connect/util/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1079
    iget-object v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->topics:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1080
    iget-object v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->topics:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1082
    :cond_0
    return-void
.end method

.method private connectToBroker()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 841
    const/4 v0, 0x0

    .line 842
    .local v0, connected:Z
    iget-boolean v4, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->isEnabled:Z

    if-nez v4, :cond_0

    .line 891
    :goto_0
    return v3

    .line 846
    :cond_0
    invoke-direct {p0}, Lcom/nuance/swype/connect/comm/MqttConnector;->isAlreadyConnected()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 847
    const/4 v0, 0x1

    .line 848
    sget-object v3, Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;->CONNECTED:Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;

    iput-object v3, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->connectionStatus:Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;

    .line 849
    const-string v3, "ConnectMQTT"

    const-string v4, " connectToBroker() returning: true"

    invoke-static {v3, v4}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    const/4 v3, 0x1

    goto :goto_0

    .line 853
    :cond_1
    iget-object v4, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->connectOptions:Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    if-nez v4, :cond_2

    .line 855
    sget-object v4, Lcom/nuance/swype/connect/comm/MqttConnector$MQTTStartupStatus;->READY:Lcom/nuance/swype/connect/comm/MqttConnector$MQTTStartupStatus;

    iput-object v4, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->startupStatus:Lcom/nuance/swype/connect/comm/MqttConnector$MQTTStartupStatus;

    .line 856
    invoke-virtual {p0}, Lcom/nuance/swype/connect/comm/MqttConnector;->start()V

    goto :goto_0

    .line 861
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->mqttClient:Lorg/eclipse/paho/client/mqttv3/MqttClient;

    iget-object v4, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->connectOptions:Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    invoke-virtual {v3, v4}, Lorg/eclipse/paho/client/mqttv3/MqttClient;->connect(Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;)V

    .line 862
    const/4 v0, 0x1

    .line 863
    const-wide/high16 v3, -0x8000

    iput-wide v3, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->lastHelloSent:J

    .line 864
    sget-object v3, Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;->CONNECTED:Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;

    iput-object v3, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->connectionStatus:Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;

    .line 865
    sget-object v3, Lcom/nuance/swype/connect/comm/MqttConnector$MQTTStartupStatus;->STARTED:Lcom/nuance/swype/connect/comm/MqttConnector$MQTTStartupStatus;

    iput-object v3, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->startupStatus:Lcom/nuance/swype/connect/comm/MqttConnector$MQTTStartupStatus;
    :try_end_0
    .catch Lorg/eclipse/paho/client/mqttv3/MqttSecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 890
    :goto_1
    invoke-direct {p0}, Lcom/nuance/swype/connect/comm/MqttConnector;->scheduleNextPing()V

    move v3, v0

    .line 891
    goto :goto_0

    .line 866
    :catch_0
    move-exception v1

    .line 867
    .local v1, e:Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;
    const-string v3, "ConnectMQTT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " connectToBroker() MqttSecurityException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;->printStackTrace()V

    .line 869
    sget-object v3, Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;->NOTCONNECTED_UNKNOWNREASON:Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;

    iput-object v3, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->connectionStatus:Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;

    goto :goto_1

    .line 870
    .end local v1           #e:Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;
    :catch_1
    move-exception v2

    .line 879
    .local v2, ex:Lorg/eclipse/paho/client/mqttv3/MqttException;
    const-string v3, "ConnectMQTT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connectToBroker() MqttException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lorg/eclipse/paho/client/mqttv3/MqttException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    const-string v3, "ConnectMQTT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connectToBroker() code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lorg/eclipse/paho/client/mqttv3/MqttException;->getReasonCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    sget-object v3, Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;->NOTCONNECTED_UNKNOWNREASON:Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;

    iput-object v3, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->connectionStatus:Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;

    goto :goto_1

    .line 886
    .end local v2           #ex:Lorg/eclipse/paho/client/mqttv3/MqttException;
    :catch_2
    move-exception v2

    .line 887
    .local v2, ex:Ljava/lang/Exception;
    const-string v3, "ConnectMQTT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connectToBroker() Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    sget-object v3, Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;->NOTCONNECTED_UNKNOWNREASON:Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;

    iput-object v3, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->connectionStatus:Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;

    goto/16 :goto_1
.end method

.method private disconnectFromBroker()V
    .locals 2

    .prologue
    .line 895
    const-string v0, "ConnectMQTT"

    const-string v1, " disconectFromBroker()"

    invoke-static {v0, v1}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    iget-object v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->mqttClient:Lorg/eclipse/paho/client/mqttv3/MqttClient;

    if-eqz v0, :cond_0

    .line 898
    :try_start_0
    iget-object v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->mqttClient:Lorg/eclipse/paho/client/mqttv3/MqttClient;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/MqttClient;->disconnect()V
    :try_end_0
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_0 .. :try_end_0} :catch_0

    .line 903
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/nuance/swype/connect/comm/MqttConnector;->scheduleReconnect()V

    .line 909
    sget-object v0, Lcom/nuance/swype/connect/comm/MqttConnector$MQTTStartupStatus;->READY:Lcom/nuance/swype/connect/comm/MqttConnector$MQTTStartupStatus;

    iput-object v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->startupStatus:Lcom/nuance/swype/connect/comm/MqttConnector$MQTTStartupStatus;

    .line 910
    sget-object v0, Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;->NOTCONNECTED_USERDISCONNECT:Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;

    iput-object v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->connectionStatus:Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;

    .line 911
    return-void

    .line 899
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private doPing()V
    .locals 6

    .prologue
    .line 1155
    const-string v4, "ConnectMQTT"

    const-string v5, " doPing()"

    invoke-static {v4, v5}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1156
    invoke-virtual {p0}, Lcom/nuance/swype/connect/comm/MqttConnector;->acquireWakeLock()Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    .line 1159
    .local v3, wl:Landroid/os/PowerManager$WakeLock;
    :try_start_0
    iget-object v4, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->mqttClient:Lorg/eclipse/paho/client/mqttv3/MqttClient;

    invoke-virtual {v4}, Lorg/eclipse/paho/client/mqttv3/MqttClient;->ping()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1175
    :goto_0
    invoke-direct {p0}, Lcom/nuance/swype/connect/comm/MqttConnector;->scheduleNextPing()V

    .line 1176
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1177
    return-void

    .line 1160
    :catch_0
    move-exception v0

    .line 1161
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "ConnectMQTT"

    const-string v5, "ping failed - exception"

    invoke-static {v4, v5, v0}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1163
    :try_start_1
    iget-object v4, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->mqttClient:Lorg/eclipse/paho/client/mqttv3/MqttClient;

    invoke-virtual {v4}, Lorg/eclipse/paho/client/mqttv3/MqttClient;->disconnect()V
    :try_end_1
    .catch Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 1171
    :goto_1
    invoke-virtual {p0}, Lcom/nuance/swype/connect/comm/MqttConnector;->scheduleReconnect()V

    goto :goto_0

    .line 1164
    :catch_1
    move-exception v1

    .line 1165
    .local v1, e1:Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;
    const-string v4, "ConnectMQTT"

    const-string v5, " disconnect failed - persistence exception"

    invoke-static {v4, v5, v1}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1166
    .end local v1           #e1:Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;
    :catch_2
    move-exception v2

    .line 1167
    .local v2, ex:Lorg/eclipse/paho/client/mqttv3/MqttException;
    const-string v4, "ConnectMQTT"

    const-string v5, " disconnect failed - persistence exception"

    invoke-static {v4, v5, v2}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1168
    .end local v2           #ex:Lorg/eclipse/paho/client/mqttv3/MqttException;
    :catch_3
    move-exception v2

    .line 1169
    .local v2, ex:Ljava/lang/Exception;
    const-string v4, "ConnectMQTT"

    const-string v5, " disconnect failed - persistence exception"

    invoke-static {v4, v5, v2}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private generateBody(Lcom/nuance/swype/connect/util/Command;)Lorg/json/JSONObject;
    .locals 13
    .parameter "command"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1315
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1317
    .local v0, body:Lorg/json/JSONObject;
    iget-boolean v10, p1, Lcom/nuance/swype/connect/util/Command;->sendEmpty:Z

    if-eqz v10, :cond_1

    .line 1371
    :cond_0
    return-object v0

    .line 1321
    :cond_1
    iget-boolean v10, p1, Lcom/nuance/swype/connect/util/Command;->requireDevice:Z

    if-eqz v10, :cond_2

    .line 1322
    const-string v10, "5"

    iget-object v11, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1325
    :cond_2
    iget-boolean v10, p1, Lcom/nuance/swype/connect/util/Command;->requireSession:Z

    if-eqz v10, :cond_3

    .line 1326
    const-string v10, "3"

    iget-object v11, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->sessionId:Ljava/lang/String;

    invoke-virtual {v0, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1330
    :cond_3
    iget-object v10, p1, Lcom/nuance/swype/connect/util/Command;->transactionId:Ljava/lang/String;

    if-eqz v10, :cond_4

    .line 1331
    const-string v10, "4"

    iget-object v11, p1, Lcom/nuance/swype/connect/util/Command;->transactionId:Ljava/lang/String;

    invoke-virtual {v0, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1334
    :cond_4
    iget-object v10, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->connectClient:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v10}, Lcom/nuance/swype/connect/ConnectClient;->getDebugResponse()I

    move-result v1

    .line 1335
    .local v1, debugResponse:I
    const/high16 v10, -0x8000

    if-le v1, v10, :cond_5

    .line 1336
    const-string v10, "ConnectMQTT"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "adding debug response request: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1337
    iget-object v10, p1, Lcom/nuance/swype/connect/util/Command;->parameters:Ljava/util/HashMap;

    const-string v11, "debug"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1341
    :cond_5
    iget-object v10, p1, Lcom/nuance/swype/connect/util/Command;->parameters:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1342
    .local v4, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1343
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1344
    .local v5, key:Ljava/lang/String;
    iget-object v10, p1, Lcom/nuance/swype/connect/util/Command;->parameters:Ljava/util/HashMap;

    invoke-virtual {v10, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 1346
    .local v7, value:Ljava/lang/Object;
    instance-of v10, v7, Ljava/lang/String;

    if-eqz v10, :cond_6

    .line 1347
    invoke-virtual {v0, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 1348
    :cond_6
    instance-of v10, v7, Ljava/lang/Long;

    if-eqz v10, :cond_7

    .line 1349
    check-cast v7, Ljava/lang/Long;

    .end local v7           #value:Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/Long;->intValue()I

    move-result v10

    invoke-virtual {v0, v5, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    .line 1350
    .restart local v7       #value:Ljava/lang/Object;
    :cond_7
    instance-of v10, v7, Ljava/lang/Integer;

    if-eqz v10, :cond_8

    .line 1351
    check-cast v7, Ljava/lang/Integer;

    .end local v7           #value:Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v0, v5, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    .line 1352
    .restart local v7       #value:Ljava/lang/Object;
    :cond_8
    instance-of v10, v7, Ljava/lang/Boolean;

    if-eqz v10, :cond_9

    .line 1353
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v5, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 1354
    :cond_9
    instance-of v10, v7, Ljava/util/HashMap;

    if-eqz v10, :cond_b

    .line 1355
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 1356
    .local v6, property:Lorg/json/JSONObject;
    check-cast v7, Ljava/util/HashMap;

    .end local v7           #value:Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1357
    .local v2, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<**>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1358
    .local v8, valueKey:Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1359
    .local v9, valueValue:Ljava/lang/String;
    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 1361
    .end local v2           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<**>;"
    .end local v8           #valueKey:Ljava/lang/String;
    .end local v9           #valueValue:Ljava/lang/String;
    :cond_a
    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 1362
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v6           #property:Lorg/json/JSONObject;
    .restart local v7       #value:Ljava/lang/Object;
    :cond_b
    instance-of v10, v7, Lorg/json/JSONObject;

    if-eqz v10, :cond_c

    .line 1363
    invoke-virtual {v0, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 1364
    :cond_c
    instance-of v10, v7, Lorg/json/JSONArray;

    if-eqz v10, :cond_d

    .line 1365
    invoke-virtual {v0, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 1367
    :cond_d
    const-string v10, "ConnectMQTT"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error: unusable key type key="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " value="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private getBrokerUrl()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1215
    iget-object v3, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->brokerList:[Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->brokerList:[Ljava/lang/String;

    array-length v3, v3

    if-nez v3, :cond_1

    .line 1216
    :cond_0
    const-string v3, "ConnectMQTT"

    const-string v4, "no server selected."

    invoke-static {v3, v4}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1231
    :goto_0
    return-object v2

    .line 1220
    :cond_1
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 1221
    .local v0, rand:Ljava/util/Random;
    iget-object v3, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->brokerList:[Ljava/lang/String;

    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 1222
    .local v1, selection:I
    iget-object v3, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->brokerList:[Ljava/lang/String;

    aget-object v3, v3, v1

    iput-object v3, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->brokerHostName:Ljava/lang/String;

    .line 1224
    const-string v3, "ConnectMQTT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Selected Server ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->brokerHostName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1226
    iget-object v3, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->brokerHostName:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->brokerHostName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    .line 1227
    :cond_2
    const-string v3, "ConnectMQTT"

    const-string v4, "no server selected."

    invoke-static {v3, v4}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1231
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tcp://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->brokerHostName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "80"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private getUniqueId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x63

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isAlreadyConnected()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1204
    iget-object v1, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->mqttClient:Lorg/eclipse/paho/client/mqttv3/MqttClient;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->mqttClient:Lorg/eclipse/paho/client/mqttv3/MqttClient;

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/MqttClient;->isConnected()Z

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCommandInQueue(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "commandFamily"
    .parameter "command"

    .prologue
    .line 1271
    const/4 v0, 0x0

    .line 1273
    .local v0, isInQueue:Z
    iget-object v3, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->commandQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1274
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/nuance/swype/connect/util/Command;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1275
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/connect/util/Command;

    .line 1276
    .local v2, queuedCommand:Lcom/nuance/swype/connect/util/Command;
    iget-object v3, v2, Lcom/nuance/swype/connect/util/Command;->commandFamily:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/nuance/swype/connect/util/Command;->command:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1278
    const/4 v0, 0x1

    .line 1282
    .end local v2           #queuedCommand:Lcom/nuance/swype/connect/util/Command;
    :cond_1
    return v0
.end method

.method private isStarted()Z
    .locals 2

    .prologue
    .line 1208
    iget-object v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->startupStatus:Lcom/nuance/swype/connect/comm/MqttConnector$MQTTStartupStatus;

    sget-object v1, Lcom/nuance/swype/connect/comm/MqttConnector$MQTTStartupStatus;->STARTED:Lcom/nuance/swype/connect/comm/MqttConnector$MQTTStartupStatus;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/comm/MqttConnector$MQTTStartupStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private notifyConnection()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1123
    const-string v2, "ConnectMQTT"

    const-string v3, " notifyConnection()"

    invoke-static {v2, v3}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1125
    new-instance v0, Lcom/nuance/swype/connect/util/Command;

    invoke-direct {v0}, Lcom/nuance/swype/connect/util/Command;-><init>()V

    .line 1126
    .local v0, command:Lcom/nuance/swype/connect/util/Command;
    iput-boolean v5, v0, Lcom/nuance/swype/connect/util/Command;->realTimeEnabled:Z

    .line 1127
    const-string v2, "s"

    iput-object v2, v0, Lcom/nuance/swype/connect/util/Command;->realTimeTopic:Ljava/lang/String;

    .line 1128
    const-string v2, "0"

    iput-object v2, v0, Lcom/nuance/swype/connect/util/Command;->realTimeSubTopic:Ljava/lang/String;

    .line 1129
    const-string v2, "session"

    iput-object v2, v0, Lcom/nuance/swype/connect/util/Command;->commandFamily:Ljava/lang/String;

    .line 1130
    const-string v2, "poll"

    iput-object v2, v0, Lcom/nuance/swype/connect/util/Command;->command:Ljava/lang/String;

    .line 1131
    iput-boolean v4, v0, Lcom/nuance/swype/connect/util/Command;->requireSession:Z

    .line 1132
    iput-boolean v4, v0, Lcom/nuance/swype/connect/util/Command;->requireDevice:Z

    .line 1133
    iput-boolean v5, v0, Lcom/nuance/swype/connect/util/Command;->sendEmpty:Z

    .line 1135
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1136
    .local v1, parameters:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object v1, v0, Lcom/nuance/swype/connect/util/Command;->parameters:Ljava/util/HashMap;

    .line 1138
    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/comm/MqttConnector;->sendCommand(Lcom/nuance/swype/connect/util/Command;)V

    .line 1139
    return-void
.end method

.method private processQueue()V
    .locals 3

    .prologue
    .line 1032
    :cond_0
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->commandQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1033
    iget-object v2, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->commandQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/connect/util/Command;

    .line 1034
    .local v0, command:Lcom/nuance/swype/connect/util/Command;
    if-eqz v0, :cond_0

    .line 1035
    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/comm/MqttConnector;->publish(Lcom/nuance/swype/connect/util/Command;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1038
    .end local v0           #command:Lcom/nuance/swype/connect/util/Command;
    :catch_0
    move-exception v1

    .line 1039
    .local v1, e:Ljava/lang/InterruptedException;
    const-string v2, "Failure getting command from queue"

    invoke-static {v2}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    .line 1041
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_1
    return-void
.end method

.method private processResult(Lcom/nuance/swype/connect/util/Response;Lorg/json/JSONObject;)Lcom/nuance/swype/connect/util/Response;
    .locals 8
    .parameter "response"
    .parameter "result"

    .prologue
    .line 1378
    :try_start_0
    const-string v5, "4"

    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1379
    const-string v5, "4"

    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Lcom/nuance/swype/connect/util/Response;->transactionId:Ljava/lang/String;

    .line 1380
    const-string v5, "4"

    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 1383
    :cond_0
    const-string v5, "51"

    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1384
    const-string v5, "51"

    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Lcom/nuance/swype/connect/util/Response;->thirdPartyURL:Ljava/lang/String;

    .line 1385
    const-string v5, "51"

    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 1388
    :cond_1
    const-string v5, "0"

    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1390
    const-string v5, "0"

    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 1393
    :cond_2
    const-string v5, "64"

    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1395
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Debug Info: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "64"

    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    .line 1398
    :cond_3
    const-string v5, "106"

    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1400
    const-string v5, "106"

    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p1, Lcom/nuance/swype/connect/util/Response;->randomDelayedFor:I

    .line 1401
    const-string v5, "106"

    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 1404
    :cond_4
    const-string v5, "8"

    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1407
    const-string v5, "8"

    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p1, Lcom/nuance/swype/connect/util/Response;->delayedFor:I

    .line 1408
    const-string v5, "8"

    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 1413
    :cond_5
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1415
    .local v3, parameters:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 1416
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1417
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1418
    .local v2, key:Ljava/lang/String;
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 1419
    .local v4, value:Ljava/lang/Object;
    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1424
    .end local v1           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    .end local v2           #key:Ljava/lang/String;
    .end local v3           #parameters:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4           #value:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 1425
    .local v0, ex:Lorg/json/JSONException;
    const-string v5, "ConnectMQTT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ConnectManager.processResult() - JSONException "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1430
    .end local v0           #ex:Lorg/json/JSONException;
    :goto_1
    return-object p1

    .line 1422
    .restart local v1       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    .restart local v3       #parameters:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_6
    :try_start_1
    iput-object v3, p1, Lcom/nuance/swype/connect/util/Response;->parameters:Ljava/util/HashMap;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1426
    .end local v1           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    .end local v3           #parameters:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :catch_1
    move-exception v0

    .line 1427
    .local v0, ex:Ljava/lang/Exception;
    const-string v5, "ConnectMQTT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ConnectManager.processResult() - Exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private ready()Z
    .locals 3

    .prologue
    .line 447
    const/4 v0, 0x1

    .line 449
    .local v0, isReady:Z
    iget-boolean v1, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->isEnabled:Z

    if-nez v1, :cond_0

    .line 450
    const/4 v0, 0x0

    .line 453
    :cond_0
    iget v1, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->keepAliveSeconds:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_1

    .line 455
    const/4 v0, 0x0

    .line 458
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->keyDevice:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->keyDevice:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 460
    :cond_2
    const/4 v0, 0x0

    .line 463
    :cond_3
    iget-object v1, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->keyBuild:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->keyBuild:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_5

    .line 465
    :cond_4
    const/4 v0, 0x0

    .line 468
    :cond_5
    iget-object v1, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->brokerList:[Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->brokerList:[Ljava/lang/String;

    array-length v1, v1

    if-nez v1, :cond_7

    .line 470
    :cond_6
    const/4 v0, 0x0

    .line 473
    :cond_7
    return v0
.end method

.method private resubscribe()V
    .locals 2

    .prologue
    .line 1118
    const-string v0, "ConnectMQTT"

    const-string v1, " resubscribe()"

    invoke-static {v0, v1}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1119
    iget-object v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->topics:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/nuance/swype/connect/comm/MqttConnector;->subscribe(Ljava/util/List;)V

    .line 1120
    return-void
.end method

.method private scheduleNextPing()V
    .locals 5

    .prologue
    .line 1146
    new-instance v1, Lcom/nuance/swype/connect/util/Alarm$Builder;

    iget-object v2, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->connectClient:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v2}, Lcom/nuance/swype/connect/ConnectClient;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/nuance/swype/connect/comm/MqttConnector;

    const-string v4, "com.nuance.swype.connect.mqtt.PING"

    invoke-direct {v1, v2, v3, v4}, Lcom/nuance/swype/connect/util/Alarm$Builder;-><init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V

    iget v2, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->keepAliveSeconds:I

    invoke-virtual {v1, v2}, Lcom/nuance/swype/connect/util/Alarm$Builder;->seconds(I)Lcom/nuance/swype/connect/util/Alarm$Builder;

    move-result-object v1

    const/high16 v2, 0x800

    invoke-virtual {v1, v2}, Lcom/nuance/swype/connect/util/Alarm$Builder;->flags(I)Lcom/nuance/swype/connect/util/Alarm$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/nuance/swype/connect/util/Alarm$Builder;->wakeDevice(Z)Lcom/nuance/swype/connect/util/Alarm$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/connect/util/Alarm$Builder;->build()Lcom/nuance/swype/connect/util/Alarm;

    move-result-object v0

    .line 1151
    .local v0, alarm:Lcom/nuance/swype/connect/util/Alarm;
    invoke-virtual {v0}, Lcom/nuance/swype/connect/util/Alarm;->set()V

    .line 1152
    return-void
.end method

.method private setupMqttClient()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 561
    const-string v5, "ConnectMQTT"

    const-string v6, " setupMqttClient()"

    invoke-static {v5, v6}, Lcom/nuance/swype/connect/util/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    sget-object v5, Lcom/nuance/swype/connect/comm/MqttConnector$MQTTStartupStatus;->CONFIGURING:Lcom/nuance/swype/connect/comm/MqttConnector$MQTTStartupStatus;

    iput-object v5, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->startupStatus:Lcom/nuance/swype/connect/comm/MqttConnector$MQTTStartupStatus;

    .line 565
    iget-object v5, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->connectClient:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v5}, Lcom/nuance/swype/connect/ConnectClient;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    .line 566
    .local v2, origDeviceId:Ljava/lang/String;
    iget-object v5, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->connectClient:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v5}, Lcom/nuance/swype/connect/ConnectClient;->getSessionId()Ljava/lang/String;

    move-result-object v3

    .line 567
    .local v3, origSessionId:Ljava/lang/String;
    iget-object v5, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->connectClient:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v5}, Lcom/nuance/swype/connect/ConnectClient;->getSwib()Ljava/lang/String;

    move-result-object v4

    .line 569
    .local v4, origSwib:Ljava/lang/String;
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    if-nez v4, :cond_1

    .line 570
    :cond_0
    sget-object v5, Lcom/nuance/swype/connect/comm/MqttConnector$MQTTStartupStatus;->READY:Lcom/nuance/swype/connect/comm/MqttConnector$MQTTStartupStatus;

    iput-object v5, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->startupStatus:Lcom/nuance/swype/connect/comm/MqttConnector$MQTTStartupStatus;

    .line 571
    const-string v5, "ConnectMQTT"

    const-string v6, "setupMqttClient() -- unable to start as device property missing"

    invoke-static {v5, v6}, Lcom/nuance/swype/connect/util/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    :goto_0
    return-void

    .line 575
    :cond_1
    invoke-static {v2}, Lcom/nuance/swype/connect/util/EncryptUtils;->shrinkUUID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->deviceId:Ljava/lang/String;

    .line 576
    invoke-static {v3}, Lcom/nuance/swype/connect/util/EncryptUtils;->shrinkUUID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->sessionId:Ljava/lang/String;

    .line 577
    invoke-static {v4}, Lcom/nuance/swype/connect/util/EncryptUtils;->shrinkUUID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->swib:Ljava/lang/String;

    .line 579
    iget-object v5, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->connectClient:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v5}, Lcom/nuance/swype/connect/ConnectClient;->getAccountId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 580
    iget-object v5, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->connectClient:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v5}, Lcom/nuance/swype/connect/ConnectClient;->getAccountId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/nuance/swype/connect/util/EncryptUtils;->shrinkUUID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->accountId:Ljava/lang/String;

    .line 583
    :cond_2
    invoke-direct {p0}, Lcom/nuance/swype/connect/comm/MqttConnector;->getUniqueId()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->mqttClientId:Ljava/lang/String;

    .line 584
    invoke-direct {p0}, Lcom/nuance/swype/connect/comm/MqttConnector;->getBrokerUrl()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->brokerUrl:Ljava/lang/String;

    .line 586
    const-string v5, "ConnectMQTT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setupMqttClient() URL: ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->brokerUrl:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ClientId: ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->mqttClientId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] KeepAlive: ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->keepAliveSeconds:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/nuance/swype/connect/util/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    iget-object v5, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->brokerUrl:Ljava/lang/String;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->mqttClientId:Ljava/lang/String;

    if-eqz v5, :cond_3

    iget v5, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->keepAliveSeconds:I

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->brokerUrl:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->mqttClientId:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_4

    .line 591
    :cond_3
    sget-object v5, Lcom/nuance/swype/connect/comm/MqttConnector$MQTTStartupStatus;->READY:Lcom/nuance/swype/connect/comm/MqttConnector$MQTTStartupStatus;

    iput-object v5, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->startupStatus:Lcom/nuance/swype/connect/comm/MqttConnector$MQTTStartupStatus;

    .line 592
    const-string v5, "ConnectMQTT"

    const-string v6, "setupMqttClient() -- unable to start as require configuration not included."

    invoke-static {v5, v6}, Lcom/nuance/swype/connect/util/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 600
    :cond_4
    :try_start_0
    new-instance v5, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    invoke-direct {v5}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;-><init>()V

    iput-object v5, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->connectOptions:Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    .line 601
    iget-object v5, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->connectOptions:Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->setCleanSession(Z)V

    .line 602
    iget-object v5, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->connectOptions:Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    iget v6, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->keepAliveSeconds:I

    invoke-virtual {v5, v6}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->setKeepAliveInterval(I)V

    .line 604
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/internal/MemoryPersistence;

    invoke-direct {v0}, Lorg/eclipse/paho/client/mqttv3/internal/MemoryPersistence;-><init>()V

    .line 607
    .local v0, dataStore:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;
    new-instance v5, Lorg/eclipse/paho/client/mqttv3/MqttClient;

    iget-object v6, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->brokerUrl:Ljava/lang/String;

    iget-object v7, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->mqttClientId:Ljava/lang/String;

    invoke-direct {v5, v6, v7, v0}, Lorg/eclipse/paho/client/mqttv3/MqttClient;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;)V

    iput-object v5, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->mqttClient:Lorg/eclipse/paho/client/mqttv3/MqttClient;

    .line 610
    iget-object v5, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->mqttClient:Lorg/eclipse/paho/client/mqttv3/MqttClient;

    invoke-virtual {v5, p0}, Lorg/eclipse/paho/client/mqttv3/MqttClient;->setCallback(Lorg/eclipse/paho/client/mqttv3/MqttCallback;)V

    .line 612
    new-instance v5, Lcom/nuance/swype/connect/comm/MqttTopicBuilder;

    const-string v6, "d"

    const-string v7, "+"

    iget-object v8, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->deviceId:Ljava/lang/String;

    invoke-direct {v5, v6, v7, v8}, Lcom/nuance/swype/connect/comm/MqttTopicBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/nuance/swype/connect/comm/MqttConnector;->subscribe(Lcom/nuance/swype/connect/comm/MqttTopicBuilder;)V

    .line 614
    new-instance v5, Lcom/nuance/swype/connect/comm/MqttTopicBuilder;

    const-string v6, "b"

    const-string v7, "+"

    iget-object v8, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->swib:Ljava/lang/String;

    invoke-direct {v5, v6, v7, v8}, Lcom/nuance/swype/connect/comm/MqttTopicBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/nuance/swype/connect/comm/MqttConnector;->subscribe(Lcom/nuance/swype/connect/comm/MqttTopicBuilder;)V

    .line 617
    iget-object v5, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->accountId:Ljava/lang/String;

    if-eqz v5, :cond_5

    .line 618
    new-instance v5, Lcom/nuance/swype/connect/comm/MqttTopicBuilder;

    const-string v6, "a"

    const-string v7, "+"

    iget-object v8, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->accountId:Ljava/lang/String;

    invoke-direct {v5, v6, v7, v8}, Lcom/nuance/swype/connect/comm/MqttTopicBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/nuance/swype/connect/comm/MqttConnector;->subscribe(Lcom/nuance/swype/connect/comm/MqttTopicBuilder;)V

    .line 622
    :cond_5
    sget-object v5, Lcom/nuance/swype/connect/comm/MqttConnector$MQTTStartupStatus;->CONFIGURED:Lcom/nuance/swype/connect/comm/MqttConnector$MQTTStartupStatus;

    iput-object v5, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->startupStatus:Lcom/nuance/swype/connect/comm/MqttConnector$MQTTStartupStatus;
    :try_end_0
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 623
    .end local v0           #dataStore:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;
    :catch_0
    move-exception v1

    .line 624
    .local v1, e:Lorg/eclipse/paho/client/mqttv3/MqttException;
    const-string v5, "ConnectMQTT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to Setup MQTT: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/MqttException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/nuance/swype/connect/util/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    iput-object v9, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->mqttClient:Lorg/eclipse/paho/client/mqttv3/MqttClient;

    .line 626
    sget-object v5, Lcom/nuance/swype/connect/comm/MqttConnector$MQTTStartupStatus;->READY:Lcom/nuance/swype/connect/comm/MqttConnector$MQTTStartupStatus;

    iput-object v5, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->startupStatus:Lcom/nuance/swype/connect/comm/MqttConnector$MQTTStartupStatus;

    .line 627
    sget-object v5, Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;->NOTCONNECTED_UNKNOWNREASON:Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;

    iput-object v5, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->connectionStatus:Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;

    goto/16 :goto_0

    .line 628
    .end local v1           #e:Lorg/eclipse/paho/client/mqttv3/MqttException;
    :catch_1
    move-exception v1

    .line 629
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "ConnectMQTT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to Setup MQTT: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/nuance/swype/connect/util/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    iput-object v9, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->mqttClient:Lorg/eclipse/paho/client/mqttv3/MqttClient;

    .line 631
    sget-object v5, Lcom/nuance/swype/connect/comm/MqttConnector$MQTTStartupStatus;->READY:Lcom/nuance/swype/connect/comm/MqttConnector$MQTTStartupStatus;

    iput-object v5, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->startupStatus:Lcom/nuance/swype/connect/comm/MqttConnector$MQTTStartupStatus;

    .line 632
    sget-object v5, Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;->NOTCONNECTED_UNKNOWNREASON:Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;

    iput-object v5, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->connectionStatus:Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;

    goto/16 :goto_0
.end method

.method private startMQTTThread()V
    .locals 2

    .prologue
    .line 546
    const-string v0, "ConnectMQTT"

    const-string v1, "startMQTTThread()"

    invoke-static {v0, v1}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    iget-object v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->thread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->threadRunning:Z

    if-eqz v0, :cond_2

    .line 549
    :cond_1
    const-string v0, "ConnectMQTT"

    const-string v1, "not starting another thread"

    invoke-static {v0, v1}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    :goto_0
    return-void

    .line 553
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->threadStart:Z

    .line 554
    iget-object v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private subscribe(Ljava/util/List;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1100
    .local p1, topicList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "ConnectMQTT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " subscribe()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1102
    invoke-direct {p0}, Lcom/nuance/swype/connect/comm/MqttConnector;->isAlreadyConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1104
    const/4 v3, 0x0

    :try_start_0
    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 1105
    .local v2, topics:[Ljava/lang/String;
    array-length v3, v2

    new-array v1, v3, [I

    .line 1106
    .local v1, qos:[I
    const/4 v3, 0x1

    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([II)V

    .line 1107
    iget-object v3, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->mqttClient:Lorg/eclipse/paho/client/mqttv3/MqttClient;

    invoke-virtual {v3, v2, v1}, Lorg/eclipse/paho/client/mqttv3/MqttClient;->subscribe([Ljava/lang/String;[I)V

    .line 1108
    invoke-direct {p0}, Lcom/nuance/swype/connect/comm/MqttConnector;->scheduleNextPing()V
    :try_end_0
    .catch Lorg/eclipse/paho/client/mqttv3/MqttSecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1115
    .end local v1           #qos:[I
    .end local v2           #topics:[Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1109
    :catch_0
    move-exception v0

    .line 1110
    .local v0, e:Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;
    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;->printStackTrace()V

    goto :goto_0

    .line 1111
    .end local v0           #e:Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;
    :catch_1
    move-exception v0

    .line 1112
    .local v0, e:Lorg/eclipse/paho/client/mqttv3/MqttException;
    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/MqttException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected acquireWakeLock()Landroid/os/PowerManager$WakeLock;
    .locals 4

    .prologue
    .line 652
    iget-object v2, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->connectClient:Lcom/nuance/swype/connect/ConnectClient;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Lcom/nuance/swype/connect/ConnectClient;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 653
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v2, 0x1

    const-string v3, "ConnectMQTT"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    .line 654
    .local v1, wl:Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 656
    return-object v1
.end method

.method public alarmNotification(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .parameter "type"
    .parameter "data"

    .prologue
    .line 1239
    const-string v0, "ConnectMQTT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "alarmNotification(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1241
    const-string v0, "com.nuance.swype.connect.mqtt.PING"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1242
    invoke-direct {p0}, Lcom/nuance/swype/connect/comm/MqttConnector;->doPing()V

    .line 1246
    :cond_0
    :goto_0
    return-void

    .line 1243
    :cond_1
    const-string v0, "com.nuance.swype.connect.mqtt.RECONNECT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1244
    invoke-virtual {p0}, Lcom/nuance/swype/connect/comm/MqttConnector;->start()V

    goto :goto_0
.end method

.method protected availableConnection()Z
    .locals 2

    .prologue
    .line 477
    const/4 v0, 0x0

    .line 479
    .local v0, available:Z
    iget-object v1, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->networkState:Lcom/nuance/swype/connect/system/NetworkState;

    if-eqz v1, :cond_0

    .line 481
    iget-object v1, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->networkState:Lcom/nuance/swype/connect/system/NetworkState;

    invoke-virtual {v1}, Lcom/nuance/swype/connect/system/NetworkState;->hasConnectivity()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->networkState:Lcom/nuance/swype/connect/system/NetworkState;

    invoke-virtual {v1}, Lcom/nuance/swype/connect/system/NetworkState;->isRoaming()Z

    move-result v1

    if-nez v1, :cond_0

    .line 482
    const/4 v0, 0x1

    .line 486
    :cond_0
    return v0
.end method

.method public connectionLost(Ljava/lang/Throwable;)V
    .locals 4
    .parameter "cause"

    .prologue
    .line 664
    const-string v1, "ConnectMQTT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " connectionLost() + "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    invoke-virtual {p0}, Lcom/nuance/swype/connect/comm/MqttConnector;->acquireWakeLock()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    .line 667
    .local v0, wl:Landroid/os/PowerManager$WakeLock;
    invoke-virtual {p0}, Lcom/nuance/swype/connect/comm/MqttConnector;->handleDisconnect()V

    .line 669
    invoke-direct {p0}, Lcom/nuance/swype/connect/comm/MqttConnector;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 671
    invoke-virtual {p0}, Lcom/nuance/swype/connect/comm/MqttConnector;->availableConnection()Z

    move-result v1

    if-nez v1, :cond_1

    .line 672
    sget-object v1, Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;->NOTCONNECTED_WAITINGFORINTERNET:Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;

    iput-object v1, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->connectionStatus:Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;

    .line 679
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 680
    return-void

    .line 674
    :cond_1
    sget-object v1, Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;->NOTCONNECTED_UNKNOWNREASON:Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;

    iput-object v1, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->connectionStatus:Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;

    .line 675
    invoke-virtual {p0}, Lcom/nuance/swype/connect/comm/MqttConnector;->scheduleReconnect()V

    goto :goto_0
.end method

.method public deliveryComplete(Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;)V
    .locals 2
    .parameter "token"

    .prologue
    .line 833
    const-string v0, "ConnectMQTT"

    const-string v1, " deliveryComplete()"

    invoke-static {v0, v1}, Lcom/nuance/swype/connect/util/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 1183
    const-string v0, "ConnectMQTT"

    const-string v1, " destroy()"

    invoke-static {v0, v1}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1185
    iget-object v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->networkListener:Lcom/nuance/swype/connect/system/NetworkListener;

    if-eqz v0, :cond_0

    .line 1186
    iget-object v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->connectClient:Lcom/nuance/swype/connect/ConnectClient;

    iget-object v1, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->networkListener:Lcom/nuance/swype/connect/system/NetworkListener;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/ConnectClient;->unregisterNetworkListener(Lcom/nuance/swype/connect/system/NetworkListener;)V

    .line 1189
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->accountListener:Lcom/nuance/swype/connect/manager/interfaces/AccountListener;

    if-eqz v0, :cond_1

    .line 1190
    iget-object v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->connectClient:Lcom/nuance/swype/connect/ConnectClient;

    iget-object v1, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->accountListener:Lcom/nuance/swype/connect/manager/interfaces/AccountListener;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/ConnectClient;->unregisterAccountListener(Lcom/nuance/swype/connect/manager/interfaces/AccountListener;)V

    .line 1193
    :cond_1
    invoke-direct {p0}, Lcom/nuance/swype/connect/comm/MqttConnector;->disconnectFromBroker()V

    .line 1194
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->mqttClient:Lorg/eclipse/paho/client/mqttv3/MqttClient;

    .line 1195
    return-void
.end method

.method protected getEncryptionKey(Lcom/nuance/swype/connect/comm/MqttTopicBuilder;)Ljava/lang/String;
    .locals 4
    .parameter "builder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 933
    invoke-virtual {p1}, Lcom/nuance/swype/connect/comm/MqttTopicBuilder;->getTopic()Ljava/lang/String;

    move-result-object v1

    .line 936
    .local v1, topic:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 937
    :cond_0
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Invalid Topic, Cannot determine Encryption Key"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 940
    :cond_1
    const-string v2, "a"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 941
    iget-object v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->keyAccount:Ljava/lang/String;

    .line 952
    .local v0, key:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 942
    .end local v0           #key:Ljava/lang/String;
    :cond_2
    const-string v2, "b"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 943
    iget-object v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->keyBuild:Ljava/lang/String;

    .restart local v0       #key:Ljava/lang/String;
    goto :goto_0

    .line 944
    .end local v0           #key:Ljava/lang/String;
    :cond_3
    const-string v2, "d"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 945
    iget-object v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->keyDevice:Ljava/lang/String;

    .restart local v0       #key:Ljava/lang/String;
    goto :goto_0

    .line 946
    .end local v0           #key:Ljava/lang/String;
    :cond_4
    const-string v2, "s"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 947
    iget-object v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->keyDevice:Ljava/lang/String;

    .restart local v0       #key:Ljava/lang/String;
    goto :goto_0

    .line 949
    .end local v0           #key:Ljava/lang/String;
    :cond_5
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Invalid Topic, Cannot determine Encryption Key"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected handleDisconnect()V
    .locals 2

    .prologue
    .line 707
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->lastHelloSent:J

    .line 708
    return-void
.end method

.method declared-synchronized handleReconnection()V
    .locals 1

    .prologue
    .line 637
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/nuance/swype/connect/comm/MqttConnector;->isAlreadyConnected()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 644
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 638
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/nuance/swype/connect/comm/MqttConnector;->availableConnection()Z

    move-result v0

    if-nez v0, :cond_0

    .line 641
    sget-object v0, Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;->NOTCONNECTED_WAITINGFORINTERNET:Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;

    iput-object v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->connectionStatus:Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 637
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public messageArrived(Lorg/eclipse/paho/client/mqttv3/MqttTopic;Lorg/eclipse/paho/client/mqttv3/MqttMessage;)V
    .locals 12
    .parameter "topic"
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 712
    const-string v6, ""

    .line 713
    .local v6, payload:Ljava/lang/String;
    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/MqttTopic;->getName()Ljava/lang/String;

    move-result-object v5

    .line 714
    .local v5, messageTopic:Ljava/lang/String;
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 717
    .local v0, data:Lorg/json/JSONObject;
    :try_start_0
    new-instance v7, Ljava/lang/String;

    invoke-virtual {p2}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->getPayload()[B

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 718
    .end local v6           #payload:Ljava/lang/String;
    .local v7, payload:Ljava/lang/String;
    :try_start_1
    new-instance v8, Lcom/nuance/swype/connect/comm/MqttTopicBuilder;

    invoke-direct {v8, v5}, Lcom/nuance/swype/connect/comm/MqttTopicBuilder;-><init>(Ljava/lang/String;)V

    .line 719
    .local v8, topicBuilder:Lcom/nuance/swype/connect/comm/MqttTopicBuilder;
    invoke-virtual {p0, v8}, Lcom/nuance/swype/connect/comm/MqttConnector;->getEncryptionKey(Lcom/nuance/swype/connect/comm/MqttTopicBuilder;)Ljava/lang/String;

    move-result-object v4

    .line 721
    .local v4, key:Ljava/lang/String;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_0

    .line 722
    const-string v9, "ConnectMQTT"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "messageArrived() payload:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    const/4 v9, 0x0

    invoke-static {v7, v4, v9}, Lcom/nuance/swype/connect/util/EncryptUtils;->decryptStringBase64(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 726
    .local v2, decryptedString:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 727
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .end local v0           #data:Lorg/json/JSONObject;
    .local v1, data:Lorg/json/JSONObject;
    move-object v0, v1

    .end local v1           #data:Lorg/json/JSONObject;
    .end local v2           #decryptedString:Ljava/lang/String;
    .restart local v0       #data:Lorg/json/JSONObject;
    :cond_0
    move-object v6, v7

    .line 740
    .end local v4           #key:Ljava/lang/String;
    .end local v7           #payload:Ljava/lang/String;
    .end local v8           #topicBuilder:Lcom/nuance/swype/connect/comm/MqttTopicBuilder;
    .restart local v6       #payload:Ljava/lang/String;
    :goto_0
    const-string v9, "ConnectMQTT"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " messageArrived topic: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " message: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    if-eqz v0, :cond_1

    .line 743
    invoke-virtual {p0, v5, v0}, Lcom/nuance/swype/connect/comm/MqttConnector;->processServerMessage(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 745
    :cond_1
    return-void

    .line 730
    :catch_0
    move-exception v3

    .line 731
    .local v3, ex:Lorg/eclipse/paho/client/mqttv3/MqttException;
    :goto_1
    const-string v9, "ConnectMQTT"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "messageArrived() Exception in retrieving message: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Lorg/eclipse/paho/client/mqttv3/MqttException;->getReasonCode()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 732
    .end local v3           #ex:Lorg/eclipse/paho/client/mqttv3/MqttException;
    :catch_1
    move-exception v3

    .line 733
    .local v3, ex:Lorg/json/JSONException;
    :goto_2
    const-string v9, "ConnectMQTT"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "error parsing message that was recieved: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 734
    .end local v3           #ex:Lorg/json/JSONException;
    :catch_2
    move-exception v3

    .line 735
    .local v3, ex:Ljava/lang/NullPointerException;
    :goto_3
    const-string v9, "ConnectMQTT"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "error parsing message that was recieved: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 736
    .end local v3           #ex:Ljava/lang/NullPointerException;
    :catch_3
    move-exception v3

    .line 737
    .local v3, ex:Ljava/lang/Exception;
    :goto_4
    const-string v9, "ConnectMQTT"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "error parsing recieved message: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 736
    .end local v3           #ex:Ljava/lang/Exception;
    .end local v6           #payload:Ljava/lang/String;
    .restart local v7       #payload:Ljava/lang/String;
    :catch_4
    move-exception v3

    move-object v6, v7

    .end local v7           #payload:Ljava/lang/String;
    .restart local v6       #payload:Ljava/lang/String;
    goto :goto_4

    .line 734
    .end local v6           #payload:Ljava/lang/String;
    .restart local v7       #payload:Ljava/lang/String;
    :catch_5
    move-exception v3

    move-object v6, v7

    .end local v7           #payload:Ljava/lang/String;
    .restart local v6       #payload:Ljava/lang/String;
    goto :goto_3

    .line 732
    .end local v6           #payload:Ljava/lang/String;
    .restart local v7       #payload:Ljava/lang/String;
    :catch_6
    move-exception v3

    move-object v6, v7

    .end local v7           #payload:Ljava/lang/String;
    .restart local v6       #payload:Ljava/lang/String;
    goto :goto_2

    .line 730
    .end local v6           #payload:Ljava/lang/String;
    .restart local v7       #payload:Ljava/lang/String;
    :catch_7
    move-exception v3

    move-object v6, v7

    .end local v7           #payload:Ljava/lang/String;
    .restart local v6       #payload:Ljava/lang/String;
    goto/16 :goto_1
.end method

.method public postStart()V
    .locals 2

    .prologue
    .line 490
    const-string v0, "ConnectMQTT"

    const-string v1, "postStart()"

    invoke-static {v0, v1}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    sget-object v0, Lcom/nuance/swype/connect/comm/MqttConnector$MQTTStartupStatus;->READY:Lcom/nuance/swype/connect/comm/MqttConnector$MQTTStartupStatus;

    iput-object v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->startupStatus:Lcom/nuance/swype/connect/comm/MqttConnector$MQTTStartupStatus;

    .line 492
    return-void
.end method

.method protected processServerMessage(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 13
    .parameter "topic"
    .parameter "data"

    .prologue
    const/16 v12, 0x11e

    const/4 v9, 0x1

    .line 751
    new-instance v7, Lcom/nuance/swype/connect/comm/MqttTopicBuilder;

    invoke-direct {v7, p1}, Lcom/nuance/swype/connect/comm/MqttTopicBuilder;-><init>(Ljava/lang/String;)V

    .line 752
    .local v7, tb:Lcom/nuance/swype/connect/comm/MqttTopicBuilder;
    new-instance v4, Lcom/nuance/swype/connect/util/Response;

    invoke-direct {v4}, Lcom/nuance/swype/connect/util/Response;-><init>()V

    .line 753
    .local v4, response:Lcom/nuance/swype/connect/util/Response;
    iput v9, v4, Lcom/nuance/swype/connect/util/Response;->status:I

    .line 754
    iput-boolean v9, v4, Lcom/nuance/swype/connect/util/Response;->realTimeSent:Z

    .line 755
    const/4 v5, 0x0

    .line 757
    .local v5, send:Z
    invoke-virtual {v7}, Lcom/nuance/swype/connect/comm/MqttTopicBuilder;->getTopic()Ljava/lang/String;

    move-result-object v8

    .line 758
    .local v8, top:Ljava/lang/String;
    invoke-virtual {v7}, Lcom/nuance/swype/connect/comm/MqttTopicBuilder;->getIdentifer()Ljava/lang/String;

    move-result-object v0

    .line 759
    .local v0, identifier:Ljava/lang/String;
    invoke-virtual {v7}, Lcom/nuance/swype/connect/comm/MqttTopicBuilder;->getSubTopic()Ljava/lang/String;

    move-result-object v6

    .line 761
    .local v6, subtop:Ljava/lang/String;
    const-string v9, "a"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 803
    :cond_0
    :goto_0
    if-eqz v5, :cond_1

    .line 804
    iget v9, v4, Lcom/nuance/swype/connect/util/Response;->delayedFor:I

    if-lez v9, :cond_a

    .line 806
    const-string v9, "ConnectMQTT"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " processServer delaying for: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v4, Lcom/nuance/swype/connect/util/Response;->delayedFor:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "s"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    iget-object v9, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->connectClient:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v9}, Lcom/nuance/swype/connect/ConnectClient;->getHandler()Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v9, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 810
    .local v1, m:Landroid/os/Message;
    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 811
    iget-object v9, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->connectClient:Lcom/nuance/swype/connect/ConnectClient;

    iget v10, v4, Lcom/nuance/swype/connect/util/Response;->delayedFor:I

    mul-int/lit16 v10, v10, 0x3e8

    int-to-long v10, v10

    invoke-virtual {v9, v1, v10, v11}, Lcom/nuance/swype/connect/ConnectClient;->postMessageDelayed(Landroid/os/Message;J)V

    .line 829
    .end local v1           #m:Landroid/os/Message;
    :cond_1
    :goto_1
    return-void

    .line 763
    :cond_2
    const-string v9, "b"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 764
    iget-object v9, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->swib:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 765
    const-string v9, "ConnectMQTT"

    const-string v10, " processServerMessage incorrect swib"

    invoke-static {v9, v10}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 766
    :cond_3
    const-string v9, "0"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 767
    const-string v9, "session"

    iput-object v9, v4, Lcom/nuance/swype/connect/util/Response;->commandFamily:Ljava/lang/String;

    .line 768
    const-string v9, "poll"

    iput-object v9, v4, Lcom/nuance/swype/connect/util/Response;->command:Ljava/lang/String;

    .line 769
    invoke-direct {p0, v4, p2}, Lcom/nuance/swype/connect/comm/MqttConnector;->processResult(Lcom/nuance/swype/connect/util/Response;Lorg/json/JSONObject;)Lcom/nuance/swype/connect/util/Response;

    move-result-object v4

    .line 770
    const/4 v5, 0x1

    .line 771
    const-string v9, "ConnectMQTT"

    const-string v10, " processServerMessage build tasklist"

    invoke-static {v9, v10}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 773
    :cond_4
    const-string v9, "d"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 774
    iget-object v9, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 775
    const-string v9, "ConnectMQTT"

    const-string v10, " processServerMessage incorrect deviceId"

    invoke-static {v9, v10}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 776
    :cond_5
    const-string v9, "0"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 777
    invoke-static {}, Lcom/nuance/swype/connect/util/TimeConversion;->getCurrentTime()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->lastHelloSent:J

    .line 778
    const-string v9, "ConnectMQTT"

    const-string v10, " processServerMessage helloAck processed"

    invoke-static {v9, v10}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 779
    :cond_6
    const-string v9, "2"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 780
    const-string v9, "device"

    iput-object v9, v4, Lcom/nuance/swype/connect/util/Response;->commandFamily:Ljava/lang/String;

    .line 781
    const-string v9, "getConfig"

    iput-object v9, v4, Lcom/nuance/swype/connect/util/Response;->command:Ljava/lang/String;

    .line 782
    invoke-direct {p0, v4, p2}, Lcom/nuance/swype/connect/comm/MqttConnector;->processResult(Lcom/nuance/swype/connect/util/Response;Lorg/json/JSONObject;)Lcom/nuance/swype/connect/util/Response;

    move-result-object v4

    .line 783
    const/4 v5, 0x1

    .line 784
    const-string v9, "ConnectMQTT"

    const-string v10, " processServerMessage device configuration processed"

    invoke-static {v9, v10}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 785
    :cond_7
    const-string v9, "1"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 786
    const-string v9, "session"

    iput-object v9, v4, Lcom/nuance/swype/connect/util/Response;->commandFamily:Ljava/lang/String;

    .line 787
    const-string v9, "poll"

    iput-object v9, v4, Lcom/nuance/swype/connect/util/Response;->command:Ljava/lang/String;

    .line 788
    invoke-direct {p0, v4, p2}, Lcom/nuance/swype/connect/comm/MqttConnector;->processResult(Lcom/nuance/swype/connect/util/Response;Lorg/json/JSONObject;)Lcom/nuance/swype/connect/util/Response;

    move-result-object v4

    .line 789
    const/4 v5, 0x1

    .line 790
    const-string v9, "ConnectMQTT"

    const-string v10, " processServerMessage device tasklist"

    invoke-static {v9, v10}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 791
    :cond_8
    const-string v9, "3"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 792
    const-string v9, "dlm"

    iput-object v9, v4, Lcom/nuance/swype/connect/util/Response;->commandFamily:Ljava/lang/String;

    .line 793
    const-string v9, "addEventsGet"

    iput-object v9, v4, Lcom/nuance/swype/connect/util/Response;->command:Ljava/lang/String;

    .line 794
    invoke-direct {p0, v4, p2}, Lcom/nuance/swype/connect/comm/MqttConnector;->processResult(Lcom/nuance/swype/connect/util/Response;Lorg/json/JSONObject;)Lcom/nuance/swype/connect/util/Response;

    move-result-object v4

    .line 795
    const/4 v5, 0x1

    .line 796
    const-string v9, "ConnectMQTT"

    const-string v10, " processServerMessage device add words"

    invoke-static {v9, v10}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 798
    :cond_9
    const-string v9, "ConnectMQTT"

    const-string v10, " processServerMessage unknown topic"

    invoke-static {v9, v10}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 812
    :cond_a
    iget v9, v4, Lcom/nuance/swype/connect/util/Response;->randomDelayedFor:I

    if-lez v9, :cond_b

    .line 815
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 816
    .local v2, rand:Ljava/util/Random;
    iget v9, v4, Lcom/nuance/swype/connect/util/Response;->randomDelayedFor:I

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v2, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 818
    .local v3, random:I
    const-string v9, "ConnectMQTT"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " processServer delaying for: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "s of a max of "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v4, Lcom/nuance/swype/connect/util/Response;->randomDelayedFor:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "s"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    iget-object v9, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->connectClient:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v9}, Lcom/nuance/swype/connect/ConnectClient;->getHandler()Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v9, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 823
    .restart local v1       #m:Landroid/os/Message;
    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 824
    iget-object v9, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->connectClient:Lcom/nuance/swype/connect/ConnectClient;

    mul-int/lit16 v10, v3, 0x3e8

    int-to-long v10, v10

    invoke-virtual {v9, v1, v10, v11}, Lcom/nuance/swype/connect/ConnectClient;->postMessageDelayed(Landroid/os/Message;J)V

    goto/16 :goto_1

    .line 826
    .end local v1           #m:Landroid/os/Message;
    .end local v2           #rand:Ljava/util/Random;
    .end local v3           #random:I
    :cond_b
    iget-object v9, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->connectClient:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v9, v4}, Lcom/nuance/swype/connect/ConnectClient;->processResponse(Lcom/nuance/swype/connect/util/Response;)V

    goto/16 :goto_1
.end method

.method public publish(Lcom/nuance/swype/connect/comm/MqttTopicBuilder;I[B)V
    .locals 7
    .parameter "topicBuilder"
    .parameter "qos"
    .parameter "payload"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    .line 1055
    const-string v4, "ConnectMQTT"

    const-string v5, " publish()"

    invoke-static {v4, v5}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    invoke-direct {p0}, Lcom/nuance/swype/connect/comm/MqttConnector;->isAlreadyConnected()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1058
    :try_start_0
    iget-object v4, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->mqttClient:Lorg/eclipse/paho/client/mqttv3/MqttClient;

    invoke-virtual {p1}, Lcom/nuance/swype/connect/comm/MqttTopicBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/eclipse/paho/client/mqttv3/MqttClient;->getTopic(Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/MqttTopic;

    move-result-object v3

    .line 1059
    .local v3, topic:Lorg/eclipse/paho/client/mqttv3/MqttTopic;
    new-instance v1, Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    invoke-direct {v1, p3}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;-><init>([B)V

    .line 1060
    .local v1, message:Lorg/eclipse/paho/client/mqttv3/MqttMessage;
    invoke-virtual {v1, p2}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->setQos(I)V

    .line 1061
    invoke-virtual {v3, v1}, Lorg/eclipse/paho/client/mqttv3/MqttTopic;->publish(Lorg/eclipse/paho/client/mqttv3/MqttMessage;)Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;

    move-result-object v2

    .line 1062
    .local v2, token:Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;
    invoke-interface {v2}, Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;->waitForCompletion()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1072
    .end local v1           #message:Lorg/eclipse/paho/client/mqttv3/MqttMessage;
    .end local v2           #token:Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;
    .end local v3           #topic:Lorg/eclipse/paho/client/mqttv3/MqttTopic;
    :goto_0
    invoke-direct {p0}, Lcom/nuance/swype/connect/comm/MqttConnector;->scheduleNextPing()V

    .line 1074
    :cond_0
    return-void

    .line 1063
    :catch_0
    move-exception v0

    .line 1064
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v4, "ConnectMQTT"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error Publishing (creating) Message: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1065
    .end local v0           #ex:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 1066
    .local v0, ex:Lorg/eclipse/paho/client/mqttv3/MqttException;
    const-string v4, "ConnectMQTT"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error Publishing Message: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/MqttException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1067
    const-string v4, "ConnectMQTT"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "code: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/MqttException;->getReasonCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1068
    .end local v0           #ex:Lorg/eclipse/paho/client/mqttv3/MqttException;
    :catch_2
    move-exception v0

    .line 1069
    .local v0, ex:Ljava/lang/Exception;
    const-string v4, "ConnectMQTT"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error Publishing (creating) Message: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected declared-synchronized publish(Lcom/nuance/swype/connect/util/Command;)V
    .locals 21
    .parameter "command"

    .prologue
    .line 956
    monitor-enter p0

    :try_start_0
    const-string v17, "ConnectMQTT"

    const-string v18, "publish()"

    invoke-static/range {v17 .. v18}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    invoke-virtual/range {p0 .. p1}, Lcom/nuance/swype/connect/comm/MqttConnector;->verifyCommand(Lcom/nuance/swype/connect/util/Command;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 959
    const-string v17, "ConnectMQTT"

    const-string v18, "publish() failed"

    invoke-static/range {v17 .. v18}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 960
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/connect/comm/MqttConnector;->commandQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 961
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/connect/comm/MqttConnector;->connectClient:Lcom/nuance/swype/connect/ConnectClient;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/ConnectClient;->sendCommandConfirmed(Lcom/nuance/swype/connect/util/Command;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1028
    :goto_0
    monitor-exit p0

    return-void

    .line 963
    :cond_0
    :try_start_1
    invoke-virtual/range {p0 .. p1}, Lcom/nuance/swype/connect/comm/MqttConnector;->shouldSend(Lcom/nuance/swype/connect/util/Command;)Z

    move-result v17

    if-nez v17, :cond_1

    .line 964
    const-string v17, "ConnectMQTT"

    const-string v18, "publish() - removed due to issue with send"

    invoke-static/range {v17 .. v18}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 965
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/connect/comm/MqttConnector;->commandQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 966
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/connect/comm/MqttConnector;->connectClient:Lcom/nuance/swype/connect/ConnectClient;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/ConnectClient;->sendCommandConfirmed(Lcom/nuance/swype/connect/util/Command;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 956
    :catchall_0
    move-exception v17

    monitor-exit p0

    throw v17

    .line 970
    :cond_1
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/connect/comm/MqttConnector;->isAlreadyConnected()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v17

    if-eqz v17, :cond_3

    .line 972
    :try_start_3
    new-instance v16, Lcom/nuance/swype/connect/comm/MqttTopicBuilder;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/nuance/swype/connect/util/Command;->realTimeTopic:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/nuance/swype/connect/util/Command;->realTimeSubTopic:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-direct/range {v16 .. v18}, Lcom/nuance/swype/connect/comm/MqttTopicBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 974
    .local v16, topicbuilder:Lcom/nuance/swype/connect/comm/MqttTopicBuilder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/connect/comm/MqttConnector;->deviceId:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/connect/comm/MqttConnector;->swib:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/connect/comm/MqttConnector;->sessionId:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/connect/comm/MqttConnector;->accountId:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v16 .. v20}, Lcom/nuance/swype/connect/comm/MqttTopicBuilder;->setIdentifiers(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 976
    const-string v17, "ConnectMQTT"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "publish() to topic: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v16 .. v16}, Lcom/nuance/swype/connect/comm/MqttTopicBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/connect/comm/MqttConnector;->mqttClient:Lorg/eclipse/paho/client/mqttv3/MqttClient;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v16}, Lcom/nuance/swype/connect/comm/MqttTopicBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lorg/eclipse/paho/client/mqttv3/MqttClient;->getTopic(Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/MqttTopic;

    move-result-object v15

    .line 979
    .local v15, topic:Lorg/eclipse/paho/client/mqttv3/MqttTopic;
    const/4 v3, 0x0

    .line 980
    .local v3, body:Lorg/json/JSONObject;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/comm/MqttConnector;->getEncryptionKey(Lcom/nuance/swype/connect/comm/MqttTopicBuilder;)Ljava/lang/String;

    move-result-object v8

    .line 982
    .local v8, key:Ljava/lang/String;
    invoke-direct/range {p0 .. p1}, Lcom/nuance/swype/connect/comm/MqttConnector;->generateBody(Lcom/nuance/swype/connect/util/Command;)Lorg/json/JSONObject;

    move-result-object v3

    .line 984
    const-string v17, "ConnectMQTT"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "publish() body: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v0, v8, v1}, Lcom/nuance/swype/connect/util/EncryptUtils;->encryptStringBase64(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 988
    .local v5, data:Ljava/lang/String;
    const-string v17, "ConnectMQTT"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "publish() data: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 990
    new-instance v11, Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;-><init>([B)V

    .line 991
    .local v11, message:Lorg/eclipse/paho/client/mqttv3/MqttMessage;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->setQos(I)V

    .line 992
    const-string v17, "ConnectMQTT"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "publish() message: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v11}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 995
    invoke-virtual {v15, v11}, Lorg/eclipse/paho/client/mqttv3/MqttTopic;->publish(Lorg/eclipse/paho/client/mqttv3/MqttMessage;)Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;

    move-result-object v14

    .line 996
    .local v14, token:Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;
    const-string v17, "ConnectMQTT"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "publish() token: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    invoke-interface {v14}, Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;->waitForCompletion()V

    .line 1000
    const-string v17, "ConnectMQTT"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "publish() completed to topic: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v15}, Lorg/eclipse/paho/client/mqttv3/MqttTopic;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1020
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/connect/comm/MqttConnector;->commandQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 1021
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/connect/comm/MqttConnector;->connectClient:Lcom/nuance/swype/connect/ConnectClient;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/ConnectClient;->sendCommandConfirmed(Lcom/nuance/swype/connect/util/Command;)V

    .line 1024
    .end local v3           #body:Lorg/json/JSONObject;
    .end local v5           #data:Ljava/lang/String;
    .end local v8           #key:Ljava/lang/String;
    .end local v11           #message:Lorg/eclipse/paho/client/mqttv3/MqttMessage;
    .end local v14           #token:Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;
    .end local v15           #topic:Lorg/eclipse/paho/client/mqttv3/MqttTopic;
    .end local v16           #topicbuilder:Lcom/nuance/swype/connect/comm/MqttTopicBuilder;
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/connect/comm/MqttConnector;->scheduleNextPing()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 1001
    :catch_0
    move-exception v6

    .line 1002
    .local v6, ex:Lorg/json/JSONException;
    :try_start_5
    const-string v17, "ConnectMQTT"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Error Publishing (creating) Message: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v6}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1020
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/connect/comm/MqttConnector;->commandQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 1021
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/connect/comm/MqttConnector;->connectClient:Lcom/nuance/swype/connect/ConnectClient;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/ConnectClient;->sendCommandConfirmed(Lcom/nuance/swype/connect/util/Command;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 1003
    .end local v6           #ex:Lorg/json/JSONException;
    :catch_1
    move-exception v6

    .line 1004
    .local v6, ex:Ljava/lang/NullPointerException;
    :try_start_7
    const-string v17, "ConnectMQTT"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Error Publishing (creating) Message: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v6}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1020
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/connect/comm/MqttConnector;->commandQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 1021
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/connect/comm/MqttConnector;->connectClient:Lcom/nuance/swype/connect/ConnectClient;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/ConnectClient;->sendCommandConfirmed(Lcom/nuance/swype/connect/util/Command;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1

    .line 1005
    .end local v6           #ex:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v6

    .line 1006
    .local v6, ex:Lorg/eclipse/paho/client/mqttv3/MqttException;
    :try_start_9
    invoke-virtual {v6}, Lorg/eclipse/paho/client/mqttv3/MqttException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    .line 1008
    .local v4, cause:Ljava/lang/Throwable;
    invoke-virtual {v4}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v12

    .line 1009
    .local v12, stack:[Ljava/lang/StackTraceElement;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 1010
    .local v13, theTrace:Ljava/lang/StringBuilder;
    move-object v2, v12

    .local v2, arr$:[Ljava/lang/StackTraceElement;
    array-length v9, v2

    .local v9, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_2
    if-ge v7, v9, :cond_2

    aget-object v10, v2, v7

    .line 1011
    .local v10, line:Ljava/lang/StackTraceElement;
    invoke-virtual {v10}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1010
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1014
    .end local v10           #line:Ljava/lang/StackTraceElement;
    :cond_2
    const-string v17, "ConnectMQTT"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Error Publishing Message: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v6}, Lorg/eclipse/paho/client/mqttv3/MqttException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1015
    const-string v17, "ConnectMQTT"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "code: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v6}, Lorg/eclipse/paho/client/mqttv3/MqttException;->getReasonCode()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    const-string v17, "ConnectMQTT"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Cause Message: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1017
    const-string v17, "ConnectMQTT"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Cause Trace: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1020
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/connect/comm/MqttConnector;->commandQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 1021
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/connect/comm/MqttConnector;->connectClient:Lcom/nuance/swype/connect/ConnectClient;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/ConnectClient;->sendCommandConfirmed(Lcom/nuance/swype/connect/util/Command;)V

    goto/16 :goto_1

    .line 1020
    .end local v2           #arr$:[Ljava/lang/StackTraceElement;
    .end local v4           #cause:Ljava/lang/Throwable;
    .end local v6           #ex:Lorg/eclipse/paho/client/mqttv3/MqttException;
    .end local v7           #i$:I
    .end local v9           #len$:I
    .end local v12           #stack:[Ljava/lang/StackTraceElement;
    .end local v13           #theTrace:Ljava/lang/StringBuilder;
    :catchall_1
    move-exception v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/connect/comm/MqttConnector;->commandQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 1021
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/connect/comm/MqttConnector;->connectClient:Lcom/nuance/swype/connect/ConnectClient;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/ConnectClient;->sendCommandConfirmed(Lcom/nuance/swype/connect/util/Command;)V

    throw v17

    .line 1026
    :cond_3
    const-string v17, "ConnectMQTT"

    const-string v18, "publish() failed, not connected"

    invoke-static/range {v17 .. v18}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_0
.end method

.method public scheduleReconnect()V
    .locals 6

    .prologue
    .line 684
    iget-boolean v2, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->isEnabled:Z

    if-nez v2, :cond_0

    .line 704
    :goto_0
    return-void

    .line 689
    :cond_0
    iget-object v2, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->networkState:Lcom/nuance/swype/connect/system/NetworkState;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->networkState:Lcom/nuance/swype/connect/system/NetworkState;

    invoke-virtual {v2}, Lcom/nuance/swype/connect/system/NetworkState;->isWifi()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v1, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->reconnectWifiTimeSeconds:I

    .line 690
    .local v1, reconnectTimeSeconds:I
    :goto_1
    new-instance v2, Lcom/nuance/swype/connect/util/Alarm$Builder;

    iget-object v3, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->connectClient:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v3}, Lcom/nuance/swype/connect/ConnectClient;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/nuance/swype/connect/comm/MqttConnector;

    const-string v5, "com.nuance.swype.connect.mqtt.RECONNECT"

    invoke-direct {v2, v3, v4, v5}, Lcom/nuance/swype/connect/util/Alarm$Builder;-><init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/nuance/swype/connect/util/Alarm$Builder;->seconds(I)Lcom/nuance/swype/connect/util/Alarm$Builder;

    move-result-object v2

    const/high16 v3, 0x800

    invoke-virtual {v2, v3}, Lcom/nuance/swype/connect/util/Alarm$Builder;->flags(I)Lcom/nuance/swype/connect/util/Alarm$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/nuance/swype/connect/util/Alarm$Builder;->wakeDevice(Z)Lcom/nuance/swype/connect/util/Alarm$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/connect/util/Alarm$Builder;->build()Lcom/nuance/swype/connect/util/Alarm;

    move-result-object v0

    .line 696
    .local v0, alarm:Lcom/nuance/swype/connect/util/Alarm;
    invoke-virtual {p0}, Lcom/nuance/swype/connect/comm/MqttConnector;->availableConnection()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 697
    const-string v2, "ConnectMQTT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " scheduleReconnect() -- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    invoke-virtual {v0}, Lcom/nuance/swype/connect/util/Alarm;->set()V

    goto :goto_0

    .line 689
    .end local v0           #alarm:Lcom/nuance/swype/connect/util/Alarm;
    .end local v1           #reconnectTimeSeconds:I
    :cond_1
    iget v1, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->reconnectCeullularTimeSeconds:I

    goto :goto_1

    .line 700
    .restart local v0       #alarm:Lcom/nuance/swype/connect/util/Alarm;
    .restart local v1       #reconnectTimeSeconds:I
    :cond_2
    const-string v2, "ConnectMQTT"

    const-string v3, " scheduleReconnect() -- not scheduling as we have no connection"

    invoke-static {v2, v3}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    invoke-virtual {v0}, Lcom/nuance/swype/connect/util/Alarm;->cancel()V

    goto :goto_0
.end method

.method public sendCommand(Lcom/nuance/swype/connect/util/Command;)V
    .locals 3
    .parameter "command"

    .prologue
    .line 1257
    invoke-virtual {p0, p1}, Lcom/nuance/swype/connect/comm/MqttConnector;->shouldSend(Lcom/nuance/swype/connect/util/Command;)Z

    move-result v0

    .line 1259
    .local v0, send:Z
    if-eqz v0, :cond_1

    iget-boolean v1, p1, Lcom/nuance/swype/connect/util/Command;->allowDuplicateOfCommand:Z

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p1, Lcom/nuance/swype/connect/util/Command;->commandFamily:Ljava/lang/String;

    iget-object v2, p1, Lcom/nuance/swype/connect/util/Command;->command:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/nuance/swype/connect/comm/MqttConnector;->isCommandInQueue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1262
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->commandQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 1264
    invoke-direct {p0}, Lcom/nuance/swype/connect/comm/MqttConnector;->isAlreadyConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1265
    invoke-direct {p0}, Lcom/nuance/swype/connect/comm/MqttConnector;->processQueue()V

    .line 1268
    :cond_1
    return-void
.end method

.method public shouldSend(Lcom/nuance/swype/connect/util/Command;)Z
    .locals 5
    .parameter "command"

    .prologue
    const/4 v0, 0x0

    .line 1286
    iget-boolean v1, p1, Lcom/nuance/swype/connect/util/Command;->realTimeEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/nuance/swype/connect/util/Command;->realTimeTopic:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/nuance/swype/connect/util/Command;->realTimeTopic:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/nuance/swype/connect/util/Command;->realTimeSubTopic:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/nuance/swype/connect/util/Command;->realTimeSubTopic:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 1289
    :cond_0
    const-string v1, "ConnectMQTT"

    const-string v2, "Attempting to send command through MQTT that isn\'t realtime."

    invoke-static {v1, v2}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1301
    :goto_0
    return v0

    .line 1293
    :cond_1
    iget-object v1, p1, Lcom/nuance/swype/connect/util/Command;->realTimeTopic:Ljava/lang/String;

    const-string v2, "s"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/nuance/swype/connect/util/Command;->realTimeSubTopic:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-wide v1, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->lastHelloSent:J

    const-wide/high16 v3, -0x8000

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    const/16 v1, 0xc

    iget-wide v2, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->lastHelloSent:J

    invoke-static {v1, v2, v3}, Lcom/nuance/swype/connect/util/TimeConversion;->convertHoursToTimeStamp(IJ)J

    move-result-wide v1

    invoke-static {}, Lcom/nuance/swype/connect/util/TimeConversion;->getCurrentTime()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    .line 1297
    const-string v1, "ConnectMQTT"

    const-string v2, "Ignoring Hello Request, we already know we\'re connected"

    invoke-static {v1, v2}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1301
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public start()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 501
    iget-boolean v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->isEnabled:Z

    if-nez v0, :cond_1

    .line 538
    :cond_0
    :goto_0
    return-void

    .line 505
    :cond_1
    const-string v0, "ConnectMQTT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start() -- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->startupStatus:Lcom/nuance/swype/connect/comm/MqttConnector$MQTTStartupStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    sget-object v0, Lcom/nuance/swype/connect/comm/MqttConnector$12;->$SwitchMap$com$nuance$swype$connect$comm$MqttConnector$MQTTStartupStatus:[I

    iget-object v1, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->startupStatus:Lcom/nuance/swype/connect/comm/MqttConnector$MQTTStartupStatus;

    invoke-virtual {v1}, Lcom/nuance/swype/connect/comm/MqttConnector$MQTTStartupStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 510
    :pswitch_0
    const-string v0, "ConnectMQTT"

    const-string v1, "start() -- not ready to start, waiting"

    invoke-static {v0, v1}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 515
    :pswitch_1
    invoke-direct {p0}, Lcom/nuance/swype/connect/comm/MqttConnector;->setupMqttClient()V

    .line 517
    :pswitch_2
    iget-boolean v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->threadRunning:Z

    if-nez v0, :cond_2

    .line 518
    invoke-direct {p0}, Lcom/nuance/swype/connect/comm/MqttConnector;->startMQTTThread()V

    goto :goto_0

    .line 519
    :cond_2
    invoke-direct {p0}, Lcom/nuance/swype/connect/comm/MqttConnector;->isAlreadyConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 520
    iput-boolean v3, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->threadReconnect:Z

    goto :goto_0

    .line 525
    :pswitch_3
    invoke-direct {p0}, Lcom/nuance/swype/connect/comm/MqttConnector;->isAlreadyConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 526
    iput-boolean v3, p0, Lcom/nuance/swype/connect/comm/MqttConnector;->threadReconnect:Z

    goto :goto_0

    .line 531
    :pswitch_4
    const-string v0, "ConnectMQTT"

    const-string v1, "start() -- already configuring, ignoring request"

    invoke-static {v0, v1}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 535
    :pswitch_5
    const-string v0, "ConnectMQTT"

    const-string v1, "start() -- already resuming, ignoring request"

    invoke-static {v0, v1}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 508
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected stopAndStart()V
    .locals 0

    .prologue
    .line 541
    invoke-direct {p0}, Lcom/nuance/swype/connect/comm/MqttConnector;->disconnectFromBroker()V

    .line 542
    invoke-virtual {p0}, Lcom/nuance/swype/connect/comm/MqttConnector;->start()V

    .line 543
    return-void
.end method

.method public subscribe(Lcom/nuance/swype/connect/comm/MqttTopicBuilder;)V
    .locals 4
    .parameter "topic"

    .prologue
    .line 1092
    const-string v1, "ConnectMQTT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " subscribe("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/nuance/swype/connect/comm/MqttTopicBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1093
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1094
    .local v0, topicList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/nuance/swype/connect/comm/MqttTopicBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1095
    invoke-direct {p0, v0}, Lcom/nuance/swype/connect/comm/MqttConnector;->subscribe(Ljava/util/List;)V

    .line 1096
    invoke-virtual {p1}, Lcom/nuance/swype/connect/comm/MqttTopicBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/nuance/swype/connect/comm/MqttConnector;->addTopic(Ljava/lang/String;)V

    .line 1097
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MqttConnector [url = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/nuance/swype/connect/comm/MqttConnector;->getBrokerUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected verifyCommand(Lcom/nuance/swype/connect/util/Command;)Z
    .locals 4
    .parameter "command"

    .prologue
    .line 914
    const/4 v0, 0x1

    .line 916
    .local v0, verified:Z
    iget-boolean v1, p1, Lcom/nuance/swype/connect/util/Command;->realTimeEnabled:Z

    if-nez v1, :cond_0

    .line 917
    const-string v1, "ConnectMQTT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "verifyCommand() failed. Not Real time. for command: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/nuance/swype/connect/util/Command;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    const/4 v0, 0x0

    .line 922
    :cond_0
    iget-object v1, p1, Lcom/nuance/swype/connect/util/Command;->realTimeTopic:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/nuance/swype/connect/util/Command;->realTimeSubTopic:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 923
    :cond_1
    const-string v1, "ConnectMQTT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "verifyCommand() failed. Missing parameter for command: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/nuance/swype/connect/util/Command;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    const/4 v0, 0x0

    .line 928
    :cond_2
    return v0
.end method
