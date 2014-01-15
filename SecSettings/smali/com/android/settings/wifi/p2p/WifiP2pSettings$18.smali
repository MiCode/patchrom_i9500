.class Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$18;
.super Ljava/lang/Object;
.source "WifiP2pSettings.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->setScanTimer(ZZ)V
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
    .line 1465
    iput-object p1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$18;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 3
    .parameter "reason"

    .prologue
    .line 1493
    const-string v0, "WifiP2pSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " discover fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    return-void
.end method

.method public onSuccess()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1467
    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$18;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v1}, Landroid/app/Fragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1468
    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$18;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v1}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 1469
    .local v0, preferenceScreen:Landroid/preference/PreferenceScreen;
    invoke-static {}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$2300()Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->clear()Z

    .line 1470
    invoke-static {}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$3300()Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->clear()Z

    .line 1471
    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$18;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mAvailablePeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$4400(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->clear()Z

    .line 1472
    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$18;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/settings_ex/ProgressCategory;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$100(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Lcom/android/settings_ex/ProgressCategory;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 1473
    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$18;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/settings_ex/ProgressCategory;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$100(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Lcom/android/settings_ex/ProgressCategory;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 1474
    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$18;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/settings_ex/ProgressCategory;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$100(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Lcom/android/settings_ex/ProgressCategory;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/ProgressCategory;->setProgress(Z)V

    .line 1475
    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$18;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/settings_ex/ProgressCategory;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$100(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Lcom/android/settings_ex/ProgressCategory;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Lcom/android/settings_ex/ProgressCategory;->setProgressText(ZI)V

    .line 1477
    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$18;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mPeersConnected:Landroid/preference/PreferenceGroup;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$2100(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/preference/PreferenceGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 1478
    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$18;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mPeersBusy:Landroid/preference/PreferenceGroup;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$2200(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/preference/PreferenceGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 1479
    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$18;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mPeersConnected:Landroid/preference/PreferenceGroup;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$2100(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/preference/PreferenceGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1480
    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$18;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mPeersBusy:Landroid/preference/PreferenceGroup;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$2200(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/preference/PreferenceGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1481
    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$18;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mNoDevicePref:Landroid/preference/PreferenceGroup;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$3700(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/preference/PreferenceGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1486
    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$18;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mScanTimer:Landroid/os/CountDownTimer;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$4500(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/os/CountDownTimer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 1487
    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$18;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    const/4 v2, 0x3

    #calls: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->setP2pMenu(I)V
    invoke-static {v1, v2}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$2000(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;I)V

    .line 1490
    .end local v0           #preferenceScreen:Landroid/preference/PreferenceScreen;
    :cond_0
    const-string v1, "WifiP2pSettings"

    const-string v2, " discover success"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1491
    return-void
.end method
