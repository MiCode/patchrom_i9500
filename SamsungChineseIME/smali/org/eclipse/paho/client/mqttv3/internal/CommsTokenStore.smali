.class public Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;
.super Ljava/lang/Object;
.source "CommsTokenStore.java"


# instance fields
.field private connectToken:Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;

.field private disconnectToken:Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;

.field private noMoreResponses:Z

.field private noMoreResponsesException:Lorg/eclipse/paho/client/mqttv3/MqttException;

.field private pingToken:Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;

.field private tokens:Ljava/util/Hashtable;

.field private trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;


# direct methods
.method public constructor <init>(Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;)V
    .locals 1
    .parameter "trace"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->noMoreResponsesException:Lorg/eclipse/paho/client/mqttv3/MqttException;

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->noMoreResponses:Z

    .line 54
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->tokens:Ljava/util/Hashtable;

    .line 55
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    .line 56
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;

    invoke-direct {v0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;-><init>(Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;)V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->pingToken:Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;

    .line 57
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;

    invoke-direct {v0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;-><init>(Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;)V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->connectToken:Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;

    .line 58
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;

    invoke-direct {v0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;-><init>(Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;)V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->disconnectToken:Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;

    .line 59
    return-void
.end method

.method private getTokenForAck(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;
    .locals 4
    .parameter "message"

    .prologue
    .line 83
    instance-of v1, p1, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPingResp;

    if-eqz v1, :cond_0

    .line 84
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->pingToken:Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;

    .line 92
    .local v0, token:Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;
    :goto_0
    return-object v0

    .line 86
    .end local v0           #token:Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;
    :cond_0
    instance-of v1, p1, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnack;

    if-eqz v1, :cond_1

    .line 87
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->connectToken:Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;

    .restart local v0       #token:Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;
    goto :goto_0

    .line 90
    .end local v0           #token:Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;
    :cond_1
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->tokens:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;->getMessageId()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;

    .restart local v0       #token:Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;
    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    .line 250
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/4 v1, 0x1

    const/16 v2, 0x131

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI)V

    .line 251
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->tokens:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 252
    return-void
.end method

.method public getOutstandingTokens()[Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;
    .locals 6

    .prologue
    .line 223
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 224
    .local v2, list:Ljava/util/Vector;
    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->tokens:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 226
    .local v0, enumeration:Ljava/util/Enumeration;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 227
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;

    .line 228
    .local v4, token:Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;
    if-eqz v4, :cond_0

    .line 229
    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->pingToken:Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->connectToken:Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->disconnectToken:Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 232
    invoke-virtual {v2, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 236
    .end local v4           #token:Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;
    :cond_1
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v5

    new-array v3, v5, [Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;

    .line 237
    .local v3, result:[Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 238
    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;

    aput-object v5, v3, v1

    .line 237
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 240
    :cond_2
    return-object v3
.end method

.method public getToken(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;
    .locals 2
    .parameter "message"

    .prologue
    .line 63
    instance-of v1, p1, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttAck;

    if-eqz v1, :cond_0

    .line 64
    check-cast p1, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttAck;

    .end local p1
    invoke-direct {p0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->getTokenForAck(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;

    move-result-object v1

    .line 78
    :goto_0
    return-object v1

    .line 66
    .restart local p1
    :cond_0
    instance-of v1, p1, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPingReq;

    if-eqz v1, :cond_1

    .line 67
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->pingToken:Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;

    .line 78
    :goto_1
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->tokens:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;

    goto :goto_0

    .line 69
    :cond_1
    instance-of v1, p1, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnect;

    if-eqz v1, :cond_2

    .line 70
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->connectToken:Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;

    .local v0, key:Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;
    goto :goto_1

    .line 72
    .end local v0           #key:Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;
    :cond_2
    instance-of v1, p1, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttDisconnect;

    if-eqz v1, :cond_3

    .line 73
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->disconnectToken:Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;

    .restart local v0       #key:Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;
    goto :goto_1

    .line 76
    .end local v0           #key:Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;
    :cond_3
    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;->getMessageId()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .local v0, key:Ljava/lang/Integer;
    goto :goto_1
.end method

.method protected noMoreResponses(Lorg/eclipse/paho/client/mqttv3/MqttException;)V
    .locals 7
    .parameter "reason"

    .prologue
    const/4 v6, 0x1

    .line 205
    iput-boolean v6, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->noMoreResponses:Z

    .line 206
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->noMoreResponsesException:Lorg/eclipse/paho/client/mqttv3/MqttException;

    .line 207
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->tokens:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 210
    .local v1, enumeration:Ljava/util/Enumeration;
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/16 v4, 0x130

    const/4 v5, 0x0

    invoke-virtual {v3, v6, v4, v5, p1}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 212
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 213
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    .line 214
    .local v2, token:Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 215
    monitor-enter v2

    .line 216
    :try_start_0
    move-object v0, v2

    check-cast v0, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;

    move-object v3, v0

    invoke-virtual {v3, p1}, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;->notifyException(Lorg/eclipse/paho/client/mqttv3/MqttException;)V

    .line 217
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 220
    .end local v2           #token:Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method public removeToken(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;
    .locals 6
    .parameter "message"

    .prologue
    const/4 v5, 0x1

    .line 97
    instance-of v1, p1, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnack;

    if-eqz v1, :cond_1

    .line 98
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->connectToken:Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;

    .line 105
    :goto_0
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->isOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/16 v2, 0x12d

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    aput-object v0, v3, v5

    invoke-virtual {v1, v5, v2, v3}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI[Ljava/lang/Object;)V

    .line 110
    :cond_0
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->tokens:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;

    return-object v1

    .line 99
    :cond_1
    instance-of v1, p1, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttDisconnect;

    if-eqz v1, :cond_2

    .line 100
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->disconnectToken:Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;

    .local v0, key:Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;
    goto :goto_0

    .line 102
    .end local v0           #key:Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;
    :cond_2
    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;->getMessageId()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .local v0, key:Ljava/lang/Integer;
    goto :goto_0
.end method

.method protected responseReceived(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttAck;)V
    .locals 1
    .parameter "ack"

    .prologue
    .line 187
    invoke-direct {p0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->getTokenForAck(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;

    move-result-object v0

    .line 188
    .local v0, token:Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;
    invoke-virtual {p0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->removeToken(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;

    .line 190
    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {v0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;->notifyReceived(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)V

    .line 198
    :cond_0
    return-void
.end method

.method protected restoreToken(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;)Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;
    .locals 8
    .parameter "message"

    .prologue
    const/4 v4, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 120
    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->getMessageId()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 121
    .local v0, key:Ljava/lang/Integer;
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->tokens:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 122
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->tokens:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;

    .line 123
    .local v1, token:Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    invoke-virtual {v2}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->isOn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 125
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/16 v3, 0x12e

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v6

    aput-object v0, v4, v5

    aput-object v1, v4, v7

    invoke-virtual {v2, v5, v3, v4}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI[Ljava/lang/Object;)V

    .line 135
    :cond_0
    :goto_0
    return-object v1

    .line 128
    .end local v1           #token:Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;
    :cond_1
    new-instance v1, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    invoke-direct {v1, v2, p1}, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;-><init>(Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;)V

    .line 129
    .restart local v1       #token:Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->tokens:Ljava/util/Hashtable;

    invoke-virtual {v2, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    invoke-virtual {v2}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->isOn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 132
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/16 v3, 0x12f

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v6

    aput-object v0, v4, v5

    aput-object v1, v4, v7

    invoke-virtual {v2, v5, v3, v4}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected saveToken(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;
    .locals 8
    .parameter "message"

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 141
    instance-of v2, p1, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPingReq;

    if-eqz v2, :cond_2

    .line 142
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->pingToken:Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;

    .line 143
    .local v1, token:Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;
    move-object v0, v1

    .line 170
    :goto_0
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    invoke-virtual {v2}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->isOn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 172
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/16 v3, 0x12c

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    aput-object v0, v4, v7

    const/4 v5, 0x2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v7, v3, v4}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI[Ljava/lang/Object;)V

    .line 174
    :cond_0
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->tokens:Ljava/util/Hashtable;

    invoke-virtual {v2, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    iget-boolean v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->noMoreResponses:Z

    if-eqz v2, :cond_1

    .line 176
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->noMoreResponsesException:Lorg/eclipse/paho/client/mqttv3/MqttException;

    invoke-virtual {v1, v2}, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;->notifyException(Lorg/eclipse/paho/client/mqttv3/MqttException;)V

    .line 178
    :cond_1
    return-object v1

    .line 145
    .end local v1           #token:Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;
    :cond_2
    instance-of v2, p1, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnect;

    if-eqz v2, :cond_3

    .line 146
    iput-boolean v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->noMoreResponses:Z

    .line 147
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->noMoreResponsesException:Lorg/eclipse/paho/client/mqttv3/MqttException;

    .line 148
    new-instance v2, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;

    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    invoke-direct {v2, v3}, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;-><init>(Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;)V

    iput-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->connectToken:Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;

    .line 149
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->connectToken:Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;

    .line 150
    .restart local v1       #token:Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;
    move-object v0, v1

    .local v0, key:Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;
    goto :goto_0

    .line 152
    .end local v0           #key:Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;
    .end local v1           #token:Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;
    :cond_3
    instance-of v2, p1, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttDisconnect;

    if-eqz v2, :cond_4

    .line 153
    new-instance v2, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;

    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    invoke-direct {v2, v3}, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;-><init>(Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;)V

    iput-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->disconnectToken:Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;

    .line 154
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->disconnectToken:Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;

    .line 155
    .restart local v1       #token:Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;
    move-object v0, v1

    .restart local v0       #key:Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;
    goto :goto_0

    .line 157
    .end local v0           #key:Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;
    .end local v1           #token:Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;
    :cond_4
    instance-of v2, p1, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPubRel;

    if-eqz v2, :cond_5

    .line 159
    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;->getMessageId()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 160
    .local v0, key:Ljava/lang/Integer;
    invoke-virtual {p0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->getToken(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;

    move-result-object v1

    .restart local v1       #token:Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;
    goto :goto_0

    .line 162
    .end local v0           #key:Ljava/lang/Integer;
    .end local v1           #token:Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;
    :cond_5
    instance-of v2, p1, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;

    if-eqz v2, :cond_6

    .line 163
    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;->getMessageId()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 164
    .restart local v0       #key:Ljava/lang/Integer;
    new-instance v1, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;

    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    move-object v2, p1

    check-cast v2, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;

    invoke-direct {v1, v3, v2}, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;-><init>(Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;)V

    .restart local v1       #token:Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;
    goto :goto_0

    .line 167
    .end local v0           #key:Ljava/lang/Integer;
    .end local v1           #token:Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;
    :cond_6
    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;->getMessageId()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 168
    .restart local v0       #key:Ljava/lang/Integer;
    new-instance v1, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    invoke-direct {v1, v2}, Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;-><init>(Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;)V

    .restart local v1       #token:Lorg/eclipse/paho/client/mqttv3/internal/MqttDeliveryTokenImpl;
    goto/16 :goto_0
.end method
