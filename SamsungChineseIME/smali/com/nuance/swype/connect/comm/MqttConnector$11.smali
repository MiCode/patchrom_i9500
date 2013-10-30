.class Lcom/nuance/swype/connect/comm/MqttConnector$11;
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
    .line 398
    iput-object p1, p0, Lcom/nuance/swype/connect/comm/MqttConnector$11;->this$0:Lcom/nuance/swype/connect/comm/MqttConnector;

    invoke-direct {p0}, Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationStringChange(Ljava/lang/String;)V
    .locals 3
    .parameter "value"

    .prologue
    .line 401
    const-string v0, "ConnectMQTT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keyBuildChangeListener.setConfiguration("

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

    .line 402
    iget-object v0, p0, Lcom/nuance/swype/connect/comm/MqttConnector$11;->this$0:Lcom/nuance/swype/connect/comm/MqttConnector;

    #setter for: Lcom/nuance/swype/connect/comm/MqttConnector;->keyBuild:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/nuance/swype/connect/comm/MqttConnector;->access$2302(Lcom/nuance/swype/connect/comm/MqttConnector;Ljava/lang/String;)Ljava/lang/String;

    .line 403
    return-void
.end method
