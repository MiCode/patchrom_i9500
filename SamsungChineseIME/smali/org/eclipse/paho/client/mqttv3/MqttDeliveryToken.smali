.class public interface abstract Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;
.super Ljava/lang/Object;
.source "MqttDeliveryToken.java"


# virtual methods
.method public abstract getMessage()Lorg/eclipse/paho/client/mqttv3/MqttMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation
.end method

.method public abstract isComplete()Z
.end method

.method public abstract waitForCompletion()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;,
            Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;
        }
    .end annotation
.end method

.method public abstract waitForCompletion(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;,
            Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;
        }
    .end annotation
.end method
