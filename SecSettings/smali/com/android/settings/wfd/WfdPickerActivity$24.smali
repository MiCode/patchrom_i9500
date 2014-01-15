.class Lcom/android/settings_ex/wfd/WfdPickerActivity$24;
.super Ljava/lang/Object;
.source "WfdPickerActivity.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wfd/WfdPickerActivity;->autoConnecting()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

.field final synthetic val$newDevice:Landroid/net/wifi/p2p/WifiP2pDevice;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wfd/WfdPickerActivity;Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 0

    .prologue
    .line 2727
    iput-object p1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$24;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    iput-object p2, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$24;->val$newDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 3
    .parameter "reason"

    .prologue
    .line 2742
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to initiate connection to Wifi display: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$24;->val$newDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2744
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$24;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 2745
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$24;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    const/4 v1, 0x0

    #calls: Lcom/android/settings_ex/wfd/WfdPickerActivity;->handleConnectionFailure(Z)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$4500(Lcom/android/settings_ex/wfd/WfdPickerActivity;Z)V

    .line 2746
    return-void
.end method

.method public onSuccess()V
    .locals 3

    .prologue
    .line 2733
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$24;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    iget-object v0, v0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mCurrentWifiPeer:Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    if-eqz v0, :cond_0

    .line 2734
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$24;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    const/4 v1, 0x1

    #setter for: Lcom/android/settings_ex/wfd/WfdPickerActivity;->mAutoConnStartedFromInv:Z
    invoke-static {v0, v1}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$902(Lcom/android/settings_ex/wfd/WfdPickerActivity;Z)Z

    .line 2737
    :cond_0
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initiated connection to Wifi display: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$24;->val$newDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2738
    return-void
.end method
