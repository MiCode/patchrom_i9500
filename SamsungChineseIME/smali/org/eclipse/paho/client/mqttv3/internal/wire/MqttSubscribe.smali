.class public Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttSubscribe;
.super Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;
.source "MqttSubscribe.java"


# instance fields
.field private names:[Ljava/lang/String;

.field private qos:[I


# direct methods
.method public constructor <init>([Ljava/lang/String;[I)V
    .locals 1
    .parameter "names"
    .parameter "qos"

    .prologue
    .line 32
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;-><init>(B)V

    .line 33
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttSubscribe;->names:[Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttSubscribe;->qos:[I

    .line 35
    return-void
.end method


# virtual methods
.method protected getMessageInfo()B
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttSubscribe;->duplicate:Z

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

.method public getPayload()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    .line 56
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 57
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 58
    .local v1, dos:Ljava/io/DataOutputStream;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttSubscribe;->names:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 59
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttSubscribe;->names:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 60
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttSubscribe;->qos:[I

    aget v4, v4, v3

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 58
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 64
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v1           #dos:Ljava/io/DataOutputStream;
    .end local v3           #i:I
    :catch_0
    move-exception v2

    .line 65
    .local v2, ex:Ljava/io/IOException;
    new-instance v4, Lorg/eclipse/paho/client/mqttv3/MqttException;

    invoke-direct {v4, v2}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method protected getVariableHeader()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    .line 43
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 44
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 45
    .local v1, dos:Ljava/io/DataOutputStream;
    iget v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttSubscribe;->msgId:I

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 46
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 47
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 49
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v1           #dos:Ljava/io/DataOutputStream;
    :catch_0
    move-exception v2

    .line 50
    .local v2, ex:Ljava/io/IOException;
    new-instance v3, Lorg/eclipse/paho/client/mqttv3/MqttException;

    invoke-direct {v3, v2}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public isRetryable()Z
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x1

    return v0
.end method
