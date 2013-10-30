.class Lcom/nuance/swype/connect/comm/MqttConnector$4;
.super Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;
.source "MqttConnector.java"


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
    .line 322
    iput-object p1, p0, Lcom/nuance/swype/connect/comm/MqttConnector$4;->this$0:Lcom/nuance/swype/connect/comm/MqttConnector;

    invoke-direct {p0}, Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationBoolChange(Z)V
    .locals 3
    .parameter "value"

    .prologue
    .line 325
    const-string v0, "ConnectMQTT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mqttEnabledChangeListener.setConfiguration("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    iget-object v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector$4;->this$0:Lcom/nuance/swype/connect/comm/MqttConnector;

    #getter for: Lcom/nuance/swype/connect/comm/MqttConnector;->isEnabled:Z
    invoke-static {v0}, Lcom/nuance/swype/connect/comm/MqttConnector;->access$500(Lcom/nuance/swype/connect/comm/MqttConnector;)Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 327
    iget-object v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector$4;->this$0:Lcom/nuance/swype/connect/comm/MqttConnector;

    #setter for: Lcom/nuance/swype/connect/comm/MqttConnector;->isEnabled:Z
    invoke-static {v0, p1}, Lcom/nuance/swype/connect/comm/MqttConnector;->access$502(Lcom/nuance/swype/connect/comm/MqttConnector;Z)Z

    .line 328
    if-eqz p1, :cond_1

    .line 331
    iget-object v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector$4;->this$0:Lcom/nuance/swype/connect/comm/MqttConnector;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/comm/MqttConnector;->start()V

    .line 336
    :cond_0
    :goto_0
    return-void

    .line 333
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector$4;->this$0:Lcom/nuance/swype/connect/comm/MqttConnector;

    #calls: Lcom/nuance/swype/connect/comm/MqttConnector;->disconnectFromBroker()V
    invoke-static {v0}, Lcom/nuance/swype/connect/comm/MqttConnector;->access$1600(Lcom/nuance/swype/connect/comm/MqttConnector;)V

    goto :goto_0
.end method
