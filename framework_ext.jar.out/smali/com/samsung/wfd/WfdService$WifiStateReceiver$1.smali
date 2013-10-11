.class Lcom/samsung/wfd/WfdService$WifiStateReceiver$1;
.super Ljava/lang/Object;
.source "WfdService.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/wfd/WfdService$WifiStateReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/wfd/WfdService$WifiStateReceiver;


# direct methods
.method constructor <init>(Lcom/samsung/wfd/WfdService$WifiStateReceiver;)V
    .locals 0

    .prologue
    .line 762
    iput-object p1, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver$1;->this$1:Lcom/samsung/wfd/WfdService$WifiStateReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method checkValidateConnectedDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Z
    .locals 2
    .parameter "owner"

    .prologue
    const/4 v0, 0x1

    .line 798
    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->isSessionAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->getDeviceType()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 801
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onGroupInfoAvailable(Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .locals 6
    .parameter "group"

    .prologue
    .line 765
    const/4 v2, 0x0

    .line 767
    .local v2, sinkDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getPassphrase()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getPassphrase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Groupcast"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 768
    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getClientList()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 769
    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver$1;->this$1:Lcom/samsung/wfd/WfdService$WifiStateReceiver;

    iget-object v3, v3, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "abort! Group list size is expected 1, but actual is : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getClientList()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 794
    :cond_0
    :goto_0
    return-void

    .line 773
    :cond_1
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 774
    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver$1;->this$1:Lcom/samsung/wfd/WfdService$WifiStateReceiver;

    iget-object v3, v3, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v4, "sink device is group client"

    invoke-virtual {v3, v4}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 775
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getClientList()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 776
    .local v0, c:Landroid/net/wifi/p2p/WifiP2pDevice;
    move-object v2, v0

    goto :goto_1

    .line 779
    .end local v0           #c:Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_2
    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver$1;->this$1:Lcom/samsung/wfd/WfdService$WifiStateReceiver;

    iget-object v3, v3, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v4, "sink device is group owner"

    invoke-virtual {v3, v4}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 780
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v2

    .line 783
    :cond_3
    invoke-virtual {p0, v2}, Lcom/samsung/wfd/WfdService$WifiStateReceiver$1;->checkValidateConnectedDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 784
    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver$1;->this$1:Lcom/samsung/wfd/WfdService$WifiStateReceiver;

    iget-object v3, v3, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v4, "connected device is invalid"

    invoke-virtual {v3, v4}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 789
    :cond_4
    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver$1;->this$1:Lcom/samsung/wfd/WfdService$WifiStateReceiver;

    iget-object v3, v3, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mUseRTSPService:Z
    invoke-static {v3}, Lcom/samsung/wfd/WfdService;->access$1700(Lcom/samsung/wfd/WfdService;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 790
    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver$1;->this$1:Lcom/samsung/wfd/WfdService$WifiStateReceiver;

    iget-object v3, v3, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v4, "send wfd start msg"

    invoke-virtual {v3, v4}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 791
    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver$1;->this$1:Lcom/samsung/wfd/WfdService$WifiStateReceiver;

    iget-object v3, v3, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    const/4 v4, 0x3

    #calls: Lcom/samsung/wfd/WfdService;->setWfdState(I)V
    invoke-static {v3, v4}, Lcom/samsung/wfd/WfdService;->access$400(Lcom/samsung/wfd/WfdService;I)V

    .line 792
    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WifiStateReceiver$1;->this$1:Lcom/samsung/wfd/WfdService$WifiStateReceiver;

    iget-object v3, v3, Lcom/samsung/wfd/WfdService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdStateMachine:Lcom/samsung/wfd/WfdService$WfdStateMachine;
    invoke-static {v3}, Lcom/samsung/wfd/WfdService;->access$1100(Lcom/samsung/wfd/WfdService;)Lcom/samsung/wfd/WfdService$WfdStateMachine;

    move-result-object v3

    const v4, 0x2206b

    invoke-virtual {v3, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0
.end method
