.class public Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttInputStream;
.super Ljava/io/InputStream;
.source "MqttInputStream.java"


# instance fields
.field private in:Ljava/io/DataInputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 31
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttInputStream;->in:Ljava/io/DataInputStream;

    .line 32
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttInputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttInputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 44
    return-void
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttInputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    move-result v0

    return v0
.end method

.method public readMqttWireMessage()Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 50
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 51
    .local v0, bais:Ljava/io/ByteArrayOutputStream;
    iget-object v8, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttInputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {v8}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    .line 52
    .local v1, first:B
    ushr-int/lit8 v8, v1, 0x4

    and-int/lit8 v8, v8, 0xf

    int-to-byte v7, v8

    .line 53
    .local v7, type:B
    const/4 v8, 0x1

    if-lt v7, v8, :cond_0

    const/16 v8, 0xe

    if-le v7, v8, :cond_1

    .line 56
    :cond_0
    const/16 v8, 0x7d6c

    invoke-static {v8}, Lorg/eclipse/paho/client/mqttv3/internal/ExceptionHelper;->createMqttException(I)Lorg/eclipse/paho/client/mqttv3/MqttException;

    move-result-object v8

    throw v8

    .line 58
    :cond_1
    iget-object v8, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttInputStream;->in:Ljava/io/DataInputStream;

    invoke-static {v8}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;->readMBI(Ljava/io/DataInputStream;)Lorg/eclipse/paho/client/mqttv3/internal/wire/MultiByteInteger;

    move-result-object v8

    invoke-virtual {v8}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MultiByteInteger;->getValue()J

    move-result-wide v5

    .line 59
    .local v5, remLen:J
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 61
    invoke-static {v5, v6}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;->encodeMBI(J)[B

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 62
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v8, v5

    long-to-int v8, v8

    new-array v4, v8, [B

    .line 63
    .local v4, packet:[B
    iget-object v8, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttInputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v9

    array-length v10, v4

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {v8, v4, v9, v10}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 64
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 65
    .local v2, header:[B
    array-length v8, v2

    invoke-static {v2, v12, v4, v12, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 66
    invoke-static {v4}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;->createWireMessage([B)Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;

    move-result-object v3

    .line 67
    .local v3, message:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;
    return-object v3
.end method
