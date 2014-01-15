.class Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$3;
.super Landroid/os/CountDownTimer;
.source "WifiP2pSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;JJ)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 589
    iput-object p1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$3;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 4

    .prologue
    .line 593
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$3;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mScanClicked:Z
    invoke-static {v0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$800(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 594
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$3;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$000(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$3;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$500(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$3$1;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$3$1;-><init>(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$3;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->discoverPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 603
    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 0
    .parameter "millisUntilFinished"

    .prologue
    .line 591
    return-void
.end method
