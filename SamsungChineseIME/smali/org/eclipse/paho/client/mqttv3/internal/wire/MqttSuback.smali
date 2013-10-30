.class public Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttSuback;
.super Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttAck;
.source "MqttSuback.java"


# instance fields
.field private grantedQos:[I


# direct methods
.method public constructor <init>(B[B)V
    .locals 5
    .parameter "info"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    const/16 v4, 0x9

    invoke-direct {p0, v4}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttAck;-><init>(B)V

    .line 29
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 30
    .local v0, bais:Ljava/io/ByteArrayInputStream;
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 31
    .local v1, dis:Ljava/io/DataInputStream;
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v4

    iput v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttSuback;->msgId:I

    .line 32
    const/4 v2, 0x0

    .line 33
    .local v2, index:I
    array-length v4, p2

    add-int/lit8 v4, v4, -0x2

    new-array v4, v4, [I

    iput-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttSuback;->grantedQos:[I

    .line 34
    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v3

    .line 35
    .local v3, qos:I
    :goto_0
    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 36
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttSuback;->grantedQos:[I

    aput v3, v4, v2

    .line 37
    add-int/lit8 v2, v2, 0x1

    .line 38
    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v3

    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    .line 41
    return-void
.end method


# virtual methods
.method protected getVariableHeader()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    .line 45
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method
