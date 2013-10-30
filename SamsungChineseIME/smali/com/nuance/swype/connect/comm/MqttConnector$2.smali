.class Lcom/nuance/swype/connect/comm/MqttConnector$2;
.super Ljava/lang/Object;
.source "MqttConnector.java"

# interfaces
.implements Lcom/nuance/swype/connect/system/NetworkListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/connect/comm/MqttConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/connect/comm/MqttConnector;


# direct methods
.method constructor <init>(Lcom/nuance/swype/connect/comm/MqttConnector;)V
    .locals 0
    .parameter

    .prologue
    .line 280
    iput-object p1, p0, Lcom/nuance/swype/connect/comm/MqttConnector$2;->this$0:Lcom/nuance/swype/connect/comm/MqttConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNetworkAvailable()V
    .locals 2

    .prologue
    .line 283
    const-string v0, "ConnectMQTT"

    const-string v1, "NetworkListener.onNetworkAvailable()"

    invoke-static {v0, v1}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector$2;->this$0:Lcom/nuance/swype/connect/comm/MqttConnector;

    iget-object v1, p0, Lcom/nuance/swype/connect/comm/MqttConnector$2;->this$0:Lcom/nuance/swype/connect/comm/MqttConnector;

    #getter for: Lcom/nuance/swype/connect/comm/MqttConnector;->connectClient:Lcom/nuance/swype/connect/ConnectClient;
    invoke-static {v1}, Lcom/nuance/swype/connect/comm/MqttConnector;->access$1500(Lcom/nuance/swype/connect/comm/MqttConnector;)Lcom/nuance/swype/connect/ConnectClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/connect/ConnectClient;->getNetworkState()Lcom/nuance/swype/connect/system/NetworkState;

    move-result-object v1

    #setter for: Lcom/nuance/swype/connect/comm/MqttConnector;->networkState:Lcom/nuance/swype/connect/system/NetworkState;
    invoke-static {v0, v1}, Lcom/nuance/swype/connect/comm/MqttConnector;->access$1402(Lcom/nuance/swype/connect/comm/MqttConnector;Lcom/nuance/swype/connect/system/NetworkState;)Lcom/nuance/swype/connect/system/NetworkState;

    .line 286
    iget-object v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector$2;->this$0:Lcom/nuance/swype/connect/comm/MqttConnector;

    #getter for: Lcom/nuance/swype/connect/comm/MqttConnector;->connectedPreviously:Z
    invoke-static {v0}, Lcom/nuance/swype/connect/comm/MqttConnector;->access$1200(Lcom/nuance/swype/connect/comm/MqttConnector;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector$2;->this$0:Lcom/nuance/swype/connect/comm/MqttConnector;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/comm/MqttConnector;->start()V

    .line 290
    :cond_0
    return-void
.end method

.method public onNetworkDisconnect()V
    .locals 2

    .prologue
    .line 293
    const-string v0, "ConnectMQTT"

    const-string v1, "NetworkListener.onNetworkDisconnect()"

    invoke-static {v0, v1}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector$2;->this$0:Lcom/nuance/swype/connect/comm/MqttConnector;

    const/4 v1, 0x0

    #setter for: Lcom/nuance/swype/connect/comm/MqttConnector;->networkState:Lcom/nuance/swype/connect/system/NetworkState;
    invoke-static {v0, v1}, Lcom/nuance/swype/connect/comm/MqttConnector;->access$1402(Lcom/nuance/swype/connect/comm/MqttConnector;Lcom/nuance/swype/connect/system/NetworkState;)Lcom/nuance/swype/connect/system/NetworkState;

    .line 295
    iget-object v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector$2;->this$0:Lcom/nuance/swype/connect/comm/MqttConnector;

    #calls: Lcom/nuance/swype/connect/comm/MqttConnector;->disconnectFromBroker()V
    invoke-static {v0}, Lcom/nuance/swype/connect/comm/MqttConnector;->access$1600(Lcom/nuance/swype/connect/comm/MqttConnector;)V

    .line 296
    return-void
.end method

.method public onNetworkStable()V
    .locals 2

    .prologue
    .line 305
    const-string v0, "ConnectMQTT"

    const-string v1, "NetworkListener.onNetworkStable()"

    invoke-static {v0, v1}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector$2;->this$0:Lcom/nuance/swype/connect/comm/MqttConnector;

    iget-object v1, p0, Lcom/nuance/swype/connect/comm/MqttConnector$2;->this$0:Lcom/nuance/swype/connect/comm/MqttConnector;

    #getter for: Lcom/nuance/swype/connect/comm/MqttConnector;->connectClient:Lcom/nuance/swype/connect/ConnectClient;
    invoke-static {v1}, Lcom/nuance/swype/connect/comm/MqttConnector;->access$1500(Lcom/nuance/swype/connect/comm/MqttConnector;)Lcom/nuance/swype/connect/ConnectClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/connect/ConnectClient;->getNetworkState()Lcom/nuance/swype/connect/system/NetworkState;

    move-result-object v1

    #setter for: Lcom/nuance/swype/connect/comm/MqttConnector;->networkState:Lcom/nuance/swype/connect/system/NetworkState;
    invoke-static {v0, v1}, Lcom/nuance/swype/connect/comm/MqttConnector;->access$1402(Lcom/nuance/swype/connect/comm/MqttConnector;Lcom/nuance/swype/connect/system/NetworkState;)Lcom/nuance/swype/connect/system/NetworkState;

    .line 307
    iget-object v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector$2;->this$0:Lcom/nuance/swype/connect/comm/MqttConnector;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/comm/MqttConnector;->scheduleReconnect()V

    .line 308
    return-void
.end method

.method public onNetworkUnavailable()V
    .locals 2

    .prologue
    .line 299
    const-string v0, "ConnectMQTT"

    const-string v1, "NetworkListener.onNetworkUnavailable()"

    invoke-static {v0, v1}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector$2;->this$0:Lcom/nuance/swype/connect/comm/MqttConnector;

    const/4 v1, 0x0

    #setter for: Lcom/nuance/swype/connect/comm/MqttConnector;->networkState:Lcom/nuance/swype/connect/system/NetworkState;
    invoke-static {v0, v1}, Lcom/nuance/swype/connect/comm/MqttConnector;->access$1402(Lcom/nuance/swype/connect/comm/MqttConnector;Lcom/nuance/swype/connect/system/NetworkState;)Lcom/nuance/swype/connect/system/NetworkState;

    .line 301
    iget-object v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector$2;->this$0:Lcom/nuance/swype/connect/comm/MqttConnector;

    #calls: Lcom/nuance/swype/connect/comm/MqttConnector;->disconnectFromBroker()V
    invoke-static {v0}, Lcom/nuance/swype/connect/comm/MqttConnector;->access$1600(Lcom/nuance/swype/connect/comm/MqttConnector;)V

    .line 302
    return-void
.end method
