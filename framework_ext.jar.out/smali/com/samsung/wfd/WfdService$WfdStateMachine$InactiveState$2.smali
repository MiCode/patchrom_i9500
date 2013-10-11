.class Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState$2;
.super Ljava/lang/Object;
.source "WfdService.java"

# interfaces
.implements Landroid/media/RemoteDisplay$Listener;


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
    .line 1778
    iput-object p1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState$2;->this$2:Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayConnected(Landroid/view/Surface;III)V
    .locals 3
    .parameter "surface"
    .parameter "width"
    .parameter "height"
    .parameter "flags"

    .prologue
    .line 1781
    const-string v0, "WFDService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDisplayConnected: w:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " h:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " f:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1782
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState$2;->this$2:Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;

    iget-object v0, v0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v0, v0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #setter for: Lcom/samsung/wfd/WfdService;->mConnectedDeviceHDCP:I
    invoke-static {v0, p4}, Lcom/samsung/wfd/WfdService;->access$4102(Lcom/samsung/wfd/WfdService;I)I

    .line 1784
    invoke-static {}, Lcom/samsung/wfd/WfdService;->access$3700()Landroid/os/DVFSHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 1785
    const-string v0, "WFDService"

    const-string v1, "before calling mWfdUibcManager.start api"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1787
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState$2;->this$2:Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;

    iget-object v0, v0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v0, v0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdUibcManager:Lcom/samsung/wfd/WFDUibcManager;
    invoke-static {v0}, Lcom/samsung/wfd/WfdService;->access$4600(Lcom/samsung/wfd/WfdService;)Lcom/samsung/wfd/WFDUibcManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/wfd/WFDUibcManager;->setCoupleShotMode(Z)V

    .line 1788
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState$2;->this$2:Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;

    iget-object v0, v0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v0, v0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdMode:I
    invoke-static {v0}, Lcom/samsung/wfd/WfdService;->access$1000(Lcom/samsung/wfd/WfdService;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1790
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState$2;->this$2:Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;

    iget-object v0, v0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v0, v0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdUibcManager:Lcom/samsung/wfd/WFDUibcManager;
    invoke-static {v0}, Lcom/samsung/wfd/WfdService;->access$4600(Lcom/samsung/wfd/WfdService;)Lcom/samsung/wfd/WFDUibcManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/wfd/WFDUibcManager;->setCoupleShotMode(Z)V

    .line 1792
    :cond_0
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState$2;->this$2:Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;

    iget-object v0, v0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v0, v0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdUibcManager:Lcom/samsung/wfd/WFDUibcManager;
    invoke-static {v0}, Lcom/samsung/wfd/WfdService;->access$4600(Lcom/samsung/wfd/WfdService;)Lcom/samsung/wfd/WFDUibcManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/wfd/WFDUibcManager;->start()Z

    .line 1795
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState$2;->this$2:Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;

    iget-object v0, v0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v0, v0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    const/4 v1, 0x5

    #calls: Lcom/samsung/wfd/WfdService;->setWfdState(I)V
    invoke-static {v0, v1}, Lcom/samsung/wfd/WfdService;->access$400(Lcom/samsung/wfd/WfdService;I)V

    .line 1807
    return-void
.end method

.method public onDisplayDisconnected()V
    .locals 2

    .prologue
    .line 1811
    const-string v0, "WFDService"

    const-string v1, "onDisplayDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1813
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState$2;->this$2:Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;

    iget-object v0, v0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v0, v0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdUibcManager:Lcom/samsung/wfd/WFDUibcManager;
    invoke-static {v0}, Lcom/samsung/wfd/WfdService;->access$4600(Lcom/samsung/wfd/WfdService;)Lcom/samsung/wfd/WFDUibcManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/wfd/WFDUibcManager;->stop()Z

    .line 1815
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState$2;->this$2:Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;

    iget-object v0, v0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v0, v0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdStateMachine:Lcom/samsung/wfd/WfdService$WfdStateMachine;
    invoke-static {v0}, Lcom/samsung/wfd/WfdService;->access$1100(Lcom/samsung/wfd/WfdService;)Lcom/samsung/wfd/WfdService$WfdStateMachine;

    move-result-object v0

    const v1, 0x22068

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 1824
    return-void
.end method

.method public onDisplayError(I)V
    .locals 5
    .parameter "error"

    .prologue
    const/4 v4, 0x1

    .line 1829
    iget-object v2, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState$2;->this$2:Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;

    iget-object v2, v2, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v2, v2, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdUibcManager:Lcom/samsung/wfd/WFDUibcManager;
    invoke-static {v2}, Lcom/samsung/wfd/WfdService;->access$4600(Lcom/samsung/wfd/WfdService;)Lcom/samsung/wfd/WFDUibcManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/wfd/WFDUibcManager;->stop()Z

    .line 1831
    const-string v2, "WFDService"

    const-string v3, "onDisplayError"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1832
    iget-object v2, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState$2;->this$2:Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;

    iget-object v2, v2, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v2, v2, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mKeepP2pConnection:Z
    invoke-static {v2}, Lcom/samsung/wfd/WfdService;->access$900(Lcom/samsung/wfd/WfdService;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1833
    iget-object v2, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState$2;->this$2:Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;

    iget-object v2, v2, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v2, v2, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    const v3, 0x22083

    #calls: Lcom/samsung/wfd/WfdService;->sendWfdBrokerStartForPopup(I)V
    invoke-static {v2, v3}, Lcom/samsung/wfd/WfdService;->access$1900(Lcom/samsung/wfd/WfdService;I)V

    .line 1842
    :goto_0
    const/4 v2, 0x4

    if-ne p1, v2, :cond_0

    iget-object v2, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState$2;->this$2:Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;

    iget-object v2, v2, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v2, v2, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdMode:I
    invoke-static {v2}, Lcom/samsung/wfd/WfdService;->access$1000(Lcom/samsung/wfd/WfdService;)I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 1845
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 1846
    .local v1, r:Landroid/content/res/Resources;
    const v2, 0x1040659

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1847
    .local v0, message:Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState$2;->this$2:Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;

    iget-object v2, v2, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v2, v2, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/samsung/wfd/WfdService;->access$3300(Lcom/samsung/wfd/WfdService;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1860
    .end local v0           #message:Ljava/lang/CharSequence;
    .end local v1           #r:Landroid/content/res/Resources;
    :cond_0
    return-void

    .line 1836
    :cond_1
    const/4 v2, 0x3

    if-ne p1, v2, :cond_2

    .line 1837
    iget-object v2, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState$2;->this$2:Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;

    iget-object v2, v2, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v2, v2, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    const v3, 0x22081

    #calls: Lcom/samsung/wfd/WfdService;->sendWfdBrokerStartForPopup(I)V
    invoke-static {v2, v3}, Lcom/samsung/wfd/WfdService;->access$1900(Lcom/samsung/wfd/WfdService;I)V

    goto :goto_0

    .line 1839
    :cond_2
    iget-object v2, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState$2;->this$2:Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;

    iget-object v2, v2, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v2, v2, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    const v3, 0x2207b

    #calls: Lcom/samsung/wfd/WfdService;->sendWfdBrokerStartForPopup(I)V
    invoke-static {v2, v3}, Lcom/samsung/wfd/WfdService;->access$1900(Lcom/samsung/wfd/WfdService;I)V

    goto :goto_0
.end method
