.class public Lorg/eclipse/paho/client/mqttv3/internal/comms/MqttSSLInitException;
.super Lorg/eclipse/paho/client/mqttv3/internal/comms/MqttDirectException;
.source "MqttSSLInitException.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lorg/eclipse/paho/client/mqttv3/internal/comms/MqttDirectException;-><init>()V

    .line 21
    return-void
.end method

.method public constructor <init>(J[Ljava/lang/Object;)V
    .locals 0
    .parameter "theMsgId"
    .parameter "theInserts"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/paho/client/mqttv3/internal/comms/MqttDirectException;-><init>(J[Ljava/lang/Object;)V

    .line 29
    return-void
.end method

.method public constructor <init>(J[Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "theMsgId"
    .parameter "theInserts"
    .parameter "cause"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/eclipse/paho/client/mqttv3/internal/comms/MqttDirectException;-><init>(J[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "reason"
    .parameter "theCause"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lorg/eclipse/paho/client/mqttv3/internal/comms/MqttDirectException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    return-void
.end method
