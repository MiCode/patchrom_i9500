.class public Lorg/eclipse/paho/client/mqttv3/internal/comms/MqttDirectException;
.super Ljava/lang/Exception;
.source "MqttDirectException.java"


# instance fields
.field protected inserts:[Ljava/lang/Object;

.field protected linkt:Ljava/lang/Throwable;

.field protected msgId:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 21
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/comms/MqttDirectException;->msgId:J

    .line 22
    iput-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/comms/MqttDirectException;->inserts:[Ljava/lang/Object;

    .line 23
    iput-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/comms/MqttDirectException;->linkt:Ljava/lang/Throwable;

    .line 30
    return-void
.end method

.method public constructor <init>(J[Ljava/lang/Object;)V
    .locals 3
    .parameter "theMsgId"
    .parameter "theInserts"

    .prologue
    const/4 v2, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 21
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/comms/MqttDirectException;->msgId:J

    .line 22
    iput-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/comms/MqttDirectException;->inserts:[Ljava/lang/Object;

    .line 23
    iput-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/comms/MqttDirectException;->linkt:Ljava/lang/Throwable;

    .line 47
    iput-wide p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/comms/MqttDirectException;->msgId:J

    .line 48
    iput-object p3, p0, Lorg/eclipse/paho/client/mqttv3/internal/comms/MqttDirectException;->inserts:[Ljava/lang/Object;

    .line 49
    return-void
.end method

.method public constructor <init>(J[Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 3
    .parameter "theMsgId"
    .parameter "theInserts"
    .parameter "cause"

    .prologue
    const/4 v2, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 21
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/comms/MqttDirectException;->msgId:J

    .line 22
    iput-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/comms/MqttDirectException;->inserts:[Ljava/lang/Object;

    .line 23
    iput-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/comms/MqttDirectException;->linkt:Ljava/lang/Throwable;

    .line 58
    iput-wide p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/comms/MqttDirectException;->msgId:J

    .line 59
    iput-object p3, p0, Lorg/eclipse/paho/client/mqttv3/internal/comms/MqttDirectException;->inserts:[Ljava/lang/Object;

    .line 60
    iput-object p4, p0, Lorg/eclipse/paho/client/mqttv3/internal/comms/MqttDirectException;->linkt:Ljava/lang/Throwable;

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .parameter "reason"
    .parameter "theCause"

    .prologue
    const/4 v2, 0x0

    .line 38
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 21
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/comms/MqttDirectException;->msgId:J

    .line 22
    iput-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/comms/MqttDirectException;->inserts:[Ljava/lang/Object;

    .line 23
    iput-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/comms/MqttDirectException;->linkt:Ljava/lang/Throwable;

    .line 39
    iput-object p2, p0, Lorg/eclipse/paho/client/mqttv3/internal/comms/MqttDirectException;->linkt:Ljava/lang/Throwable;

    .line 40
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/comms/MqttDirectException;->linkt:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getInserts()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/comms/MqttDirectException;->inserts:[Ljava/lang/Object;

    return-object v0
.end method

.method public getMsgId()J
    .locals 2

    .prologue
    .line 80
    iget-wide v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/comms/MqttDirectException;->msgId:J

    return-wide v0
.end method
