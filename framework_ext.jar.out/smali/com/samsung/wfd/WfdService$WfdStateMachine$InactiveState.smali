.class Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;
.super Lcom/android/internal/util/State;
.source "WfdService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wfd/WfdService$WfdStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InactiveState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;


# direct methods
.method constructor <init>(Lcom/samsung/wfd/WfdService$WfdStateMachine;)V
    .locals 0

    .prologue
    .line 1655
    iput-object p1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 1658
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v0, v0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Enter InactiveState"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 1659
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 10
    .parameter "message"

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1663
    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v3, v3, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 1664
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.net.wifi.wfd.WFDSourceService"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1665
    .local v1, intent:Landroid/content/Intent;
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    move v3, v4

    .line 1964
    :goto_0
    return v3

    .line 1676
    :sswitch_0
    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v3, v3, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v4, "Enable Wi-Fi Display dialog"

    invoke-virtual {v3, v4}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 1677
    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v3, v3, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v3}, Lcom/samsung/wfd/WfdService;->access$300(Lcom/samsung/wfd/WfdService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-eq v3, v9, :cond_0

    .line 1678
    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v3, v3, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    iget-object v4, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v4, v4, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWifiP2pEnabled:Z
    invoke-static {v4}, Lcom/samsung/wfd/WfdService;->access$200(Lcom/samsung/wfd/WfdService;)Z

    move-result v4

    #setter for: Lcom/samsung/wfd/WfdService;->bPreviousWifiMode:Z
    invoke-static {v3, v4}, Lcom/samsung/wfd/WfdService;->access$702(Lcom/samsung/wfd/WfdService;Z)Z

    .line 1681
    :cond_0
    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v3, v3, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWifiP2pEnabled:Z
    invoke-static {v3}, Lcom/samsung/wfd/WfdService;->access$200(Lcom/samsung/wfd/WfdService;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1682
    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v3, v3, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #calls: Lcom/samsung/wfd/WfdService;->startWfdRoutine()V
    invoke-static {v3}, Lcom/samsung/wfd/WfdService;->access$600(Lcom/samsung/wfd/WfdService;)V

    .line 1683
    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v3, v3, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v4, "p2p already enable! so setWfdParam..."

    invoke-virtual {v3, v4}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 1689
    :goto_1
    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v3, v3, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #setter for: Lcom/samsung/wfd/WfdService;->mWifiP2pTrigger:Z
    invoke-static {v3, v5}, Lcom/samsung/wfd/WfdService;->access$3102(Lcom/samsung/wfd/WfdService;Z)Z

    .line 1691
    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v3, v3, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #setter for: Lcom/samsung/wfd/WfdService;->mWfdEnabledFromPicker:Z
    invoke-static {v3, v5}, Lcom/samsung/wfd/WfdService;->access$502(Lcom/samsung/wfd/WfdService;Z)Z

    .line 1692
    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v3, v3, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #calls: Lcom/samsung/wfd/WfdService;->setWfdState(I)V
    invoke-static {v3, v9}, Lcom/samsung/wfd/WfdService;->access$400(Lcom/samsung/wfd/WfdService;I)V

    .line 1694
    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v3, v3, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdRestartTrigger:Z
    invoke-static {v3}, Lcom/samsung/wfd/WfdService;->access$800(Lcom/samsung/wfd/WfdService;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v3, v3, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdRestartOngoing:Z
    invoke-static {v3}, Lcom/samsung/wfd/WfdService;->access$3600(Lcom/samsung/wfd/WfdService;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1695
    :cond_1
    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    invoke-virtual {v3}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->sendWfdPickerStartBroadCast()V

    :cond_2
    :goto_2
    move v3, v5

    .line 1964
    goto :goto_0

    .line 1685
    :cond_3
    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v3, v3, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v4, "now p2p enable!"

    invoke-virtual {v3, v4}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 1687
    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    #calls: Lcom/samsung/wfd/WfdService$WfdStateMachine;->enableWiFiP2P()V
    invoke-static {v3}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->access$3500(Lcom/samsung/wfd/WfdService$WfdStateMachine;)V

    goto :goto_1

    .line 1700
    :sswitch_1
    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v3, v3, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v6, "recv wfd start msg...START_RTSP"

    invoke-virtual {v3, v6}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 1702
    new-instance v3, Landroid/os/DVFSHelper;

    iget-object v6, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v6, v6, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/samsung/wfd/WfdService;->access$3300(Lcom/samsung/wfd/WfdService;)Landroid/content/Context;

    move-result-object v6

    const/16 v7, 0xc

    invoke-direct {v3, v6, v7}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    invoke-static {v3}, Lcom/samsung/wfd/WfdService;->access$3702(Landroid/os/DVFSHelper;)Landroid/os/DVFSHelper;

    .line 1703
    invoke-static {}, Lcom/samsung/wfd/WfdService;->access$3700()Landroid/os/DVFSHelper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/DVFSHelper;->getSupportedCPUFrequency()[I

    move-result-object v2

    .line 1704
    .local v2, supportedCPUFreqTable:[I
    if-eqz v2, :cond_4

    .line 1705
    const-string v3, "WFDService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "supportedFreq : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v2, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1706
    invoke-static {}, Lcom/samsung/wfd/WfdService;->access$3700()Landroid/os/DVFSHelper;

    move-result-object v3

    const-string v6, "CPU"

    aget v7, v2, v4

    int-to-long v7, v7

    invoke-virtual {v3, v6, v7, v8}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 1708
    :cond_4
    invoke-static {}, Lcom/samsung/wfd/WfdService;->access$3700()Landroid/os/DVFSHelper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/DVFSHelper;->acquire()V

    .line 1710
    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    #calls: Lcom/samsung/wfd/WfdService$WfdStateMachine;->showNotification()V
    invoke-static {v3}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->access$3800(Lcom/samsung/wfd/WfdService$WfdStateMachine;)V

    .line 1712
    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v3, v3, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mFrequencyWfd:I
    invoke-static {v3}, Lcom/samsung/wfd/WfdService;->access$1500(Lcom/samsung/wfd/WfdService;)I

    move-result v3

    if-eqz v3, :cond_5

    .line 1713
    const-string v3, "freq"

    iget-object v6, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v6, v6, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mFrequencyWfd:I
    invoke-static {v6}, Lcom/samsung/wfd/WfdService;->access$1500(Lcom/samsung/wfd/WfdService;)I

    move-result v6

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1714
    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v3, v3, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "putExtra frequency:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v7, v7, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mFrequencyWfd:I
    invoke-static {v7}, Lcom/samsung/wfd/WfdService;->access$1500(Lcom/samsung/wfd/WfdService;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 1727
    :cond_5
    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v3, v3, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v3}, Lcom/samsung/wfd/WfdService;->access$3900(Lcom/samsung/wfd/WfdService;)Landroid/net/wifi/WifiManager;

    move-result-object v3

    if-nez v3, :cond_6

    .line 1728
    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v6, v3, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v3, v3, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/samsung/wfd/WfdService;->access$3300(Lcom/samsung/wfd/WfdService;)Landroid/content/Context;

    move-result-object v3

    const-string v7, "wifi"

    invoke-virtual {v3, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    #setter for: Lcom/samsung/wfd/WfdService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v6, v3}, Lcom/samsung/wfd/WfdService;->access$3902(Lcom/samsung/wfd/WfdService;Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiManager;

    .line 1730
    :cond_6
    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v3, v3, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    iget-object v6, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v6, v6, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v6}, Lcom/samsung/wfd/WfdService;->access$3900(Lcom/samsung/wfd/WfdService;)Landroid/net/wifi/WifiManager;

    move-result-object v6

    const-string v7, "WFDService"

    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiManager;->createWifiLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v6

    #setter for: Lcom/samsung/wfd/WfdService;->mWiFiLock:Landroid/net/wifi/WifiManager$WifiLock;
    invoke-static {v3, v6}, Lcom/samsung/wfd/WfdService;->access$4002(Lcom/samsung/wfd/WfdService;Landroid/net/wifi/WifiManager$WifiLock;)Landroid/net/wifi/WifiManager$WifiLock;

    .line 1731
    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v3, v3, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWiFiLock:Landroid/net/wifi/WifiManager$WifiLock;
    invoke-static {v3}, Lcom/samsung/wfd/WfdService;->access$4000(Lcom/samsung/wfd/WfdService;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 1732
    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v3, v3, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWiFiLock:Landroid/net/wifi/WifiManager$WifiLock;
    invoke-static {v3}, Lcom/samsung/wfd/WfdService;->access$4000(Lcom/samsung/wfd/WfdService;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 1733
    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v3, v3, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v6, "wifi lock acquire!"

    invoke-virtual {v3, v6}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 1736
    :cond_7
    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v3, v3, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v6, "Create RemoteDisplay"

    invoke-virtual {v3, v6}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 1737
    const-string v3, "wlan.wfd.status"

    const-string v6, "connected"

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1738
    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v3, v3, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #setter for: Lcom/samsung/wfd/WfdService;->mUseRTSPService:Z
    invoke-static {v3, v5}, Lcom/samsung/wfd/WfdService;->access$1702(Lcom/samsung/wfd/WfdService;Z)Z

    .line 1739
    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v3, v3, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #setter for: Lcom/samsung/wfd/WfdService;->mConnectedDeviceHDCP:I
    invoke-static {v3, v5}, Lcom/samsung/wfd/WfdService;->access$4102(Lcom/samsung/wfd/WfdService;I)I

    .line 1740
    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v3, v3, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    const/4 v6, 0x3

    #calls: Lcom/samsung/wfd/WfdService;->setWfdState(I)V
    invoke-static {v3, v6}, Lcom/samsung/wfd/WfdService;->access$400(Lcom/samsung/wfd/WfdService;I)V

    .line 1745
    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v3, v3, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdMode:I
    invoke-static {v3}, Lcom/samsung/wfd/WfdService;->access$1000(Lcom/samsung/wfd/WfdService;)I

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v3, v3, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdMode:I
    invoke-static {v3}, Lcom/samsung/wfd/WfdService;->access$1000(Lcom/samsung/wfd/WfdService;)I

    move-result v3

    if-ne v3, v5, :cond_9

    .line 1746
    :cond_8
    const-string v3, "0"

    invoke-static {v4, v3}, Landroid/media/RemoteDisplay;->setParam(ILjava/lang/String;)I

    .line 1747
    const-string v3, "1280"

    invoke-static {v5, v3}, Landroid/media/RemoteDisplay;->setParam(ILjava/lang/String;)I

    .line 1748
    const-string v3, "720"

    invoke-static {v9, v3}, Landroid/media/RemoteDisplay;->setParam(ILjava/lang/String;)I

    .line 1751
    :cond_9
    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v3, v3, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/samsung/wfd/WfdService;->access$3300(Lcom/samsung/wfd/WfdService;)Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState$1;

    invoke-direct {v4, p0}, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState$1;-><init>(Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;)V

    invoke-static {v3, v4}, Landroid/media/RemoteDisplayCallback;->setContext(Landroid/content/Context;Landroid/media/RemoteDisplayCallback$Listener;)V

    .line 1778
    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v3, v3, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v4, "192.168.3.101:7236"

    new-instance v6, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState$2;

    invoke-direct {v6, p0}, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState$2;-><init>(Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;)V

    iget-object v7, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v7, v7, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mRemoteDisplayHandler:Lcom/samsung/wfd/WfdService$WifiDisplayHandler;
    invoke-static {v7}, Lcom/samsung/wfd/WfdService;->access$4700(Lcom/samsung/wfd/WfdService;)Lcom/samsung/wfd/WfdService$WifiDisplayHandler;

    move-result-object v7

    invoke-static {v4, v6, v7}, Landroid/media/RemoteDisplay;->listen(Ljava/lang/String;Landroid/media/RemoteDisplay$Listener;Landroid/os/Handler;)Landroid/media/RemoteDisplay;

    move-result-object v4

    #setter for: Lcom/samsung/wfd/WfdService;->mRemoteDisplay:Landroid/media/RemoteDisplay;
    invoke-static {v3, v4}, Lcom/samsung/wfd/WfdService;->access$4502(Lcom/samsung/wfd/WfdService;Landroid/media/RemoteDisplay;)Landroid/media/RemoteDisplay;

    goto/16 :goto_2

    .line 1866
    .end local v2           #supportedCPUFreqTable:[I
    :sswitch_2
    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v3, v3, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v4, "recv weak network notification"

    invoke-virtual {v3, v4}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 1867
    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    #calls: Lcom/samsung/wfd/WfdService$WfdStateMachine;->showWeakNetworkNotification()V
    invoke-static {v3}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->access$4400(Lcom/samsung/wfd/WfdService$WfdStateMachine;)V

    goto/16 :goto_2

    .line 1871
    :sswitch_3
    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v3, v3, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v4, "recv bluetooth or earphone on notification"

    invoke-virtual {v3, v4}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 1872
    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    #calls: Lcom/samsung/wfd/WfdService$WfdStateMachine;->showTerminatedByAudioNotification()V
    invoke-static {v3}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->access$4300(Lcom/samsung/wfd/WfdService$WfdStateMachine;)V

    goto/16 :goto_2

    .line 1876
    :sswitch_4
    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v3, v3, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v6, "Disble Wi-Fi Display"

    invoke-virtual {v3, v6}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 1878
    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v3, v3, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWiFiLock:Landroid/net/wifi/WifiManager$WifiLock;
    invoke-static {v3}, Lcom/samsung/wfd/WfdService;->access$4000(Lcom/samsung/wfd/WfdService;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v3, v3, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWiFiLock:Landroid/net/wifi/WifiManager$WifiLock;
    invoke-static {v3}, Lcom/samsung/wfd/WfdService;->access$4000(Lcom/samsung/wfd/WfdService;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1879
    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v3, v3, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWiFiLock:Landroid/net/wifi/WifiManager$WifiLock;
    invoke-static {v3}, Lcom/samsung/wfd/WfdService;->access$4000(Lcom/samsung/wfd/WfdService;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 1880
    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v3, v3, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #setter for: Lcom/samsung/wfd/WfdService;->mWiFiLock:Landroid/net/wifi/WifiManager$WifiLock;
    invoke-static {v3, v8}, Lcom/samsung/wfd/WfdService;->access$4002(Lcom/samsung/wfd/WfdService;Landroid/net/wifi/WifiManager$WifiLock;)Landroid/net/wifi/WifiManager$WifiLock;

    .line 1881
    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v3, v3, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v6, "wifi lock release!"

    invoke-virtual {v3, v6}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 1884
    :cond_a
    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v3, v3, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #calls: Lcom/samsung/wfd/WfdService;->WfdStopHDCPSuspend()V
    invoke-static {v3}, Lcom/samsung/wfd/WfdService;->access$4800(Lcom/samsung/wfd/WfdService;)V

    .line 1886
    const-string v3, "wlan.wfd.status"

    const-string v6, "disconnected"

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1888
    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v3, v3, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #setter for: Lcom/samsung/wfd/WfdService;->mWfdEnabledFromPicker:Z
    invoke-static {v3, v4}, Lcom/samsung/wfd/WfdService;->access$502(Lcom/samsung/wfd/WfdService;Z)Z

    .line 1889
    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v3, v3, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mUseRTSPService:Z
    invoke-static {v3}, Lcom/samsung/wfd/WfdService;->access$1700(Lcom/samsung/wfd/WfdService;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1912
    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v3, v3, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v6, "Delete RemoteDisplay"

    invoke-virtual {v3, v6}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 1913
    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v3, v3, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #calls: Lcom/samsung/wfd/WfdService;->setWfdState(I)V
    invoke-static {v3, v4}, Lcom/samsung/wfd/WfdService;->access$400(Lcom/samsung/wfd/WfdService;I)V

    .line 1914
    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v3, v3, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #calls: Lcom/samsung/wfd/WfdService;->broadcastWfdSessionState(I)V
    invoke-static {v3, v4}, Lcom/samsung/wfd/WfdService;->access$4900(Lcom/samsung/wfd/WfdService;I)V

    .line 1915
    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v3, v3, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mRemoteDisplay:Landroid/media/RemoteDisplay;
    invoke-static {v3}, Lcom/samsung/wfd/WfdService;->access$4500(Lcom/samsung/wfd/WfdService;)Landroid/media/RemoteDisplay;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/RemoteDisplay;->dispose()V

    .line 1916
    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v3, v3, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #setter for: Lcom/samsung/wfd/WfdService;->mRemoteDisplay:Landroid/media/RemoteDisplay;
    invoke-static {v3, v8}, Lcom/samsung/wfd/WfdService;->access$4502(Lcom/samsung/wfd/WfdService;Landroid/media/RemoteDisplay;)Landroid/media/RemoteDisplay;

    .line 1917
    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    #calls: Lcom/samsung/wfd/WfdService$WfdStateMachine;->terminateWfdRoutine(I)V
    invoke-static {v3, v4}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->access$5000(Lcom/samsung/wfd/WfdService$WfdStateMachine;I)V

    .line 1918
    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v3, v3, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #setter for: Lcom/samsung/wfd/WfdService;->mUseRTSPService:Z
    invoke-static {v3, v4}, Lcom/samsung/wfd/WfdService;->access$1702(Lcom/samsung/wfd/WfdService;Z)Z

    goto/16 :goto_2

    .line 1921
    :cond_b
    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    #calls: Lcom/samsung/wfd/WfdService$WfdStateMachine;->terminateWfdRoutine(I)V
    invoke-static {v3, v9}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->access$5000(Lcom/samsung/wfd/WfdService$WfdStateMachine;I)V

    goto/16 :goto_2

    .line 1927
    :sswitch_5
    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v3, v3, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v6, "recv wfd stop msg...STOP_RTSP"

    invoke-virtual {v3, v6}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 1929
    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v3, v3, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mUseRTSPService:Z
    invoke-static {v3}, Lcom/samsung/wfd/WfdService;->access$1700(Lcom/samsung/wfd/WfdService;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1931
    :try_start_0
    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v3, v3, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v6, "try to stopService..!"

    invoke-virtual {v3, v6}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 1932
    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v3, v3, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mContext:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v7, v7, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/samsung/wfd/WfdService;->access$3300(Lcom/samsung/wfd/WfdService;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " intent:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 1934
    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v3, v3, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/samsung/wfd/WfdService;->access$3300(Lcom/samsung/wfd/WfdService;)Landroid/content/Context;

    move-result-object v3

    iget-object v6, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v6, v6, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdSourceConnection:Landroid/content/ServiceConnection;
    invoke-static {v6}, Lcom/samsung/wfd/WfdService;->access$5100(Lcom/samsung/wfd/WfdService;)Landroid/content/ServiceConnection;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1939
    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v3, v3, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    :goto_3
    #setter for: Lcom/samsung/wfd/WfdService;->mUseRTSPService:Z
    invoke-static {v3, v4}, Lcom/samsung/wfd/WfdService;->access$1702(Lcom/samsung/wfd/WfdService;Z)Z

    .line 1944
    :cond_c
    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    #calls: Lcom/samsung/wfd/WfdService$WfdStateMachine;->terminateWfdRoutine(I)V
    invoke-static {v3, v5}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->access$5000(Lcom/samsung/wfd/WfdService$WfdStateMachine;I)V

    goto/16 :goto_2

    .line 1935
    :catch_0
    move-exception v0

    .line 1936
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v3, v3, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v6, "catch Exception @ stopService"

    invoke-virtual {v3, v6}, Lcom/samsung/wfd/WfdService;->loge(Ljava/lang/String;)V

    .line 1937
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1939
    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v3, v3, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    goto :goto_3

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    iget-object v5, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v5, v5, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #setter for: Lcom/samsung/wfd/WfdService;->mUseRTSPService:Z
    invoke-static {v5, v4}, Lcom/samsung/wfd/WfdService;->access$1702(Lcom/samsung/wfd/WfdService;Z)Z

    throw v3

    .line 1948
    :sswitch_6
    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v3, v3, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v4, "Resume RTSP session"

    invoke-virtual {v3, v4}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1953
    :sswitch_7
    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v3, v3, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v4, "Pause RTSP session"

    invoke-virtual {v3, v4}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1958
    :sswitch_8
    iget-object v3, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    #calls: Lcom/samsung/wfd/WfdService$WfdStateMachine;->updateResources()V
    invoke-static {v3}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->access$5200(Lcom/samsung/wfd/WfdService$WfdStateMachine;)V

    goto/16 :goto_2

    .line 1665
    :sswitch_data_0
    .sparse-switch
        0x22068 -> :sswitch_4
        0x2206b -> :sswitch_1
        0x2206c -> :sswitch_5
        0x2206d -> :sswitch_6
        0x2206e -> :sswitch_7
        0x2206f -> :sswitch_0
        0x2207a -> :sswitch_2
        0x2207c -> :sswitch_3
        0x22080 -> :sswitch_8
    .end sparse-switch
.end method
