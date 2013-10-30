.class public Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;
.super Ljava/lang/Object;
.source "MqttDeliveryTokenImpl.java"

# interfaces
.implements Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;


# instance fields
.field private completed:Z

.field private exception:Lorg/eclipse/paho/client/mqttv3/MqttException;

.field private message:Lorg/eclipse/paho/client/mqttv3/MqttMessage;

.field private msgId:I

.field private response:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;

.field private responseLock:Ljava/lang/Object;

.field private sent:Z

.field private sentLock:Ljava/lang/Object;

.field private trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;


# direct methods
.method constructor <init>(Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;)V
    .locals 3
    .parameter "trace"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;->responseLock:Ljava/lang/Object;

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;->sentLock:Ljava/lang/Object;

    .line 26
    iput-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;->response:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;

    .line 27
    iput-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;->exception:Lorg/eclipse/paho/client/mqttv3/MqttException;

    .line 28
    iput-boolean v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;->sent:Z

    .line 29
    iput-boolean v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;->completed:Z

    .line 30
    iput v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;->msgId:I

    .line 35
    iput-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;->message:Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    .line 36
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    .line 37
    return-void
.end method

.method constructor <init>(Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;)V
    .locals 3
    .parameter "trace"
    .parameter "send"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;->responseLock:Ljava/lang/Object;

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;->sentLock:Ljava/lang/Object;

    .line 26
    iput-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;->response:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;

    .line 27
    iput-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;->exception:Lorg/eclipse/paho/client/mqttv3/MqttException;

    .line 28
    iput-boolean v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;->sent:Z

    .line 29
    iput-boolean v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;->completed:Z

    .line 30
    iput v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;->msgId:I

    .line 47
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    .line 48
    invoke-virtual {p2}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->getMessage()Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;->message:Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    .line 49
    invoke-virtual {p2}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->getMessageId()I

    move-result v0

    iput v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;->msgId:I

    .line 50
    return-void
.end method


# virtual methods
.method public getMessage()Lorg/eclipse/paho/client/mqttv3/MqttMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    .line 187
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;->message:Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    return-object v0
.end method

.method public getMessageId()I
    .locals 1

    .prologue
    .line 195
    iget v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;->msgId:I

    return v0
.end method

.method public isComplete()Z
    .locals 1

    .prologue
    .line 191
    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;->completed:Z

    return v0
.end method

.method protected notifyException(Lorg/eclipse/paho/client/mqttv3/MqttException;)V
    .locals 5
    .parameter "exception"

    .prologue
    const/4 v4, 0x1

    .line 176
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/16 v1, 0x195

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v4, v1, v2, p1}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 177
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;->responseLock:Ljava/lang/Object;

    monitor-enter v1

    .line 178
    :try_start_0
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;->exception:Lorg/eclipse/paho/client/mqttv3/MqttException;

    .line 179
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;->responseLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 180
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;->sentLock:Ljava/lang/Object;

    monitor-enter v1

    .line 182
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;->sentLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 183
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 184
    return-void

    .line 180
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 183
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method protected notifyReceived(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    .line 158
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/16 v1, 0x194

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    aput-object p1, v2, v4

    invoke-virtual {v0, v4, v1, v2}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI[Ljava/lang/Object;)V

    .line 159
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;->responseLock:Ljava/lang/Object;

    monitor-enter v1

    .line 161
    :try_start_0
    instance-of v0, p1, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttAck;

    if-eqz v0, :cond_0

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;->message:Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    .line 164
    :cond_0
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;->response:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;

    .line 165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;->completed:Z

    .line 166
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;->responseLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 167
    monitor-exit v1

    .line 168
    return-void

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected notifySent()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 141
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/16 v1, 0x193

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v4

    invoke-virtual {v0, v3, v1, v2}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI[Ljava/lang/Object;)V

    .line 142
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;->responseLock:Ljava/lang/Object;

    monitor-enter v1

    .line 143
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;->response:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;->completed:Z

    .line 145
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;->sentLock:Ljava/lang/Object;

    monitor-enter v1

    .line 147
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;->sent:Z

    .line 148
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;->sentLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 149
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 150
    return-void

    .line 145
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 149
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public waitForCompletion()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    .line 64
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;->waitForCompletion(J)V

    .line 65
    return-void
.end method

.method public waitForCompletion(J)V
    .locals 7
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 53
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;->waitForResponse(J)Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;

    move-result-object v0

    .line 54
    .local v0, response:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;
    if-nez v0, :cond_1

    iget-boolean v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;->completed:Z

    if-nez v1, :cond_1

    .line 55
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->isOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/16 v2, 0x196

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Long;

    invoke-direct {v5, p1, p2}, Ljava/lang/Long;-><init>(J)V

    aput-object v5, v3, v4

    invoke-virtual {v1, v6, v2, v3}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI[Ljava/lang/Object;)V

    .line 59
    :cond_0
    new-instance v1, Lorg/eclipse/paho/client/mqttv3/MqttException;

    const/16 v2, 0x7d00

    invoke-direct {v1, v2}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(I)V

    throw v1

    .line 61
    :cond_1
    return-void
.end method

.method protected waitForResponse()Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    .line 74
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;->waitForResponse(J)Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;

    move-result-object v0

    return-object v0
.end method

.method protected waitForResponse(J)Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;
    .locals 11
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 78
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;->responseLock:Ljava/lang/Object;

    monitor-enter v2

    .line 79
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->isOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/4 v4, 0x1

    const/16 v5, 0x190

    const/4 v1, 0x6

    new-array v6, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v6, v1

    const/4 v1, 0x1

    new-instance v7, Ljava/lang/Long;

    invoke-direct {v7, p1, p2}, Ljava/lang/Long;-><init>(J)V

    aput-object v7, v6, v1

    const/4 v1, 0x2

    new-instance v7, Ljava/lang/Boolean;

    iget-boolean v8, p0, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;->sent:Z

    invoke-direct {v7, v8}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v7, v6, v1

    const/4 v1, 0x3

    new-instance v7, Ljava/lang/Boolean;

    iget-boolean v8, p0, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;->completed:Z

    invoke-direct {v7, v8}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v7, v6, v1

    const/4 v7, 0x4

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;->exception:Lorg/eclipse/paho/client/mqttv3/MqttException;

    if-nez v1, :cond_1

    const-string v1, "false"

    :goto_0
    aput-object v1, v6, v7

    const/4 v1, 0x5

    iget-object v7, p0, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;->response:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;

    aput-object v7, v6, v1

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;->exception:Lorg/eclipse/paho/client/mqttv3/MqttException;

    invoke-virtual {v3, v4, v5, v6, v1}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 83
    :cond_0
    iget-boolean v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;->completed:Z

    if-eqz v1, :cond_2

    .line 84
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;->response:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;

    monitor-exit v2

    .line 108
    :goto_1
    return-object v1

    .line 81
    :cond_1
    const-string v1, "true"

    goto :goto_0

    .line 86
    :cond_2
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;->exception:Lorg/eclipse/paho/client/mqttv3/MqttException;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_3

    .line 88
    const-wide/16 v3, -0x1

    cmp-long v1, p1, v3

    if-nez v1, :cond_4

    .line 89
    :try_start_1
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;->responseLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 96
    :cond_3
    :goto_2
    :try_start_2
    iget-boolean v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;->completed:Z

    if-nez v1, :cond_5

    .line 97
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;->exception:Lorg/eclipse/paho/client/mqttv3/MqttException;

    if-eqz v1, :cond_5

    .line 98
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;->exception:Lorg/eclipse/paho/client/mqttv3/MqttException;

    .line 99
    .local v0, e:Lorg/eclipse/paho/client/mqttv3/MqttException;
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;->exception:Lorg/eclipse/paho/client/mqttv3/MqttException;

    .line 101
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/4 v3, 0x1

    const/16 v4, 0x191

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;->exception:Lorg/eclipse/paho/client/mqttv3/MqttException;

    invoke-virtual {v1, v3, v4, v5, v6}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 102
    throw v0

    .line 105
    .end local v0           #e:Lorg/eclipse/paho/client/mqttv3/MqttException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 91
    :cond_4
    :try_start_3
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;->responseLock:Ljava/lang/Object;

    invoke-virtual {v1, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 93
    :catch_0
    move-exception v1

    goto :goto_2

    .line 105
    :cond_5
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 107
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/16 v2, 0x192

    new-array v3, v9, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;->response:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;

    aput-object v4, v3, v10

    invoke-virtual {v1, v9, v2, v3}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI[Ljava/lang/Object;)V

    .line 108
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;->response:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;

    goto :goto_1
.end method

.method protected waitUntilSent()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    .line 112
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;->sentLock:Ljava/lang/Object;

    monitor-enter v1

    .line 113
    :try_start_0
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;->responseLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 114
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;->exception:Lorg/eclipse/paho/client/mqttv3/MqttException;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;->exception:Lorg/eclipse/paho/client/mqttv3/MqttException;

    throw v0

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    .line 132
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 117
    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 118
    :try_start_4
    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;->sent:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez v0, :cond_1

    .line 120
    :try_start_5
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;->sentLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0

    .line 125
    :cond_1
    :goto_0
    :try_start_6
    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;->sent:Z

    if-nez v0, :cond_3

    .line 126
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;->exception:Lorg/eclipse/paho/client/mqttv3/MqttException;

    if-nez v0, :cond_2

    .line 127
    const/4 v0, 0x6

    invoke-static {v0}, Lorg/eclipse/paho/client/mqttv3/internal/ExceptionHelper;->createMqttException(I)Lorg/eclipse/paho/client/mqttv3/MqttException;

    move-result-object v0

    throw v0

    .line 129
    :cond_2
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;->exception:Lorg/eclipse/paho/client/mqttv3/MqttException;

    throw v0

    .line 132
    :cond_3
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 133
    return-void

    .line 121
    :catch_0
    move-exception v0

    goto :goto_0
.end method
