.class public Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnack;
.super Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttAck;
.source "MqttConnack.java"


# instance fields
.field private returnCode:I


# direct methods
.method public constructor <init>(B[B)V
    .locals 3
    .parameter "info"
    .parameter "variableHeader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttAck;-><init>(B)V

    .line 29
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 30
    .local v0, bais:Ljava/io/ByteArrayInputStream;
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 31
    .local v1, dis:Ljava/io/DataInputStream;
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    .line 32
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v2

    iput v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnack;->returnCode:I

    .line 33
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    .line 34
    return-void
.end method


# virtual methods
.method public getReturnCode()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnack;->returnCode:I

    return v0
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
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method public isMessageIdRequired()Z
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method
