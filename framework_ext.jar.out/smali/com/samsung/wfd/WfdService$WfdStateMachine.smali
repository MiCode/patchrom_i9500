.class Lcom/samsung/wfd/WfdService$WfdStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "WfdService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wfd/WfdService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WfdStateMachine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;,
        Lcom/samsung/wfd/WfdService$WfdStateMachine$WfdNotSupportedState;,
        Lcom/samsung/wfd/WfdService$WfdStateMachine$DefaultState;
    }
.end annotation


# instance fields
.field private mDefaultState:Lcom/samsung/wfd/WfdService$WfdStateMachine$DefaultState;

.field private mInactiveState:Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;

.field private mWfdNotSupportedState:Lcom/samsung/wfd/WfdService$WfdStateMachine$WfdNotSupportedState;

.field final synthetic this$0:Lcom/samsung/wfd/WfdService;


# direct methods
.method constructor <init>(Lcom/samsung/wfd/WfdService;Ljava/lang/String;Z)V
    .locals 2
    .parameter
    .parameter "name"
    .parameter "wfdSupported"

    .prologue
    .line 1551
    iput-object p1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    .line 1552
    invoke-direct {p0, p2}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 1547
    new-instance v0, Lcom/samsung/wfd/WfdService$WfdStateMachine$DefaultState;

    invoke-direct {v0, p0}, Lcom/samsung/wfd/WfdService$WfdStateMachine$DefaultState;-><init>(Lcom/samsung/wfd/WfdService$WfdStateMachine;)V

    iput-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->mDefaultState:Lcom/samsung/wfd/WfdService$WfdStateMachine$DefaultState;

    .line 1548
    new-instance v0, Lcom/samsung/wfd/WfdService$WfdStateMachine$WfdNotSupportedState;

    invoke-direct {v0, p0}, Lcom/samsung/wfd/WfdService$WfdStateMachine$WfdNotSupportedState;-><init>(Lcom/samsung/wfd/WfdService$WfdStateMachine;)V

    iput-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->mWfdNotSupportedState:Lcom/samsung/wfd/WfdService$WfdStateMachine$WfdNotSupportedState;

    .line 1549
    new-instance v0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;

    invoke-direct {v0, p0}, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;-><init>(Lcom/samsung/wfd/WfdService$WfdStateMachine;)V

    iput-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->mInactiveState:Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;

    .line 1554
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->mDefaultState:Lcom/samsung/wfd/WfdService$WfdStateMachine$DefaultState;

    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 1555
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->mInactiveState:Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;

    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->mDefaultState:Lcom/samsung/wfd/WfdService$WfdStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1557
    if-eqz p3, :cond_0

    .line 1558
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->mInactiveState:Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;

    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 1563
    :goto_0
    return-void

    .line 1560
    :cond_0
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->mWfdNotSupportedState:Lcom/samsung/wfd/WfdService$WfdStateMachine$WfdNotSupportedState;

    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/samsung/wfd/WfdService$WfdStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1545
    invoke-direct {p0}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->disableWiFiP2P()V

    return-void
.end method

.method static synthetic access$3400(Lcom/samsung/wfd/WfdService$WfdStateMachine;Landroid/os/Message;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 1545
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->replyToMessage(Landroid/os/Message;II)V

    return-void
.end method

.method static synthetic access$3500(Lcom/samsung/wfd/WfdService$WfdStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1545
    invoke-direct {p0}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->enableWiFiP2P()V

    return-void
.end method

.method static synthetic access$3800(Lcom/samsung/wfd/WfdService$WfdStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1545
    invoke-direct {p0}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->showNotification()V

    return-void
.end method

.method static synthetic access$4200(Lcom/samsung/wfd/WfdService$WfdStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1545
    invoke-direct {p0}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->showTerminatedByHDMIConnection()V

    return-void
.end method

.method static synthetic access$4300(Lcom/samsung/wfd/WfdService$WfdStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1545
    invoke-direct {p0}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->showTerminatedByAudioNotification()V

    return-void
.end method

.method static synthetic access$4400(Lcom/samsung/wfd/WfdService$WfdStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1545
    invoke-direct {p0}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->showWeakNetworkNotification()V

    return-void
.end method

.method static synthetic access$5000(Lcom/samsung/wfd/WfdService$WfdStateMachine;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1545
    invoke-direct {p0, p1}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->terminateWfdRoutine(I)V

    return-void
.end method

.method static synthetic access$5200(Lcom/samsung/wfd/WfdService$WfdStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1545
    invoke-direct {p0}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->updateResources()V

    return-void
.end method

.method private clearNotification()V
    .locals 3

    .prologue
    .line 2158
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/wfd/WfdService;->access$3300(Lcom/samsung/wfd/WfdService;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 2159
    .local v0, notificationManager:Landroid/app/NotificationManager;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mNotification:Landroid/app/Notification;
    invoke-static {v1}, Lcom/samsung/wfd/WfdService;->access$5800(Lcom/samsung/wfd/WfdService;)Landroid/app/Notification;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2160
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mNotification:Landroid/app/Notification;
    invoke-static {v1}, Lcom/samsung/wfd/WfdService;->access$5800(Lcom/samsung/wfd/WfdService;)Landroid/app/Notification;

    move-result-object v1

    iget v1, v1, Landroid/app/Notification;->icon:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 2162
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    const/4 v2, 0x0

    #setter for: Lcom/samsung/wfd/WfdService;->mIsShowingNotification:Z
    invoke-static {v1, v2}, Lcom/samsung/wfd/WfdService;->access$5902(Lcom/samsung/wfd/WfdService;Z)Z

    .line 2164
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    const/4 v2, 0x0

    #setter for: Lcom/samsung/wfd/WfdService;->mNotification:Landroid/app/Notification;
    invoke-static {v1, v2}, Lcom/samsung/wfd/WfdService;->access$5802(Lcom/samsung/wfd/WfdService;Landroid/app/Notification;)Landroid/app/Notification;

    .line 2166
    :cond_0
    return-void
.end method

.method private disableWiFiP2P()V
    .locals 3

    .prologue
    .line 2223
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v1, "disabling WiFi P2P"

    invoke-virtual {v0, v1}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 2225
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v0}, Lcom/samsung/wfd/WfdService;->access$1300(Lcom/samsung/wfd/WfdService;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2226
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v1, " mWifiP2pManager is null!! check!!"

    invoke-virtual {v0, v1}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 2230
    :cond_0
    invoke-direct {p0}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->isP2pConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2231
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v0}, Lcom/samsung/wfd/WfdService;->access$1300(Lcom/samsung/wfd/WfdService;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v1}, Lcom/samsung/wfd/WfdService;->access$1600(Lcom/samsung/wfd/WfdService;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    new-instance v2, Lcom/samsung/wfd/WfdService$WfdStateMachine$2;

    invoke-direct {v2, p0}, Lcom/samsung/wfd/WfdService$WfdStateMachine$2;-><init>(Lcom/samsung/wfd/WfdService$WfdStateMachine;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 2253
    :cond_1
    :goto_0
    return-void

    .line 2250
    :cond_2
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/wfd/WfdService;->access$3300(Lcom/samsung/wfd/WfdService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/wfd/WfdService;->isWiFiConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->bPreviousWifiMode:Z
    invoke-static {v0}, Lcom/samsung/wfd/WfdService;->access$700(Lcom/samsung/wfd/WfdService;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2251
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v0}, Lcom/samsung/wfd/WfdService;->access$1300(Lcom/samsung/wfd/WfdService;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v1}, Lcom/samsung/wfd/WfdService;->access$1600(Lcom/samsung/wfd/WfdService;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/p2p/WifiP2pManager;->disableP2p(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    goto :goto_0
.end method

.method private enableWiFiP2P()V
    .locals 2

    .prologue
    .line 2197
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v1, "enabling WiFi P2P"

    invoke-virtual {v0, v1}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 2198
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v0}, Lcom/samsung/wfd/WfdService;->access$1300(Lcom/samsung/wfd/WfdService;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2199
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v0}, Lcom/samsung/wfd/WfdService;->access$1300(Lcom/samsung/wfd/WfdService;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v1}, Lcom/samsung/wfd/WfdService;->access$1600(Lcom/samsung/wfd/WfdService;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/p2p/WifiP2pManager;->enableP2p(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 2201
    :cond_0
    return-void
.end method

.method private isP2pConnected()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 2206
    :try_start_0
    iget-object v4, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/samsung/wfd/WfdService;->access$3300(Lcom/samsung/wfd/WfdService;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2207
    .local v0, connectivityManager:Landroid/net/ConnectivityManager;
    const/16 v4, 0xd

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 2209
    .local v2, netInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v4, v5, :cond_0

    .line 2210
    iget-object v4, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v5, "isP2pConnected >> true!"

    invoke-virtual {v4, v5}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2211
    const/4 v3, 0x1

    .line 2219
    .end local v0           #connectivityManager:Landroid/net/ConnectivityManager;
    .end local v2           #netInfo:Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    return v3

    .line 2215
    :catch_0
    move-exception v1

    .line 2216
    .local v1, e:Ljava/lang/NullPointerException;
    iget-object v4, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v5, "isP2pConnected - NullPointerException"

    invoke-virtual {v4, v5}, Lcom/samsung/wfd/WfdService;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private obtainMessage(Landroid/os/Message;)Landroid/os/Message;
    .locals 2
    .parameter "srcMsg"

    .prologue
    .line 2061
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2062
    .local v0, msg:Landroid/os/Message;
    iget v1, p1, Landroid/os/Message;->arg2:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 2063
    return-object v0
.end method

.method private replyToMessage(Landroid/os/Message;I)V
    .locals 2
    .parameter "msg"
    .parameter "what"

    .prologue
    .line 2036
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v1, :cond_0

    .line 2040
    :goto_0
    return-void

    .line 2037
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->obtainMessage(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 2038
    .local v0, dstMsg:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 2039
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v1}, Lcom/samsung/wfd/WfdService;->access$5700(Lcom/samsung/wfd/WfdService;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    goto :goto_0
.end method

.method private replyToMessage(Landroid/os/Message;II)V
    .locals 2
    .parameter "msg"
    .parameter "what"
    .parameter "arg1"

    .prologue
    .line 2043
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v1, :cond_0

    .line 2048
    :goto_0
    return-void

    .line 2044
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->obtainMessage(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 2045
    .local v0, dstMsg:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 2046
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 2047
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v1}, Lcom/samsung/wfd/WfdService;->access$5700(Lcom/samsung/wfd/WfdService;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    goto :goto_0
.end method

.method private replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    .locals 2
    .parameter "msg"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2051
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v1, :cond_0

    .line 2056
    :goto_0
    return-void

    .line 2052
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->obtainMessage(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 2053
    .local v0, dstMsg:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 2054
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2055
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v1}, Lcom/samsung/wfd/WfdService;->access$5700(Lcom/samsung/wfd/WfdService;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    goto :goto_0
.end method

.method private showNotification()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2114
    iget-object v6, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/samsung/wfd/WfdService;->access$3300(Lcom/samsung/wfd/WfdService;)Landroid/content/Context;

    move-result-object v6

    const-string v7, "notification"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 2115
    .local v2, notificationManager:Landroid/app/NotificationManager;
    if-eqz v2, :cond_0

    iget-object v6, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mNotification:Landroid/app/Notification;
    invoke-static {v6}, Lcom/samsung/wfd/WfdService;->access$5800(Lcom/samsung/wfd/WfdService;)Landroid/app/Notification;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 2154
    :cond_0
    :goto_0
    return-void

    .line 2120
    :cond_1
    iget-object v6, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdMode:I
    invoke-static {v6}, Lcom/samsung/wfd/WfdService;->access$1000(Lcom/samsung/wfd/WfdService;)I

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdMode:I
    invoke-static {v6}, Lcom/samsung/wfd/WfdService;->access$1000(Lcom/samsung/wfd/WfdService;)I

    move-result v6

    if-eq v6, v9, :cond_0

    .line 2129
    new-instance v0, Landroid/content/Intent;

    const-string v6, "com.samsung.wfd.PICK_WFD_NETWORK"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2130
    .local v0, intent:Landroid/content/Intent;
    const/high16 v6, 0x4000

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2131
    const/high16 v6, 0x1080

    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2132
    const-string v6, "cause"

    const v7, 0x22077

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2134
    iget-object v6, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/samsung/wfd/WfdService;->access$3300(Lcom/samsung/wfd/WfdService;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v8, v0, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 2136
    .local v3, pi:Landroid/app/PendingIntent;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    .line 2137
    .local v4, r:Landroid/content/res/Resources;
    const v6, 0x1040652

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 2138
    .local v5, title:Ljava/lang/CharSequence;
    const v6, 0x1040601

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 2142
    .local v1, message:Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    new-instance v7, Landroid/app/Notification;

    invoke-direct {v7}, Landroid/app/Notification;-><init>()V

    #setter for: Lcom/samsung/wfd/WfdService;->mNotification:Landroid/app/Notification;
    invoke-static {v6, v7}, Lcom/samsung/wfd/WfdService;->access$5802(Lcom/samsung/wfd/WfdService;Landroid/app/Notification;)Landroid/app/Notification;

    .line 2143
    iget-object v6, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mNotification:Landroid/app/Notification;
    invoke-static {v6}, Lcom/samsung/wfd/WfdService;->access$5800(Lcom/samsung/wfd/WfdService;)Landroid/app/Notification;

    move-result-object v6

    const-wide/16 v7, 0x0

    iput-wide v7, v6, Landroid/app/Notification;->when:J

    .line 2145
    iget-object v6, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mNotification:Landroid/app/Notification;
    invoke-static {v6}, Lcom/samsung/wfd/WfdService;->access$5800(Lcom/samsung/wfd/WfdService;)Landroid/app/Notification;

    move-result-object v6

    const v7, 0x10806fb

    iput v7, v6, Landroid/app/Notification;->icon:I

    .line 2146
    iget-object v6, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mNotification:Landroid/app/Notification;
    invoke-static {v6}, Lcom/samsung/wfd/WfdService;->access$5800(Lcom/samsung/wfd/WfdService;)Landroid/app/Notification;

    move-result-object v6

    iget v7, v6, Landroid/app/Notification;->defaults:I

    and-int/lit8 v7, v7, -0x2

    iput v7, v6, Landroid/app/Notification;->defaults:I

    .line 2147
    iget-object v6, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mNotification:Landroid/app/Notification;
    invoke-static {v6}, Lcom/samsung/wfd/WfdService;->access$5800(Lcom/samsung/wfd/WfdService;)Landroid/app/Notification;

    move-result-object v6

    const/4 v7, 0x2

    iput v7, v6, Landroid/app/Notification;->flags:I

    .line 2148
    iget-object v6, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mNotification:Landroid/app/Notification;
    invoke-static {v6}, Lcom/samsung/wfd/WfdService;->access$5800(Lcom/samsung/wfd/WfdService;)Landroid/app/Notification;

    move-result-object v6

    iput-object v5, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 2149
    iget-object v6, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mNotification:Landroid/app/Notification;
    invoke-static {v6}, Lcom/samsung/wfd/WfdService;->access$5800(Lcom/samsung/wfd/WfdService;)Landroid/app/Notification;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/samsung/wfd/WfdService;->access$3300(Lcom/samsung/wfd/WfdService;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7, v5, v1, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 2151
    iget-object v6, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #setter for: Lcom/samsung/wfd/WfdService;->mIsShowingNotification:Z
    invoke-static {v6, v9}, Lcom/samsung/wfd/WfdService;->access$5902(Lcom/samsung/wfd/WfdService;Z)Z

    .line 2153
    iget-object v6, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mNotification:Landroid/app/Notification;
    invoke-static {v6}, Lcom/samsung/wfd/WfdService;->access$5800(Lcom/samsung/wfd/WfdService;)Landroid/app/Notification;

    move-result-object v6

    iget v6, v6, Landroid/app/Notification;->icon:I

    iget-object v7, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mNotification:Landroid/app/Notification;
    invoke-static {v7}, Lcom/samsung/wfd/WfdService;->access$5800(Lcom/samsung/wfd/WfdService;)Landroid/app/Notification;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0
.end method

.method private showTerminatedByAudioNotification()V
    .locals 4

    .prologue
    .line 2076
    iget-object v2, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v3, "showTerminatedByAudioNotification"

    invoke-virtual {v2, v3}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 2077
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 2078
    .local v1, r:Landroid/content/res/Resources;
    const v2, 0x1040657

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2079
    .local v0, message:Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/samsung/wfd/WfdService;->access$3300(Lcom/samsung/wfd/WfdService;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 2082
    return-void
.end method

.method private showTerminatedByHDMIConnection()V
    .locals 4

    .prologue
    .line 2085
    iget-object v2, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v3, "showTerminatedByHDMIConnection"

    invoke-virtual {v2, v3}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 2086
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 2087
    .local v1, r:Landroid/content/res/Resources;
    const v2, 0x1040650

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2088
    .local v0, message:Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/samsung/wfd/WfdService;->access$3300(Lcom/samsung/wfd/WfdService;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 2091
    return-void
.end method

.method private showWeakNetworkNotification()V
    .locals 4

    .prologue
    .line 2067
    iget-object v2, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v3, "showWeakNetworkNotification"

    invoke-virtual {v2, v3}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 2068
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 2069
    .local v1, r:Landroid/content/res/Resources;
    const v2, 0x1040654

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2070
    .local v0, message:Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/samsung/wfd/WfdService;->access$3300(Lcom/samsung/wfd/WfdService;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 2073
    return-void
.end method

.method private terminateWfdRoutine(I)V
    .locals 6
    .parameter "option"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1970
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mP2pWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;
    invoke-static {v0}, Lcom/samsung/wfd/WfdService;->access$5300(Lcom/samsung/wfd/WfdService;)Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1971
    const-string v0, "WFDService"

    const-string v1, "wfdinfo is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1972
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    new-instance v1, Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-direct {v1}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;-><init>()V

    #setter for: Lcom/samsung/wfd/WfdService;->mP2pWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;
    invoke-static {v0, v1}, Lcom/samsung/wfd/WfdService;->access$5302(Lcom/samsung/wfd/WfdService;Landroid/net/wifi/p2p/WifiP2pWfdInfo;)Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    .line 1974
    :cond_0
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mP2pWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;
    invoke-static {v0}, Lcom/samsung/wfd/WfdService;->access$5300(Lcom/samsung/wfd/WfdService;)Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setWfdEnabled(Z)V

    .line 1975
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v0}, Lcom/samsung/wfd/WfdService;->access$1300(Lcom/samsung/wfd/WfdService;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v1}, Lcom/samsung/wfd/WfdService;->access$1600(Lcom/samsung/wfd/WfdService;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mP2pWfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;
    invoke-static {v2}, Lcom/samsung/wfd/WfdService;->access$5300(Lcom/samsung/wfd/WfdService;)Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    move-result-object v2

    new-instance v3, Lcom/samsung/wfd/WfdService$WfdStateMachine$1;

    invoke-direct {v3, p0}, Lcom/samsung/wfd/WfdService$WfdStateMachine$1;-><init>(Lcom/samsung/wfd/WfdService$WfdStateMachine;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->setWFDInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pWfdInfo;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 1988
    invoke-direct {p0}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->clearNotification()V

    .line 1992
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mKeepP2pConnection   :  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mKeepP2pConnection:Z
    invoke-static {v2}, Lcom/samsung/wfd/WfdService;->access$900(Lcom/samsung/wfd/WfdService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "isRunningHomeSync   :  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->isRunningHomeSync:Z
    invoke-static {v2}, Lcom/samsung/wfd/WfdService;->access$5400(Lcom/samsung/wfd/WfdService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "wfdMode   :  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdMode:I
    invoke-static {v2}, Lcom/samsung/wfd/WfdService;->access$1000(Lcom/samsung/wfd/WfdService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 1993
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mKeepP2pConnection:Z
    invoke-static {v0}, Lcom/samsung/wfd/WfdService;->access$900(Lcom/samsung/wfd/WfdService;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->isRunningHomeSync:Z
    invoke-static {v0}, Lcom/samsung/wfd/WfdService;->access$5400(Lcom/samsung/wfd/WfdService;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdMode:I
    invoke-static {v0}, Lcom/samsung/wfd/WfdService;->access$1000(Lcom/samsung/wfd/WfdService;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 1994
    :cond_1
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdRestartTrigger:Z
    invoke-static {v0}, Lcom/samsung/wfd/WfdService;->access$800(Lcom/samsung/wfd/WfdService;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1995
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v1, "[WFD] Let\'s start Wfd with Last connect!!!"

    invoke-virtual {v0, v1}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 1996
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v1, "p2p disable by Wfd!!!"

    invoke-virtual {v0, v1}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 1997
    invoke-direct {p0}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->disableWiFiP2P()V

    .line 1998
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #setter for: Lcom/samsung/wfd/WfdService;->mWifiP2pTrigger:Z
    invoke-static {v0, v4}, Lcom/samsung/wfd/WfdService;->access$3102(Lcom/samsung/wfd/WfdService;Z)Z

    .line 1999
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #setter for: Lcom/samsung/wfd/WfdService;->mWifiP2pConnected:Z
    invoke-static {v0, v4}, Lcom/samsung/wfd/WfdService;->access$1402(Lcom/samsung/wfd/WfdService;Z)Z

    .line 2031
    :goto_0
    return-void

    .line 2001
    :cond_2
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    const/4 v1, 0x0

    #setter for: Lcom/samsung/wfd/WfdService;->mWfdInfo:Lcom/samsung/wfd/WfdInfo;
    invoke-static {v0, v1}, Lcom/samsung/wfd/WfdService;->access$5502(Lcom/samsung/wfd/WfdService;Lcom/samsung/wfd/WfdInfo;)Lcom/samsung/wfd/WfdInfo;

    .line 2002
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWifiP2pTrigger:Z
    invoke-static {v0}, Lcom/samsung/wfd/WfdService;->access$3100(Lcom/samsung/wfd/WfdService;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2003
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v1, "p2p disable by Wfd!!!"

    invoke-virtual {v0, v1}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 2004
    invoke-direct {p0}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->disableWiFiP2P()V

    .line 2005
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #setter for: Lcom/samsung/wfd/WfdService;->mWifiP2pTrigger:Z
    invoke-static {v0, v4}, Lcom/samsung/wfd/WfdService;->access$3102(Lcom/samsung/wfd/WfdService;Z)Z

    .line 2013
    :goto_1
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #calls: Lcom/samsung/wfd/WfdService;->setWfdState(I)V
    invoke-static {v0, v5}, Lcom/samsung/wfd/WfdService;->access$400(Lcom/samsung/wfd/WfdService;I)V

    .line 2014
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #calls: Lcom/samsung/wfd/WfdService;->broadcastIntent2HDMI(I)V
    invoke-static {v0, v5}, Lcom/samsung/wfd/WfdService;->access$5600(Lcom/samsung/wfd/WfdService;I)V

    .line 2017
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #setter for: Lcom/samsung/wfd/WfdService;->mFrequencyWfd:I
    invoke-static {v0, v4}, Lcom/samsung/wfd/WfdService;->access$1502(Lcom/samsung/wfd/WfdService;I)I

    .line 2018
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #setter for: Lcom/samsung/wfd/WfdService;->mDongleUpdateResult:Z
    invoke-static {v0, v4}, Lcom/samsung/wfd/WfdService;->access$1802(Lcom/samsung/wfd/WfdService;Z)Z

    .line 2019
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #setter for: Lcom/samsung/wfd/WfdService;->mWfdEnabledFromPicker:Z
    invoke-static {v0, v4}, Lcom/samsung/wfd/WfdService;->access$502(Lcom/samsung/wfd/WfdService;Z)Z

    .line 2021
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WFD] done!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 2007
    :cond_3
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v1, "now we should turn off wifip2p even though turned on by wifip2pservice!!!"

    invoke-virtual {v0, v1}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 2008
    invoke-direct {p0}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->disableWiFiP2P()V

    .line 2010
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #setter for: Lcom/samsung/wfd/WfdService;->mWifiP2pConnected:Z
    invoke-static {v0, v4}, Lcom/samsung/wfd/WfdService;->access$1402(Lcom/samsung/wfd/WfdService;Z)Z

    goto :goto_1

    .line 2024
    :cond_4
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #calls: Lcom/samsung/wfd/WfdService;->setWfdState(I)V
    invoke-static {v0, v5}, Lcom/samsung/wfd/WfdService;->access$400(Lcom/samsung/wfd/WfdService;I)V

    .line 2025
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #calls: Lcom/samsung/wfd/WfdService;->broadcastIntent2HDMI(I)V
    invoke-static {v0, v5}, Lcom/samsung/wfd/WfdService;->access$5600(Lcom/samsung/wfd/WfdService;I)V

    .line 2026
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #setter for: Lcom/samsung/wfd/WfdService;->mFrequencyWfd:I
    invoke-static {v0, v4}, Lcom/samsung/wfd/WfdService;->access$1502(Lcom/samsung/wfd/WfdService;I)I

    .line 2027
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #setter for: Lcom/samsung/wfd/WfdService;->mDongleUpdateResult:Z
    invoke-static {v0, v4}, Lcom/samsung/wfd/WfdService;->access$1802(Lcom/samsung/wfd/WfdService;Z)Z

    .line 2028
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #setter for: Lcom/samsung/wfd/WfdService;->mWfdEnabledFromPicker:Z
    invoke-static {v0, v4}, Lcom/samsung/wfd/WfdService;->access$502(Lcom/samsung/wfd/WfdService;Z)Z

    .line 2029
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v1, "terminateWfdRoutine / mKeepP2pConnection"

    invoke-virtual {v0, v1}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateResources()V
    .locals 7

    .prologue
    .line 2096
    iget-object v4, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v5, "updateResources"

    invoke-virtual {v4, v5}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 2098
    iget-object v4, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mNotification:Landroid/app/Notification;
    invoke-static {v4}, Lcom/samsung/wfd/WfdService;->access$5800(Lcom/samsung/wfd/WfdService;)Landroid/app/Notification;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mIsShowingNotification:Z
    invoke-static {v4}, Lcom/samsung/wfd/WfdService;->access$5900(Lcom/samsung/wfd/WfdService;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2099
    iget-object v4, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/samsung/wfd/WfdService;->access$3300(Lcom/samsung/wfd/WfdService;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 2101
    .local v1, notificationManager:Landroid/app/NotificationManager;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .line 2102
    .local v2, r:Landroid/content/res/Resources;
    const v4, 0x1040652

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 2103
    .local v3, title:Ljava/lang/CharSequence;
    const v4, 0x1040601

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2105
    .local v0, message:Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mNotification:Landroid/app/Notification;
    invoke-static {v4}, Lcom/samsung/wfd/WfdService;->access$5800(Lcom/samsung/wfd/WfdService;)Landroid/app/Notification;

    move-result-object v4

    iput-object v3, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 2106
    iget-object v4, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mNotification:Landroid/app/Notification;
    invoke-static {v4}, Lcom/samsung/wfd/WfdService;->access$5800(Lcom/samsung/wfd/WfdService;)Landroid/app/Notification;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/samsung/wfd/WfdService;->access$3300(Lcom/samsung/wfd/WfdService;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mNotification:Landroid/app/Notification;
    invoke-static {v6}, Lcom/samsung/wfd/WfdService;->access$5800(Lcom/samsung/wfd/WfdService;)Landroid/app/Notification;

    move-result-object v6

    iget-object v6, v6, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v5, v3, v0, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 2108
    iget-object v4, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mNotification:Landroid/app/Notification;
    invoke-static {v4}, Lcom/samsung/wfd/WfdService;->access$5800(Lcom/samsung/wfd/WfdService;)Landroid/app/Notification;

    move-result-object v4

    iget v4, v4, Landroid/app/Notification;->icon:I

    iget-object v5, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mNotification:Landroid/app/Notification;
    invoke-static {v5}, Lcom/samsung/wfd/WfdService;->access$5800(Lcom/samsung/wfd/WfdService;)Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 2110
    .end local v0           #message:Ljava/lang/CharSequence;
    .end local v1           #notificationManager:Landroid/app/NotificationManager;
    .end local v2           #r:Landroid/content/res/Resources;
    .end local v3           #title:Ljava/lang/CharSequence;
    :cond_0
    return-void
.end method


# virtual methods
.method public sendWfdPickerStartBroadCast()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2173
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v2, "sendWfdPickerStartBroadCast"

    invoke-virtual {v1, v2}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 2176
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.wfd.LAUNCH_WFD_POPUP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2178
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1002

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2179
    const-string v1, "state"

    iget-object v2, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWifiP2pTrigger:Z
    invoke-static {v2}, Lcom/samsung/wfd/WfdService;->access$3100(Lcom/samsung/wfd/WfdService;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2181
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdRestartOngoing:Z
    invoke-static {v1}, Lcom/samsung/wfd/WfdService;->access$3600(Lcom/samsung/wfd/WfdService;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2182
    const-string v1, "cause"

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2183
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #setter for: Lcom/samsung/wfd/WfdService;->mWfdRestartOngoing:Z
    invoke-static {v1, v3}, Lcom/samsung/wfd/WfdService;->access$3602(Lcom/samsung/wfd/WfdService;Z)Z

    .line 2184
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #setter for: Lcom/samsung/wfd/WfdService;->mWfdRestartTrigger:Z
    invoke-static {v1, v3}, Lcom/samsung/wfd/WfdService;->access$802(Lcom/samsung/wfd/WfdService;Z)Z

    .line 2185
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v2, "putExtra >> cause::restart by ongoing"

    invoke-virtual {v1, v2}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 2192
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/wfd/WfdService;->access$3300(Lcom/samsung/wfd/WfdService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2193
    return-void

    .line 2186
    :cond_1
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdRestartTrigger:Z
    invoke-static {v1}, Lcom/samsung/wfd/WfdService;->access$800(Lcom/samsung/wfd/WfdService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2187
    const-string v1, "cause"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2188
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #setter for: Lcom/samsung/wfd/WfdService;->mWfdRestartTrigger:Z
    invoke-static {v1, v3}, Lcom/samsung/wfd/WfdService;->access$802(Lcom/samsung/wfd/WfdService;Z)Z

    .line 2189
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v2, "putExtra >> cause::restart by AP connected"

    invoke-virtual {v1, v2}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public syncGetWfdState()I
    .locals 1

    .prologue
    .line 2169
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v0}, Lcom/samsung/wfd/WfdService;->access$300(Lcom/samsung/wfd/WfdService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method
