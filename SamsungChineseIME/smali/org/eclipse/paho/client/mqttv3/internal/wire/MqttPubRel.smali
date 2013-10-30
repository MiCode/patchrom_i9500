.class public Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPubRel;
.super Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPersistableWireMessage;
.source "MqttPubRel.java"


# direct methods
.method public constructor <init>(B[B)V
    .locals 3
    .parameter "info"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    const/4 v2, 0x6

    invoke-direct {p0, v2}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPersistableWireMessage;-><init>(B)V

    .line 34
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 35
    .local v0, bais:Ljava/io/ByteArrayInputStream;
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 36
    .local v1, dis:Ljava/io/DataInputStream;
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    iput v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPubRel;->msgId:I

    .line 37
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    .line 38
    return-void
.end method

.method public constructor <init>(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPubRec;)V
    .locals 1
    .parameter "pubRec"

    .prologue
    .line 28
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPersistableWireMessage;-><init>(B)V

    .line 29
    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPubRec;->getMessageId()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPubRel;->setMessageId(I)V

    .line 30
    return-void
.end method


# virtual methods
.method protected getMessageInfo()B
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPubRel;->duplicate:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    or-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getVariableHeader()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPubRel;->encodeMessageId()[B

    move-result-object v0

    return-object v0
.end method
