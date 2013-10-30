.class public Lorg/eclipse/paho/client/mqttv3/MqttMessage;
.super Ljava/lang/Object;
.source "MqttMessage.java"


# instance fields
.field private dup:Z

.field private mutable:Z

.field private payload:[B

.field private qos:I

.field private retained:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-boolean v1, p0, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->mutable:Z

    .line 22
    iput v1, p0, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->qos:I

    .line 23
    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->retained:Z

    .line 24
    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->dup:Z

    .line 47
    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->setPayload([B)V

    .line 48
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .parameter "payload"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-boolean v1, p0, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->mutable:Z

    .line 22
    iput v1, p0, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->qos:I

    .line 23
    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->retained:Z

    .line 24
    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->dup:Z

    .line 55
    invoke-virtual {p0, p1}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->setPayload([B)V

    .line 56
    return-void
.end method

.method protected static validateQos(I)V
    .locals 1
    .parameter "qos"

    .prologue
    .line 31
    if-ltz p0, :cond_0

    const/4 v0, 0x2

    if-le p0, v0, :cond_1

    .line 32
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 34
    :cond_1
    return-void
.end method


# virtual methods
.method protected checkMutable()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 184
    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->mutable:Z

    if-nez v0, :cond_0

    .line 185
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 187
    :cond_0
    return-void
.end method

.method public clearPayload()V
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->checkMutable()V

    .line 73
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->payload:[B

    .line 74
    return-void
.end method

.method public getPayload()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->payload:[B

    return-object v0
.end method

.method public getQos()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->qos:I

    return v0
.end method

.method public isDuplicate()Z
    .locals 1

    .prologue
    .line 200
    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->dup:Z

    return v0
.end method

.method public isRetained()Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->retained:Z

    return v0
.end method

.method protected setDuplicate(Z)V
    .locals 0
    .parameter "dup"

    .prologue
    .line 190
    iput-boolean p1, p0, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->dup:Z

    .line 191
    return-void
.end method

.method protected setMutable(Z)V
    .locals 0
    .parameter "mutable"

    .prologue
    .line 180
    iput-boolean p1, p0, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->mutable:Z

    .line 181
    return-void
.end method

.method public setPayload([B)V
    .locals 0
    .parameter "payload"

    .prologue
    .line 83
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->checkMutable()V

    .line 84
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->payload:[B

    .line 85
    return-void
.end method

.method public setQos(I)V
    .locals 0
    .parameter "qos"

    .prologue
    .line 160
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->checkMutable()V

    .line 161
    invoke-static {p1}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->validateQos(I)V

    .line 162
    iput p1, p0, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->qos:I

    .line 163
    return-void
.end method

.method public setRetained(Z)V
    .locals 0
    .parameter "retained"

    .prologue
    .line 110
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->checkMutable()V

    .line 111
    iput-boolean p1, p0, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->retained:Z

    .line 112
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 170
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->payload:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method
