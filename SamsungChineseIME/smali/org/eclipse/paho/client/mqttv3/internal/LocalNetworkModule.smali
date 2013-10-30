.class public Lorg/eclipse/paho/client/mqttv3/internal/LocalNetworkModule;
.super Ljava/lang/Object;
.source "LocalNetworkModule.java"

# interfaces
.implements Lorg/eclipse/paho/client/mqttv3/internal/NetworkModule;


# instance fields
.field private LocalListener:Ljava/lang/Class;

.field private brokerName:Ljava/lang/String;

.field private localAdapter:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "brokerName"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/LocalNetworkModule;->brokerName:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public getInputStream()Ljava/io/InputStream;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    const/4 v2, 0x0

    .line 52
    .local v2, stream:Ljava/io/InputStream;
    :try_start_0
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/LocalNetworkModule;->LocalListener:Ljava/lang/Class;

    const-string v4, "getClientInputStream"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 53
    .local v1, m:Ljava/lang/reflect/Method;
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/LocalNetworkModule;->localAdapter:Ljava/lang/Object;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/io/InputStream;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .end local v1           #m:Ljava/lang/reflect/Method;
    :goto_0
    return-object v2

    .line 54
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    const/4 v2, 0x0

    .line 62
    .local v2, stream:Ljava/io/OutputStream;
    :try_start_0
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/LocalNetworkModule;->LocalListener:Ljava/lang/Class;

    const-string v4, "getClientOutputStream"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 63
    .local v1, m:Ljava/lang/reflect/Method;
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/LocalNetworkModule;->localAdapter:Ljava/lang/Object;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/io/OutputStream;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .end local v1           #m:Ljava/lang/reflect/Method;
    :goto_0
    return-object v2

    .line 64
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public start()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x7d67

    .line 35
    const-string v1, "com.ibm.mqttdirect.modules.local.bindings.LocalListener"

    invoke-static {v1}, Lorg/eclipse/paho/client/mqttv3/internal/ExceptionHelper;->isClassAvailable(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 36
    invoke-static {v6}, Lorg/eclipse/paho/client/mqttv3/internal/ExceptionHelper;->createMqttException(I)Lorg/eclipse/paho/client/mqttv3/MqttException;

    move-result-object v1

    throw v1

    .line 39
    :cond_0
    :try_start_0
    const-string v1, "com.ibm.mqttdirect.modules.local.bindings.LocalListener"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/LocalNetworkModule;->LocalListener:Ljava/lang/Class;

    .line 40
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/LocalNetworkModule;->LocalListener:Ljava/lang/Class;

    const-string v2, "connect"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 41
    .local v0, connect_m:Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/LocalNetworkModule;->brokerName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/LocalNetworkModule;->localAdapter:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .end local v0           #connect_m:Ljava/lang/reflect/Method;
    :goto_0
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/LocalNetworkModule;->localAdapter:Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 45
    invoke-static {v6}, Lorg/eclipse/paho/client/mqttv3/internal/ExceptionHelper;->createMqttException(I)Lorg/eclipse/paho/client/mqttv3/MqttException;

    move-result-object v1

    throw v1

    .line 47
    :cond_1
    return-void

    .line 42
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public stop()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/LocalNetworkModule;->localAdapter:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 72
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/LocalNetworkModule;->LocalListener:Ljava/lang/Class;

    const-string v2, "close"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 73
    .local v0, m:Ljava/lang/reflect/Method;
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/LocalNetworkModule;->localAdapter:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .end local v0           #m:Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v1

    goto :goto_0
.end method
