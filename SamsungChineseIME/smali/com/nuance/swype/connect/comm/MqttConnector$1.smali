.class Lcom/nuance/swype/connect/comm/MqttConnector$1;
.super Ljava/lang/Object;
.source "MqttConnector.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 67
    iput-object p1, p0, Lcom/nuance/swype/connect/comm/MqttConnector$1;->this$0:Lcom/nuance/swype/connect/comm/MqttConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private declared-synchronized handleStart()V
    .locals 2

    .prologue
    .line 95
    monitor-enter p0

    :try_start_0
    const-string v0, "ConnectMQTT"

    const-string v1, "thread.handleStart()"

    invoke-static {v0, v1}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector$1;->this$0:Lcom/nuance/swype/connect/comm/MqttConnector;

    #getter for: Lcom/nuance/swype/connect/comm/MqttConnector;->mqttClient:Lorg/eclipse/paho/client/mqttv3/MqttClient;
    invoke-static {v0}, Lcom/nuance/swype/connect/comm/MqttConnector;->access$400(Lcom/nuance/swype/connect/comm/MqttConnector;)Lorg/eclipse/paho/client/mqttv3/MqttClient;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector$1;->this$0:Lcom/nuance/swype/connect/comm/MqttConnector;

    #getter for: Lcom/nuance/swype/connect/comm/MqttConnector;->isEnabled:Z
    invoke-static {v0}, Lcom/nuance/swype/connect/comm/MqttConnector;->access$500(Lcom/nuance/swype/connect/comm/MqttConnector;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 124
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 101
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector$1;->this$0:Lcom/nuance/swype/connect/comm/MqttConnector;

    #calls: Lcom/nuance/swype/connect/comm/MqttConnector;->isAlreadyConnected()Z
    invoke-static {v0}, Lcom/nuance/swype/connect/comm/MqttConnector;->access$600(Lcom/nuance/swype/connect/comm/MqttConnector;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 103
    iget-object v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector$1;->this$0:Lcom/nuance/swype/connect/comm/MqttConnector;

    sget-object v1, Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;->CONNECTING:Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;

    #setter for: Lcom/nuance/swype/connect/comm/MqttConnector;->connectionStatus:Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;
    invoke-static {v0, v1}, Lcom/nuance/swype/connect/comm/MqttConnector;->access$702(Lcom/nuance/swype/connect/comm/MqttConnector;Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;)Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;

    .line 105
    iget-object v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector$1;->this$0:Lcom/nuance/swype/connect/comm/MqttConnector;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/comm/MqttConnector;->availableConnection()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector$1;->this$0:Lcom/nuance/swype/connect/comm/MqttConnector;

    #calls: Lcom/nuance/swype/connect/comm/MqttConnector;->ready()Z
    invoke-static {v0}, Lcom/nuance/swype/connect/comm/MqttConnector;->access$800(Lcom/nuance/swype/connect/comm/MqttConnector;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 106
    iget-object v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector$1;->this$0:Lcom/nuance/swype/connect/comm/MqttConnector;

    #calls: Lcom/nuance/swype/connect/comm/MqttConnector;->connectToBroker()Z
    invoke-static {v0}, Lcom/nuance/swype/connect/comm/MqttConnector;->access$900(Lcom/nuance/swype/connect/comm/MqttConnector;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 107
    iget-object v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector$1;->this$0:Lcom/nuance/swype/connect/comm/MqttConnector;

    #calls: Lcom/nuance/swype/connect/comm/MqttConnector;->resubscribe()V
    invoke-static {v0}, Lcom/nuance/swype/connect/comm/MqttConnector;->access$1000(Lcom/nuance/swype/connect/comm/MqttConnector;)V

    .line 108
    iget-object v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector$1;->this$0:Lcom/nuance/swype/connect/comm/MqttConnector;

    #calls: Lcom/nuance/swype/connect/comm/MqttConnector;->notifyConnection()V
    invoke-static {v0}, Lcom/nuance/swype/connect/comm/MqttConnector;->access$1100(Lcom/nuance/swype/connect/comm/MqttConnector;)V

    .line 109
    iget-object v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector$1;->this$0:Lcom/nuance/swype/connect/comm/MqttConnector;

    const/4 v1, 0x1

    #setter for: Lcom/nuance/swype/connect/comm/MqttConnector;->connectedPreviously:Z
    invoke-static {v0, v1}, Lcom/nuance/swype/connect/comm/MqttConnector;->access$1202(Lcom/nuance/swype/connect/comm/MqttConnector;Z)Z

    .line 123
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector$1;->this$0:Lcom/nuance/swype/connect/comm/MqttConnector;

    const/4 v1, 0x0

    #setter for: Lcom/nuance/swype/connect/comm/MqttConnector;->threadStart:Z
    invoke-static {v0, v1}, Lcom/nuance/swype/connect/comm/MqttConnector;->access$202(Lcom/nuance/swype/connect/comm/MqttConnector;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 111
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector$1;->this$0:Lcom/nuance/swype/connect/comm/MqttConnector;

    const/4 v1, 0x0

    #setter for: Lcom/nuance/swype/connect/comm/MqttConnector;->threadStart:Z
    invoke-static {v0, v1}, Lcom/nuance/swype/connect/comm/MqttConnector;->access$202(Lcom/nuance/swype/connect/comm/MqttConnector;Z)Z

    goto :goto_1

    .line 114
    :cond_4
    iget-object v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector$1;->this$0:Lcom/nuance/swype/connect/comm/MqttConnector;

    const/4 v1, 0x0

    #setter for: Lcom/nuance/swype/connect/comm/MqttConnector;->threadStart:Z
    invoke-static {v0, v1}, Lcom/nuance/swype/connect/comm/MqttConnector;->access$202(Lcom/nuance/swype/connect/comm/MqttConnector;Z)Z

    .line 115
    iget-object v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector$1;->this$0:Lcom/nuance/swype/connect/comm/MqttConnector;

    sget-object v1, Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;->NOTCONNECTED_WAITINGFORINTERNET:Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;

    #setter for: Lcom/nuance/swype/connect/comm/MqttConnector;->connectionStatus:Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;
    invoke-static {v0, v1}, Lcom/nuance/swype/connect/comm/MqttConnector;->access$702(Lcom/nuance/swype/connect/comm/MqttConnector;Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;)Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;

    goto :goto_1

    .line 117
    :cond_5
    iget-object v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector$1;->this$0:Lcom/nuance/swype/connect/comm/MqttConnector;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/comm/MqttConnector;->availableConnection()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 119
    iget-object v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector$1;->this$0:Lcom/nuance/swype/connect/comm/MqttConnector;

    sget-object v1, Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;->CONNECTED:Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;

    #setter for: Lcom/nuance/swype/connect/comm/MqttConnector;->connectionStatus:Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;
    invoke-static {v0, v1}, Lcom/nuance/swype/connect/comm/MqttConnector;->access$702(Lcom/nuance/swype/connect/comm/MqttConnector;Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;)Lcom/nuance/swype/connect/comm/MqttConnector$MQTTConnectionStatus;

    .line 120
    iget-object v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector$1;->this$0:Lcom/nuance/swype/connect/comm/MqttConnector;

    #calls: Lcom/nuance/swype/connect/comm/MqttConnector;->doPing()V
    invoke-static {v0}, Lcom/nuance/swype/connect/comm/MqttConnector;->access$1300(Lcom/nuance/swype/connect/comm/MqttConnector;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private declared-synchronized reStart()V
    .locals 2

    .prologue
    .line 127
    monitor-enter p0

    :try_start_0
    const-string v0, "MQTT restart attempting..."

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector$1;->this$0:Lcom/nuance/swype/connect/comm/MqttConnector;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/comm/MqttConnector;->availableConnection()Z

    move-result v0

    if-nez v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector$1;->this$0:Lcom/nuance/swype/connect/comm/MqttConnector;

    const/4 v1, 0x0

    #setter for: Lcom/nuance/swype/connect/comm/MqttConnector;->threadReconnect:Z
    invoke-static {v0, v1}, Lcom/nuance/swype/connect/comm/MqttConnector;->access$302(Lcom/nuance/swype/connect/comm/MqttConnector;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 130
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector$1;->this$0:Lcom/nuance/swype/connect/comm/MqttConnector;

    #getter for: Lcom/nuance/swype/connect/comm/MqttConnector;->threadReconnect:Z
    invoke-static {v0}, Lcom/nuance/swype/connect/comm/MqttConnector;->access$300(Lcom/nuance/swype/connect/comm/MqttConnector;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector$1;->this$0:Lcom/nuance/swype/connect/comm/MqttConnector;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/comm/MqttConnector;->availableConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector$1;->this$0:Lcom/nuance/swype/connect/comm/MqttConnector;

    #calls: Lcom/nuance/swype/connect/comm/MqttConnector;->ready()Z
    invoke-static {v0}, Lcom/nuance/swype/connect/comm/MqttConnector;->access$800(Lcom/nuance/swype/connect/comm/MqttConnector;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector$1;->this$0:Lcom/nuance/swype/connect/comm/MqttConnector;

    #calls: Lcom/nuance/swype/connect/comm/MqttConnector;->connectToBroker()Z
    invoke-static {v0}, Lcom/nuance/swype/connect/comm/MqttConnector;->access$900(Lcom/nuance/swype/connect/comm/MqttConnector;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 132
    iget-object v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector$1;->this$0:Lcom/nuance/swype/connect/comm/MqttConnector;

    #calls: Lcom/nuance/swype/connect/comm/MqttConnector;->resubscribe()V
    invoke-static {v0}, Lcom/nuance/swype/connect/comm/MqttConnector;->access$1000(Lcom/nuance/swype/connect/comm/MqttConnector;)V

    .line 133
    iget-object v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector$1;->this$0:Lcom/nuance/swype/connect/comm/MqttConnector;

    #calls: Lcom/nuance/swype/connect/comm/MqttConnector;->notifyConnection()V
    invoke-static {v0}, Lcom/nuance/swype/connect/comm/MqttConnector;->access$1100(Lcom/nuance/swype/connect/comm/MqttConnector;)V

    .line 134
    iget-object v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector$1;->this$0:Lcom/nuance/swype/connect/comm/MqttConnector;

    const/4 v1, 0x1

    #setter for: Lcom/nuance/swype/connect/comm/MqttConnector;->connectedPreviously:Z
    invoke-static {v0, v1}, Lcom/nuance/swype/connect/comm/MqttConnector;->access$1202(Lcom/nuance/swype/connect/comm/MqttConnector;Z)Z

    .line 139
    :goto_1
    iget-object v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector$1;->this$0:Lcom/nuance/swype/connect/comm/MqttConnector;

    const/4 v1, 0x0

    #setter for: Lcom/nuance/swype/connect/comm/MqttConnector;->threadReconnect:Z
    invoke-static {v0, v1}, Lcom/nuance/swype/connect/comm/MqttConnector;->access$302(Lcom/nuance/swype/connect/comm/MqttConnector;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 136
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector$1;->this$0:Lcom/nuance/swype/connect/comm/MqttConnector;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/comm/MqttConnector;->scheduleReconnect()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector$1;->this$0:Lcom/nuance/swype/connect/comm/MqttConnector;

    const/4 v1, 0x1

    #setter for: Lcom/nuance/swype/connect/comm/MqttConnector;->threadRunning:Z
    invoke-static {v0, v1}, Lcom/nuance/swype/connect/comm/MqttConnector;->access$002(Lcom/nuance/swype/connect/comm/MqttConnector;Z)Z

    .line 72
    :goto_0
    iget-object v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector$1;->this$0:Lcom/nuance/swype/connect/comm/MqttConnector;

    #getter for: Lcom/nuance/swype/connect/comm/MqttConnector;->threadContinue:Z
    invoke-static {v0}, Lcom/nuance/swype/connect/comm/MqttConnector;->access$100(Lcom/nuance/swype/connect/comm/MqttConnector;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 73
    iget-object v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector$1;->this$0:Lcom/nuance/swype/connect/comm/MqttConnector;

    #getter for: Lcom/nuance/swype/connect/comm/MqttConnector;->threadStart:Z
    invoke-static {v0}, Lcom/nuance/swype/connect/comm/MqttConnector;->access$200(Lcom/nuance/swype/connect/comm/MqttConnector;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-direct {p0}, Lcom/nuance/swype/connect/comm/MqttConnector$1;->handleStart()V

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector$1;->this$0:Lcom/nuance/swype/connect/comm/MqttConnector;

    #getter for: Lcom/nuance/swype/connect/comm/MqttConnector;->threadReconnect:Z
    invoke-static {v0}, Lcom/nuance/swype/connect/comm/MqttConnector;->access$300(Lcom/nuance/swype/connect/comm/MqttConnector;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    invoke-direct {p0}, Lcom/nuance/swype/connect/comm/MqttConnector$1;->reStart()V

    .line 81
    :cond_1
    const-wide/16 v0, 0x1388

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 82
    :catch_0
    move-exception v0

    goto :goto_0

    .line 86
    :cond_2
    iget-object v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector$1;->this$0:Lcom/nuance/swype/connect/comm/MqttConnector;

    const/4 v1, 0x0

    #setter for: Lcom/nuance/swype/connect/comm/MqttConnector;->threadRunning:Z
    invoke-static {v0, v1}, Lcom/nuance/swype/connect/comm/MqttConnector;->access$002(Lcom/nuance/swype/connect/comm/MqttConnector;Z)Z

    .line 87
    return-void
.end method
