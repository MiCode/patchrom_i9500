.class Lcom/nuance/swype/connect/comm/MqttConnector$5;
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
    .line 339
    iput-object p1, p0, Lcom/nuance/swype/connect/comm/MqttConnector$5;->this$0:Lcom/nuance/swype/connect/comm/MqttConnector;

    invoke-direct {p0}, Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationStringChange(Ljava/lang/String;)V
    .locals 3
    .parameter "value"

    .prologue
    .line 342
    const-string v0, "ConnectMQTT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mqttHostsChangeListener.setConfiguration("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 345
    iget-object v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector$5;->this$0:Lcom/nuance/swype/connect/comm/MqttConnector;

    #getter for: Lcom/nuance/swype/connect/comm/MqttConnector;->brokerList:[Ljava/lang/String;
    invoke-static {v0}, Lcom/nuance/swype/connect/comm/MqttConnector;->access$1700(Lcom/nuance/swype/connect/comm/MqttConnector;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector$5;->this$0:Lcom/nuance/swype/connect/comm/MqttConnector;

    #getter for: Lcom/nuance/swype/connect/comm/MqttConnector;->brokerList:[Ljava/lang/String;
    invoke-static {v0}, Lcom/nuance/swype/connect/comm/MqttConnector;->access$1700(Lcom/nuance/swype/connect/comm/MqttConnector;)[Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-static {v0, v1}, Lcom/nuance/swype/connect/util/StringUtils;->implode([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector$5;->this$0:Lcom/nuance/swype/connect/comm/MqttConnector;

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/nuance/swype/connect/comm/MqttConnector;->brokerList:[Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/nuance/swype/connect/comm/MqttConnector;->access$1702(Lcom/nuance/swype/connect/comm/MqttConnector;[Ljava/lang/String;)[Ljava/lang/String;

    .line 347
    iget-object v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector$5;->this$0:Lcom/nuance/swype/connect/comm/MqttConnector;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/comm/MqttConnector;->stopAndStart()V

    .line 352
    :cond_1
    :goto_0
    return-void

    .line 349
    :cond_2
    const-string v0, "ConnectMQTT"

    const-string v1, "mqttHostsChangeListener -- values didn\'t change"

    invoke-static {v0, v1}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
