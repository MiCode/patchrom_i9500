.class public abstract Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPersistableWireMessage;
.super Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;
.source "MqttPersistableWireMessage.java"

# interfaces
.implements Lorg/eclipse/paho/client/mqttv3/MqttPersistable;


# direct methods
.method public constructor <init>(B)V
    .locals 0
    .parameter "type"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;-><init>(B)V

    .line 23
    return-void
.end method


# virtual methods
.method public getHeaderBytes()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;
        }
    .end annotation

    .prologue
    .line 27
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPersistableWireMessage;->getHeader()[B
    :try_end_0
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 29
    :catch_0
    move-exception v0

    .line 30
    .local v0, ex:Lorg/eclipse/paho/client/mqttv3/MqttException;
    new-instance v1, Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/MqttException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getHeaderLength()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPersistableWireMessage;->getHeaderBytes()[B

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getHeaderOffset()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;
        }
    .end annotation

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPersistableWireMessage;->getMessageId()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPayloadBytes()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;
        }
    .end annotation

    .prologue
    .line 48
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPersistableWireMessage;->getPayload()[B
    :try_end_0
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, ex:Lorg/eclipse/paho/client/mqttv3/MqttException;
    new-instance v1, Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/MqttException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getPayloadLength()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;
        }
    .end annotation

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public getPayloadOffset()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;
        }
    .end annotation

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method
