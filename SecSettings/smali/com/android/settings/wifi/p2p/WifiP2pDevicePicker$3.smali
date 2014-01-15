.class Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$3;
.super Ljava/lang/Object;
.source "WifiP2pDevicePicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->onActivityCreated(Landroid/os/Bundle;)V
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
    .line 358
    iput-object p1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$3;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 361
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$3;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectClicked:Z
    invoke-static {v0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->access$1700(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$3;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;

    invoke-virtual {v0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->finish()V

    .line 371
    :goto_0
    return-void

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$3;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->access$000(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$3;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->access$800(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$3;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    .line 366
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$3;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;

    #setter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectClicked:Z
    invoke-static {v0, v3}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->access$1702(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;Z)Z

    .line 367
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$3;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectFooter:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->access$2000(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 368
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$3;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;

    #calls: Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->useCustomActionBar(Z)V
    invoke-static {v0, v3}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->access$2100(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;Z)V

    .line 369
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$3;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;

    const/4 v1, 0x4

    #calls: Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->setP2pMenu(I)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->access$700(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;I)V

    goto :goto_0
.end method
