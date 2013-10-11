.class Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState$1;
.super Ljava/lang/Object;
.source "WfdService.java"

# interfaces
.implements Landroid/media/RemoteDisplayCallback$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->processMessage(Landroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;


# direct methods
.method constructor <init>(Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;)V
    .locals 0

    .prologue
    .line 1751
    iput-object p1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState$1;->this$2:Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHDMIConnected()V
    .locals 2

    .prologue
    .line 1754
    const-string v0, "WFDService"

    const-string v1, "onHDMIConnected! we show toast and disconnect WFD!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1755
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState$1;->this$2:Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;

    iget-object v0, v0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    #calls: Lcom/samsung/wfd/WfdService$WfdStateMachine;->showTerminatedByHDMIConnection()V
    invoke-static {v0}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->access$4200(Lcom/samsung/wfd/WfdService$WfdStateMachine;)V

    .line 1756
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState$1;->this$2:Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;

    iget-object v0, v0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v0, v0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    invoke-virtual {v0}, Lcom/samsung/wfd/WfdService;->setWfdTerminate()Z

    .line 1757
    return-void
.end method

.method public onHeadSetConnected()V
    .locals 2

    .prologue
    .line 1761
    const-string v0, "WFDService"

    const-string v1, "onHeadSetConnected! we show toast and disconnect WFD!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1762
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState$1;->this$2:Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;

    iget-object v0, v0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    #calls: Lcom/samsung/wfd/WfdService$WfdStateMachine;->showTerminatedByAudioNotification()V
    invoke-static {v0}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->access$4300(Lcom/samsung/wfd/WfdService$WfdStateMachine;)V

    .line 1763
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState$1;->this$2:Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;

    iget-object v0, v0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v0, v0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    invoke-virtual {v0}, Lcom/samsung/wfd/WfdService;->setWfdTerminate()Z

    .line 1764
    return-void
.end method

.method public onTransportChanged(I)V
    .locals 3
    .parameter "nRtpType"

    .prologue
    .line 1774
    const-string v0, "WFDService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTransportChanged! << "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1775
    return-void
.end method

.method public onWeakNetwork()V
    .locals 2

    .prologue
    .line 1768
    const-string v0, "WFDService"

    const-string v1, "onWeakNetwork! we show toast!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1769
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState$1;->this$2:Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;

    iget-object v0, v0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    #calls: Lcom/samsung/wfd/WfdService$WfdStateMachine;->showWeakNetworkNotification()V
    invoke-static {v0}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->access$4400(Lcom/samsung/wfd/WfdService$WfdStateMachine;)V

    .line 1770
    return-void
.end method
