.class public Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttReceivedMessage;
.super Lorg/eclipse/paho/client/mqttv3/MqttMessage;
.source "MqttReceivedMessage.java"


# instance fields
.field private messageId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessageId()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttReceivedMessage;->messageId:I

    return v0
.end method

.method public setDuplicate(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 31
    invoke-super {p0, p1}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->setDuplicate(Z)V

    .line 32
    return-void
.end method

.method public setMessageId(I)V
    .locals 0
    .parameter "msgId"

    .prologue
    .line 21
    iput p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttReceivedMessage;->messageId:I

    .line 22
    return-void
.end method
