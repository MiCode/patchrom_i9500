.class Lcom/samsung/wfd/WfdSinkService$WifiStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WfdSinkService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wfd/WfdSinkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/wfd/WfdSinkService;


# direct methods
.method private constructor <init>(Lcom/samsung/wfd/WfdSinkService;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/samsung/wfd/WfdSinkService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdSinkService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/wfd/WfdSinkService;Lcom/samsung/wfd/WfdSinkService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/samsung/wfd/WfdSinkService$WifiStateReceiver;-><init>(Lcom/samsung/wfd/WfdSinkService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 103
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 104
    .local v6, action:Ljava/lang/String;
    const-string v0, "WfdSinkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "intent received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const-string v0, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    const-string v0, "wifi_p2p_state"

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 109
    .local v9, state:I
    const/4 v0, 0x2

    if-ne v9, v0, :cond_0

    .line 110
    const-string v0, "WfdSinkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wifi P2p state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , WifiP2pManager.WIFI_P2P_STATE_ENABLED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v0, p0, Lcom/samsung/wfd/WfdSinkService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdSinkService;

    #calls: Lcom/samsung/wfd/WfdSinkService;->turnOnListenMode()V
    invoke-static {v0}, Lcom/samsung/wfd/WfdSinkService;->access$100(Lcom/samsung/wfd/WfdSinkService;)V

    .line 173
    .end local v9           #state:I
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    const-string v0, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 115
    const-string v0, "wifiP2pInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Landroid/net/wifi/p2p/WifiP2pInfo;

    .line 116
    .local v11, wifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;
    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/net/NetworkInfo;

    .line 118
    .local v8, networkInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 119
    const-string v0, "WfdSinkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "address "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v11, Landroid/net/wifi/p2p/WifiP2pInfo;->groupOwnerAddress:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 123
    :cond_2
    iget-object v0, p0, Lcom/samsung/wfd/WfdSinkService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdSinkService;

    #calls: Lcom/samsung/wfd/WfdSinkService;->turnOnListenMode()V
    invoke-static {v0}, Lcom/samsung/wfd/WfdSinkService;->access$100(Lcom/samsung/wfd/WfdSinkService;)V

    goto :goto_0

    .line 127
    .end local v8           #networkInfo:Landroid/net/NetworkInfo;
    .end local v11           #wifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;
    :cond_3
    const-string v0, "com.samsung.wfd.P2P_CONNECTION_ESTABLISHED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 128
    const-string v0, "wifiP2pGroupInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 129
    .local v7, group:Landroid/net/wifi/p2p/WifiP2pGroup;
    if-nez v7, :cond_4

    .line 130
    const-string v0, "WfdSinkService"

    const-string v1, "EXTRA_WIFI_P2P_GROUP_INFO is null!!! check!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 137
    :cond_4
    const-string v0, "WfdSinkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCtrlPort "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/wfd/WfdSinkService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdSinkService;

    #getter for: Lcom/samsung/wfd/WfdSinkService;->mCtrlPort:I
    invoke-static {v2}, Lcom/samsung/wfd/WfdSinkService;->access$200(Lcom/samsung/wfd/WfdSinkService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v0, p0, Lcom/samsung/wfd/WfdSinkService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdSinkService;

    #getter for: Lcom/samsung/wfd/WfdSinkService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/wfd/WfdSinkService;->access$300(Lcom/samsung/wfd/WfdSinkService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "wfd"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/wfd/WfdManager;

    .line 141
    .local v10, wfdManager:Lcom/samsung/wfd/WfdManager;
    if-eqz v10, :cond_5

    invoke-virtual {v10}, Lcom/samsung/wfd/WfdManager;->getWfdState()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_5

    .line 142
    const-string v0, "WfdSinkService"

    const-string v1, "Source device can\'t launch video player"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 146
    :cond_5
    iget-object v12, p0, Lcom/samsung/wfd/WfdSinkService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdSinkService;

    new-instance v0, Lcom/samsung/wfd/WfdSinkService$WifiStateReceiver$1;

    const-wide/16 v2, 0x2710

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/wfd/WfdSinkService$WifiStateReceiver$1;-><init>(Lcom/samsung/wfd/WfdSinkService$WifiStateReceiver;JJ)V

    #setter for: Lcom/samsung/wfd/WfdSinkService;->mIntentTimer:Landroid/os/CountDownTimer;
    invoke-static {v12, v0}, Lcom/samsung/wfd/WfdSinkService;->access$402(Lcom/samsung/wfd/WfdSinkService;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;

    .line 168
    iget-object v0, p0, Lcom/samsung/wfd/WfdSinkService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdSinkService;

    #getter for: Lcom/samsung/wfd/WfdSinkService;->mIntentTimer:Landroid/os/CountDownTimer;
    invoke-static {v0}, Lcom/samsung/wfd/WfdSinkService;->access$400(Lcom/samsung/wfd/WfdSinkService;)Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    goto/16 :goto_0

    .line 170
    .end local v7           #group:Landroid/net/wifi/p2p/WifiP2pGroup;
    .end local v10           #wfdManager:Lcom/samsung/wfd/WfdManager;
    :cond_6
    const-string v0, "com.samsung.wfd.P2P_CONNECTION_TERMINATED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/samsung/wfd/WfdSinkService$WifiStateReceiver;->this$0:Lcom/samsung/wfd/WfdSinkService;

    #calls: Lcom/samsung/wfd/WfdSinkService;->turnOnListenMode()V
    invoke-static {v0}, Lcom/samsung/wfd/WfdSinkService;->access$100(Lcom/samsung/wfd/WfdSinkService;)V

    goto/16 :goto_0
.end method
