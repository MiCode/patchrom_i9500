.class Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$6;
.super Ljava/lang/Object;
.source "WifiP2pDevicePicker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->onCreate(Landroid/os/Bundle;)V
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
    .line 473
    iput-object p1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$6;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 476
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 477
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$6;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->access$000(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$6;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->access$000(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$6;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->access$800(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    new-instance v2, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$6$1;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$6$1;-><init>(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$6;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 488
    :cond_0
    return-void
.end method
