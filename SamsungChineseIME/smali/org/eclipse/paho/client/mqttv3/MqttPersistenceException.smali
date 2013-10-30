.class public Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;
.super Lorg/eclipse/paho/client/mqttv3/MqttException;
.source "MqttPersistenceException.java"


# static fields
.field public static final REASON_CODE_PERSISTENCE_IN_USE:S = 0x7dc8s

.field private static final serialVersionUID:J = 0x12cL


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(I)V

    .line 29
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "reasonCode"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(I)V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .parameter "cause"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(Ljava/lang/Throwable;)V

    .line 46
    return-void
.end method
