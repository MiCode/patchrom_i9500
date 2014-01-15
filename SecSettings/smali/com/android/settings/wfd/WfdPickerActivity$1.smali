.class Lcom/android/settings_ex/wfd/WfdPickerActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "WfdPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/wfd/WfdPickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wfd/WfdPickerActivity;)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private handleCONNESTABLISHED()V
    .locals 3

    .prologue
    .line 447
    const-string v0, "WfdPickerActivity"

    const-string v1, " onReceive << P2P_CONNECTED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    const/4 v1, 0x5

    #setter for: Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWFDSettingState:I
    invoke-static {v0, v1}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$1002(Lcom/android/settings_ex/wfd/WfdPickerActivity;I)I

    .line 450
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings_ex/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$1900(Lcom/android/settings_ex/wfd/WfdPickerActivity;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    iget-object v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings_ex/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v1}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$1900(Lcom/android/settings_ex/wfd/WfdPickerActivity;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v1

    #calls: Lcom/android/settings_ex/wfd/WfdPickerActivity;->setLastConnectedDeviceInfo(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$2000(Lcom/android/settings_ex/wfd/WfdPickerActivity;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 452
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    iget-object v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings_ex/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v1}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$1900(Lcom/android/settings_ex/wfd/WfdPickerActivity;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v1

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->setWifiDisplayDeviceAddress(Ljava/lang/String;)V

    .line 453
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    iget-object v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings_ex/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v1}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$1900(Lcom/android/settings_ex/wfd/WfdPickerActivity;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v1

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->setWifiDisplayDeviceName(Ljava/lang/String;)V

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09044b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 474
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings_ex/wfd/WfdPickerActivity;->mInPickerDialog:Z
    invoke-static {v0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$800(Lcom/android/settings_ex/wfd/WfdPickerActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 475
    const-string v0, "WfdPickerActivity"

    const-string v1, "connection established in picker dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 477
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 481
    :cond_1
    invoke-static {}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$300()Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 482
    invoke-static {}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$300()Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings_ex/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v1}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$100(Lcom/android/settings_ex/wfd/WfdPickerActivity;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    .line 486
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #calls: Lcom/android/settings_ex/wfd/WfdPickerActivity;->removeAutoConnectDialog()V
    invoke-static {v0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$600(Lcom/android/settings_ex/wfd/WfdPickerActivity;)V

    .line 488
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings_ex/wfd/WfdPickerActivity;->mActivityStartedByAllShare:Z
    invoke-static {v0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$2100(Lcom/android/settings_ex/wfd/WfdPickerActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 489
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    invoke-virtual {v0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->finish()V

    .line 491
    :cond_3
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x5

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 263
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, action:Ljava/lang/String;
    const-string v4, "WfdPickerActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BroadCast Received Action : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    const-string v4, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 267
    const-string v4, "WfdPickerActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "wfd settings P2P changed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "wifi_p2p_state"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #calls: Lcom/android/settings_ex/wfd/WfdPickerActivity;->isP2pConnected()Z
    invoke-static {v4}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$000(Lcom/android/settings_ex/wfd/WfdPickerActivity;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 270
    invoke-static {}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$300()Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings_ex/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v5}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$100(Lcom/android/settings_ex/wfd/WfdPickerActivity;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v5

    new-instance v6, Lcom/android/settings_ex/wfd/WfdPickerActivity$1$1;

    invoke-direct {v6, p0}, Lcom/android/settings_ex/wfd/WfdPickerActivity$1$1;-><init>(Lcom/android/settings_ex/wfd/WfdPickerActivity$1;)V

    invoke-virtual {v4, v5, v6}, Landroid/net/wifi/p2p/WifiP2pManager;->requestGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;)V

    .line 276
    invoke-static {}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$300()Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings_ex/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v5}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$100(Lcom/android/settings_ex/wfd/WfdPickerActivity;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    invoke-virtual {v4, v5, v6}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    .line 279
    :cond_0
    const-string v4, "wifi_p2p_state"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v7, :cond_2

    .line 280
    iget-object v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;
    invoke-static {v4}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$400(Lcom/android/settings_ex/wfd/WfdPickerActivity;)Lcom/samsung/wfd/WfdManager;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;
    invoke-static {v4}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$400(Lcom/android/settings_ex/wfd/WfdPickerActivity;)Lcom/samsung/wfd/WfdManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/wfd/WfdManager;->getWfdState()I

    move-result v4

    if-eq v4, v7, :cond_2

    .line 281
    iget-object v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings_ex/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z
    invoke-static {v4}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$500(Lcom/android/settings_ex/wfd/WfdPickerActivity;)Z

    move-result v4

    if-ne v4, v7, :cond_1

    .line 282
    iget-object v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #calls: Lcom/android/settings_ex/wfd/WfdPickerActivity;->removeAutoConnectDialog()V
    invoke-static {v4}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$600(Lcom/android/settings_ex/wfd/WfdPickerActivity;)V

    .line 284
    :cond_1
    iget-object v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWfdState:I
    invoke-static {v4}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$700(Lcom/android/settings_ex/wfd/WfdPickerActivity;)I

    move-result v4

    if-eq v4, v7, :cond_2

    .line 285
    iget-object v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    invoke-virtual {v4, v7}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->handleP2pStateChanged(I)V

    .line 444
    :cond_2
    :goto_0
    return-void

    .line 289
    :cond_3
    const-string v4, "com.samsung.wfd.STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 290
    const-string v4, "wfd_state"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 291
    .local v3, wfdState:I
    const-string v4, "WfdPickerActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "wfd settings P2P changed with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    if-eq v3, v7, :cond_4

    if-nez v3, :cond_7

    .line 293
    :cond_4
    iget-object v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    iput-object v11, v4, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 294
    iget-object v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings_ex/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z
    invoke-static {v4}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$500(Lcom/android/settings_ex/wfd/WfdPickerActivity;)Z

    move-result v4

    if-ne v4, v7, :cond_5

    .line 295
    iget-object v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #calls: Lcom/android/settings_ex/wfd/WfdPickerActivity;->removeAutoConnectDialog()V
    invoke-static {v4}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$600(Lcom/android/settings_ex/wfd/WfdPickerActivity;)V

    .line 298
    :cond_5
    iget-object v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings_ex/wfd/WfdPickerActivity;->mInPickerDialog:Z
    invoke-static {v4}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$800(Lcom/android/settings_ex/wfd/WfdPickerActivity;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 299
    iget-object v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    invoke-virtual {v4}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->finishWfdPickerDialog()V

    .line 305
    :cond_6
    :goto_1
    iget-object v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    invoke-virtual {v4, v3}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->handleP2pStateChanged(I)V

    goto :goto_0

    .line 301
    :cond_7
    if-ne v3, v10, :cond_6

    goto :goto_1

    .line 306
    .end local v3           #wfdState:I
    :cond_8
    const-string v4, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 308
    invoke-static {}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$300()Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 310
    const-string v4, "wifiP2pGroupInfo"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-static {v4}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$202(Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 313
    const-string v4, "connectedDevAddress"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 316
    .local v1, devAddr:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings_ex/wfd/WfdPickerActivity;->mAutoConnStartedFromInv:Z
    invoke-static {v4}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$900(Lcom/android/settings_ex/wfd/WfdPickerActivity;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings_ex/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z
    invoke-static {v4}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$500(Lcom/android/settings_ex/wfd/WfdPickerActivity;)Z

    move-result v4

    if-nez v4, :cond_9

    iget-object v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    iget-object v4, v4, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mCurrentWifiPeer:Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    if-eqz v4, :cond_9

    .line 317
    const-string v4, "WfdPickerActivity"

    const-string v5, "WIFI_P2P_PEERS_CHANGED_ACTION mConnectingDialogCalled"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget-object v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #setter for: Lcom/android/settings_ex/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z
    invoke-static {v4, v7}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$502(Lcom/android/settings_ex/wfd/WfdPickerActivity;Z)Z

    .line 319
    iget-object v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    const/4 v5, 0x4

    #setter for: Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWFDSettingState:I
    invoke-static {v4, v5}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$1002(Lcom/android/settings_ex/wfd/WfdPickerActivity;I)I

    .line 320
    iget-object v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    iput-object v11, v4, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mCurrentWifiPeer:Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    .line 321
    iget-object v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    const/16 v5, 0xb

    #calls: Lcom/android/settings_ex/SettingsPreferenceFragment;->showDialog(I)V
    invoke-static {v4, v5}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$1100(Lcom/android/settings_ex/wfd/WfdPickerActivity;I)V

    .line 322
    iget-object v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #setter for: Lcom/android/settings_ex/wfd/WfdPickerActivity;->mAutoConnStartedFromInv:Z
    invoke-static {v4, v8}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$902(Lcom/android/settings_ex/wfd/WfdPickerActivity;Z)Z

    goto/16 :goto_0

    .line 324
    :cond_9
    iget-object v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings_ex/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z
    invoke-static {v4}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$500(Lcom/android/settings_ex/wfd/WfdPickerActivity;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 325
    if-eqz v1, :cond_a

    invoke-static {}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$200()Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 326
    const-string v4, "WfdPickerActivity"

    const-string v5, "WIFI_P2P_PEERS_CHANGED_ACTION,  group info created"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    const/4 v5, 0x4

    #setter for: Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWFDSettingState:I
    invoke-static {v4, v5}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$1002(Lcom/android/settings_ex/wfd/WfdPickerActivity;I)I

    goto/16 :goto_0

    .line 330
    :cond_a
    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$200()Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v4

    if-nez v4, :cond_2

    .line 331
    const-string v4, "WfdPickerActivity"

    const-string v5, "WifiP2pService notifies p2p connection is failed !!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #setter for: Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWFDSettingState:I
    invoke-static {v4, v9}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$1002(Lcom/android/settings_ex/wfd/WfdPickerActivity;I)I

    .line 336
    iget-object v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #calls: Lcom/android/settings_ex/wfd/WfdPickerActivity;->removeAutoConnectDialog()V
    invoke-static {v4}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$600(Lcom/android/settings_ex/wfd/WfdPickerActivity;)V

    .line 337
    iget-object v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #calls: Lcom/android/settings_ex/wfd/WfdPickerActivity;->cancelWfdConnect()V
    invoke-static {v4}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$1200(Lcom/android/settings_ex/wfd/WfdPickerActivity;)V

    .line 338
    iget-object v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    const/16 v5, 0xd

    #calls: Lcom/android/settings_ex/SettingsPreferenceFragment;->showDialog(I)V
    invoke-static {v4, v5}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$1300(Lcom/android/settings_ex/wfd/WfdPickerActivity;I)V

    goto/16 :goto_0

    .line 341
    :cond_b
    iget-object v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;
    invoke-static {v4}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$400(Lcom/android/settings_ex/wfd/WfdPickerActivity;)Lcom/samsung/wfd/WfdManager;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 343
    iget-object v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;
    invoke-static {v4}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$400(Lcom/android/settings_ex/wfd/WfdPickerActivity;)Lcom/samsung/wfd/WfdManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/wfd/WfdManager;->getWfdState()I

    move-result v4

    if-eq v4, v7, :cond_2

    .line 347
    invoke-static {}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$300()Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings_ex/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v5}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$100(Lcom/android/settings_ex/wfd/WfdPickerActivity;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    invoke-virtual {v4, v5, v6}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    goto/16 :goto_0

    .line 352
    .end local v1           #devAddr:Ljava/lang/String;
    :cond_c
    const-string v4, "android.net.wifi.p2p.REQUEST_STATE_CHANGE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 353
    iget-object v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings_ex/wfd/WfdPickerActivity;->mAutoConnStartedFromInv:Z
    invoke-static {v4}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$900(Lcom/android/settings_ex/wfd/WfdPickerActivity;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    iget-object v4, v4, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mCurrentWifiPeer:Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    if-eqz v4, :cond_2

    .line 354
    const-string v4, "WfdPickerActivity"

    const-string v5, "WIFI_P2P_REQUEST_CHANGED_ACTION,  user rejected the p2p connection"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #setter for: Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWFDSettingState:I
    invoke-static {v4, v9}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$1002(Lcom/android/settings_ex/wfd/WfdPickerActivity;I)I

    .line 357
    iget-object v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #setter for: Lcom/android/settings_ex/wfd/WfdPickerActivity;->mAutoConnStartedFromInv:Z
    invoke-static {v4, v8}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$902(Lcom/android/settings_ex/wfd/WfdPickerActivity;Z)Z

    .line 358
    iget-object v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    iput-object v11, v4, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mCurrentWifiPeer:Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    .line 359
    iget-object v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #calls: Lcom/android/settings_ex/wfd/WfdPickerActivity;->cancelWfdConnect()V
    invoke-static {v4}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$1200(Lcom/android/settings_ex/wfd/WfdPickerActivity;)V

    goto/16 :goto_0

    .line 362
    :cond_d
    const-string v4, "com.samsung.wfd.P2P_CONNECTION_ESTABLISHED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 364
    iget-object v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWFDSettingState:I
    invoke-static {v4}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$1000(Lcom/android/settings_ex/wfd/WfdPickerActivity;)I

    move-result v4

    if-lt v4, v10, :cond_2

    .line 365
    invoke-direct {p0}, Lcom/android/settings_ex/wfd/WfdPickerActivity$1;->handleCONNESTABLISHED()V

    goto/16 :goto_0

    .line 367
    :cond_e
    const-string v4, "android.intent.action.WIFIDISPLAY_CONTROL_FROM_SERVICE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 368
    iget-object v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    const-string v5, "cause"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    #setter for: Lcom/android/settings_ex/wfd/WfdPickerActivity;->mControlByWfdService:I
    invoke-static {v4, v5}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$1402(Lcom/android/settings_ex/wfd/WfdPickerActivity;I)I

    .line 370
    iget-object v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings_ex/wfd/WfdPickerActivity;->mEnableControlByWfdService:Z
    invoke-static {v4}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$1500(Lcom/android/settings_ex/wfd/WfdPickerActivity;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 372
    iget-object v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings_ex/wfd/WfdPickerActivity;->mControlByWfdService:I
    invoke-static {v4}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$1400(Lcom/android/settings_ex/wfd/WfdPickerActivity;)I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 385
    :goto_2
    const-string v4, "WfdPickerActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "no problem! picker is going on!!! << "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings_ex/wfd/WfdPickerActivity;->mControlByWfdService:I
    invoke-static {v6}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$1400(Lcom/android/settings_ex/wfd/WfdPickerActivity;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    const-string v4, "WfdPickerActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "curr state:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWFDSettingState:I
    invoke-static {v6}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$1000(Lcom/android/settings_ex/wfd/WfdPickerActivity;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    iget-object v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings_ex/wfd/WfdPickerActivity;->mEnableControlByWfdService:Z
    invoke-static {v4}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$1500(Lcom/android/settings_ex/wfd/WfdPickerActivity;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 391
    iget-object v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #setter for: Lcom/android/settings_ex/wfd/WfdPickerActivity;->mEnableControlByWfdService:Z
    invoke-static {v4, v8}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$1502(Lcom/android/settings_ex/wfd/WfdPickerActivity;Z)Z

    .line 394
    iget-object v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;
    invoke-static {v4}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$400(Lcom/android/settings_ex/wfd/WfdPickerActivity;)Lcom/samsung/wfd/WfdManager;

    move-result-object v4

    if-eqz v4, :cond_10

    iget-object v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;
    invoke-static {v4}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$400(Lcom/android/settings_ex/wfd/WfdPickerActivity;)Lcom/samsung/wfd/WfdManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/wfd/WfdManager;->WFDGetStatus()Z

    move-result v4

    if-nez v4, :cond_10

    .line 398
    iget-object v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWFDSettingState:I
    invoke-static {v4}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$1000(Lcom/android/settings_ex/wfd/WfdPickerActivity;)I

    move-result v4

    if-eq v4, v9, :cond_f

    iget-object v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWFDSettingState:I
    invoke-static {v4}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$1000(Lcom/android/settings_ex/wfd/WfdPickerActivity;)I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_10

    .line 400
    :cond_f
    iget-object v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #calls: Lcom/android/settings_ex/wfd/WfdPickerActivity;->scanDevice()V
    invoke-static {v4}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$1700(Lcom/android/settings_ex/wfd/WfdPickerActivity;)V

    .line 412
    :cond_10
    :goto_3
    iget-object v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #setter for: Lcom/android/settings_ex/wfd/WfdPickerActivity;->mEnableControlByWfdService:Z
    invoke-static {v4, v8}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$1502(Lcom/android/settings_ex/wfd/WfdPickerActivity;Z)Z

    goto/16 :goto_0

    .line 377
    :sswitch_0
    const-string v4, "WfdPickerActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WfdService request to finish picker! << "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings_ex/wfd/WfdPickerActivity;->mControlByWfdService:I
    invoke-static {v6}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$1400(Lcom/android/settings_ex/wfd/WfdPickerActivity;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    invoke-virtual {v4}, Lcom/android/settings_ex/SettingsPreferenceFragment;->finish()V

    goto/16 :goto_0

    .line 382
    :sswitch_1
    iget-object v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #setter for: Lcom/android/settings_ex/wfd/WfdPickerActivity;->mIsP2pBusyDialogCalled:Z
    invoke-static {v4, v7}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$1602(Lcom/android/settings_ex/wfd/WfdPickerActivity;Z)Z

    goto/16 :goto_2

    .line 407
    :cond_11
    const-string v4, "WfdPickerActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad intent! WfdService didn\'t request to finish picker! << "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings_ex/wfd/WfdPickerActivity;->mControlByWfdService:I
    invoke-static {v6}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$1400(Lcom/android/settings_ex/wfd/WfdPickerActivity;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 415
    :cond_12
    const-string v4, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 416
    const-string v4, "networkInfo"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .line 417
    .local v2, networkInfo:Landroid/net/NetworkInfo;
    const-string v4, "WfdPickerActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " onReceive << WIFI_P2P_CONNECTION_CHANGED_ACTION with networkInfo : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_14

    iget-object v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings_ex/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z
    invoke-static {v4}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$500(Lcom/android/settings_ex/wfd/WfdPickerActivity;)Z

    move-result v4

    if-ne v4, v7, :cond_14

    .line 420
    invoke-static {}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$300()Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 424
    const-string v4, "WfdPickerActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "wfdState on isconnected is : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWFDSettingState:I
    invoke-static {v6}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$1000(Lcom/android/settings_ex/wfd/WfdPickerActivity;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    iget-object v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWFDSettingState:I
    invoke-static {v4}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$1000(Lcom/android/settings_ex/wfd/WfdPickerActivity;)I

    move-result v4

    if-ge v4, v10, :cond_13

    .line 426
    invoke-direct {p0}, Lcom/android/settings_ex/wfd/WfdPickerActivity$1;->handleCONNESTABLISHED()V

    .line 437
    :cond_13
    :goto_4
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-nez v4, :cond_2

    .line 438
    iget-object v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings_ex/wfd/WfdPickerActivity;->mIsP2pBusyDialogCalled:Z
    invoke-static {v4}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$1600(Lcom/android/settings_ex/wfd/WfdPickerActivity;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 439
    iget-object v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #setter for: Lcom/android/settings_ex/wfd/WfdPickerActivity;->mIsP2pBusyDialogCalled:Z
    invoke-static {v4, v8}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$1602(Lcom/android/settings_ex/wfd/WfdPickerActivity;Z)Z

    .line 440
    iget-object v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    invoke-virtual {v4}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->setWfdEnabled()V

    goto/16 :goto_0

    .line 427
    :cond_14
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 428
    invoke-static {}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$300()Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings_ex/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v5}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$100(Lcom/android/settings_ex/wfd/WfdPickerActivity;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v5

    new-instance v6, Lcom/android/settings_ex/wfd/WfdPickerActivity$1$2;

    invoke-direct {v6, p0}, Lcom/android/settings_ex/wfd/WfdPickerActivity$1$2;-><init>(Lcom/android/settings_ex/wfd/WfdPickerActivity$1;)V

    invoke-virtual {v4, v5, v6}, Landroid/net/wifi/p2p/WifiP2pManager;->requestGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;)V

    goto :goto_4

    .line 372
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0xa -> :sswitch_0
        0x1e -> :sswitch_0
        0x28 -> :sswitch_0
        0x32 -> :sswitch_0
    .end sparse-switch
.end method
