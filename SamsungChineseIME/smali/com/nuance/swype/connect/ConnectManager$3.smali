.class Lcom/nuance/swype/connect/ConnectManager$3;
.super Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;
.source "ConnectManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/connect/ConnectManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/connect/ConnectManager;


# direct methods
.method constructor <init>(Lcom/nuance/swype/connect/ConnectManager;)V
    .locals 0
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Lcom/nuance/swype/connect/ConnectManager$3;->this$0:Lcom/nuance/swype/connect/ConnectManager;

    invoke-direct {p0}, Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationBoolChange(Z)V
    .locals 2
    .parameter "value"

    .prologue
    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mqttEnabledChangeListner.setConfiguration("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectManager$3;->this$0:Lcom/nuance/swype/connect/ConnectManager;

    #setter for: Lcom/nuance/swype/connect/ConnectManager;->mqttEnabled:Z
    invoke-static {v0, p1}, Lcom/nuance/swype/connect/ConnectManager;->access$202(Lcom/nuance/swype/connect/ConnectManager;Z)Z

    .line 167
    return-void
.end method
