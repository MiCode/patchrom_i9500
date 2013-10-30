.class public Lorg/eclipse/paho/client/mqttv3/internal/MqttPersistentData;
.super Ljava/lang/Object;
.source "MqttPersistentData.java"

# interfaces
.implements Lorg/eclipse/paho/client/mqttv3/MqttPersistable;


# instance fields
.field private hLength:I

.field private hOffset:I

.field private header:[B

.field private key:Ljava/lang/String;

.field private pLength:I

.field private pOffset:I

.field private payload:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;[BII[BII)V
    .locals 2
    .parameter "key"
    .parameter "header"
    .parameter "hOffset"
    .parameter "hLength"
    .parameter "payload"
    .parameter "pOffset"
    .parameter "pLength"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/MqttPersistentData;->key:Ljava/lang/String;

    .line 21
    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/MqttPersistentData;->header:[B

    .line 22
    iput v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/MqttPersistentData;->hOffset:I

    .line 23
    iput v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/MqttPersistentData;->hLength:I

    .line 26
    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/MqttPersistentData;->payload:[B

    .line 27
    iput v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/MqttPersistentData;->pOffset:I

    .line 28
    iput v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/MqttPersistentData;->pLength:I

    .line 55
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/MqttPersistentData;->key:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Lorg/eclipse/paho/client/mqttv3/internal/MqttPersistentData;->header:[B

    .line 57
    iput p3, p0, Lorg/eclipse/paho/client/mqttv3/internal/MqttPersistentData;->hOffset:I

    .line 58
    iput p4, p0, Lorg/eclipse/paho/client/mqttv3/internal/MqttPersistentData;->hLength:I

    .line 59
    iput-object p5, p0, Lorg/eclipse/paho/client/mqttv3/internal/MqttPersistentData;->payload:[B

    .line 60
    iput p6, p0, Lorg/eclipse/paho/client/mqttv3/internal/MqttPersistentData;->pOffset:I

    .line 61
    iput p7, p0, Lorg/eclipse/paho/client/mqttv3/internal/MqttPersistentData;->pLength:I

    .line 62
    return-void
.end method


# virtual methods
.method public getHeaderBytes()[B
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/MqttPersistentData;->header:[B

    return-object v0
.end method

.method public getHeaderLength()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/MqttPersistentData;->hLength:I

    return v0
.end method

.method public getHeaderOffset()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/MqttPersistentData;->hOffset:I

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/MqttPersistentData;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getPayloadBytes()[B
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/MqttPersistentData;->payload:[B

    return-object v0
.end method

.method public getPayloadLength()I
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/MqttPersistentData;->payload:[B

    if-nez v0, :cond_0

    .line 86
    const/4 v0, 0x0

    .line 88
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/MqttPersistentData;->pLength:I

    goto :goto_0
.end method

.method public getPayloadOffset()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/MqttPersistentData;->pOffset:I

    return v0
.end method
