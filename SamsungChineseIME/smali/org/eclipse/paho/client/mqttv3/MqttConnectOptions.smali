.class public Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;
.super Ljava/lang/Object;
.source "MqttConnectOptions.java"


# instance fields
.field private cleanSession:Z

.field private connectionTimeout:I

.field private keepAliveInterval:I

.field private password:[C

.field private socketFactory:Ljavax/net/SocketFactory;

.field private sslClientProps:Ljava/util/Properties;

.field private userName:Ljava/lang/String;

.field private willDestination:Lorg/eclipse/paho/client/mqttv3/MqttTopic;

.field private willMessage:Lorg/eclipse/paho/client/mqttv3/MqttMessage;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/16 v0, 0x3c

    iput v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->keepAliveInterval:I

    .line 23
    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->willDestination:Lorg/eclipse/paho/client/mqttv3/MqttTopic;

    .line 24
    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->willMessage:Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    .line 28
    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->sslClientProps:Ljava/util/Properties;

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->cleanSession:Z

    .line 30
    const/16 v0, 0x1e

    iput v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->connectionTimeout:I

    .line 48
    return-void
.end method

.method private setWill(Lorg/eclipse/paho/client/mqttv3/MqttTopic;Lorg/eclipse/paho/client/mqttv3/MqttMessage;IZ)V
    .locals 2
    .parameter "topic"
    .parameter "msg"
    .parameter "qos"
    .parameter "retained"

    .prologue
    .line 115
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->willDestination:Lorg/eclipse/paho/client/mqttv3/MqttTopic;

    .line 116
    iput-object p2, p0, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->willMessage:Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    .line 117
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->willMessage:Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    invoke-virtual {v0, p3}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->setQos(I)V

    .line 118
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->willMessage:Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    invoke-virtual {v0, p4}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->setRetained(Z)V

    .line 120
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->willMessage:Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->setMutable(Z)V

    .line 121
    return-void
.end method

.method private validateWill(Lorg/eclipse/paho/client/mqttv3/MqttTopic;Ljava/lang/Object;)V
    .locals 1
    .parameter "dest"
    .parameter "payload"

    .prologue
    .line 106
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 107
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 109
    :cond_1
    return-void
.end method


# virtual methods
.method public getConnectionTimeout()I
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->connectionTimeout:I

    return v0
.end method

.method public getKeepAliveInterval()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->keepAliveInterval:I

    return v0
.end method

.method public getPassword()[C
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->password:[C

    return-object v0
.end method

.method public getSSLProperties()Ljava/util/Properties;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->sslClientProps:Ljava/util/Properties;

    return-object v0
.end method

.method public getSocketFactory()Ljavax/net/SocketFactory;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->socketFactory:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public getWillDestination()Lorg/eclipse/paho/client/mqttv3/MqttTopic;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->willDestination:Lorg/eclipse/paho/client/mqttv3/MqttTopic;

    return-object v0
.end method

.method public getWillMessage()Lorg/eclipse/paho/client/mqttv3/MqttMessage;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->willMessage:Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    return-object v0
.end method

.method public isCleanSession()Z
    .locals 1

    .prologue
    .line 305
    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->cleanSession:Z

    return v0
.end method

.method public setCleanSession(Z)V
    .locals 0
    .parameter "cleanSession"

    .prologue
    .line 313
    iput-boolean p1, p0, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->cleanSession:Z

    .line 314
    return-void
.end method

.method public setConnectionTimeout(I)V
    .locals 1
    .parameter "connectionTimeout"

    .prologue
    .line 174
    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    .line 175
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 177
    :cond_0
    iput p1, p0, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->connectionTimeout:I

    .line 178
    return-void
.end method

.method public setKeepAliveInterval(I)V
    .locals 1
    .parameter "keepAliveInterval"

    .prologue
    .line 148
    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    .line 149
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 151
    :cond_0
    iput p1, p0, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->keepAliveInterval:I

    .line 152
    return-void
.end method

.method public setPassword([C)V
    .locals 0
    .parameter "password"

    .prologue
    .line 62
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->password:[C

    .line 63
    return-void
.end method

.method public setSSLProperties(Ljava/util/Properties;)V
    .locals 0
    .parameter "props"

    .prologue
    .line 297
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->sslClientProps:Ljava/util/Properties;

    .line 298
    return-void
.end method

.method public setSocketFactory(Ljavax/net/SocketFactory;)V
    .locals 0
    .parameter "socketFactory"

    .prologue
    .line 196
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->socketFactory:Ljavax/net/SocketFactory;

    .line 197
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 2
    .parameter "userName"

    .prologue
    .line 79
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 82
    :cond_0
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->userName:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setWill(Lorg/eclipse/paho/client/mqttv3/MqttTopic;[BIZ)V
    .locals 1
    .parameter "topic"
    .parameter "payload"
    .parameter "qos"
    .parameter "retained"

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->validateWill(Lorg/eclipse/paho/client/mqttv3/MqttTopic;Ljava/lang/Object;)V

    .line 98
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    invoke-direct {v0, p2}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;-><init>([B)V

    invoke-direct {p0, p1, v0, p3, p4}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->setWill(Lorg/eclipse/paho/client/mqttv3/MqttTopic;Lorg/eclipse/paho/client/mqttv3/MqttMessage;IZ)V

    .line 99
    return-void
.end method
