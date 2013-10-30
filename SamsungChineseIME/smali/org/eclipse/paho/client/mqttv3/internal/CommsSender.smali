.class public Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;
.super Ljava/lang/Object;
.source "CommsSender.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private clientComms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

.field private clientState:Lorg/eclipse/paho/client/mqttv3/internal/ClientState;

.field private lifecycle:Ljava/lang/Object;

.field private out:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttOutputStream;

.field private running:Z

.field private tokenStore:Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;

.field private trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;


# direct methods
.method public constructor <init>(Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;Lorg/eclipse/paho/client/mqttv3/internal/ClientState;Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;Ljava/io/OutputStream;)V
    .locals 2
    .parameter "trace"
    .parameter "clientComms"
    .parameter "clientState"
    .parameter "tokenStore"
    .parameter "out"

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;->running:Z

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;->lifecycle:Ljava/lang/Object;

    .line 32
    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;->clientState:Lorg/eclipse/paho/client/mqttv3/internal/ClientState;

    .line 34
    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;->clientComms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    .line 35
    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;->tokenStore:Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;

    .line 39
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    .line 40
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttOutputStream;

    invoke-direct {v0, p5}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;->out:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttOutputStream;

    .line 41
    iput-object p2, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;->clientComms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    .line 42
    iput-object p3, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;->clientState:Lorg/eclipse/paho/client/mqttv3/internal/ClientState;

    .line 43
    iput-object p4, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;->tokenStore:Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;

    .line 44
    return-void
.end method


# virtual methods
.method public isRunning()Z
    .locals 1

    .prologue
    .line 137
    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;->running:Z

    return v0
.end method

.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 78
    const/4 v2, 0x0

    .line 79
    .local v2, message:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;
    :cond_0
    :goto_0
    iget-boolean v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;->running:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;->out:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttOutputStream;

    if-eqz v4, :cond_4

    .line 82
    :try_start_0
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/4 v5, 0x1

    const/16 v6, 0x322

    invoke-virtual {v4, v5, v6}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI)V

    .line 83
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;->clientState:Lorg/eclipse/paho/client/mqttv3/internal/ClientState;

    invoke-virtual {v4}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->get()Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;

    move-result-object v2

    .line 84
    if-eqz v2, :cond_3

    .line 85
    instance-of v4, v2, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttAck;

    if-eqz v4, :cond_1

    .line 86
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;->out:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttOutputStream;

    invoke-virtual {v4, v2}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttOutputStream;->write(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)V

    .line 87
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;->out:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttOutputStream;

    invoke-virtual {v4}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttOutputStream;->flush()V

    .line 98
    :goto_1
    instance-of v4, v2, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttDisconnect;

    if-eqz v4, :cond_0

    .line 99
    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;->lifecycle:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 101
    :try_start_1
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/4 v6, 0x1

    const/16 v7, 0x323

    invoke-virtual {v4, v6, v7}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI)V

    .line 102
    const/4 v4, 0x0

    iput-boolean v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;->running:Z

    .line 103
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4
    :try_end_2
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 110
    :catch_0
    move-exception v1

    .line 111
    .local v1, me:Lorg/eclipse/paho/client/mqttv3/MqttException;
    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;->lifecycle:Ljava/lang/Object;

    monitor-enter v5

    .line 112
    const/4 v4, 0x0

    :try_start_3
    iput-boolean v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;->running:Z

    .line 113
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 114
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;->clientComms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    invoke-virtual {v4, v1}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->shutdownConnection(Lorg/eclipse/paho/client/mqttv3/MqttException;)V

    goto :goto_0

    .line 90
    .end local v1           #me:Lorg/eclipse/paho/client/mqttv3/MqttException;
    :cond_1
    :try_start_4
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;->tokenStore:Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;

    invoke-virtual {v4, v2}, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->getToken(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;

    move-result-object v3

    .line 91
    .local v3, token:Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;
    monitor-enter v3
    :try_end_4
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 92
    :try_start_5
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;->out:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttOutputStream;

    invoke-virtual {v4, v2}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttOutputStream;->write(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)V

    .line 93
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;->out:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttOutputStream;

    invoke-virtual {v4}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttOutputStream;->flush()V

    .line 94
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;->clientState:Lorg/eclipse/paho/client/mqttv3/internal/ClientState;

    invoke-virtual {v4, v2}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->notifySent(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)V

    .line 95
    monitor-exit v3

    goto :goto_1

    :catchall_1
    move-exception v4

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v4
    :try_end_6
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 115
    .end local v3           #token:Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;
    :catch_1
    move-exception v0

    .line 117
    .local v0, ioe:Ljava/lang/Exception;
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/16 v5, 0x324

    const/4 v6, 0x0

    invoke-virtual {v4, v9, v5, v6, v0}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 118
    if-eqz v2, :cond_2

    instance-of v4, v2, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttDisconnect;

    if-eqz v4, :cond_2

    .line 123
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;->clientState:Lorg/eclipse/paho/client/mqttv3/internal/ClientState;

    invoke-virtual {v4, v2}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->notifySent(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)V

    .line 125
    :cond_2
    iput-boolean v8, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;->running:Z

    .line 126
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;->clientComms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    new-instance v5, Lorg/eclipse/paho/client/mqttv3/MqttException;

    const/16 v6, 0x7d6d

    invoke-direct {v5, v6, v0}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(ILjava/lang/Throwable;)V

    invoke-virtual {v4, v5}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->shutdownConnection(Lorg/eclipse/paho/client/mqttv3/MqttException;)V

    goto/16 :goto_0

    .line 106
    .end local v0           #ioe:Ljava/lang/Exception;
    :cond_3
    :try_start_7
    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;->lifecycle:Ljava/lang/Object;

    monitor-enter v5
    :try_end_7
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 107
    const/4 v4, 0x0

    :try_start_8
    iput-boolean v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;->running:Z

    .line 108
    monitor-exit v5

    goto/16 :goto_0

    :catchall_2
    move-exception v4

    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v4
    :try_end_9
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 113
    .restart local v1       #me:Lorg/eclipse/paho/client/mqttv3/MqttException;
    :catchall_3
    move-exception v4

    :try_start_a
    monitor-exit v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v4

    .line 129
    .end local v1           #me:Lorg/eclipse/paho/client/mqttv3/MqttException;
    :cond_4
    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;->lifecycle:Ljava/lang/Object;

    monitor-enter v5

    .line 131
    :try_start_b
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/4 v6, 0x1

    const/16 v7, 0x325

    invoke-virtual {v4, v6, v7}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI)V

    .line 132
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;->lifecycle:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 133
    monitor-exit v5

    .line 134
    return-void

    .line 133
    :catchall_4
    move-exception v4

    monitor-exit v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    throw v4
.end method

.method public start()V
    .locals 2

    .prologue
    .line 50
    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;->running:Z

    if-nez v0, :cond_0

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;->running:Z

    .line 52
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "Micro Client Comms Sender"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 54
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
    .line 60
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;->lifecycle:Ljava/lang/Object;

    monitor-enter v1

    .line 62
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/4 v2, 0x1

    const/16 v3, 0x320

    invoke-virtual {v0, v2, v3}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI)V

    .line 63
    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;->running:Z

    if-eqz v0, :cond_0

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;->running:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/4 v2, 0x1

    const/16 v3, 0x321

    invoke-virtual {v0, v2, v3}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI)V

    .line 69
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;->lifecycle:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 74
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1

    .line 75
    return-void

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 71
    :catch_0
    move-exception v0

    goto :goto_0
.end method
