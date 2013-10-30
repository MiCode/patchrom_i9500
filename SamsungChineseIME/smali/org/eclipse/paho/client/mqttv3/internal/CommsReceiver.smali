.class public Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;
.super Ljava/lang/Object;
.source "CommsReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private clientComms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

.field private clientState:Lorg/eclipse/paho/client/mqttv3/internal/ClientState;

.field private disconnecting:Z

.field private in:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttInputStream;

.field private lifecycle:Ljava/lang/Object;

.field private running:Z

.field private tokenStore:Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;

.field private trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;


# direct methods
.method public constructor <init>(Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;Lorg/eclipse/paho/client/mqttv3/internal/ClientState;Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;Ljava/io/InputStream;)V
    .locals 3
    .parameter "trace"
    .parameter "clientComms"
    .parameter "clientState"
    .parameter "tokenStore"
    .parameter "in"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-boolean v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->running:Z

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->lifecycle:Ljava/lang/Object;

    .line 32
    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->clientState:Lorg/eclipse/paho/client/mqttv3/internal/ClientState;

    .line 33
    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->clientComms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    .line 35
    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->tokenStore:Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;

    .line 36
    iput-boolean v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->disconnecting:Z

    .line 40
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttInputStream;

    invoke-direct {v0, p5}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->in:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttInputStream;

    .line 41
    iput-object p2, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->clientComms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    .line 42
    iput-object p3, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->clientState:Lorg/eclipse/paho/client/mqttv3/internal/ClientState;

    .line 43
    iput-object p4, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->tokenStore:Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;

    .line 44
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    .line 45
    return-void
.end method


# virtual methods
.method public isRunning()Z
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->running:Z

    return v0
.end method

.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 82
    :goto_0
    iget-boolean v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->running:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->in:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttInputStream;

    if-eqz v4, :cond_4

    .line 85
    :try_start_0
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/4 v5, 0x1

    const/16 v6, 0x354

    invoke-virtual {v4, v5, v6}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI)V

    .line 86
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->in:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttInputStream;

    invoke-virtual {v4}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttInputStream;->readMqttWireMessage()Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;

    move-result-object v2

    .line 87
    .local v2, message:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;
    instance-of v4, v2, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttAck;

    if-eqz v4, :cond_2

    .line 88
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->tokenStore:Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;

    invoke-virtual {v4, v2}, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->getToken(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;

    move-result-object v3

    .line 89
    .local v3, token:Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;
    if-eqz v3, :cond_1

    .line 90
    monitor-enter v3
    :try_end_0
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 91
    :try_start_1
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->clientState:Lorg/eclipse/paho/client/mqttv3/internal/ClientState;

    invoke-virtual {v4, v2}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->notifyReceived(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)V

    .line 92
    instance-of v4, v2, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnack;

    if-eqz v4, :cond_0

    check-cast v2, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnack;

    .end local v2           #message:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;
    invoke-virtual {v2}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnack;->getReturnCode()I

    move-result v4

    if-eqz v4, :cond_0

    .line 93
    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->lifecycle:Ljava/lang/Object;

    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    const/4 v4, 0x0

    :try_start_2
    iput-boolean v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->running:Z

    .line 95
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 97
    :cond_0
    :try_start_3
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4
    :try_end_4
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 106
    .end local v3           #token:Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;
    :catch_0
    move-exception v0

    .line 107
    .local v0, ex:Lorg/eclipse/paho/client/mqttv3/MqttException;
    iput-boolean v7, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->running:Z

    .line 108
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->clientComms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    invoke-virtual {v4, v0}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->shutdownConnection(Lorg/eclipse/paho/client/mqttv3/MqttException;)V

    goto :goto_0

    .line 95
    .end local v0           #ex:Lorg/eclipse/paho/client/mqttv3/MqttException;
    .restart local v3       #token:Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;
    :catchall_1
    move-exception v4

    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 99
    .restart local v2       #message:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;
    :cond_1
    :try_start_7
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->clientState:Lorg/eclipse/paho/client/mqttv3/internal/ClientState;

    invoke-virtual {v4, v2}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->notifyReceived(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)V
    :try_end_7
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_0

    .line 110
    .end local v2           #message:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;
    .end local v3           #token:Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;
    :catch_1
    move-exception v1

    .line 112
    .local v1, ioe:Ljava/io/IOException;
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/16 v5, 0x355

    invoke-virtual {v4, v8, v5, v9, v1}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 114
    iput-boolean v7, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->running:Z

    .line 118
    iget-boolean v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->disconnecting:Z

    if-nez v4, :cond_3

    .line 119
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->clientComms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    new-instance v5, Lorg/eclipse/paho/client/mqttv3/MqttException;

    const/16 v6, 0x7d6d

    invoke-direct {v5, v6, v1}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(ILjava/lang/Throwable;)V

    invoke-virtual {v4, v5}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->shutdownConnection(Lorg/eclipse/paho/client/mqttv3/MqttException;)V

    goto :goto_0

    .line 103
    .end local v1           #ioe:Ljava/io/IOException;
    .restart local v2       #message:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;
    :cond_2
    :try_start_8
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->clientState:Lorg/eclipse/paho/client/mqttv3/internal/ClientState;

    invoke-virtual {v4, v2}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->notifyReceived(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)V
    :try_end_8
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_0

    .line 121
    .end local v2           #message:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;
    .restart local v1       #ioe:Ljava/io/IOException;
    :cond_3
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->clientComms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    invoke-virtual {v4, v9}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->shutdownConnection(Lorg/eclipse/paho/client/mqttv3/MqttException;)V

    goto :goto_0

    .line 126
    .end local v1           #ioe:Ljava/io/IOException;
    :cond_4
    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->lifecycle:Ljava/lang/Object;

    monitor-enter v5

    .line 128
    :try_start_9
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/4 v6, 0x1

    const/16 v7, 0x356

    invoke-virtual {v4, v6, v7}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI)V

    .line 129
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->lifecycle:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 130
    monitor-exit v5

    .line 131
    return-void

    .line 130
    :catchall_2
    move-exception v4

    monitor-exit v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v4
.end method

.method public setDisconnecting(Z)V
    .locals 6
    .parameter "disconnecting"

    .prologue
    const/4 v5, 0x1

    .line 139
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/16 v1, 0x357

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Boolean;

    invoke-direct {v4, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v4, v2, v3

    invoke-virtual {v0, v5, v1, v2}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI[Ljava/lang/Object;)V

    .line 140
    iput-boolean p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->disconnecting:Z

    .line 141
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 51
    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->running:Z

    if-nez v0, :cond_0

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->running:Z

    .line 53
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "Micro Client Comms Receiver"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 55
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->lifecycle:Ljava/lang/Object;

    monitor-enter v1

    .line 63
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/4 v2, 0x1

    const/16 v3, 0x352

    invoke-virtual {v0, v2, v3}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI)V

    .line 64
    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->running:Z

    if-eqz v0, :cond_0

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->running:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/4 v2, 0x1

    const/16 v3, 0x353

    invoke-virtual {v0, v2, v3}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI)V

    .line 70
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->lifecycle:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 75
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1

    .line 76
    return-void

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 72
    :catch_0
    move-exception v0

    goto :goto_0
.end method
