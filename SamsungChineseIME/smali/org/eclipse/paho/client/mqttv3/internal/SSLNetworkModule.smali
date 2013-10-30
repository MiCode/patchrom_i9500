.class public Lorg/eclipse/paho/client/mqttv3/internal/SSLNetworkModule;
.super Lorg/eclipse/paho/client/mqttv3/internal/TCPNetworkModule;
.source "SSLNetworkModule.java"


# instance fields
.field private enabledCiphers:[Ljava/lang/String;

.field private handshakeTimeoutSecs:I


# direct methods
.method public constructor <init>(Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;Ljavax/net/ssl/SSLSocketFactory;Ljava/lang/String;I)V
    .locals 0
    .parameter "trace"
    .parameter "factory"
    .parameter "host"
    .parameter "port"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/eclipse/paho/client/mqttv3/internal/TCPNetworkModule;-><init>(Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;Ljavax/net/SocketFactory;Ljava/lang/String;I)V

    .line 37
    return-void
.end method


# virtual methods
.method public getEnabledCiphers()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/SSLNetworkModule;->enabledCiphers:[Ljava/lang/String;

    return-object v0
.end method

.method public setEnabledCiphers([Ljava/lang/String;)V
    .locals 7
    .parameter "enabledCiphers"

    .prologue
    const/4 v6, 0x1

    .line 50
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/SSLNetworkModule;->enabledCiphers:[Ljava/lang/String;

    .line 51
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/SSLNetworkModule;->socket:Ljava/net/Socket;

    if-eqz v2, :cond_3

    if-eqz p1, :cond_3

    .line 52
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/SSLNetworkModule;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    invoke-virtual {v2}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->isOn()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 53
    const-string v0, ""

    .line 54
    .local v0, ciphers:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 55
    if-lez v1, :cond_0

    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 58
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 54
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 61
    :cond_1
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/SSLNetworkModule;->trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    const/16 v3, 0x104

    new-array v4, v6, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v2, v6, v3, v4}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->trace(BI[Ljava/lang/Object;)V

    .line 63
    .end local v0           #ciphers:Ljava/lang/String;
    .end local v1           #i:I
    :cond_2
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/SSLNetworkModule;->socket:Ljava/net/Socket;

    check-cast v2, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v2, p1}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 65
    :cond_3
    return-void
.end method

.method public setSSLhandshakeTimeout(I)V
    .locals 0
    .parameter "timeout"

    .prologue
    .line 68
    iput p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/SSLNetworkModule;->handshakeTimeoutSecs:I

    .line 69
    return-void
.end method

.method public start()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-super {p0}, Lorg/eclipse/paho/client/mqttv3/internal/TCPNetworkModule;->start()V

    .line 73
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/SSLNetworkModule;->enabledCiphers:[Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/SSLNetworkModule;->setEnabledCiphers([Ljava/lang/String;)V

    .line 74
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/SSLNetworkModule;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getSoTimeout()I

    move-result v0

    .line 75
    .local v0, soTimeout:I
    if-nez v0, :cond_0

    .line 77
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/SSLNetworkModule;->socket:Ljava/net/Socket;

    iget v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/SSLNetworkModule;->handshakeTimeoutSecs:I

    mul-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v1, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 79
    :cond_0
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/SSLNetworkModule;->socket:Ljava/net/Socket;

    check-cast v1, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 81
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/SSLNetworkModule;->socket:Ljava/net/Socket;

    invoke-virtual {v1, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 82
    return-void
.end method
