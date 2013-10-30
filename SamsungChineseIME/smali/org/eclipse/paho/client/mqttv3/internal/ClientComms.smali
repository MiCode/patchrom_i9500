.class public Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;
.super Ljava/lang/Object;
.source "ClientComms.java"


# instance fields
.field private callback:Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;

.field private clientState:Lorg/eclipse/paho/client/mqttv3/internal/ClientState;

.field private connected:Z

.field private connectionTimeoutSecs:I

.field private destinationProvider:Lorg/eclipse/paho/client/mqttv3/internal/DestinationProvider;

.field private disconnectThread:Ljava/lang/Thread;

.field private disconnecting:Z

.field private networkModule:Lorg/eclipse/paho/client/mqttv3/internal/NetworkModule;

.field private persistence:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

.field private receiver:Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;

.field private sender:Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;

.field private tokenStore:Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;

.field private trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;


# direct methods
.method public constructor <init>(Lorg/eclipse/paho/client/mqttv3/internal/DestinationProvider;Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;)V
    .locals 3
    .parameter "destinationProvider"
    .parameter "persistence"
    .parameter "trace"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-boolean v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->disconnecting:Z

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->disconnectThread:Ljava/lang/Thread;

    .line 66
    iput-object p3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    .line 67
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;

    invoke-direct {v0, p3, p0}, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;-><init>(Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;)V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->callback:Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;

    .line 68
    iput-boolean v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->connected:Z

    .line 69
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    invoke-direct {v0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;-><init>(Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;)V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->tokenStore:Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;

    .line 70
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->destinationProvider:Lorg/eclipse/paho/client/mqttv3/internal/DestinationProvider;

    .line 71
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->tokenStore:Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->callback:Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;

    invoke-direct {v0, p3, p2, v1, v2}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;-><init>(Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;)V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->clientState:Lorg/eclipse/paho/client/mqttv3/internal/ClientState;

    .line 72
    iput-object p2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->persistence:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    .line 73
    return-void
.end method

.method private internalSend(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;
    .locals 9
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 76
    const/4 v1, 0x0

    .line 77
    .local v1, token:Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    invoke-virtual {v2}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->isOn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 79
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/16 v3, 0xc8

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v2, v7, v3, v4}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI[Ljava/lang/Object;)V

    .line 81
    :cond_0
    iget-boolean v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->disconnecting:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->connected:Z

    if-eqz v2, :cond_3

    .line 82
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->clientState:Lorg/eclipse/paho/client/mqttv3/internal/ClientState;

    invoke-virtual {v2, p1}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->send(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;

    move-result-object v1

    .line 83
    instance-of v2, p1, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;

    if-eqz v2, :cond_1

    .line 85
    :try_start_0
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->clientState:Lorg/eclipse/paho/client/mqttv3/internal/ClientState;

    invoke-virtual {v2}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->incrementWaitingTokens()V

    .line 86
    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;->waitUntilSent()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->clientState:Lorg/eclipse/paho/client/mqttv3/internal/ClientState;

    invoke-virtual {v2}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->decrementWaitingTokens()V

    .line 103
    :cond_1
    return-object v1

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, me:Lorg/eclipse/paho/client/mqttv3/MqttException;
    :try_start_1
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    invoke-virtual {v2}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->isOn()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 90
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/4 v3, 0x1

    const/16 v4, 0xca

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v0}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 92
    :cond_2
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->clientState:Lorg/eclipse/paho/client/mqttv3/internal/ClientState;

    check-cast p1, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;

    .end local p1
    invoke-virtual {v2, p1}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->undo(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;)V

    .line 93
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    .end local v0           #me:Lorg/eclipse/paho/client/mqttv3/MqttException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->clientState:Lorg/eclipse/paho/client/mqttv3/internal/ClientState;

    invoke-virtual {v3}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->decrementWaitingTokens()V

    throw v2

    .line 100
    .restart local p1
    :cond_3
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/16 v3, 0xd0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/Boolean;

    iget-boolean v6, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->disconnecting:Z

    invoke-direct {v5, v6}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v4, v8

    new-instance v5, Ljava/lang/Boolean;

    iget-boolean v6, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->connected:Z

    invoke-direct {v5, v6}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v4, v7

    invoke-virtual {v2, v7, v3, v4}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI[Ljava/lang/Object;)V

    .line 101
    const/16 v2, 0x7d68

    invoke-static {v2}, Lorg/eclipse/paho/client/mqttv3/internal/ExceptionHelper;->createMqttException(I)Lorg/eclipse/paho/client/mqttv3/MqttException;

    move-result-object v2

    throw v2
.end method


# virtual methods
.method public connect(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnect;IJZ)Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnack;
    .locals 13
    .parameter "connect"
    .parameter "connectionTimeoutSecs"
    .parameter "keepAliveSecs"
    .parameter "cleanSession"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    .line 128
    iget-boolean v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->connected:Z

    if-nez v2, :cond_3

    .line 129
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->disconnecting:Z

    .line 130
    iput p2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->connectionTimeoutSecs:I

    .line 131
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->clientState:Lorg/eclipse/paho/client/mqttv3/internal/ClientState;

    move-wide/from16 v0, p3

    invoke-virtual {v2, v0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->setKeepAliveSecs(J)V

    .line 132
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->clientState:Lorg/eclipse/paho/client/mqttv3/internal/ClientState;

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->setCleanSession(Z)V

    .line 135
    :try_start_0
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->networkModule:Lorg/eclipse/paho/client/mqttv3/internal/NetworkModule;

    invoke-interface {v2}, Lorg/eclipse/paho/client/mqttv3/internal/NetworkModule;->start()V

    .line 136
    new-instance v2, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;

    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->clientState:Lorg/eclipse/paho/client/mqttv3/internal/ClientState;

    iget-object v6, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->tokenStore:Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;

    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->networkModule:Lorg/eclipse/paho/client/mqttv3/internal/NetworkModule;

    invoke-interface {v4}, Lorg/eclipse/paho/client/mqttv3/internal/NetworkModule;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    move-object v4, p0

    invoke-direct/range {v2 .. v7}, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;-><init>(Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;Lorg/eclipse/paho/client/mqttv3/internal/ClientState;Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;Ljava/io/InputStream;)V

    iput-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->receiver:Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;

    .line 137
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->receiver:Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;

    invoke-virtual {v2}, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->start()V

    .line 138
    new-instance v2, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;

    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->clientState:Lorg/eclipse/paho/client/mqttv3/internal/ClientState;

    iget-object v6, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->tokenStore:Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;

    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->networkModule:Lorg/eclipse/paho/client/mqttv3/internal/NetworkModule;

    invoke-interface {v4}, Lorg/eclipse/paho/client/mqttv3/internal/NetworkModule;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    move-object v4, p0

    invoke-direct/range {v2 .. v7}, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;-><init>(Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;Lorg/eclipse/paho/client/mqttv3/internal/ClientState;Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;Ljava/io/OutputStream;)V

    iput-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->sender:Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;

    .line 139
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->sender:Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;

    invoke-virtual {v2}, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_0 .. :try_end_0} :catch_2

    .line 153
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->callback:Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;

    invoke-virtual {v2}, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->start()V

    .line 156
    :try_start_1
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->clientState:Lorg/eclipse/paho/client/mqttv3/internal/ClientState;

    invoke-virtual {v2, p1}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->send(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;

    move-result-object v11

    .line 157
    .local v11, token:Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;
    mul-int/lit16 v2, p2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v11, v2, v3}, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;->waitForResponse(J)Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;

    move-result-object v8

    .line 158
    .local v8, ack:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;
    if-nez v8, :cond_0

    .line 160
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/4 v3, 0x1

    const/16 v4, 0xcb

    invoke-virtual {v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI)V

    .line 161
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->persistence:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    invoke-interface {v2}, Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;->close()V

    .line 162
    const/16 v2, 0x7d00

    invoke-static {v2}, Lorg/eclipse/paho/client/mqttv3/internal/ExceptionHelper;->createMqttException(I)Lorg/eclipse/paho/client/mqttv3/MqttException;

    move-result-object v2

    throw v2
    :try_end_1
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_1 .. :try_end_1} :catch_0

    .line 185
    .end local v8           #ack:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;
    .end local v11           #token:Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;
    :catch_0
    move-exception v10

    .line 187
    .local v10, ex:Lorg/eclipse/paho/client/mqttv3/MqttException;
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/4 v3, 0x1

    const/16 v4, 0xce

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v10}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 188
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->shutdownConnection(Lorg/eclipse/paho/client/mqttv3/MqttException;)V

    .line 189
    throw v10

    .line 141
    .end local v10           #ex:Lorg/eclipse/paho/client/mqttv3/MqttException;
    :catch_1
    move-exception v10

    .line 143
    .local v10, ex:Ljava/io/IOException;
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/4 v3, 0x1

    const/16 v4, 0xd1

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v10}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 144
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->persistence:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    invoke-interface {v2}, Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;->close()V

    .line 145
    invoke-static {v10}, Lorg/eclipse/paho/client/mqttv3/internal/ExceptionHelper;->createMqttException(Ljava/lang/Throwable;)Lorg/eclipse/paho/client/mqttv3/MqttException;

    move-result-object v2

    throw v2

    .line 146
    .end local v10           #ex:Ljava/io/IOException;
    :catch_2
    move-exception v10

    .line 148
    .local v10, ex:Lorg/eclipse/paho/client/mqttv3/MqttException;
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/4 v3, 0x1

    const/16 v4, 0xd4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v10}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 149
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->persistence:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    invoke-interface {v2}, Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;->close()V

    .line 150
    throw v10

    .line 164
    .end local v10           #ex:Lorg/eclipse/paho/client/mqttv3/MqttException;
    .restart local v8       #ack:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;
    .restart local v11       #token:Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;
    :cond_0
    :try_start_2
    instance-of v2, v8, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnack;

    if-eqz v2, :cond_2

    .line 165
    move-object v0, v8

    check-cast v0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnack;

    move-object v9, v0

    .line 166
    .local v9, cack:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnack;
    invoke-virtual {v9}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnack;->getReturnCode()I

    move-result v2

    if-eqz v2, :cond_1

    .line 168
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/4 v3, 0x1

    const/16 v4, 0xcc

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/Integer;

    invoke-virtual {v9}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnack;->getReturnCode()I

    move-result v12

    invoke-direct {v7, v12}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI[Ljava/lang/Object;)V

    .line 169
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->persistence:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    invoke-interface {v2}, Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;->close()V

    .line 170
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iput-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->disconnectThread:Ljava/lang/Thread;

    .line 171
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->shutdownConnection(Lorg/eclipse/paho/client/mqttv3/MqttException;)V

    .line 172
    invoke-virtual {v9}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnack;->getReturnCode()I

    move-result v2

    invoke-static {v2}, Lorg/eclipse/paho/client/mqttv3/internal/ExceptionHelper;->createMqttException(I)Lorg/eclipse/paho/client/mqttv3/MqttException;

    move-result-object v2

    throw v2

    .line 175
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->connected:Z

    .line 176
    check-cast v8, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnack;

    .end local v8           #ack:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;
    return-object v8

    .line 180
    .end local v9           #cack:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnack;
    .restart local v8       #ack:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;
    :cond_2
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/4 v3, 0x1

    const/16 v4, 0xcd

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v8, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI[Ljava/lang/Object;)V

    .line 181
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->persistence:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    invoke-interface {v2}, Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;->close()V

    .line 182
    const/4 v2, 0x6

    invoke-static {v2}, Lorg/eclipse/paho/client/mqttv3/internal/ExceptionHelper;->createMqttException(I)Lorg/eclipse/paho/client/mqttv3/MqttException;

    move-result-object v2

    throw v2
    :try_end_2
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_2 .. :try_end_2} :catch_0

    .line 194
    .end local v8           #ack:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;
    .end local v11           #token:Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;
    :cond_3
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/4 v3, 0x1

    const/16 v4, 0xcf

    invoke-virtual {v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI)V

    .line 195
    const/16 v2, 0x7d64

    invoke-static {v2}, Lorg/eclipse/paho/client/mqttv3/internal/ExceptionHelper;->createMqttException(I)Lorg/eclipse/paho/client/mqttv3/MqttException;

    move-result-object v2

    throw v2
.end method

.method protected deliveryComplete(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;)V
    .locals 1
    .parameter "msg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;
        }
    .end annotation

    .prologue
    .line 299
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->clientState:Lorg/eclipse/paho/client/mqttv3/internal/ClientState;

    invoke-virtual {v0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->deliveryComplete(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;)V

    .line 300
    return-void
.end method

.method public disconnect(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttDisconnect;J)V
    .locals 6
    .parameter "disconnect"
    .parameter "quiesceTimeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 249
    iget-boolean v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->connected:Z

    if-eqz v2, :cond_1

    .line 250
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->callback:Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;

    invoke-virtual {v3}, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->getThread()Ljava/lang/Thread;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 252
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/16 v3, 0xd2

    invoke-virtual {v2, v5, v3}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI)V

    .line 254
    const/16 v2, 0x7d6b

    invoke-static {v2}, Lorg/eclipse/paho/client/mqttv3/internal/ExceptionHelper;->createMqttException(I)Lorg/eclipse/paho/client/mqttv3/MqttException;

    move-result-object v2

    throw v2

    .line 256
    :cond_0
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->clientState:Lorg/eclipse/paho/client/mqttv3/internal/ClientState;

    invoke-virtual {v2, p2, p3}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->quiesce(J)V

    .line 257
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->receiver:Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;

    invoke-virtual {v2, v5}, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->setDisconnecting(Z)V

    .line 262
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iput-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->disconnectThread:Ljava/lang/Thread;

    .line 263
    invoke-virtual {p0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->sendNoWait(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;

    move-result-object v1

    .line 264
    .local v1, token:Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;
    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;->waitUntilSent()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    invoke-virtual {p0, v4}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->shutdownConnection(Lorg/eclipse/paho/client/mqttv3/MqttException;)V

    .line 271
    iput-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->disconnectThread:Ljava/lang/Thread;

    .line 279
    return-void

    .line 266
    .end local v1           #token:Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;
    :catch_0
    move-exception v0

    .line 267
    .local v0, ex:Lorg/eclipse/paho/client/mqttv3/MqttException;
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 270
    .end local v0           #ex:Lorg/eclipse/paho/client/mqttv3/MqttException;
    :catchall_0
    move-exception v2

    invoke-virtual {p0, v4}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->shutdownConnection(Lorg/eclipse/paho/client/mqttv3/MqttException;)V

    .line 271
    iput-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->disconnectThread:Ljava/lang/Thread;

    throw v2

    .line 276
    :cond_1
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/16 v3, 0xd3

    invoke-virtual {v2, v5, v3}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI)V

    .line 277
    const/16 v2, 0x7d65

    invoke-static {v2}, Lorg/eclipse/paho/client/mqttv3/internal/ExceptionHelper;->createMqttException(I)Lorg/eclipse/paho/client/mqttv3/MqttException;

    move-result-object v2

    throw v2
.end method

.method public getPendingDeliveryTokens()[Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->tokenStore:Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->getOutstandingTokens()[Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;

    move-result-object v0

    return-object v0
.end method

.method protected getTopic(Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/MqttTopic;
    .locals 1
    .parameter "topic"

    .prologue
    .line 290
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->destinationProvider:Lorg/eclipse/paho/client/mqttv3/internal/DestinationProvider;

    invoke-interface {v0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/DestinationProvider;->getTopic(Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/MqttTopic;

    move-result-object v0

    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 282
    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->connected:Z

    return v0
.end method

.method public sendAndWait(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)V
    .locals 3
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->internalSend(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;

    move-result-object v0

    iget v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->connectionTimeoutSecs:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;->waitForCompletion(J)V

    .line 112
    return-void
.end method

.method public sendNoWait(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;
    .locals 1
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->internalSend(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;

    move-result-object v0

    return-object v0
.end method

.method public setCallback(Lorg/eclipse/paho/client/mqttv3/MqttCallback;)V
    .locals 1
    .parameter "mqttCallback"

    .prologue
    .line 286
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->callback:Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;

    invoke-virtual {v0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->setCallback(Lorg/eclipse/paho/client/mqttv3/MqttCallback;)V

    .line 287
    return-void
.end method

.method public setNetworkModule(Lorg/eclipse/paho/client/mqttv3/internal/NetworkModule;)V
    .locals 0
    .parameter "networkModule"

    .prologue
    .line 293
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->networkModule:Lorg/eclipse/paho/client/mqttv3/internal/NetworkModule;

    .line 294
    return-void
.end method

.method public shutdownConnection(Lorg/eclipse/paho/client/mqttv3/MqttException;)V
    .locals 8
    .parameter "reason"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 203
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->disconnectThread:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->disconnectThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->isOn()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 208
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/16 v2, 0xc9

    new-array v3, v7, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/Boolean;

    iget-boolean v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->disconnecting:Z

    invoke-direct {v4, v5}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v4, v3, v6

    invoke-virtual {v1, v7, v2, v3, p1}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 210
    :cond_2
    iget-boolean v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->disconnecting:Z

    if-nez v1, :cond_3

    .line 211
    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->connected:Z

    .line 212
    .local v0, wasConnected:Z
    iput-boolean v7, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->disconnecting:Z

    .line 213
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->clientState:Lorg/eclipse/paho/client/mqttv3/internal/ClientState;

    invoke-virtual {v1, p1}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->disconnecting(Lorg/eclipse/paho/client/mqttv3/MqttException;)V

    .line 217
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->callback:Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->stop()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 222
    :goto_1
    :try_start_1
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->networkModule:Lorg/eclipse/paho/client/mqttv3/internal/NetworkModule;

    invoke-interface {v1}, Lorg/eclipse/paho/client/mqttv3/internal/NetworkModule;->stop()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 227
    :goto_2
    :try_start_2
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->receiver:Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->stop()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 231
    :goto_3
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->clientState:Lorg/eclipse/paho/client/mqttv3/internal/ClientState;

    invoke-virtual {v1, p1}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->disconnected(Lorg/eclipse/paho/client/mqttv3/MqttException;)V

    .line 233
    :try_start_3
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->sender:Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;->stop()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 237
    :goto_4
    iput-boolean v6, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->connected:Z

    .line 238
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 241
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->callback:Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;

    invoke-virtual {v1, p1}, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->connectionLost(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 244
    .end local v0           #wasConnected:Z
    :cond_3
    iput-boolean v6, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->connected:Z

    goto :goto_0

    .line 234
    .restart local v0       #wasConnected:Z
    :catch_0
    move-exception v1

    goto :goto_4

    .line 228
    :catch_1
    move-exception v1

    goto :goto_3

    .line 223
    :catch_2
    move-exception v1

    goto :goto_2

    .line 218
    :catch_3
    move-exception v1

    goto :goto_1
.end method
