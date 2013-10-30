.class Lcom/nuance/swype/connect/manager/SessionManager$1;
.super Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;
.source "SessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/connect/manager/SessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/connect/manager/SessionManager;


# direct methods
.method constructor <init>(Lcom/nuance/swype/connect/manager/SessionManager;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/nuance/swype/connect/manager/SessionManager$1;->this$0:Lcom/nuance/swype/connect/manager/SessionManager;

    invoke-direct {p0}, Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationIntChange(I)V
    .locals 4
    .parameter "value"

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pollingChangeListener.setConfiguration("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 48
    if-nez p1, :cond_1

    .line 49
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/SessionManager$1;->this$0:Lcom/nuance/swype/connect/manager/SessionManager;

    iput p1, v0, Lcom/nuance/swype/connect/manager/SessionManager;->pollingInterval:I

    .line 50
    new-instance v0, Lcom/nuance/swype/connect/util/Alarm$Builder;

    iget-object v1, p0, Lcom/nuance/swype/connect/manager/SessionManager$1;->this$0:Lcom/nuance/swype/connect/manager/SessionManager;

    iget-object v1, v1, Lcom/nuance/swype/connect/manager/SessionManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v1}, Lcom/nuance/swype/connect/ConnectClient;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/nuance/swype/connect/manager/SessionManager;

    const-string v3, "poll"

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/swype/connect/util/Alarm$Builder;-><init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nuance/swype/connect/util/Alarm$Builder;->build()Lcom/nuance/swype/connect/util/Alarm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/connect/util/Alarm;->cancel()V

    .line 57
    :goto_0
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/SessionManager$1;->this$0:Lcom/nuance/swype/connect/manager/SessionManager;

    iget-object v0, v0, Lcom/nuance/swype/connect/manager/SessionManager;->managerStartState:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    sget-object v1, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;->STARTED:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    new-instance v0, Lcom/nuance/swype/connect/util/Alarm$Builder;

    iget-object v1, p0, Lcom/nuance/swype/connect/manager/SessionManager$1;->this$0:Lcom/nuance/swype/connect/manager/SessionManager;

    iget-object v1, v1, Lcom/nuance/swype/connect/manager/SessionManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v1}, Lcom/nuance/swype/connect/ConnectClient;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/nuance/swype/connect/manager/SessionManager;

    const-string v3, "poll"

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/swype/connect/util/Alarm$Builder;-><init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nuance/swype/connect/util/Alarm$Builder;->build()Lcom/nuance/swype/connect/util/Alarm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/connect/util/Alarm;->cancel()V

    .line 62
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/SessionManager$1;->this$0:Lcom/nuance/swype/connect/manager/SessionManager;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/manager/SessionManager;->poll()V

    .line 64
    :cond_0
    return-void

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/SessionManager$1;->this$0:Lcom/nuance/swype/connect/manager/SessionManager;

    const/16 v1, 0x14

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/nuance/swype/connect/manager/SessionManager;->pollingInterval:I

    goto :goto_0
.end method
