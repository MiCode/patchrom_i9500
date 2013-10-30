.class public abstract Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttAck;
.super Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;
.source "MqttAck.java"


# direct methods
.method public constructor <init>(B)V
    .locals 0
    .parameter "type"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;-><init>(B)V

    .line 21
    return-void
.end method


# virtual methods
.method protected getMessageInfo()B
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    return v0
.end method
