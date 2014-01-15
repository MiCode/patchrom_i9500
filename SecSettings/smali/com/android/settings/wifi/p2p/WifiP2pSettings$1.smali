.class Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiP2pSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 247
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, action:Ljava/lang/String;
    const-string v7, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 250
    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v7}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$000(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 251
    const-string v7, "wifi_p2p_state"

    const/4 v8, 0x1

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_5

    .line 253
    const-string v7, "WifiP2pSettings"

    const-string v8, "WIFI_P2P_STATE_ENABLED"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v7}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v7}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 255
    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v7}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/settings_ex/ProgressCategory;
    invoke-static {v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$100(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Lcom/android/settings_ex/ProgressCategory;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 256
    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/settings_ex/ProgressCategory;
    invoke-static {v7}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$100(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Lcom/android/settings_ex/ProgressCategory;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/settings_ex/ProgressCategory;->setProgress(Z)V

    .line 257
    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    #calls: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->addThisDevicePreference()V
    invoke-static {v7}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$200(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)V

    .line 259
    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    const/4 v8, 0x1

    #setter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mReceivedStickyEnabled:Z
    invoke-static {v7, v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$302(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;Z)Z

    .line 261
    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    #calls: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->isP2pConnected()Z
    invoke-static {v7}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$400(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 264
    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v7}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$000(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$500(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v8

    new-instance v9, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1$1;

    invoke-direct {v9, p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1$1;-><init>(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;)V

    invoke-virtual {v7, v8, v9}, Landroid/net/wifi/p2p/WifiP2pManager;->requestGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;)V

    .line 269
    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v7}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$000(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$500(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v7, v8, v9}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    .line 278
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$1000()Landroid/hardware/motion/MotionRecognitionManager;

    move-result-object v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mIsRegisteredMotionListener:Z
    invoke-static {v7}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$1100(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 280
    invoke-static {}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$1000()Landroid/hardware/motion/MotionRecognitionManager;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mMotionListener:Landroid/hardware/motion/MRListener;
    invoke-static {v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$1200(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/hardware/motion/MRListener;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v7, v8, v9}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V

    .line 281
    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    const/4 v8, 0x1

    #setter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mIsRegisteredMotionListener:Z
    invoke-static {v7, v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$1102(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;Z)Z

    .line 284
    :cond_1
    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v7}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 473
    :cond_2
    :goto_1
    return-void

    .line 271
    :cond_3
    invoke-static {}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$700()Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mScanClicked:Z
    invoke-static {v7}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$800(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 272
    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    const/4 v8, 0x1

    const/4 v9, 0x0

    #calls: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->setScanTimer(ZZ)V
    invoke-static {v7, v8, v9}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$900(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;ZZ)V

    .line 274
    :cond_4
    invoke-static {}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$700()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 275
    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v7}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$000(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$500(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v7, v8, v9}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    goto :goto_0

    .line 285
    :cond_5
    const-string v7, "wifi_p2p_state"

    const/4 v8, 0x1

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    .line 287
    const-string v7, "WifiP2pSettings"

    const-string v8, "WIFI_P2P_STATE_DISABLED"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    const/4 v7, 0x0

    invoke-static {v7}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$702(Z)Z

    .line 290
    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    const/4 v8, 0x0

    #setter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mMultiButOneDev:Z
    invoke-static {v7, v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$1302(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;Z)Z

    .line 291
    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    const/4 v8, 0x0

    #setter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mMultiConnect:Z
    invoke-static {v7, v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$1402(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;Z)Z

    .line 292
    const/4 v7, 0x0

    invoke-static {v7}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$1502(Z)Z

    .line 293
    const/4 v7, 0x0

    invoke-static {v7}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$1602(Z)Z

    .line 294
    const/4 v7, 0x0

    invoke-static {v7}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$1702(Z)Z

    .line 295
    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    const/4 v8, 0x0

    const/4 v9, 0x0

    #calls: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->setScanTimer(ZZ)V
    invoke-static {v7, v8, v9}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$900(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;ZZ)V

    .line 296
    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    const/4 v8, 0x1

    #setter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mHaveSwitch:Z
    invoke-static {v7, v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$1802(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;Z)Z

    .line 297
    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    #calls: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->changeActionBar()V
    invoke-static {v7}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$1900(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)V

    .line 298
    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    const/4 v8, 0x6

    #calls: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->setP2pMenu(I)V
    invoke-static {v7, v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$2000(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;I)V

    .line 299
    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    const/4 v8, 0x1

    #calls: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->setP2pMenu(I)V
    invoke-static {v7, v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$2000(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;I)V

    .line 300
    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/settings_ex/ProgressCategory;
    invoke-static {v7}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$100(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Lcom/android/settings_ex/ProgressCategory;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/android/settings_ex/ProgressCategory;->setProgressText(ZI)V

    .line 301
    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/settings_ex/ProgressCategory;
    invoke-static {v7}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$100(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Lcom/android/settings_ex/ProgressCategory;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/settings_ex/ProgressCategory;->setProgress(Z)V

    .line 302
    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/settings_ex/ProgressCategory;
    invoke-static {v7}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$100(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Lcom/android/settings_ex/ProgressCategory;

    move-result-object v7

    invoke-virtual {v7}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 303
    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mPeersConnected:Landroid/preference/PreferenceGroup;
    invoke-static {v7}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$2100(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/preference/PreferenceGroup;

    move-result-object v7

    invoke-virtual {v7}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 304
    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mPeersBusy:Landroid/preference/PreferenceGroup;
    invoke-static {v7}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$2200(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/preference/PreferenceGroup;

    move-result-object v7

    invoke-virtual {v7}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 305
    invoke-static {}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$2300()Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 306
    invoke-static {}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$2300()Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->clear()Z

    .line 307
    :cond_6
    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    const v8, 0x7f090412

    #calls: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->addMessagePreference(I)V
    invoke-static {v7, v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$2400(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;I)V

    .line 310
    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mMultiConnectFooter:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$2500(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/widget/TextView;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 311
    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mDeviceNameDialog:Landroid/app/AlertDialog;
    invoke-static {v7}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$2600(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mDeviceNameDialog:Landroid/app/AlertDialog;
    invoke-static {v7}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$2600(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Dialog;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 312
    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mEditDeviceName:Landroid/widget/EditText;
    invoke-static {v7}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$2700(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/widget/EditText;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 313
    const/4 v2, 0x0

    .line 314
    .local v2, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mEditDeviceName:Landroid/widget/EditText;
    invoke-static {v7}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$2700(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/widget/EditText;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "input_method"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #imm:Landroid/view/inputmethod/InputMethodManager;
    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 315
    .restart local v2       #imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v2, :cond_7

    .line 316
    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mEditDeviceName:Landroid/widget/EditText;
    invoke-static {v7}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$2700(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/widget/EditText;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v2, v7, v8}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 319
    .end local v2           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_7
    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mDeviceNameDialog:Landroid/app/AlertDialog;
    invoke-static {v7}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$2600(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Dialog;->dismiss()V

    .line 320
    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    const/4 v8, 0x0

    #setter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mDeviceNameDialog:Landroid/app/AlertDialog;
    invoke-static {v7, v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$2602(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 322
    :cond_8
    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mCancelConnectDialog:Landroid/app/AlertDialog;
    invoke-static {v7}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$2800(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v7

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mCancelConnectDialog:Landroid/app/AlertDialog;
    invoke-static {v7}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$2800(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Dialog;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 323
    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mCancelConnectDialog:Landroid/app/AlertDialog;
    invoke-static {v7}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$2800(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Dialog;->dismiss()V

    .line 324
    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    const/4 v8, 0x0

    #setter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mCancelConnectDialog:Landroid/app/AlertDialog;
    invoke-static {v7, v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$2802(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 327
    :cond_9
    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mScanDialog:Landroid/app/AlertDialog;
    invoke-static {v7}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$2900(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v7

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mScanDialog:Landroid/app/AlertDialog;
    invoke-static {v7}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$2900(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Dialog;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 328
    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mScanDialog:Landroid/app/AlertDialog;
    invoke-static {v7}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$2900(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Dialog;->dismiss()V

    .line 329
    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    const/4 v8, 0x0

    #setter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mScanDialog:Landroid/app/AlertDialog;
    invoke-static {v7, v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$2902(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 331
    :cond_a
    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v7}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$3000(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v7

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v7}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$3000(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Dialog;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 332
    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v7}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$3000(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Dialog;->dismiss()V

    .line 333
    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    const/4 v8, 0x0

    #setter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v7, v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$3002(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 335
    :cond_b
    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mMaxClientSupportDialog:Landroid/app/AlertDialog;
    invoke-static {v7}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$3100(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v7

    if-eqz v7, :cond_c

    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mMaxClientSupportDialog:Landroid/app/AlertDialog;
    invoke-static {v7}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$3100(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Dialog;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 336
    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mMaxClientSupportDialog:Landroid/app/AlertDialog;
    invoke-static {v7}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$3100(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Dialog;->dismiss()V

    .line 337
    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    const/4 v8, 0x0

    #setter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mMaxClientSupportDialog:Landroid/app/AlertDialog;
    invoke-static {v7, v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$3102(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 340
    :cond_c
    invoke-static {}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$1000()Landroid/hardware/motion/MotionRecognitionManager;

    move-result-object v7

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mIsRegisteredMotionListener:Z
    invoke-static {v7}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$1100(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 342
    invoke-static {}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$1000()Landroid/hardware/motion/MotionRecognitionManager;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mMotionListener:Landroid/hardware/motion/MRListener;
    invoke-static {v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$1200(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/hardware/motion/MRListener;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 343
    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    const/4 v8, 0x0

    #setter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mIsRegisteredMotionListener:Z
    invoke-static {v7, v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$1102(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;Z)Z

    .line 346
    :cond_d
    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v7}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto/16 :goto_1

    .line 349
    :cond_e
    const-string v7, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 350
    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v7}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$000(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 351
    const-string v7, "wifiP2pGroupInfo"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-static {v7}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$602(Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 352
    invoke-static {}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$600()Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v7

    if-eqz v7, :cond_f

    invoke-static {}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$600()Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 353
    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    #calls: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->isP2pConnected()Z
    invoke-static {v7}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$400(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Z

    move-result v7

    if-eqz v7, :cond_f

    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mAutoFinish:Z
    invoke-static {v7}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$3200(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-static {}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$1500()Z

    move-result v7

    if-nez v7, :cond_f

    .line 354
    const/4 v7, 0x0

    invoke-static {v7}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$702(Z)Z

    .line 356
    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v7}, Lcom/android/settings_ex/SettingsPreferenceFragment;->finish()V

    .line 359
    :cond_f
    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v7}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$000(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$500(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v7, v8, v9}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    goto/16 :goto_1

    .line 361
    :cond_10
    const-string v7, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 362
    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v7}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$000(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 363
    const-string v7, "wifiP2pInfo"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/p2p/WifiP2pInfo;

    .line 366
    .local v5, p2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;
    const-string v7, "networkInfo"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkInfo;

    .line 368
    .local v4, networkInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v7

    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v7, v8, :cond_18

    .line 369
    const-string v7, "WifiP2pSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "connected!!!! multi-connect? "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mMultiConnect:Z
    invoke-static {v9}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$1400(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mDeviceNameDialog:Landroid/app/AlertDialog;
    invoke-static {v7}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$2600(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v7

    if-eqz v7, :cond_11

    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mDeviceNameDialog:Landroid/app/AlertDialog;
    invoke-static {v7}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$2600(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Dialog;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_11

    .line 372
    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mDeviceNameDialog:Landroid/app/AlertDialog;
    invoke-static {v7}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$2600(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Dialog;->dismiss()V

    .line 373
    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    const/4 v8, 0x0

    #setter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mDeviceNameDialog:Landroid/app/AlertDialog;
    invoke-static {v7, v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$2602(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 377
    :cond_11
    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mCancelConnectDialog:Landroid/app/AlertDialog;
    invoke-static {v7}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$2800(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v7

    if-eqz v7, :cond_12

    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mCancelConnectDialog:Landroid/app/AlertDialog;
    invoke-static {v7}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$2800(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Dialog;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_12

    .line 378
    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mCancelConnectDialog:Landroid/app/AlertDialog;
    invoke-static {v7}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$2800(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Dialog;->dismiss()V

    .line 379
    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    const/4 v8, 0x0

    #setter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mCancelConnectDialog:Landroid/app/AlertDialog;
    invoke-static {v7, v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$2802(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 383
    :cond_12
    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v7}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$000(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$500(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v7, v8, v9}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    .line 386
    iget-boolean v7, v5, Landroid/net/wifi/p2p/WifiP2pInfo;->isGroupOwner:Z

    if-nez v7, :cond_13

    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mAutoFinish:Z
    invoke-static {v7}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$3200(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 387
    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v7}, Lcom/android/settings_ex/SettingsPreferenceFragment;->finish()V

    .line 389
    :cond_13
    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mScanClicked:Z
    invoke-static {v7}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$800(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_14

    .line 390
    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    const/4 v8, 0x0

    const/4 v9, 0x0

    #calls: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->setScanTimer(ZZ)V
    invoke-static {v7, v8, v9}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$900(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;ZZ)V

    .line 392
    :cond_14
    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mMultiConnect:Z
    invoke-static {v7}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$1400(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_17

    .line 393
    const-string v7, "WifiP2pSettings"

    const-string v8, "AUTO GO is created for multiple connect"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    new-instance v3, Landroid/net/wifi/p2p/WifiP2pConfigList;

    invoke-direct {v3}, Landroid/net/wifi/p2p/WifiP2pConfigList;-><init>()V

    .line 396
    .local v3, mSelectedConfig:Landroid/net/wifi/p2p/WifiP2pConfigList;
    invoke-static {}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$3300()Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 397
    .local v6, peer:Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    #calls: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getPreferredConfig(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v7, v6}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$3400(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/net/wifi/p2p/WifiP2pConfigList;->update(Landroid/net/wifi/p2p/WifiP2pConfig;)V

    goto :goto_2

    .line 399
    .end local v6           #peer:Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_15
    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v7}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$000(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v7

    if-eqz v7, :cond_16

    .line 400
    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v7}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$000(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$500(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v8

    new-instance v9, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1$2;

    invoke-direct {v9, p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1$2;-><init>(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;)V

    invoke-virtual {v7, v8, v3, v9}, Landroid/net/wifi/p2p/WifiP2pManager;->connect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfigList;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 410
    :cond_16
    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    const/4 v8, 0x0

    #setter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mMultiConnect:Z
    invoke-static {v7, v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$1402(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;Z)Z

    .line 411
    const/4 v7, 0x1

    invoke-static {v7}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$1502(Z)Z

    .line 412
    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    const/4 v8, 0x1

    #setter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mHaveSwitch:Z
    invoke-static {v7, v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$1802(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;Z)Z

    .line 413
    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    #calls: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->changeActionBar()V
    invoke-static {v7}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$1900(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)V

    .line 458
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #mSelectedConfig:Landroid/net/wifi/p2p/WifiP2pConfigList;
    :cond_17
    :goto_3
    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v7}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto/16 :goto_1

    .line 417
    :cond_18
    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mScanDialog:Landroid/app/AlertDialog;
    invoke-static {v7}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$2900(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v7

    if-eqz v7, :cond_19

    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mScanDialog:Landroid/app/AlertDialog;
    invoke-static {v7}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$2900(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Dialog;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_19

    .line 418
    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mScanDialog:Landroid/app/AlertDialog;
    invoke-static {v7}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$2900(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Dialog;->dismiss()V

    .line 419
    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    const/4 v8, 0x0

    #setter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mScanDialog:Landroid/app/AlertDialog;
    invoke-static {v7, v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$2902(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 423
    :cond_19
    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v7}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$3000(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v7

    if-eqz v7, :cond_1a

    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v7}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$3000(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Dialog;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 424
    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v7}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$3000(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Dialog;->dismiss()V

    .line 425
    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    const/4 v8, 0x0

    #setter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v7, v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$3002(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 428
    :cond_1a
    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    #calls: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->isP2pEnabled()Z
    invoke-static {v7}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$3500(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Z

    move-result v7

    if-eqz v7, :cond_17

    .line 429
    const-string v7, "WifiP2pSettings"

    const-string v8, "disconnected"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    const/4 v7, 0x0

    invoke-static {v7}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$602(Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 431
    const/4 v7, 0x0

    invoke-static {v7}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$1502(Z)Z

    .line 432
    const/4 v7, 0x0

    invoke-static {v7}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$1602(Z)Z

    .line 434
    invoke-static {}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$1700()Z

    move-result v7

    if-nez v7, :cond_1b

    .line 435
    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    const/4 v8, 0x6

    #calls: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->setP2pMenu(I)V
    invoke-static {v7, v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$2000(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;I)V

    .line 437
    :cond_1b
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->isInitialStickyBroadcast()Z

    move-result v7

    if-nez v7, :cond_1c

    .line 438
    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mScanClicked:Z
    invoke-static {v7}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$800(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Z

    move-result v7

    if-nez v7, :cond_1c

    .line 439
    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    const/4 v8, 0x1

    const/4 v9, 0x0

    #calls: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->setScanTimer(ZZ)V
    invoke-static {v7, v8, v9}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$900(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;ZZ)V

    .line 442
    :cond_1c
    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mReceivedStickyEnabled:Z
    invoke-static {v7}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$300(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Z

    move-result v7

    if-nez v7, :cond_17

    .line 443
    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v7}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v7}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 444
    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v7}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/settings_ex/ProgressCategory;
    invoke-static {v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$100(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Lcom/android/settings_ex/ProgressCategory;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 445
    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/settings_ex/ProgressCategory;
    invoke-static {v7}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$100(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Lcom/android/settings_ex/ProgressCategory;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/settings_ex/ProgressCategory;->setProgress(Z)V

    .line 446
    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    #calls: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->addThisDevicePreference()V
    invoke-static {v7}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$200(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)V

    .line 448
    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    const/4 v8, 0x1

    #setter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mReceivedStickyEnabled:Z
    invoke-static {v7, v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$302(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;Z)Z

    .line 450
    invoke-static {}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$700()Z

    move-result v7

    if-nez v7, :cond_1d

    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mScanClicked:Z
    invoke-static {v7}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$800(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Z

    move-result v7

    if-nez v7, :cond_1d

    .line 451
    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    const/4 v8, 0x1

    const/4 v9, 0x0

    #calls: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->setScanTimer(ZZ)V
    invoke-static {v7, v8, v9}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$900(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;ZZ)V

    .line 452
    :cond_1d
    invoke-static {}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$700()Z

    move-result v7

    if-eqz v7, :cond_17

    .line 453
    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v7}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$000(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$500(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v7, v8, v9}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    goto/16 :goto_3

    .line 459
    .end local v4           #networkInfo:Landroid/net/NetworkInfo;
    .end local v5           #p2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;
    :cond_1e
    const-string v7, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1f

    .line 460
    const-string v7, "wifiP2pDevice"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v7}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$3602(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;

    goto/16 :goto_1

    .line 465
    :cond_1f
    const-string v7, "android.net.wifi.p2p.REQUEST_STATE_CHANGE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 467
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->isInitialStickyBroadcast()Z

    move-result v7

    if-nez v7, :cond_2

    .line 468
    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mScanClicked:Z
    invoke-static {v7}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$800(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    .line 469
    iget-object v7, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    const/4 v8, 0x1

    const/4 v9, 0x0

    #calls: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->setScanTimer(ZZ)V
    invoke-static {v7, v8, v9}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$900(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;ZZ)V

    goto/16 :goto_1
.end method
