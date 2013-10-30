.class public Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnect;
.super Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;
.source "MqttConnect.java"


# instance fields
.field private cleanSession:Z

.field private clientId:Ljava/lang/String;

.field private keepAliveInterval:I

.field private password:[C

.field private userName:Ljava/lang/String;

.field private willDestination:Lorg/eclipse/paho/client/mqttv3/MqttTopic;

.field private willMessage:Lorg/eclipse/paho/client/mqttv3/MqttMessage;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZILjava/lang/String;[CLorg/eclipse/paho/client/mqttv3/MqttMessage;Lorg/eclipse/paho/client/mqttv3/MqttTopic;)V
    .locals 1
    .parameter "clientId"
    .parameter "cleanSession"
    .parameter "keepAliveInterval"
    .parameter "userName"
    .parameter "password"
    .parameter "willMessage"
    .parameter "willDestination"

    .prologue
    .line 43
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;-><init>(B)V

    .line 44
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnect;->clientId:Ljava/lang/String;

    .line 45
    iput-boolean p2, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnect;->cleanSession:Z

    .line 46
    iput p3, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnect;->keepAliveInterval:I

    .line 47
    iput-object p4, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnect;->userName:Ljava/lang/String;

    .line 48
    iput-object p5, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnect;->password:[C

    .line 49
    iput-object p6, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnect;->willMessage:Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    .line 50
    iput-object p7, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnect;->willDestination:Lorg/eclipse/paho/client/mqttv3/MqttTopic;

    .line 51
    return-void
.end method


# virtual methods
.method protected getMessageInfo()B
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public getPayload()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    .line 98
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 99
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 100
    .local v1, dos:Ljava/io/DataOutputStream;
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnect;->clientId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 102
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnect;->willMessage:Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    if-eqz v3, :cond_0

    .line 103
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnect;->willDestination:Lorg/eclipse/paho/client/mqttv3/MqttTopic;

    invoke-virtual {v3}, Lorg/eclipse/paho/client/mqttv3/MqttTopic;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 104
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnect;->willMessage:Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    invoke-virtual {v3}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->getPayload()[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 105
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnect;->willMessage:Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    invoke-virtual {v3}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->getPayload()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->write([B)V

    .line 108
    :cond_0
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnect;->userName:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 109
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnect;->userName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 110
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnect;->password:[C

    if-eqz v3, :cond_1

    .line 111
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnect;->password:[C

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 114
    :cond_1
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 115
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 117
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v1           #dos:Ljava/io/DataOutputStream;
    :catch_0
    move-exception v2

    .line 118
    .local v2, ex:Ljava/io/IOException;
    new-instance v3, Lorg/eclipse/paho/client/mqttv3/MqttException;

    invoke-direct {v3, v2}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method protected getVariableHeader()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    .line 63
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 64
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 65
    .local v2, dos:Ljava/io/DataOutputStream;
    const-string v4, "MQIsdp"

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 66
    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->write(I)V

    .line 67
    const/4 v1, 0x0

    .line 69
    .local v1, connectFlags:B
    iget-boolean v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnect;->cleanSession:Z

    if-eqz v4, :cond_0

    .line 70
    const/4 v4, 0x2

    int-to-byte v1, v4

    .line 73
    :cond_0
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnect;->willMessage:Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    if-eqz v4, :cond_1

    .line 74
    or-int/lit8 v4, v1, 0x4

    int-to-byte v1, v4

    .line 75
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnect;->willMessage:Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    invoke-virtual {v4}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->getQos()I

    move-result v4

    shl-int/lit8 v4, v4, 0x3

    or-int/2addr v4, v1

    int-to-byte v1, v4

    .line 76
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnect;->willMessage:Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    invoke-virtual {v4}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->isRetained()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 77
    or-int/lit8 v4, v1, 0x20

    int-to-byte v1, v4

    .line 81
    :cond_1
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnect;->userName:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 82
    or-int/lit16 v4, v1, 0x80

    int-to-byte v1, v4

    .line 83
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnect;->password:[C

    if-eqz v4, :cond_2

    .line 84
    or-int/lit8 v4, v1, 0x40

    int-to-byte v1, v4

    .line 87
    :cond_2
    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 88
    iget v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnect;->keepAliveInterval:I

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 89
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 90
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 91
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v1           #connectFlags:B
    .end local v2           #dos:Ljava/io/DataOutputStream;
    :catch_0
    move-exception v3

    .line 92
    .local v3, ioe:Ljava/io/IOException;
    new-instance v4, Lorg/eclipse/paho/client/mqttv3/MqttException;

    invoke-direct {v4, v3}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public isCleanSession()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnect;->cleanSession:Z

    return v0
.end method

.method public isMessageIdRequired()Z
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    return v0
.end method
