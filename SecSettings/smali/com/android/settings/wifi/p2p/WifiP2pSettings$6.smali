.class Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$6;
.super Ljava/lang/Object;
.source "WifiP2pSettings.java"

# interfaces
.implements Landroid/hardware/motion/MRListener;


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
.method constructor <init>(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)V
    .locals 0

    .prologue
    .line 653
    iput-object p1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$6;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMotionListener(Landroid/hardware/motion/MREvent;)V
    .locals 4
    .parameter "motionEvent"

    .prologue
    const/4 v3, 0x0

    .line 655
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v1

    const/16 v2, 0x23

    if-ne v1, v2, :cond_0

    .line 656
    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$6;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    const-string v2, "power"

    #calls: Lcom/android/settings_ex/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {v1, v2}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$3800(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 657
    .local v0, pm:Landroid/os/PowerManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 658
    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$6;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    #calls: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->isP2pEnabled()Z
    invoke-static {v1}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$3500(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$6;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    #calls: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->isP2pConnected()Z
    invoke-static {v1}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$400(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 659
    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$6;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    const/4 v2, 0x1

    #calls: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->setScanTimer(ZZ)V
    invoke-static {v1, v2, v3}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$900(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;ZZ)V

    .line 663
    .end local v0           #pm:Landroid/os/PowerManager;
    :cond_0
    :goto_0
    return-void

    .line 660
    .restart local v0       #pm:Landroid/os/PowerManager;
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$6;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    #calls: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->isP2pConnected()Z
    invoke-static {v1}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$400(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 661
    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$6;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    const/4 v2, 0x5

    #calls: Lcom/android/settings_ex/SettingsPreferenceFragment;->showDialog(I)V
    invoke-static {v1, v2}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$3900(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;I)V

    goto :goto_0
.end method
