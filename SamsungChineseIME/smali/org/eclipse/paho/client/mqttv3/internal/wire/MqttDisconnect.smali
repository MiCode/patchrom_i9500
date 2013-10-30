.class public Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttDisconnect;
.super Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;
.source "MqttDisconnect.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;-><init>(B)V

    .line 23
    return-void
.end method


# virtual methods
.method protected getMessageInfo()B
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

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
    .line 30
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method public isMessageIdRequired()Z
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method
