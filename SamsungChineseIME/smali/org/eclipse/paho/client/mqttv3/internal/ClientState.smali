.class public Lorg/eclipse/paho/client/mqttv3/internal/ClientState;
.super Ljava/lang/Object;
.source "ClientState.java"


# static fields
.field private static final MAX_MSG_ID:I = 0xffff

.field private static final MIN_MSG_ID:I = 0x1

.field private static final PERSISTENCE_CONFIRMED_PREFIX:Ljava/lang/String; = "sc-"

.field private static final PERSISTENCE_RECEIVED_PREFIX:Ljava/lang/String; = "r-"

.field private static final PERSISTENCE_SENT_PREFIX:Ljava/lang/String; = "s-"


# instance fields
.field private actualInFlight:I

.field private callback:Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;

.field private cleanSession:Z

.field private connectFailed:Z

.field private connected:Z

.field private inFlightPubRels:I

.field private inUseMsgIds:Ljava/util/Hashtable;

.field private inboundQoS2:Ljava/util/Hashtable;

.field private keepAlive:J

.field private lastInboundActivity:J

.field private lastOutboundActivity:J

.field private maxInflight:I

.field private nextMsgId:I

.field private outboundQoS1:Ljava/util/Hashtable;

.field private outboundQoS2:Ljava/util/Hashtable;

.field private pendingFlows:Ljava/util/Vector;

.field private pendingMessages:Ljava/util/Vector;

.field private persistence:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

.field private pingCommand:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;

.field private pingOutstanding:Z

.field private queueLock:Ljava/lang/Object;

.field private quiesceLock:Ljava/lang/Object;

.field private quiescing:Z

.field private sentConnect:Z

.field private tokenStore:Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;

.field private trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

.field private waitingTokens:I

.field private waitingTokensLock:Ljava/lang/Object;


# direct methods
.method protected constructor <init>(Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;)V
    .locals 5
    .parameter "trace"
    .parameter "persistence"
    .parameter "tokenStore"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    const-wide/16 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->nextMsgId:I

    .line 72
    const/16 v0, 0xa

    iput v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->maxInflight:I

    .line 76
    iput v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->actualInFlight:I

    .line 77
    iput v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->inFlightPubRels:I

    .line 79
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->queueLock:Ljava/lang/Object;

    .line 80
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->quiesceLock:Ljava/lang/Object;

    .line 81
    iput-boolean v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->quiescing:Z

    .line 83
    iput-wide v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->lastOutboundActivity:J

    .line 84
    iput-wide v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->lastInboundActivity:J

    .line 86
    iput-boolean v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->connected:Z

    .line 87
    iput-boolean v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->sentConnect:Z

    .line 88
    iput-boolean v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->connectFailed:Z

    .line 90
    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->callback:Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;

    .line 92
    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->outboundQoS2:Ljava/util/Hashtable;

    .line 93
    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->outboundQoS1:Ljava/util/Hashtable;

    .line 94
    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->inboundQoS2:Ljava/util/Hashtable;

    .line 98
    iput-boolean v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pingOutstanding:Z

    .line 107
    iput v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->waitingTokens:I

    .line 108
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->waitingTokensLock:Ljava/lang/Object;

    .line 111
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    .line 112
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->inUseMsgIds:Ljava/util/Hashtable;

    .line 113
    new-instance v0, Ljava/util/Vector;

    iget v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->maxInflight:I

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pendingMessages:Ljava/util/Vector;

    .line 114
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pendingFlows:Ljava/util/Vector;

    .line 115
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->outboundQoS2:Ljava/util/Hashtable;

    .line 116
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->outboundQoS1:Ljava/util/Hashtable;

    .line 117
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->inboundQoS2:Ljava/util/Hashtable;

    .line 118
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPingReq;

    invoke-direct {v0}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPingReq;-><init>()V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pingCommand:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;

    .line 119
    iput v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->inFlightPubRels:I

    .line 120
    iput v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->actualInFlight:I

    .line 122
    iput-object p2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->persistence:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    .line 123
    iput-object p4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->callback:Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;

    .line 124
    iput-object p3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->tokenStore:Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;

    .line 125
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->restoreState()V

    .line 126
    return-void
.end method

.method private checkForActivity()Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 485
    const/4 v0, 0x0

    .line 486
    .local v0, result:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->lastOutboundActivity:J

    sub-long/2addr v1, v3

    iget-wide v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->keepAlive:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->lastInboundActivity:J

    sub-long/2addr v1, v3

    iget-wide v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->keepAlive:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_4

    .line 489
    :cond_0
    iget-boolean v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pingOutstanding:Z

    if-eqz v1, :cond_2

    .line 490
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->isOn()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 492
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/16 v2, 0x26b

    new-array v3, v5, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/Long;

    iget-wide v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->keepAlive:J

    invoke-direct {v4, v5, v6}, Ljava/lang/Long;-><init>(J)V

    aput-object v4, v3, v8

    new-instance v4, Ljava/lang/Long;

    iget-wide v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->lastOutboundActivity:J

    invoke-direct {v4, v5, v6}, Ljava/lang/Long;-><init>(J)V

    aput-object v4, v3, v7

    new-instance v4, Ljava/lang/Long;

    iget-wide v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->lastInboundActivity:J

    invoke-direct {v4, v5, v6}, Ljava/lang/Long;-><init>(J)V

    aput-object v4, v3, v9

    invoke-virtual {v1, v7, v2, v3}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI[Ljava/lang/Object;)V

    .line 496
    :cond_1
    const/16 v1, 0x7d00

    invoke-static {v1}, Lorg/eclipse/paho/client/mqttv3/internal/ExceptionHelper;->createMqttException(I)Lorg/eclipse/paho/client/mqttv3/MqttException;

    move-result-object v1

    throw v1

    .line 498
    :cond_2
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->isOn()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 500
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/16 v2, 0x26c

    new-array v3, v5, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/Long;

    iget-wide v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->keepAlive:J

    invoke-direct {v4, v5, v6}, Ljava/lang/Long;-><init>(J)V

    aput-object v4, v3, v8

    new-instance v4, Ljava/lang/Long;

    iget-wide v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->lastOutboundActivity:J

    invoke-direct {v4, v5, v6}, Ljava/lang/Long;-><init>(J)V

    aput-object v4, v3, v7

    new-instance v4, Ljava/lang/Long;

    iget-wide v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->lastInboundActivity:J

    invoke-direct {v4, v5, v6}, Ljava/lang/Long;-><init>(J)V

    aput-object v4, v3, v9

    invoke-virtual {v1, v7, v2, v3}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI[Ljava/lang/Object;)V

    .line 502
    :cond_3
    iput-boolean v7, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pingOutstanding:Z

    .line 503
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pingCommand:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;

    .line 504
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->tokenStore:Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;

    invoke-virtual {v1, v0}, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->saveToken(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;

    .line 507
    :cond_4
    return-object v0
.end method

.method private checkQuiesceLock()Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 643
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    invoke-virtual {v2}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->isOn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 645
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/16 v3, 0x272

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/Boolean;

    iget-boolean v6, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->quiescing:Z

    invoke-direct {v5, v6}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v4, v1

    new-instance v5, Ljava/lang/Integer;

    iget v6, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->actualInFlight:I

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v4, v0

    const/4 v5, 0x2

    new-instance v6, Ljava/lang/Integer;

    iget-object v7, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pendingFlows:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v4, v5

    const/4 v5, 0x3

    new-instance v6, Ljava/lang/Integer;

    iget v7, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->inFlightPubRels:I

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v4, v5

    invoke-virtual {v2, v0, v3, v4}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI[Ljava/lang/Object;)V

    .line 647
    :cond_0
    iget-boolean v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->quiescing:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->actualInFlight:I

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pendingFlows:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-nez v2, :cond_1

    iget v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->inFlightPubRels:I

    if-nez v2, :cond_1

    .line 648
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->quiesceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 649
    :try_start_0
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->quiesceLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 650
    monitor-exit v1

    .line 653
    :goto_0
    return v0

    .line 650
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    move v0, v1

    .line 653
    goto :goto_0
.end method

.method private cleanUpQueue(Ljava/util/Vector;)V
    .locals 8
    .parameter "queue"

    .prologue
    .line 877
    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/4 v6, 0x1

    const/16 v7, 0x27c

    invoke-virtual {v5, v6, v7}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI)V

    .line 879
    invoke-virtual {p1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 882
    .local v0, e:Ljava/util/Enumeration;
    const/16 v5, 0x7d66

    invoke-static {v5}, Lorg/eclipse/paho/client/mqttv3/internal/ExceptionHelper;->createMqttException(I)Lorg/eclipse/paho/client/mqttv3/MqttException;

    move-result-object v1

    .line 884
    .local v1, ex:Lorg/eclipse/paho/client/mqttv3/MqttException;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 885
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;

    .line 886
    .local v2, message:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;
    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->tokenStore:Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;

    invoke-virtual {v5, v2}, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->getToken(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;

    move-result-object v4

    .line 887
    .local v4, token:Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;
    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {v2}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;->getMessageId()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/lang/Integer;-><init>(I)V

    .line 889
    .local v3, messageId:Ljava/lang/Integer;
    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->outboundQoS2:Ljava/util/Hashtable;

    invoke-virtual {v5, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 890
    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->outboundQoS2:Ljava/util/Hashtable;

    invoke-virtual {v5, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 893
    :cond_0
    if-eqz v4, :cond_1

    .line 894
    invoke-virtual {v4, v1}, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;->notifyException(Lorg/eclipse/paho/client/mqttv3/MqttException;)V

    .line 895
    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->tokenStore:Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;

    invoke-virtual {v5, v2}, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->removeToken(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;

    .line 897
    :cond_1
    invoke-virtual {p1, v2}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    goto :goto_0

    .line 899
    .end local v2           #message:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;
    .end local v3           #messageId:Ljava/lang/Integer;
    .end local v4           #token:Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;
    :cond_2
    return-void
.end method

.method private decrementInFlight()V
    .locals 8

    .prologue
    .line 630
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->queueLock:Ljava/lang/Object;

    monitor-enter v1

    .line 631
    :try_start_0
    iget v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->actualInFlight:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->actualInFlight:I

    .line 632
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->isOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 634
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/4 v2, 0x1

    const/16 v3, 0x286

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/Integer;

    iget v7, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->actualInFlight:I

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI[Ljava/lang/Object;)V

    .line 636
    :cond_0
    invoke-direct {p0}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->checkQuiesceLock()Z

    move-result v0

    if-nez v0, :cond_1

    .line 637
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->queueLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 639
    :cond_1
    monitor-exit v1

    .line 640
    return-void

    .line 639
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private declared-synchronized getNextMessageId()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    .line 850
    monitor-enter p0

    :try_start_0
    iget v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->nextMsgId:I

    .line 853
    .local v2, startingMessageId:I
    const/4 v1, 0x0

    .line 855
    .local v1, loopCount:I
    :cond_0
    iget v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->nextMsgId:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->nextMsgId:I

    .line 856
    iget v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->nextMsgId:I

    const v4, 0xffff

    if-le v3, v4, :cond_1

    .line 857
    const/4 v3, 0x1

    iput v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->nextMsgId:I

    .line 859
    :cond_1
    iget v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->nextMsgId:I

    if-ne v3, v2, :cond_2

    .line 860
    add-int/lit8 v1, v1, 0x1

    .line 861
    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    .line 862
    const/16 v3, 0x7d01

    invoke-static {v3}, Lorg/eclipse/paho/client/mqttv3/internal/ExceptionHelper;->createMqttException(I)Lorg/eclipse/paho/client/mqttv3/MqttException;

    move-result-object v3

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 850
    .end local v1           #loopCount:I
    .end local v2           #startingMessageId:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 865
    .restart local v1       #loopCount:I
    .restart local v2       #startingMessageId:I
    :cond_2
    :try_start_1
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->inUseMsgIds:Ljava/util/Hashtable;

    new-instance v4, Ljava/lang/Integer;

    iget v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->nextMsgId:I

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 866
    new-instance v0, Ljava/lang/Integer;

    iget v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->nextMsgId:I

    invoke-direct {v0, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 867
    .local v0, id:Ljava/lang/Integer;
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->inUseMsgIds:Ljava/util/Hashtable;

    invoke-virtual {v3, v0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 868
    iget v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->nextMsgId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v3
.end method

.method private getReceivedPersistenceKey(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)Ljava/lang/String;
    .locals 2
    .parameter "message"

    .prologue
    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "r-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;->getMessageId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSendConfirmPersistenceKey(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)Ljava/lang/String;
    .locals 2
    .parameter "message"

    .prologue
    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sc-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;->getMessageId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSendPersistenceKey(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)Ljava/lang/String;
    .locals 2
    .parameter "message"

    .prologue
    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "s-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;->getMessageId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private insertInOrder(Ljava/util/Vector;Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)V
    .locals 5
    .parameter "list"
    .parameter "newMsg"

    .prologue
    .line 191
    invoke-virtual {p2}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;->getMessageId()I

    move-result v1

    .line 192
    .local v1, newMsgId:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 193
    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;

    .line 194
    .local v2, otherMsg:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;
    invoke-virtual {v2}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;->getMessageId()I

    move-result v3

    .line 195
    .local v3, otherMsgId:I
    if-le v3, v1, :cond_0

    .line 196
    invoke-virtual {p1, p2, v0}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 201
    .end local v2           #otherMsg:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;
    .end local v3           #otherMsgId:I
    :goto_1
    return-void

    .line 192
    .restart local v2       #otherMsg:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;
    .restart local v3       #otherMsgId:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 200
    .end local v2           #otherMsg:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;
    .end local v3           #otherMsgId:I
    :cond_1
    invoke-virtual {p1, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private reOrder(Ljava/util/Vector;)Ljava/util/Vector;
    .locals 9
    .parameter "list"

    .prologue
    .line 211
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 213
    .local v6, newList:Ljava/util/Vector;
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v8

    if-nez v8, :cond_1

    .line 247
    :cond_0
    return-object v6

    .line 217
    :cond_1
    const/4 v7, 0x0

    .line 218
    .local v7, previousMsgId:I
    const/4 v3, 0x0

    .line 219
    .local v3, largestGap:I
    const/4 v4, 0x0

    .line 220
    .local v4, largestGapMsgIdPosInList:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v8

    if-ge v2, v8, :cond_3

    .line 221
    invoke-virtual {p1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;

    invoke-virtual {v8}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;->getMessageId()I

    move-result v0

    .line 222
    .local v0, currentMsgId:I
    sub-int v8, v0, v7

    if-le v8, v3, :cond_2

    .line 223
    sub-int v3, v0, v7

    .line 224
    move v4, v2

    .line 226
    :cond_2
    move v7, v0

    .line 220
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 228
    .end local v0           #currentMsgId:I
    :cond_3
    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;

    invoke-virtual {v8}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;->getMessageId()I

    move-result v5

    .line 229
    .local v5, lowestMsgId:I
    move v1, v7

    .line 232
    .local v1, highestMsgId:I
    const v8, 0xffff

    sub-int/2addr v8, v1

    add-int/2addr v8, v5

    if-le v8, v3, :cond_4

    .line 233
    const/4 v4, 0x0

    .line 238
    :cond_4
    move v2, v4

    :goto_1
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v8

    if-ge v2, v8, :cond_5

    .line 239
    invoke-virtual {p1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 238
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 243
    :cond_5
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v4, :cond_0

    .line 244
    invoke-virtual {p1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 243
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method private declared-synchronized releaseMessageId(I)V
    .locals 2
    .parameter "msgId"

    .prologue
    .line 840
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->inUseMsgIds:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 841
    monitor-exit p0

    return-void

    .line 840
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private restoreInflightMessages()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 327
    new-instance v3, Ljava/util/Vector;

    iget v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->maxInflight:I

    invoke-direct {v3, v4}, Ljava/util/Vector;-><init>(I)V

    iput-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pendingMessages:Ljava/util/Vector;

    .line 328
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iput-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pendingFlows:Ljava/util/Vector;

    .line 330
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->outboundQoS2:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 331
    .local v1, keys:Ljava/util/Enumeration;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 332
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    .line 333
    .local v0, key:Ljava/lang/Object;
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->outboundQoS2:Ljava/util/Hashtable;

    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 334
    .local v2, msg:Ljava/lang/Object;
    instance-of v3, v2, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;

    if-eqz v3, :cond_1

    .line 336
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/16 v4, 0x262

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v0, v5, v7

    invoke-virtual {v3, v6, v4, v5}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI[Ljava/lang/Object;)V

    .line 337
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pendingMessages:Ljava/util/Vector;

    check-cast v2, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;

    .end local v2           #msg:Ljava/lang/Object;
    invoke-direct {p0, v3, v2}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->insertInOrder(Ljava/util/Vector;Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)V

    goto :goto_0

    .line 338
    .restart local v2       #msg:Ljava/lang/Object;
    :cond_1
    instance-of v3, v2, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPubRel;

    if-eqz v3, :cond_0

    .line 340
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/16 v4, 0x263

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v0, v5, v7

    invoke-virtual {v3, v6, v4, v5}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI[Ljava/lang/Object;)V

    .line 341
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pendingFlows:Ljava/util/Vector;

    check-cast v2, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPubRel;

    .end local v2           #msg:Ljava/lang/Object;
    invoke-direct {p0, v3, v2}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->insertInOrder(Ljava/util/Vector;Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)V

    goto :goto_0

    .line 344
    .end local v0           #key:Ljava/lang/Object;
    :cond_2
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->outboundQoS1:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 345
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 346
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    .line 347
    .restart local v0       #key:Ljava/lang/Object;
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->outboundQoS1:Ljava/util/Hashtable;

    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;

    .line 348
    .local v2, msg:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/16 v4, 0x264

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v0, v5, v7

    invoke-virtual {v3, v6, v4, v5}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI[Ljava/lang/Object;)V

    .line 349
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pendingMessages:Ljava/util/Vector;

    invoke-direct {p0, v3, v2}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->insertInOrder(Ljava/util/Vector;Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)V

    goto :goto_1

    .line 352
    .end local v0           #key:Ljava/lang/Object;
    .end local v2           #msg:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;
    :cond_3
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pendingFlows:Ljava/util/Vector;

    invoke-direct {p0, v3}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->reOrder(Ljava/util/Vector;)Ljava/util/Vector;

    move-result-object v3

    iput-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pendingFlows:Ljava/util/Vector;

    .line 353
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pendingMessages:Ljava/util/Vector;

    invoke-direct {p0, v3}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->reOrder(Ljava/util/Vector;)Ljava/util/Vector;

    move-result-object v3

    iput-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pendingMessages:Ljava/util/Vector;

    .line 354
    return-void
.end method

.method private restoreMessage(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttPersistable;)Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;
    .locals 7
    .parameter "key"
    .parameter "persistable"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 162
    const/4 v1, 0x0

    .line 165
    .local v1, message:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;
    :try_start_0
    invoke-static {p2}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;->createWireMessage(Lorg/eclipse/paho/client/mqttv3/MqttPersistable;)Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;
    :try_end_0
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 181
    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/16 v3, 0x259

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v6

    aput-object v1, v4, v5

    invoke-virtual {v2, v5, v3, v4}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI[Ljava/lang/Object;)V

    .line 182
    return-object v1

    .line 167
    :catch_0
    move-exception v0

    .line 169
    .local v0, ex:Lorg/eclipse/paho/client/mqttv3/MqttException;
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/16 v3, 0x25a

    new-array v4, v5, [Ljava/lang/Object;

    aput-object p1, v4, v6

    invoke-virtual {v2, v5, v3, v4, v0}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 170
    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/MqttException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/io/EOFException;

    if-eqz v2, :cond_1

    .line 172
    if-eqz p1, :cond_0

    .line 173
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->persistence:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    invoke-interface {v2, p1}, Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;->remove(Ljava/lang/String;)V

    goto :goto_0

    .line 177
    :cond_1
    throw v0
.end method


# virtual methods
.method protected clearState()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    .line 149
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/4 v1, 0x1

    const/16 v2, 0x25b

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI)V

    .line 151
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->persistence:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    invoke-interface {v0}, Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;->clear()V

    .line 152
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->inUseMsgIds:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 153
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pendingMessages:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 154
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pendingFlows:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 155
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->outboundQoS2:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 156
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->outboundQoS1:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 157
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->inboundQoS2:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 158
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->tokenStore:Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->clear()V

    .line 159
    return-void
.end method

.method public connected()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 774
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/16 v1, 0x277

    invoke-virtual {v0, v2, v1}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI)V

    .line 775
    iput-boolean v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->connected:Z

    .line 776
    return-void
.end method

.method protected decrementWaitingTokens()V
    .locals 8

    .prologue
    .line 978
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->waitingTokensLock:Ljava/lang/Object;

    monitor-enter v1

    .line 979
    :try_start_0
    iget v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->waitingTokens:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->waitingTokens:I

    .line 980
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->isOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 982
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/4 v2, 0x1

    const/16 v3, 0x283

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/Integer;

    iget v7, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->waitingTokens:I

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI[Ljava/lang/Object;)V

    .line 984
    :cond_0
    iget v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->waitingTokens:I

    if-nez v0, :cond_1

    .line 985
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->waitingTokensLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 987
    :cond_1
    monitor-exit v1

    .line 988
    return-void

    .line 987
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected deliveryComplete(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;)V
    .locals 7
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 951
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->isOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 953
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/16 v1, 0x281

    new-array v2, v6, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Integer;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->getMessageId()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    invoke-virtual {v0, v6, v1, v2}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI[Ljava/lang/Object;)V

    .line 955
    :cond_0
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->persistence:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    invoke-direct {p0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->getReceivedPersistenceKey(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;->remove(Ljava/lang/String;)V

    .line 956
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->inboundQoS2:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->getMessageId()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 957
    return-void
.end method

.method public disconnected(Lorg/eclipse/paho/client/mqttv3/MqttException;)V
    .locals 8
    .parameter "reason"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 798
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/16 v1, 0x279

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v1, v2, p1}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 799
    iput-boolean v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->connected:Z

    .line 801
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->queueLock:Ljava/lang/Object;

    monitor-enter v1

    .line 802
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->queueLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 803
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 805
    :try_start_1
    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->cleanSession:Z

    if-eqz v0, :cond_0

    .line 806
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->clearState()V

    .line 808
    :cond_0
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pendingMessages:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 809
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pendingFlows:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 813
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->waitingTokensLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_1 .. :try_end_1} :catch_1

    .line 814
    :try_start_2
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->isOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 816
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/4 v2, 0x1

    const/16 v3, 0x27a

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/Integer;

    iget v7, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->waitingTokens:I

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI[Ljava/lang/Object;)V

    .line 818
    :cond_1
    :goto_0
    iget v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->waitingTokens:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-lez v0, :cond_2

    .line 820
    :try_start_3
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->waitingTokensLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 821
    :catch_0
    move-exception v0

    goto :goto_0

    .line 803
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 824
    :cond_2
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 826
    :try_start_6
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/4 v1, 0x1

    const/16 v2, 0x27b

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI)V

    .line 827
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->persistence:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    invoke-interface {v0}, Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;->close()V
    :try_end_6
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_6 .. :try_end_6} :catch_1

    .line 831
    :goto_1
    return-void

    .line 824
    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0
    :try_end_8
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_8 .. :try_end_8} :catch_1

    .line 828
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public disconnecting(Lorg/eclipse/paho/client/mqttv3/MqttException;)V
    .locals 4
    .parameter "reason"

    .prologue
    .line 785
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/4 v1, 0x1

    const/16 v2, 0x278

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, p1}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 786
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->queueLock:Ljava/lang/Object;

    monitor-enter v1

    .line 787
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->queueLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 788
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 789
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->tokenStore:Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;

    invoke-virtual {v0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->noMoreResponses(Lorg/eclipse/paho/client/mqttv3/MqttException;)V

    .line 790
    return-void

    .line 788
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected get()Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 521
    const/4 v2, 0x0

    .line 522
    .local v2, result:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;
    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->queueLock:Ljava/lang/Object;

    monitor-enter v5

    .line 523
    :try_start_0
    iget-boolean v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->sentConnect:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->connectFailed:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->connected:Z

    if-nez v3, :cond_1

    .line 525
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/4 v6, 0x1

    const/16 v7, 0x288

    invoke-virtual {v3, v6, v7}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI)V

    .line 526
    monitor-exit v5

    move-object v3, v4

    .line 592
    :goto_0
    return-object v3

    .line 544
    :cond_0
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pendingMessages:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pendingFlows:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 545
    invoke-direct {p0}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->checkForActivity()Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;

    move-result-object v2

    .line 528
    :cond_1
    :goto_1
    if-nez v2, :cond_8

    .line 529
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pendingMessages:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pendingFlows:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_2

    .line 532
    :try_start_1
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/4 v6, 0x1

    const/16 v7, 0x284

    invoke-virtual {v3, v6, v7}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI)V

    .line 533
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->queueLock:Ljava/lang/Object;

    iget-wide v6, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->keepAlive:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 537
    :cond_2
    :goto_2
    :try_start_2
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pendingFlows:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pendingFlows:Ljava/util/Vector;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;

    instance-of v3, v3, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnect;

    if-nez v3, :cond_0

    .line 538
    :cond_3
    iget-boolean v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->connected:Z

    if-nez v3, :cond_0

    .line 540
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/4 v6, 0x1

    const/16 v7, 0x26d

    invoke-virtual {v3, v6, v7}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI)V

    .line 541
    monitor-exit v5

    move-object v3, v4

    goto :goto_0

    .line 546
    :cond_4
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pendingFlows:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 547
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pendingFlows:Ljava/util/Vector;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;

    move-object v2, v0

    .line 548
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pendingFlows:Ljava/util/Vector;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/util/Vector;->removeElementAt(I)V

    .line 549
    invoke-direct {p0}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->checkQuiesceLock()Z

    goto :goto_1

    .line 580
    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 550
    :cond_5
    :try_start_3
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pendingMessages:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 551
    iget v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->actualInFlight:I

    iget v6, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->maxInflight:I

    if-ne v3, v6, :cond_6

    .line 553
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/4 v6, 0x1

    const/16 v7, 0x26e

    invoke-virtual {v3, v6, v7}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 555
    :try_start_4
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->queueLock:Ljava/lang/Object;

    iget-wide v6, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->keepAlive:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 558
    :goto_3
    :try_start_5
    iget-boolean v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->connected:Z

    if-nez v3, :cond_6

    .line 560
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/4 v6, 0x1

    const/16 v7, 0x287

    invoke-virtual {v3, v6, v7}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI)V

    .line 561
    monitor-exit v5

    move-object v3, v4

    goto/16 :goto_0

    .line 564
    :cond_6
    iget v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->actualInFlight:I

    iget v6, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->maxInflight:I

    if-ge v3, v6, :cond_1

    .line 565
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pendingMessages:Ljava/util/Vector;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;

    move-object v2, v0

    .line 566
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pendingMessages:Ljava/util/Vector;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/util/Vector;->removeElementAt(I)V

    .line 567
    if-nez v2, :cond_7

    .line 568
    invoke-direct {p0}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->checkForActivity()Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;

    move-result-object v2

    goto/16 :goto_1

    .line 571
    :cond_7
    iget v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->actualInFlight:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->actualInFlight:I

    .line 572
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    invoke-virtual {v3}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->isOn()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 574
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/4 v6, 0x1

    const/16 v7, 0x26f

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    new-instance v10, Ljava/lang/Integer;

    iget v11, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->actualInFlight:I

    invoke-direct {v10, v11}, Ljava/lang/Integer;-><init>(I)V

    aput-object v10, v8, v9

    invoke-virtual {v3, v6, v7, v8}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 580
    :cond_8
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 581
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    invoke-virtual {v3}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->isOn()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 582
    const/4 v1, 0x0

    .line 583
    .local v1, msgId:I
    if-eqz v2, :cond_9

    .line 584
    invoke-virtual {v2}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;->getMessageId()I

    move-result v1

    .line 587
    :cond_9
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/16 v4, 0x270

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v13

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v5, v12

    invoke-virtual {v3, v12, v4, v5}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI[Ljava/lang/Object;)V

    .line 589
    .end local v1           #msgId:I
    :cond_a
    instance-of v3, v2, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnect;

    if-eqz v3, :cond_b

    .line 590
    iput-boolean v12, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->sentConnect:Z

    :cond_b
    move-object v3, v2

    .line 592
    goto/16 :goto_0

    .line 556
    :catch_0
    move-exception v3

    goto/16 :goto_3

    .line 534
    :catch_1
    move-exception v3

    goto/16 :goto_2
.end method

.method protected incrementWaitingTokens()V
    .locals 8

    .prologue
    .line 963
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->waitingTokensLock:Ljava/lang/Object;

    monitor-enter v1

    .line 964
    :try_start_0
    iget v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->waitingTokens:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->waitingTokens:I

    .line 965
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->isOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 967
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/4 v2, 0x1

    const/16 v3, 0x282

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/Integer;

    iget v7, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->waitingTokens:I

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI[Ljava/lang/Object;)V

    .line 969
    :cond_0
    monitor-exit v1

    .line 970
    return-void

    .line 969
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected notifyReceived(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)V
    .locals 14
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 661
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->lastInboundActivity:J

    .line 663
    iget-object v6, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    invoke-virtual {v6}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->isOn()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 665
    iget-object v6, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/16 v7, 0x273

    new-array v8, v13, [Ljava/lang/Object;

    aput-object p1, v8, v12

    new-instance v9, Ljava/lang/Integer;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;->getMessageId()I

    move-result v10

    invoke-direct {v9, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v9, v8, v11

    invoke-virtual {v6, v11, v7, v8}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI[Ljava/lang/Object;)V

    .line 668
    :cond_0
    instance-of v6, p1, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttAck;

    if-eqz v6, :cond_e

    move-object v0, p1

    .line 669
    check-cast v0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttAck;

    .line 670
    .local v0, ack:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttAck;
    iget-object v6, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->tokenStore:Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;

    invoke-virtual {v6, p1}, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->getToken(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;

    move-result-object v5

    .line 672
    .local v5, token:Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;
    instance-of v6, v0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPubRec;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->outboundQoS2:Ljava/util/Hashtable;

    new-instance v7, Ljava/lang/Integer;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttAck;->getMessageId()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6, v7}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 675
    new-instance v2, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPubRel;

    check-cast v0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPubRec;

    .end local v0           #ack:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttAck;
    invoke-direct {v2, v0}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPubRel;-><init>(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPubRec;)V

    .line 676
    .local v2, rel:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPubRel;
    invoke-virtual {p0, v2}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->send(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;

    .line 767
    .end local v2           #rel:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPubRel;
    .end local v5           #token:Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;
    .end local p1
    :cond_1
    :goto_0
    return-void

    .line 678
    .restart local v0       #ack:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttAck;
    .restart local v5       #token:Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;
    .restart local p1
    :cond_2
    instance-of v6, v0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPubAck;

    if-eqz v6, :cond_a

    .line 680
    iget-object v6, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    invoke-virtual {v6}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->isOn()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 682
    iget-object v6, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/16 v7, 0x274

    new-array v8, v11, [Ljava/lang/Object;

    new-instance v9, Ljava/lang/Integer;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttAck;->getMessageId()I

    move-result v10

    invoke-direct {v9, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v9, v8, v12

    invoke-virtual {v6, v11, v7, v8}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI[Ljava/lang/Object;)V

    .line 684
    :cond_3
    iget-object v6, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->persistence:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    invoke-direct {p0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->getSendPersistenceKey(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;->remove(Ljava/lang/String;)V

    .line 685
    iget-object v6, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->outboundQoS1:Ljava/util/Hashtable;

    new-instance v7, Ljava/lang/Integer;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttAck;->getMessageId()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6, v7}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 697
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;->getMessageId()I

    move-result v6

    invoke-direct {p0, v6}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->releaseMessageId(I)V

    .line 698
    instance-of v6, v0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPubAck;

    if-nez v6, :cond_5

    instance-of v6, v0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPubRec;

    if-nez v6, :cond_5

    instance-of v6, v0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPubComp;

    if-eqz v6, :cond_6

    .line 701
    :cond_5
    invoke-direct {p0}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->decrementInFlight()V

    .line 703
    :cond_6
    instance-of v6, v0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPingResp;

    if-eqz v6, :cond_b

    .line 705
    iget-object v6, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/16 v7, 0x275

    invoke-virtual {v6, v11, v7}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI)V

    .line 706
    iput-boolean v12, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pingOutstanding:Z

    .line 725
    :cond_7
    :goto_2
    iget-object v6, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->tokenStore:Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;

    check-cast p1, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttAck;

    .end local p1
    invoke-virtual {v6, p1}, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->responseReceived(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttAck;)V

    .line 726
    instance-of v6, v0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPubAck;

    if-nez v6, :cond_8

    instance-of v6, v0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPubComp;

    if-eqz v6, :cond_9

    .line 728
    :cond_8
    iget-object v6, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->callback:Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;

    invoke-virtual {v6, v5}, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->deliveryComplete(Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;)V

    .line 730
    :cond_9
    invoke-direct {p0}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->checkQuiesceLock()Z

    goto :goto_0

    .line 687
    .restart local p1
    :cond_a
    instance-of v6, v0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPubComp;

    if-eqz v6, :cond_4

    .line 688
    iget-object v6, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->outboundQoS2:Ljava/util/Hashtable;

    new-instance v7, Ljava/lang/Integer;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttAck;->getMessageId()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6, v7}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    iget-object v6, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->persistence:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    invoke-direct {p0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->getSendPersistenceKey(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;->remove(Ljava/lang/String;)V

    .line 690
    iget-object v6, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->persistence:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    invoke-direct {p0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->getSendConfirmPersistenceKey(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;->remove(Ljava/lang/String;)V

    .line 691
    iget v6, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->inFlightPubRels:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->inFlightPubRels:I

    .line 692
    iget-object v6, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    invoke-virtual {v6}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->isOn()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 694
    iget-object v6, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/16 v7, 0x285

    new-array v8, v13, [Ljava/lang/Object;

    new-instance v9, Ljava/lang/Integer;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttAck;->getMessageId()I

    move-result v10

    invoke-direct {v9, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v9, v8, v12

    new-instance v9, Ljava/lang/Integer;

    iget v10, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->inFlightPubRels:I

    invoke-direct {v9, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v9, v8, v11

    invoke-virtual {v6, v11, v7, v8}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 708
    :cond_b
    instance-of v6, p1, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnack;

    if-eqz v6, :cond_7

    move-object v6, p1

    .line 709
    check-cast v6, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnack;

    invoke-virtual {v6}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnack;->getReturnCode()I

    move-result v6

    if-nez v6, :cond_d

    .line 710
    iget-boolean v6, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->cleanSession:Z

    if-eqz v6, :cond_c

    .line 711
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->clearState()V

    .line 713
    :cond_c
    iput v12, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->inFlightPubRels:I

    .line 714
    iput v12, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->actualInFlight:I

    .line 715
    invoke-direct {p0}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->restoreInflightMessages()V

    .line 716
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->connected()V

    .line 721
    :goto_3
    iget-object v7, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->queueLock:Ljava/lang/Object;

    monitor-enter v7

    .line 722
    :try_start_0
    iget-object v6, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->queueLock:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 723
    monitor-exit v7

    goto/16 :goto_2

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 718
    :cond_d
    iput-boolean v11, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->connectFailed:Z

    goto :goto_3

    .line 734
    .end local v0           #ack:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttAck;
    .end local v5           #token:Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;
    :cond_e
    iget-boolean v6, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->quiescing:Z

    if-nez v6, :cond_1

    .line 735
    instance-of v6, p1, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;

    if-eqz v6, :cond_10

    move-object v3, p1

    .line 736
    check-cast v3, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;

    .line 737
    .local v3, send:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;
    invoke-virtual {v3}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->getMessage()Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    move-result-object v6

    invoke-virtual {v6}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->getQos()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_0

    .line 740
    :pswitch_0
    iget-object v6, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->callback:Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;

    if-eqz v6, :cond_1

    .line 741
    iget-object v6, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->callback:Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;

    invoke-virtual {v6, v3}, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->messageArrived(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;)V

    goto/16 :goto_0

    .line 745
    :pswitch_1
    iget-object v6, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    invoke-virtual {v6}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->isOn()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 747
    iget-object v6, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/16 v7, 0x276

    new-array v8, v11, [Ljava/lang/Object;

    new-instance v9, Ljava/lang/Integer;

    invoke-virtual {v3}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->getMessageId()I

    move-result v10

    invoke-direct {v9, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v9, v8, v12

    invoke-virtual {v6, v11, v7, v8}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI[Ljava/lang/Object;)V

    .line 749
    :cond_f
    iget-object v6, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->persistence:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    invoke-direct {p0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->getReceivedPersistenceKey(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)Ljava/lang/String;

    move-result-object v7

    check-cast p1, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;

    .end local p1
    invoke-interface {v6, v7, p1}, Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;->put(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttPersistable;)V

    .line 750
    iget-object v6, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->inboundQoS2:Ljava/util/Hashtable;

    new-instance v7, Ljava/lang/Integer;

    invoke-virtual {v3}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->getMessageId()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6, v7, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 751
    new-instance v6, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPubRec;

    invoke-direct {v6, v3}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPubRec;-><init>(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;)V

    invoke-virtual {p0, v6}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->send(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;

    goto/16 :goto_0

    .line 754
    .end local v3           #send:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;
    .restart local p1
    :cond_10
    instance-of v6, p1, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPubRel;

    if-eqz v6, :cond_1

    .line 755
    iget-object v6, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->inboundQoS2:Ljava/util/Hashtable;

    new-instance v7, Ljava/lang/Integer;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;->getMessageId()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;

    .line 756
    .local v4, sendMsg:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;
    if-eqz v4, :cond_11

    .line 757
    iget-object v6, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->callback:Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;

    if-eqz v6, :cond_1

    .line 758
    iget-object v6, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->callback:Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;

    invoke-virtual {v6, v4}, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->messageArrived(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;)V

    goto/16 :goto_0

    .line 762
    :cond_11
    new-instance v1, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPubComp;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;->getMessageId()I

    move-result v6

    invoke-direct {v1, v6}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPubComp;-><init>(I)V

    .line 763
    .local v1, pubComp:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPubComp;
    invoke-virtual {p0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->send(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;

    goto/16 :goto_0

    .line 737
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected notifySent(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)V
    .locals 6
    .parameter "message"

    .prologue
    const/4 v5, 0x1

    .line 604
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->lastOutboundActivity:J

    .line 605
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->isOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 607
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/16 v2, 0x271

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v5, v2, v3}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI[Ljava/lang/Object;)V

    .line 610
    :cond_0
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->tokenStore:Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;

    invoke-virtual {v1, p1}, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->getToken(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;

    move-result-object v0

    .line 611
    .local v0, token:Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;
    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;->notifySent()V

    .line 612
    instance-of v1, p1, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;

    if-eqz v1, :cond_1

    move-object v1, p1

    .line 613
    check-cast v1, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->getMessage()Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->getQos()I

    move-result v1

    if-nez v1, :cond_1

    .line 616
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;->notifyReceived(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)V

    .line 617
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->tokenStore:Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;

    invoke-virtual {v1, p1}, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->removeToken(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;

    .line 618
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->callback:Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;

    invoke-virtual {v1, v0}, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->deliveryComplete(Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;)V

    .line 619
    invoke-direct {p0}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->decrementInFlight()V

    .line 620
    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;->getMessageId()I

    move-result v1

    invoke-direct {p0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->releaseMessageId(I)V

    .line 624
    :cond_1
    instance-of v1, p1, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttDisconnect;

    if-eqz v1, :cond_2

    .line 625
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->tokenStore:Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;

    invoke-virtual {v1, p1}, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->removeToken(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;

    .line 627
    :cond_2
    return-void
.end method

.method public quiesce(J)V
    .locals 8
    .parameter "timeout"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 909
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/16 v1, 0x27d

    new-array v2, v4, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/Long;

    invoke-direct {v3, p1, p2}, Ljava/lang/Long;-><init>(J)V

    aput-object v3, v2, v5

    invoke-virtual {v0, v4, v1, v2}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI[Ljava/lang/Object;)V

    .line 910
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_3

    .line 911
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->queueLock:Ljava/lang/Object;

    monitor-enter v1

    .line 912
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->quiescing:Z

    .line 913
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 915
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->callback:Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->quiesce()V

    .line 916
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->queueLock:Ljava/lang/Object;

    monitor-enter v1

    .line 918
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/4 v2, 0x1

    const/16 v3, 0x27e

    invoke-virtual {v0, v2, v3}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI)V

    .line 919
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->queueLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 920
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 922
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->quiesceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 924
    :try_start_2
    iget v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->actualInFlight:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pendingFlows:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->inFlightPubRels:I

    if-lez v0, :cond_2

    .line 925
    :cond_0
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->isOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 927
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/4 v2, 0x1

    const/16 v3, 0x27f

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/Integer;

    iget v7, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->actualInFlight:I

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/Integer;

    iget-object v7, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pendingFlows:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v4, v5

    const/4 v5, 0x2

    new-instance v6, Ljava/lang/Integer;

    iget v7, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->inFlightPubRels:I

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI[Ljava/lang/Object;)V

    .line 931
    :cond_1
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->quiesceLock:Ljava/lang/Object;

    invoke-virtual {v0, p1, p2}, Ljava/lang/Object;->wait(J)V

    .line 933
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/4 v2, 0x1

    const/16 v3, 0x280

    invoke-virtual {v0, v2, v3}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 939
    :cond_2
    :goto_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 941
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->queueLock:Ljava/lang/Object;

    monitor-enter v1

    .line 942
    :try_start_4
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pendingMessages:Ljava/util/Vector;

    invoke-direct {p0, v0}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->cleanUpQueue(Ljava/util/Vector;)V

    .line 943
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pendingFlows:Ljava/util/Vector;

    invoke-direct {p0, v0}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->cleanUpQueue(Ljava/util/Vector;)V

    .line 944
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->quiescing:Z

    .line 945
    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->actualInFlight:I

    .line 946
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 948
    :cond_3
    return-void

    .line 913
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    .line 920
    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0

    .line 939
    :catchall_2
    move-exception v0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0

    .line 946
    :catchall_3
    move-exception v0

    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v0

    .line 936
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected restoreState()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    .line 255
    iget-object v10, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->persistence:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    invoke-interface {v10}, Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;->keys()Ljava/util/Enumeration;

    move-result-object v4

    .line 258
    .local v4, messageKeys:Ljava/util/Enumeration;
    iget v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->nextMsgId:I

    .line 259
    .local v1, highestMsgId:I
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    .line 261
    .local v5, orphanedPubRels:Ljava/util/Vector;
    iget-object v10, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/4 v11, 0x1

    const/16 v12, 0x258

    invoke-virtual {v10, v11, v12}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI)V

    .line 262
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 263
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 264
    .local v2, key:Ljava/lang/String;
    iget-object v10, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->persistence:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    invoke-interface {v10, v2}, Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;->get(Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/MqttPersistable;

    move-result-object v6

    .line 265
    .local v6, persistable:Lorg/eclipse/paho/client/mqttv3/MqttPersistable;
    invoke-direct {p0, v2, v6}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->restoreMessage(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttPersistable;)Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;

    move-result-object v3

    .line 266
    .local v3, message:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;
    if-eqz v3, :cond_0

    .line 267
    const-string v10, "r-"

    invoke-virtual {v2, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 269
    iget-object v10, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/4 v11, 0x1

    const/16 v12, 0x25c

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v2, v13, v14

    const/4 v14, 0x1

    aput-object v3, v13, v14

    invoke-virtual {v10, v11, v12, v13}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI[Ljava/lang/Object;)V

    .line 272
    iget-object v10, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->inboundQoS2:Ljava/util/Hashtable;

    new-instance v11, Ljava/lang/Integer;

    invoke-virtual {v3}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;->getMessageId()I

    move-result v12

    invoke-direct {v11, v12}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v10, v11, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 274
    :cond_1
    const-string v10, "s-"

    invoke-virtual {v2, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    move-object v9, v3

    .line 275
    check-cast v9, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;

    .line 276
    .local v9, sendMessage:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;
    invoke-virtual {v9}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->getMessageId()I

    move-result v10

    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 277
    iget-object v10, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->persistence:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    invoke-direct {p0, v9}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->getSendConfirmPersistenceKey(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 278
    iget-object v10, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->persistence:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    invoke-direct {p0, v9}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->getSendConfirmPersistenceKey(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;->get(Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/MqttPersistable;

    move-result-object v7

    .line 280
    .local v7, persistedConfirm:Lorg/eclipse/paho/client/mqttv3/MqttPersistable;
    invoke-direct {p0, v2, v7}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->restoreMessage(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttPersistable;)Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;

    move-result-object v0

    check-cast v0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPubRel;

    .line 281
    .local v0, confirmMessage:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPubRel;
    if-eqz v0, :cond_2

    .line 283
    iget-object v10, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/4 v11, 0x1

    const/16 v12, 0x25d

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v2, v13, v14

    const/4 v14, 0x1

    aput-object v3, v13, v14

    invoke-virtual {v10, v11, v12, v13}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI[Ljava/lang/Object;)V

    .line 284
    iget-object v10, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->outboundQoS2:Ljava/util/Hashtable;

    new-instance v11, Ljava/lang/Integer;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPubRel;->getMessageId()I

    move-result v12

    invoke-direct {v11, v12}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v10, v11, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    .end local v0           #confirmMessage:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPubRel;
    .end local v7           #persistedConfirm:Lorg/eclipse/paho/client/mqttv3/MqttPersistable;
    :goto_1
    iget-object v10, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->tokenStore:Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;

    invoke-virtual {v10, v9}, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->restoreToken(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;)Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;

    .line 304
    iget-object v10, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->inUseMsgIds:Ljava/util/Hashtable;

    new-instance v11, Ljava/lang/Integer;

    invoke-virtual {v9}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->getMessageId()I

    move-result v12

    invoke-direct {v11, v12}, Ljava/lang/Integer;-><init>(I)V

    new-instance v12, Ljava/lang/Integer;

    invoke-virtual {v9}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->getMessageId()I

    move-result v13

    invoke-direct {v12, v13}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v10, v11, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 287
    .restart local v0       #confirmMessage:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPubRel;
    .restart local v7       #persistedConfirm:Lorg/eclipse/paho/client/mqttv3/MqttPersistable;
    :cond_2
    iget-object v10, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/4 v11, 0x1

    const/16 v12, 0x25e

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v2, v13, v14

    const/4 v14, 0x1

    aput-object v3, v13, v14

    invoke-virtual {v10, v11, v12, v13}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI[Ljava/lang/Object;)V

    goto :goto_1

    .line 293
    .end local v0           #confirmMessage:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPubRel;
    .end local v7           #persistedConfirm:Lorg/eclipse/paho/client/mqttv3/MqttPersistable;
    :cond_3
    invoke-virtual {v9}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->getMessage()Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    move-result-object v10

    invoke-virtual {v10}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->getQos()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_4

    .line 295
    iget-object v10, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/4 v11, 0x1

    const/16 v12, 0x25f

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v2, v13, v14

    const/4 v14, 0x1

    aput-object v3, v13, v14

    invoke-virtual {v10, v11, v12, v13}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI[Ljava/lang/Object;)V

    .line 296
    iget-object v10, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->outboundQoS2:Ljava/util/Hashtable;

    new-instance v11, Ljava/lang/Integer;

    invoke-virtual {v9}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->getMessageId()I

    move-result v12

    invoke-direct {v11, v12}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v10, v11, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 299
    :cond_4
    iget-object v10, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/4 v11, 0x1

    const/16 v12, 0x260

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v2, v13, v14

    const/4 v14, 0x1

    aput-object v3, v13, v14

    invoke-virtual {v10, v11, v12, v13}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI[Ljava/lang/Object;)V

    .line 300
    iget-object v10, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->outboundQoS1:Ljava/util/Hashtable;

    new-instance v11, Ljava/lang/Integer;

    invoke-virtual {v9}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->getMessageId()I

    move-result v12

    invoke-direct {v11, v12}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v10, v11, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 306
    .end local v9           #sendMessage:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;
    :cond_5
    const-string v10, "sc-"

    invoke-virtual {v2, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    move-object v8, v3

    .line 307
    check-cast v8, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPubRel;

    .line 308
    .local v8, pubRelMessage:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPubRel;
    iget-object v10, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->persistence:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    invoke-direct {p0, v8}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->getSendPersistenceKey(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 309
    invoke-virtual {v5, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 315
    .end local v2           #key:Ljava/lang/String;
    .end local v3           #message:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;
    .end local v6           #persistable:Lorg/eclipse/paho/client/mqttv3/MqttPersistable;
    .end local v8           #pubRelMessage:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPubRel;
    :cond_6
    invoke-virtual {v5}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v4

    .line 316
    :goto_2
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 317
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 319
    .restart local v2       #key:Ljava/lang/String;
    iget-object v10, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/4 v11, 0x1

    const/16 v12, 0x261

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v2, v13, v14

    invoke-virtual {v10, v11, v12, v13}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI[Ljava/lang/Object;)V

    .line 320
    iget-object v10, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->persistence:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    invoke-interface {v10, v2}, Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;->remove(Ljava/lang/String;)V

    goto :goto_2

    .line 323
    .end local v2           #key:Ljava/lang/String;
    :cond_7
    iput v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->nextMsgId:I

    .line 324
    return-void
.end method

.method public send(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;
    .locals 11
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x7d66

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 368
    const/4 v2, 0x0

    .line 369
    .local v2, token:Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;
    instance-of v3, p1, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnect;

    if-eqz v3, :cond_0

    .line 370
    iput-boolean v9, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->sentConnect:Z

    .line 371
    iput-boolean v9, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->connectFailed:Z

    .line 373
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;->isMessageIdRequired()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;->getMessageId()I

    move-result v3

    if-nez v3, :cond_1

    .line 374
    invoke-direct {p0}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->getNextMessageId()I

    move-result v3

    invoke-virtual {p1, v3}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;->setMessageId(I)V

    .line 376
    :cond_1
    instance-of v3, p1, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;

    if-eqz v3, :cond_5

    .line 377
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->queueLock:Ljava/lang/Object;

    monitor-enter v4

    .line 378
    :try_start_0
    iget-boolean v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->quiescing:Z

    if-eqz v3, :cond_3

    .line 379
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    invoke-virtual {v3}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->isOn()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 381
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/4 v5, 0x1

    const/16 v6, 0x265

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-virtual {v3, v5, v6, v7}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI[Ljava/lang/Object;)V

    .line 383
    :cond_2
    const/16 v3, 0x7d66

    invoke-static {v3}, Lorg/eclipse/paho/client/mqttv3/internal/ExceptionHelper;->createMqttException(I)Lorg/eclipse/paho/client/mqttv3/MqttException;

    move-result-object v3

    throw v3

    .line 404
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 385
    :cond_3
    :try_start_1
    move-object v0, p1

    check-cast v0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;

    move-object v3, v0

    invoke-virtual {v3}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->getMessage()Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    move-result-object v1

    .line 386
    .local v1, innerMessage:Lorg/eclipse/paho/client/mqttv3/MqttMessage;
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    invoke-virtual {v3}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->isOn()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 388
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/4 v5, 0x1

    const/16 v6, 0x264

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/Integer;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;->getMessageId()I

    move-result v10

    invoke-direct {v9, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v9, v7, v8

    const/4 v8, 0x1

    new-instance v9, Ljava/lang/Integer;

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->getQos()I

    move-result v10

    invoke-direct {v9, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v9, v7, v8

    const/4 v8, 0x2

    aput-object p1, v7, v8

    invoke-virtual {v3, v5, v6, v7}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI[Ljava/lang/Object;)V

    .line 390
    :cond_4
    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->getQos()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 400
    :goto_0
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pendingMessages:Ljava/util/Vector;

    invoke-virtual {v3, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 401
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->tokenStore:Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;

    invoke-virtual {v3, p1}, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->saveToken(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;

    move-result-object v2

    .line 403
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->queueLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 404
    monitor-exit v4

    .line 455
    .end local v1           #innerMessage:Lorg/eclipse/paho/client/mqttv3/MqttMessage;
    :goto_1
    return-object v2

    .line 392
    .restart local v1       #innerMessage:Lorg/eclipse/paho/client/mqttv3/MqttMessage;
    :pswitch_0
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->outboundQoS2:Ljava/util/Hashtable;

    new-instance v5, Ljava/lang/Integer;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;->getMessageId()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v5, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->persistence:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    invoke-direct {p0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->getSendPersistenceKey(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)Ljava/lang/String;

    move-result-object v6

    move-object v0, p1

    check-cast v0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;

    move-object v3, v0

    invoke-interface {v5, v6, v3}, Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;->put(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttPersistable;)V

    goto :goto_0

    .line 396
    :pswitch_1
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->outboundQoS1:Ljava/util/Hashtable;

    new-instance v5, Ljava/lang/Integer;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;->getMessageId()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v5, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->persistence:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    invoke-direct {p0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->getSendPersistenceKey(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)Ljava/lang/String;

    move-result-object v6

    move-object v0, p1

    check-cast v0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;

    move-object v3, v0

    invoke-interface {v5, v6, v3}, Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;->put(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttPersistable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 405
    .end local v1           #innerMessage:Lorg/eclipse/paho/client/mqttv3/MqttMessage;
    :cond_5
    instance-of v3, p1, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnect;

    if-eqz v3, :cond_6

    .line 406
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->queueLock:Ljava/lang/Object;

    monitor-enter v4

    .line 407
    :try_start_2
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pendingFlows:Ljava/util/Vector;

    const/4 v5, 0x0

    invoke-virtual {v3, p1, v5}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 408
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->tokenStore:Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;

    invoke-virtual {v3, p1}, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->saveToken(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;

    move-result-object v2

    .line 410
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->queueLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 411
    monitor-exit v4

    goto :goto_1

    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .line 413
    :cond_6
    iget-boolean v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->quiescing:Z

    if-eqz v3, :cond_9

    instance-of v3, p1, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttSubscribe;

    if-nez v3, :cond_7

    instance-of v3, p1, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttUnsubscribe;

    if-eqz v3, :cond_9

    .line 414
    :cond_7
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    invoke-virtual {v3}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->isOn()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 416
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/16 v4, 0x266

    new-array v5, v8, [Ljava/lang/Object;

    aput-object p1, v5, v9

    invoke-virtual {v3, v8, v4, v5}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI[Ljava/lang/Object;)V

    .line 418
    :cond_8
    invoke-static {v6}, Lorg/eclipse/paho/client/mqttv3/internal/ExceptionHelper;->createMqttException(I)Lorg/eclipse/paho/client/mqttv3/MqttException;

    move-result-object v3

    throw v3

    .line 421
    :cond_9
    instance-of v3, p1, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPingReq;

    if-eqz v3, :cond_d

    .line 422
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pingCommand:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;

    .line 439
    :cond_a
    :goto_2
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->queueLock:Ljava/lang/Object;

    monitor-enter v4

    .line 440
    :try_start_3
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pendingFlows:Ljava/util/Vector;

    invoke-virtual {v3, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 441
    instance-of v3, p1, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttAck;

    if-nez v3, :cond_b

    .line 442
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->tokenStore:Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;

    invoke-virtual {v3, p1}, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->saveToken(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;

    move-result-object v2

    .line 444
    :cond_b
    instance-of v3, p1, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPubRel;

    if-eqz v3, :cond_c

    .line 445
    iget v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->inFlightPubRels:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->inFlightPubRels:I

    .line 446
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    invoke-virtual {v3}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->isOn()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 448
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/4 v5, 0x1

    const/16 v6, 0x269

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/Integer;

    iget v10, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->inFlightPubRels:I

    invoke-direct {v9, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v9, v7, v8

    invoke-virtual {v3, v5, v6, v7}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI[Ljava/lang/Object;)V

    .line 451
    :cond_c
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->queueLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 452
    monitor-exit v4

    goto/16 :goto_1

    :catchall_2
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v3

    .line 424
    :cond_d
    instance-of v3, p1, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPubRel;

    if-eqz v3, :cond_f

    .line 425
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    invoke-virtual {v3}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->isOn()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 427
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/16 v4, 0x267

    new-array v5, v8, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/Integer;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;->getMessageId()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v5, v9

    invoke-virtual {v3, v8, v4, v5}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI[Ljava/lang/Object;)V

    .line 429
    :cond_e
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->outboundQoS2:Ljava/util/Hashtable;

    new-instance v4, Ljava/lang/Integer;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;->getMessageId()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->persistence:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    invoke-direct {p0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->getSendConfirmPersistenceKey(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)Ljava/lang/String;

    move-result-object v5

    move-object v3, p1

    check-cast v3, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPubRel;

    invoke-interface {v4, v5, v3}, Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;->put(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttPersistable;)V

    goto :goto_2

    .line 432
    :cond_f
    instance-of v3, p1, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPubComp;

    if-eqz v3, :cond_a

    .line 433
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    invoke-virtual {v3}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->isOn()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 435
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/16 v4, 0x268

    new-array v5, v8, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/Integer;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;->getMessageId()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v5, v9

    invoke-virtual {v3, v8, v4, v5}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI[Ljava/lang/Object;)V

    .line 437
    :cond_10
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->persistence:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    invoke-direct {p0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->getReceivedPersistenceKey(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;->remove(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 390
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected setCleanSession(Z)V
    .locals 0
    .parameter "cleanSession"

    .prologue
    .line 132
    iput-boolean p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->cleanSession:Z

    .line 133
    return-void
.end method

.method public setKeepAliveInterval(J)V
    .locals 0
    .parameter "interval"

    .prologue
    .line 596
    iput-wide p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->keepAlive:J

    .line 597
    return-void
.end method

.method protected setKeepAliveSecs(J)V
    .locals 2
    .parameter "keepAliveSecs"

    .prologue
    .line 129
    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p1

    iput-wide v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->keepAlive:J

    .line 130
    return-void
.end method

.method protected undo(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;)V
    .locals 9
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 464
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->queueLock:Ljava/lang/Object;

    monitor-enter v1

    .line 465
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->isOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/4 v2, 0x1

    const/16 v3, 0x26a

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/Integer;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->getMessage()Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    move-result-object v7

    invoke-virtual {v7}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->getQos()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/Integer;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->getMessageId()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI[Ljava/lang/Object;)V

    .line 469
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->getMessage()Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->getQos()I

    move-result v0

    if-ne v0, v8, :cond_1

    .line 470
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->outboundQoS1:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->getMessageId()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    :goto_0
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->pendingMessages:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 475
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->persistence:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    invoke-direct {p0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->getSendPersistenceKey(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;->remove(Ljava/lang/String;)V

    .line 476
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->tokenStore:Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;

    invoke-virtual {v0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->removeToken(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;

    .line 477
    monitor-exit v1

    .line 478
    return-void

    .line 472
    :cond_1
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->outboundQoS2:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->getMessageId()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 477
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
