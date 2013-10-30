.class Lcom/nuance/swype/connect/manager/ReportingManager$1;
.super Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;
.source "ReportingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/connect/manager/ReportingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/connect/manager/ReportingManager;


# direct methods
.method constructor <init>(Lcom/nuance/swype/connect/manager/ReportingManager;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/nuance/swype/connect/manager/ReportingManager$1;->this$0:Lcom/nuance/swype/connect/manager/ReportingManager;

    invoke-direct {p0}, Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationIntChange(I)V
    .locals 4
    .parameter "value"

    .prologue
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "aggregateChangeListener.setConfiguration("

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

    .line 84
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/ReportingManager$1;->this$0:Lcom/nuance/swype/connect/manager/ReportingManager;

    iput p1, v0, Lcom/nuance/swype/connect/manager/ReportingManager;->reportingAggregateInterval:I

    .line 87
    new-instance v0, Lcom/nuance/swype/connect/util/Alarm$Builder;

    iget-object v1, p0, Lcom/nuance/swype/connect/manager/ReportingManager$1;->this$0:Lcom/nuance/swype/connect/manager/ReportingManager;

    iget-object v1, v1, Lcom/nuance/swype/connect/manager/ReportingManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v1}, Lcom/nuance/swype/connect/ConnectClient;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/nuance/swype/connect/manager/ReportingManager;

    const-string v3, "AGGREGATE_GENERIC"

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/swype/connect/util/Alarm$Builder;-><init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nuance/swype/connect/util/Alarm$Builder;->build()Lcom/nuance/swype/connect/util/Alarm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/connect/util/Alarm;->cancel()V

    .line 90
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/ReportingManager$1;->this$0:Lcom/nuance/swype/connect/manager/ReportingManager;

    iget-object v0, v0, Lcom/nuance/swype/connect/manager/ReportingManager;->managerStartState:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    sget-object v1, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;->STARTED:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/ReportingManager$1;->this$0:Lcom/nuance/swype/connect/manager/ReportingManager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    #calls: Lcom/nuance/swype/connect/manager/ReportingManager;->sendReportTracking(ZZ)V
    invoke-static {v0, v1, v2}, Lcom/nuance/swype/connect/manager/ReportingManager;->access$000(Lcom/nuance/swype/connect/manager/ReportingManager;ZZ)V

    .line 93
    :cond_0
    return-void
.end method
