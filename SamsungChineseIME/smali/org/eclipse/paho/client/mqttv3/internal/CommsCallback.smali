.class public Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;
.super Ljava/lang/Object;
.source "CommsCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static INBOUND_QUEUE_SIZE:I


# instance fields
.field private callbackThread:Ljava/lang/Thread;

.field private clientComms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

.field private completeQueue:Ljava/util/Vector;

.field private invoking:Z

.field private lifecycle:Ljava/lang/Object;

.field private messageQueue:Ljava/util/Vector;

.field private mqttCallback:Lorg/eclipse/paho/client/mqttv3/MqttCallback;

.field private quiescing:Z

.field private running:Z

.field private spaceAvailable:Ljava/lang/Object;

.field private trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

.field private workAvailable:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/16 v0, 0xa

    sput v0, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->INBOUND_QUEUE_SIZE:I

    return-void
.end method

.method constructor <init>(Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;)V
    .locals 2
    .parameter "trace"
    .parameter "clientComms"

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-boolean v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->running:Z

    .line 39
    iput-boolean v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->quiescing:Z

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->lifecycle:Ljava/lang/Object;

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->workAvailable:Ljava/lang/Object;

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->spaceAvailable:Ljava/lang/Object;

    .line 44
    iput-boolean v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->invoking:Z

    .line 49
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    .line 50
    iput-object p2, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->clientComms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    .line 51
    new-instance v0, Ljava/util/Vector;

    sget v1, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->INBOUND_QUEUE_SIZE:I

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->messageQueue:Ljava/util/Vector;

    .line 52
    new-instance v0, Ljava/util/Vector;

    sget v1, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->INBOUND_QUEUE_SIZE:I

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->completeQueue:Ljava/util/Vector;

    .line 53
    return-void
.end method

.method private handleMessage(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;)V
    .locals 13
    .parameter "publishMessage"

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    .line 235
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->clientComms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    invoke-virtual {v4}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->mqttCallback:Lorg/eclipse/paho/client/mqttv3/MqttCallback;

    if-eqz v4, :cond_2

    .line 237
    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->getTopicName()Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, destName:Ljava/lang/String;
    const/4 v1, 0x0

    .line 239
    .local v1, destination:Lorg/eclipse/paho/client/mqttv3/MqttTopic;
    if-eqz v0, :cond_0

    .line 240
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->clientComms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    invoke-virtual {v4, v0}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->getTopic(Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/MqttTopic;

    move-result-object v1

    .line 244
    :cond_0
    :try_start_0
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    invoke-virtual {v4}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->isOn()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 246
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/4 v5, 0x1

    const/16 v6, 0x2c9

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/MqttTopic;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    new-instance v9, Ljava/lang/Integer;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->getMessageId()I

    move-result v10

    invoke-direct {v9, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v9, v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI[Ljava/lang/Object;)V

    .line 248
    :cond_1
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->mqttCallback:Lorg/eclipse/paho/client/mqttv3/MqttCallback;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->getMessage()Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Lorg/eclipse/paho/client/mqttv3/MqttCallback;->messageArrived(Lorg/eclipse/paho/client/mqttv3/MqttTopic;Lorg/eclipse/paho/client/mqttv3/MqttMessage;)V

    .line 249
    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->getMessage()Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    move-result-object v4

    invoke-virtual {v4}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->getQos()I

    move-result v4

    if-ne v4, v11, :cond_3

    .line 250
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->clientComms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    new-instance v5, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPubAck;

    invoke-direct {v5, p1}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPubAck;-><init>(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;)V

    invoke-virtual {v4, v5}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->sendNoWait(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;

    .line 263
    .end local v0           #destName:Ljava/lang/String;
    .end local v1           #destination:Lorg/eclipse/paho/client/mqttv3/MqttTopic;
    :cond_2
    :goto_0
    return-void

    .line 251
    .restart local v0       #destName:Ljava/lang/String;
    .restart local v1       #destination:Lorg/eclipse/paho/client/mqttv3/MqttTopic;
    :cond_3
    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->getMessage()Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    move-result-object v4

    invoke-virtual {v4}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->getQos()I

    move-result v4

    if-ne v4, v12, :cond_2

    .line 252
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->clientComms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    invoke-virtual {v4, p1}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->deliveryComplete(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;)V

    .line 253
    new-instance v3, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPubComp;

    invoke-direct {v3, p1}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPubComp;-><init>(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;)V

    .line 254
    .local v3, pubComp:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPubComp;
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->clientComms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    invoke-virtual {v4, v3}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->sendNoWait(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 257
    .end local v3           #pubComp:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPubComp;
    :catch_0
    move-exception v2

    .line 259
    .local v2, ex:Ljava/lang/Exception;
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/16 v5, 0x2ca

    const/4 v6, 0x0

    invoke-virtual {v4, v11, v5, v6, v2}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 260
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->clientComms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    new-instance v5, Lorg/eclipse/paho/client/mqttv3/MqttException;

    invoke-direct {v5, v2}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v4, v5}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->shutdownConnection(Lorg/eclipse/paho/client/mqttv3/MqttException;)V

    goto :goto_0
.end method


# virtual methods
.method public connectionLost(Ljava/lang/Throwable;)V
    .locals 4
    .parameter "cause"

    .prologue
    .line 170
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->mqttCallback:Lorg/eclipse/paho/client/mqttv3/MqttCallback;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/4 v1, 0x1

    const/16 v2, 0x2c4

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, p1}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 173
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->mqttCallback:Lorg/eclipse/paho/client/mqttv3/MqttCallback;

    invoke-interface {v0, p1}, Lorg/eclipse/paho/client/mqttv3/MqttCallback;->connectionLost(Ljava/lang/Throwable;)V

    .line 175
    :cond_0
    return-void
.end method

.method public deliveryComplete(Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;)V
    .locals 6
    .parameter "token"

    .prologue
    .line 266
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->mqttCallback:Lorg/eclipse/paho/client/mqttv3/MqttCallback;

    if-eqz v0, :cond_1

    .line 267
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->completeQueue:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 268
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->workAvailable:Ljava/lang/Object;

    monitor-enter v1

    .line 269
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->isOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/4 v2, 0x1

    const/16 v3, 0x2cb

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v0, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI[Ljava/lang/Object;)V

    .line 273
    :cond_0
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->workAvailable:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 274
    monitor-exit v1

    .line 276
    :cond_1
    return-void

    .line 274
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected getThread()Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->callbackThread:Ljava/lang/Thread;

    return-object v0
.end method

.method public messageArrived(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;)V
    .locals 4
    .parameter "sendMessage"

    .prologue
    .line 183
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->mqttCallback:Lorg/eclipse/paho/client/mqttv3/MqttCallback;

    if-eqz v0, :cond_1

    .line 187
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->spaceAvailable:Ljava/lang/Object;

    monitor-enter v1

    .line 188
    :try_start_0
    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->quiescing:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->messageQueue:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    sget v2, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->INBOUND_QUEUE_SIZE:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v0, v2, :cond_0

    .line 191
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/4 v2, 0x1

    const/16 v3, 0x2c5

    invoke-virtual {v0, v2, v3}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI)V

    .line 192
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->spaceAvailable:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 197
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 198
    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->quiescing:Z

    if-nez v0, :cond_1

    .line 199
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->messageQueue:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 201
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->workAvailable:Ljava/lang/Object;

    monitor-enter v1

    .line 203
    :try_start_3
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/4 v2, 0x1

    const/16 v3, 0x2c6

    invoke-virtual {v0, v2, v3}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI)V

    .line 204
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->workAvailable:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 205
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 208
    :cond_1
    return-void

    .line 197
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 205
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 194
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public quiesce()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 211
    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->quiescing:Z

    .line 212
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->spaceAvailable:Ljava/lang/Object;

    monitor-enter v1

    .line 214
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/4 v2, 0x1

    const/16 v3, 0x2c7

    invoke-virtual {v0, v2, v3}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI)V

    .line 216
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->spaceAvailable:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 217
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->spaceAvailable:Ljava/lang/Object;

    monitor-enter v1

    .line 219
    :try_start_1
    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->invoking:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_0

    .line 223
    :try_start_2
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/4 v2, 0x1

    const/16 v3, 0x2c8

    invoke-virtual {v0, v2, v3}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI)V

    .line 224
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->spaceAvailable:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 229
    :cond_0
    :goto_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 230
    return-void

    .line 217
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 229
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 226
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 102
    :goto_0
    iget-boolean v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->running:Z

    if-eqz v2, :cond_5

    .line 105
    :try_start_0
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->workAvailable:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :try_start_1
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->messageQueue:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->completeQueue:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 108
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/4 v4, 0x1

    const/16 v5, 0x2c0

    invoke-virtual {v2, v4, v5}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI)V

    .line 109
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->workAvailable:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    .line 111
    :cond_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 114
    :goto_1
    iget-boolean v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->running:Z

    if-eqz v2, :cond_3

    .line 116
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->completeQueue:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 117
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->mqttCallback:Lorg/eclipse/paho/client/mqttv3/MqttCallback;

    if-eqz v2, :cond_2

    .line 118
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->completeQueue:Ljava/util/Vector;

    invoke-virtual {v2, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;

    .line 119
    .local v1, token:Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->completeQueue:Ljava/util/Vector;

    invoke-virtual {v2, v6}, Ljava/util/Vector;->removeElementAt(I)V

    .line 120
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    invoke-virtual {v2}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->isOn()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 122
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/16 v3, 0x2c1

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v1, v4, v6

    invoke-virtual {v2, v7, v3, v4}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI[Ljava/lang/Object;)V

    .line 124
    :cond_1
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->mqttCallback:Lorg/eclipse/paho/client/mqttv3/MqttCallback;

    invoke-interface {v2, v1}, Lorg/eclipse/paho/client/mqttv3/MqttCallback;->deliveryComplete(Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;)V

    .line 128
    .end local v1           #token:Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;
    :cond_2
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->messageQueue:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 129
    iget-boolean v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->quiescing:Z

    if-eqz v2, :cond_4

    .line 130
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->messageQueue:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    .line 147
    :cond_3
    :goto_2
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->spaceAvailable:Ljava/lang/Object;

    monitor-enter v3

    .line 149
    :try_start_2
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/4 v4, 0x1

    const/16 v5, 0x2c2

    invoke-virtual {v2, v4, v5}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI)V

    .line 150
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->spaceAvailable:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 151
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 111
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 112
    :catch_0
    move-exception v2

    goto :goto_1

    .line 135
    :cond_4
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->clientComms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    invoke-virtual {v2}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 136
    iput-boolean v7, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->invoking:Z

    .line 137
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->messageQueue:Ljava/util/Vector;

    invoke-virtual {v2, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;

    .line 138
    .local v0, message:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->messageQueue:Ljava/util/Vector;

    invoke-virtual {v2, v6}, Ljava/util/Vector;->removeElementAt(I)V

    .line 139
    invoke-direct {p0, v0}, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->handleMessage(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;)V

    .line 140
    iput-boolean v6, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->invoking:Z

    goto :goto_2

    .line 156
    .end local v0           #message:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;
    :cond_5
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->messageQueue:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    .line 157
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->lifecycle:Ljava/lang/Object;

    monitor-enter v3

    .line 159
    :try_start_5
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/4 v4, 0x1

    const/16 v5, 0x2c3

    invoke-virtual {v2, v4, v5}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI)V

    .line 160
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->lifecycle:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 161
    monitor-exit v3

    .line 162
    return-void

    .line 161
    :catchall_2
    move-exception v2

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v2
.end method

.method public setCallback(Lorg/eclipse/paho/client/mqttv3/MqttCallback;)V
    .locals 0
    .parameter "mqttCallback"

    .prologue
    .line 98
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->mqttCallback:Lorg/eclipse/paho/client/mqttv3/MqttCallback;

    .line 99
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 59
    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->running:Z

    if-nez v0, :cond_0

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->running:Z

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->quiescing:Z

    .line 62
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "Micro Client Callback"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->callbackThread:Ljava/lang/Thread;

    .line 63
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->callbackThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 65
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 71
    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->running:Z

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/16 v1, 0x2bc

    invoke-virtual {v0, v5, v1}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI)V

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->running:Z

    .line 75
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->callbackThread:Ljava/lang/Thread;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->lifecycle:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :try_start_1
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->workAvailable:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 80
    :try_start_2
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/4 v3, 0x1

    const/16 v4, 0x2bd

    invoke-virtual {v0, v3, v4}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI)V

    .line 81
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->workAvailable:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 82
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 84
    :try_start_3
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/4 v2, 0x1

    const/16 v3, 0x2be

    invoke-virtual {v0, v2, v3}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI)V

    .line 86
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->lifecycle:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 87
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 93
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/16 v1, 0x2bf

    invoke-virtual {v0, v5, v1}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI)V

    .line 95
    :cond_1
    return-void

    .line 82
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0

    .line 87
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0

    .line 89
    :catch_0
    move-exception v0

    goto :goto_0
.end method
