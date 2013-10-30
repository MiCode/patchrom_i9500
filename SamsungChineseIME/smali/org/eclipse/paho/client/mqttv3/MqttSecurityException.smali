.class public Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;
.super Lorg/eclipse/paho/client/mqttv3/MqttException;
.source "MqttSecurityException.java"


# static fields
.field private static final serialVersionUID:J = 0x12cL


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "reasonCode"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(I)V

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .parameter "cause"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(Ljava/lang/Throwable;)V

    .line 37
    return-void
.end method
