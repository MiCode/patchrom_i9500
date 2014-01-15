.class Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiP2pDevicePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 192
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, action:Ljava/lang/String;
    const-string v6, "WifiP2pDevicePicker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onReceive : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const-string v6, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 197
    iget-object v6, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v6}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->access$000(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 198
    const-string v6, "wifi_p2p_state"

    invoke-virtual {p2, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v12, :cond_2

    .line 201
    iget-object v6, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;

    #setter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mReceivedStickyEnabled:Z
    invoke-static {v6, v9}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->access$102(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;Z)Z

    .line 203
    iget-object v6, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;

    #calls: Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->isP2pConnected()Z
    invoke-static {v6}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->access$200(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 204
    iget-object v6, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;

    invoke-virtual {v6}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 205
    iget-object v6, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;

    invoke-virtual {v6}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings_ex/ProgressCategory;
    invoke-static {v7}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->access$300(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;)Lcom/android/settings_ex/ProgressCategory;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 206
    iget-object v6, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings_ex/ProgressCategory;
    invoke-static {v6}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->access$300(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;)Lcom/android/settings_ex/ProgressCategory;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/android/settings_ex/ProgressCategory;->setProgress(Z)V

    .line 207
    iget-object v6, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;

    #calls: Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->addThisDevicePreference()V
    invoke-static {v6}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->access$400(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;)V

    .line 209
    iget-object v6, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mScanClicked:Z
    invoke-static {v6}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->access$500(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 210
    iget-object v6, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;

    #calls: Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->setScanTimer(ZZ)V
    invoke-static {v6, v9, v10}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->access$600(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;ZZ)V

    .line 315
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    iget-object v6, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;

    #calls: Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->setP2pMenu(I)V
    invoke-static {v6, v12}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->access$700(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;I)V

    .line 213
    iget-object v6, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v6}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->access$000(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v7}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->access$800(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;

    invoke-virtual {v6, v7, v8}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    goto :goto_0

    .line 215
    :cond_2
    const-string v6, "wifi_p2p_state"

    invoke-virtual {p2, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v9, :cond_0

    .line 217
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->isInitialStickyBroadcast()Z

    move-result v6

    if-nez v6, :cond_4

    .line 218
    const-string v6, "WifiP2pDevicePicker"

    const-string v7, "WIFI_P2P_STATE_DISABLED by certain reason"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v6, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;

    #calls: Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->setScanTimer(ZZ)V
    invoke-static {v6, v10, v10}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->access$600(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;ZZ)V

    .line 220
    invoke-static {}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->access$900()Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 221
    invoke-static {}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->access$900()Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->clear()Z

    .line 222
    :cond_3
    iget-object v6, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;

    invoke-virtual {v6}, Lcom/android/settings_ex/SettingsPreferenceFragment;->finish()V

    .line 224
    :cond_4
    iget-object v6, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;

    #setter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v6, v11}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->access$1002(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;

    goto :goto_0

    .line 227
    :cond_5
    const-string v6, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 228
    iget-object v6, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v6}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->access$000(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 229
    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;

    const-string v6, "wifiP2pGroupInfo"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/p2p/WifiP2pGroup;

    #setter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v7, v6}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->access$1002(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 230
    iget-object v6, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v6}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->access$000(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v7}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->access$800(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;

    invoke-virtual {v6, v7, v8}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    goto :goto_0

    .line 232
    :cond_6
    const-string v6, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 233
    iget-object v6, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v6}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->access$000(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 234
    iget-object v6, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v6}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->access$000(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v7}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->access$800(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v7

    new-instance v8, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$1$1;

    invoke-direct {v8, p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$1$1;-><init>(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$1;)V

    invoke-virtual {v6, v7, v8}, Landroid/net/wifi/p2p/WifiP2pManager;->requestGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;)V

    .line 239
    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;

    const-string v6, "wifiP2pInfo"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/p2p/WifiP2pInfo;

    #setter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;
    invoke-static {v7, v6}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->access$1102(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;Landroid/net/wifi/p2p/WifiP2pInfo;)Landroid/net/wifi/p2p/WifiP2pInfo;

    .line 242
    const-string v6, "networkInfo"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkInfo;

    .line 243
    .local v4, networkInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v6

    sget-object v7, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v6, v7, :cond_9

    .line 244
    const-string v6, "WifiP2pDevicePicker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "connected : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mMultiConnect:Z
    invoke-static {v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->access$1200(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v6, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mMultiConnect:Z
    invoke-static {v6}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->access$1200(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;)Z

    move-result v6

    if-ne v6, v9, :cond_0

    .line 250
    const-string v6, "WifiP2pDevicePicker"

    const-string v7, "AUTO GO is created for multiple connect"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    new-instance v3, Landroid/net/wifi/p2p/WifiP2pConfigList;

    invoke-direct {v3}, Landroid/net/wifi/p2p/WifiP2pConfigList;-><init>()V

    .line 253
    .local v3, mSelectedConfig:Landroid/net/wifi/p2p/WifiP2pConfigList;
    iget-object v6, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static {v6}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->access$1300(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 254
    .local v5, peer:Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v6, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;

    #calls: Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->getPreferredConfig(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v6, v5}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->access$1400(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/net/wifi/p2p/WifiP2pConfigList;->update(Landroid/net/wifi/p2p/WifiP2pConfig;)V

    goto :goto_1

    .line 256
    .end local v5           #peer:Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_7
    iget-object v6, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v6}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->access$000(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 257
    iget-object v6, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v6}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->access$000(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v7}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->access$800(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v7

    new-instance v8, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$1$2;

    invoke-direct {v8, p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$1$2;-><init>(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$1;)V

    invoke-virtual {v6, v7, v3, v8}, Landroid/net/wifi/p2p/WifiP2pManager;->connect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfigList;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 268
    :cond_8
    iget-object v6, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;

    #setter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mMultiConnect:Z
    invoke-static {v6, v10}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->access$1202(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;Z)Z

    .line 270
    iget-object v6, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;

    invoke-virtual {v6}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 271
    .local v2, in:Landroid/content/Intent;
    const-string v6, "com.android.settings_ex.wifi.p2p.WifiP2pDeviceList"

    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static {v7}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->access$1300(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 272
    iget-object v6, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;

    invoke-virtual {v6}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;

    invoke-virtual {v7}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    const/4 v7, -0x1

    invoke-virtual {v6, v7, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 274
    iget-object v6, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;

    invoke-virtual {v6}, Lcom/android/settings_ex/SettingsPreferenceFragment;->finish()V

    goto/16 :goto_0

    .line 278
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #in:Landroid/content/Intent;
    .end local v3           #mSelectedConfig:Landroid/net/wifi/p2p/WifiP2pConfigList;
    :cond_9
    iget-object v6, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mScanDialog:Landroid/app/AlertDialog;
    invoke-static {v6}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->access$1500(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;)Landroid/app/AlertDialog;

    move-result-object v6

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mScanDialog:Landroid/app/AlertDialog;
    invoke-static {v6}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->access$1500(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;)Landroid/app/AlertDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Dialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 279
    iget-object v6, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mScanDialog:Landroid/app/AlertDialog;
    invoke-static {v6}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->access$1500(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;)Landroid/app/AlertDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Dialog;->dismiss()V

    .line 280
    iget-object v6, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;

    #setter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mScanDialog:Landroid/app/AlertDialog;
    invoke-static {v6, v11}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->access$1502(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 283
    :cond_a
    iget-object v6, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;

    #calls: Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->isP2pEnabled()Z
    invoke-static {v6}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->access$1600(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 284
    const-string v6, "WifiP2pDevicePicker"

    const-string v7, "disconnected"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object v6, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;

    #setter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v6, v11}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->access$1002(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 287
    iget-object v6, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectClicked:Z
    invoke-static {v6}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->access$1700(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 288
    iget-object v6, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;

    const/4 v7, 0x4

    #calls: Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->setP2pMenu(I)V
    invoke-static {v6, v7}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->access$700(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;I)V

    .line 291
    :cond_b
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->isInitialStickyBroadcast()Z

    move-result v6

    if-nez v6, :cond_c

    .line 292
    iget-object v6, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mScanClicked:Z
    invoke-static {v6}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->access$500(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 293
    iget-object v6, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;

    #calls: Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->setScanTimer(ZZ)V
    invoke-static {v6, v9, v10}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->access$600(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;ZZ)V

    .line 296
    :cond_c
    iget-object v6, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mReceivedStickyEnabled:Z
    invoke-static {v6}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->access$100(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 297
    iget-object v6, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;

    invoke-virtual {v6}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 298
    iget-object v6, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;

    invoke-virtual {v6}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings_ex/ProgressCategory;
    invoke-static {v7}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->access$300(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;)Lcom/android/settings_ex/ProgressCategory;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 299
    iget-object v6, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings_ex/ProgressCategory;
    invoke-static {v6}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->access$300(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;)Lcom/android/settings_ex/ProgressCategory;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/android/settings_ex/ProgressCategory;->setProgress(Z)V

    .line 300
    iget-object v6, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;

    #calls: Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->addThisDevicePreference()V
    invoke-static {v6}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->access$400(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;)V

    .line 302
    iget-object v6, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;

    #setter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mReceivedStickyEnabled:Z
    invoke-static {v6, v9}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->access$102(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;Z)Z

    .line 304
    iget-object v6, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mScanClicked:Z
    invoke-static {v6}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->access$500(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 305
    iget-object v6, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;

    #calls: Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->setScanTimer(ZZ)V
    invoke-static {v6, v9, v10}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->access$600(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;ZZ)V

    goto/16 :goto_0

    .line 309
    .end local v4           #networkInfo:Landroid/net/NetworkInfo;
    :cond_d
    const-string v6, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 310
    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;

    const-string v6, "wifiP2pDevice"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/p2p/WifiP2pDevice;

    #setter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v7, v6}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->access$1802(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;

    goto/16 :goto_0
.end method
