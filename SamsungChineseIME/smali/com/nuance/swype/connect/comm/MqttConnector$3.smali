.class Lcom/nuance/swype/connect/comm/MqttConnector$3;
.super Ljava/lang/Object;
.source "MqttConnector.java"

# interfaces
.implements Lcom/nuance/swype/connect/manager/interfaces/AccountListener;


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
    .line 312
    iput-object p1, p0, Lcom/nuance/swype/connect/comm/MqttConnector$3;->this$0:Lcom/nuance/swype/connect/comm/MqttConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInvalidated()V
    .locals 2

    .prologue
    .line 314
    const-string v0, "ConnectMQTT"

    const-string v1, "accountListener.onInvalidated()"

    invoke-static {v0, v1}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    return-void
.end method

.method public onLinked()V
    .locals 2

    .prologue
    .line 318
    const-string v0, "ConnectMQTT"

    const-string v1, "accountListener.onLinked()"

    invoke-static {v0, v1}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    return-void
.end method
