.class Landroid/net/wifi/p2p/WifiP2pService$WifiStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiP2pService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/WifiP2pService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/p2p/WifiP2pService;


# direct methods
.method private constructor <init>(Landroid/net/wifi/p2p/WifiP2pService;)V
    .locals 0

    .prologue
    .line 470
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService$WifiStateReceiver;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/wifi/p2p/WifiP2pService;Landroid/net/wifi/p2p/WifiP2pService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 470
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$WifiStateReceiver;-><init>(Landroid/net/wifi/p2p/WifiP2pService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    .line 473
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 474
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 475
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$WifiStateReceiver;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    const-string v2, "wifi_state"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mWifiState:I
    invoke-static {v1, v2}, Landroid/net/wifi/p2p/WifiP2pService;->access$502(Landroid/net/wifi/p2p/WifiP2pService;I)I

    .line 491
    :cond_0
    :goto_0
    return-void

    .line 477
    :cond_1
    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 478
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$WifiStateReceiver;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    const-string v2, "wifi_state"

    const/16 v3, 0xb

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mWifiApState:I
    invoke-static {v1, v2}, Landroid/net/wifi/p2p/WifiP2pService;->access$602(Landroid/net/wifi/p2p/WifiP2pService;I)I

    goto :goto_0

    .line 481
    :cond_2
    const-string v1, "com.android.server.enterprise.WFD_DISABLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 482
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$WifiStateReceiver;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$700(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/sec/enterprise/RestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$WifiStateReceiver;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$700(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/sec/enterprise/RestrictionPolicy;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/sec/enterprise/RestrictionPolicy;->isWifiDirectAllowed(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 483
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$WifiStateReceiver;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mP2pStateMachine:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$300(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-result-object v1

    const v2, 0x22010

    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 487
    :cond_3
    const-string v1, "android.net.wifi.p2p.STOPFIND_TIMER_EXPIRED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 488
    const-string v1, "WifiP2pService"

    const-string v2, "ACTION_P2P_STOPFIND_TIMER_EXPIRED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$WifiStateReceiver;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mP2pStateMachine:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$300(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-result-object v1

    const v2, 0x22004

    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0
.end method
