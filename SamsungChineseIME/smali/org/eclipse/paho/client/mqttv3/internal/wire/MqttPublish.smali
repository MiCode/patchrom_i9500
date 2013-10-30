.class public Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;
.super Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPersistableWireMessage;
.source "MqttPublish.java"


# static fields
.field public static final DESTINATION_TYPE_TOPIC:B


# instance fields
.field private encodedPayload:[B

.field private message:Lorg/eclipse/paho/client/mqttv3/MqttMessage;

.field private topicName:Ljava/lang/String;


# direct methods
.method public constructor <init>(B[B)V
    .locals 7
    .parameter "info"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 47
    const/4 v4, 0x3

    invoke-direct {p0, v4}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPersistableWireMessage;-><init>(B)V

    .line 33
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->encodedPayload:[B

    .line 48
    new-instance v4, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttReceivedMessage;

    invoke-direct {v4}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttReceivedMessage;-><init>()V

    iput-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->message:Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    .line 49
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->message:Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    shr-int/lit8 v5, p1, 0x1

    and-int/lit8 v5, v5, 0x3

    invoke-virtual {v4, v5}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->setQos(I)V

    .line 50
    and-int/lit8 v4, p1, 0x1

    if-ne v4, v6, :cond_0

    .line 51
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->message:Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    invoke-virtual {v4, v6}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->setRetained(Z)V

    .line 53
    :cond_0
    and-int/lit8 v4, p1, 0x8

    const/16 v5, 0x8

    if-ne v4, v5, :cond_1

    .line 54
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->message:Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    check-cast v4, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttReceivedMessage;

    invoke-virtual {v4, v6}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttReceivedMessage;->setDuplicate(Z)V

    .line 57
    :cond_1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 58
    .local v0, bais:Ljava/io/ByteArrayInputStream;
    new-instance v1, Lorg/eclipse/paho/client/mqttv3/internal/wire/CountingInputStream;

    invoke-direct {v1, v0}, Lorg/eclipse/paho/client/mqttv3/internal/wire/CountingInputStream;-><init>(Ljava/io/InputStream;)V

    .line 59
    .local v1, counter:Lorg/eclipse/paho/client/mqttv3/internal/wire/CountingInputStream;
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 60
    .local v2, dis:Ljava/io/DataInputStream;
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->topicName:Ljava/lang/String;

    .line 61
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->message:Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    invoke-virtual {v4}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->getQos()I

    move-result v4

    if-lez v4, :cond_2

    .line 62
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v4

    iput v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->msgId:I

    .line 64
    :cond_2
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    .line 65
    array-length v4, p2

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/internal/wire/CountingInputStream;->getCounter()I

    move-result v5

    sub-int/2addr v4, v5

    new-array v3, v4, [B

    .line 66
    .local v3, payload:[B
    invoke-virtual {v2, v3}, Ljava/io/DataInputStream;->readFully([B)V

    .line 67
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->message:Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    invoke-virtual {v4, v3}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->setPayload([B)V

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttMessage;)V
    .locals 1
    .parameter "name"
    .parameter "message"

    .prologue
    .line 36
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPersistableWireMessage;-><init>(B)V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->encodedPayload:[B

    .line 37
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->topicName:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->message:Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    .line 39
    return-void
.end method

.method protected static encodePayload(Lorg/eclipse/paho/client/mqttv3/MqttMessage;)[B
    .locals 1
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    .line 96
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->getPayload()[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getMessage()Lorg/eclipse/paho/client/mqttv3/MqttMessage;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->message:Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    return-object v0
.end method

.method protected getMessageInfo()B
    .locals 2

    .prologue
    .line 71
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->message:Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->getQos()I

    move-result v1

    shl-int/lit8 v1, v1, 0x1

    int-to-byte v0, v1

    .line 72
    .local v0, info:B
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->message:Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->isRetained()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    or-int/lit8 v1, v0, 0x1

    int-to-byte v0, v1

    .line 75
    :cond_0
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->message:Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->isDuplicate()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 76
    or-int/lit8 v1, v0, 0x8

    int-to-byte v0, v1

    .line 79
    :cond_1
    return v0
.end method

.method public getPayload()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->encodedPayload:[B

    if-nez v0, :cond_0

    .line 122
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->message:Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    invoke-static {v0}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->encodePayload(Lorg/eclipse/paho/client/mqttv3/MqttMessage;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->encodedPayload:[B

    .line 124
    :cond_0
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->encodedPayload:[B

    return-object v0
.end method

.method public getPayloadLength()I
    .locals 2

    .prologue
    .line 128
    const/4 v0, 0x0

    .line 130
    .local v0, length:I
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->getPayload()[B

    move-result-object v1

    array-length v0, v1
    :try_end_0
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :goto_0
    return v0

    .line 131
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getTopicName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->topicName:Ljava/lang/String;

    return-object v0
.end method

.method protected getVariableHeader()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    .line 145
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 146
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 147
    .local v1, dos:Ljava/io/DataOutputStream;
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->topicName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 148
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->message:Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    invoke-virtual {v3}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->getQos()I

    move-result v3

    if-lez v3, :cond_0

    .line 149
    iget v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->msgId:I

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 151
    :cond_0
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 152
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 154
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v1           #dos:Ljava/io/DataOutputStream;
    :catch_0
    move-exception v2

    .line 155
    .local v2, ex:Ljava/io/IOException;
    new-instance v3, Lorg/eclipse/paho/client/mqttv3/MqttException;

    invoke-direct {v3, v2}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public isMessageIdRequired()Z
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x1

    return v0
.end method

.method public setMessageId(I)V
    .locals 1
    .parameter "msgId"

    .prologue
    .line 137
    invoke-super {p0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPersistableWireMessage;->setMessageId(I)V

    .line 138
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->message:Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    instance-of v0, v0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttReceivedMessage;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;->message:Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    check-cast v0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttReceivedMessage;

    invoke-virtual {v0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttReceivedMessage;->setMessageId(I)V

    .line 141
    :cond_0
    return-void
.end method
