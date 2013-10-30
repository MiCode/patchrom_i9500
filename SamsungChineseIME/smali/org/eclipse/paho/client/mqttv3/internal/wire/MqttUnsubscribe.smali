.class public Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttUnsubscribe;
.super Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;
.source "MqttUnsubscribe.java"


# instance fields
.field private names:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 1
    .parameter "names"

    .prologue
    .line 32
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;-><init>(B)V

    .line 33
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttUnsubscribe;->names:[Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method protected getMessageInfo()B
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttUnsubscribe;->duplicate:Z

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
    .line 55
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 56
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 57
    .local v1, dos:Ljava/io/DataOutputStream;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttUnsubscribe;->names:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 58
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttUnsubscribe;->names:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 57
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 62
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v1           #dos:Ljava/io/DataOutputStream;
    .end local v3           #i:I
    :catch_0
    move-exception v2

    .line 63
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
    .line 42
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 43
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 44
    .local v1, dos:Ljava/io/DataOutputStream;
    iget v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttUnsubscribe;->msgId:I

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 45
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 46
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 48
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v1           #dos:Ljava/io/DataOutputStream;
    :catch_0
    move-exception v2

    .line 49
    .local v2, ex:Ljava/io/IOException;
    new-instance v3, Lorg/eclipse/paho/client/mqttv3/MqttException;

    invoke-direct {v3, v2}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public isRetryable()Z
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x1

    return v0
.end method
