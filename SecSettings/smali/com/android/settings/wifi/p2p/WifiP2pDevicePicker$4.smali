.class Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$4;
.super Landroid/os/CountDownTimer;
.source "WifiP2pDevicePicker.java"


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
.method constructor <init>(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;JJ)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 413
    iput-object p1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$4;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 417
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$4;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mScanClicked:Z
    invoke-static {v0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->access$500(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 418
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$4;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;

    #calls: Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->setScanTimer(ZZ)V
    invoke-static {v0, v2, v2}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->access$600(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;ZZ)V

    .line 419
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$4;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;

    invoke-virtual {v0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$4;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mPeersBusy:Landroid/preference/PreferenceGroup;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->access$2200(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;)Landroid/preference/PreferenceGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$4;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mPeersConnected:Landroid/preference/PreferenceGroup;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->access$2300(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;)Landroid/preference/PreferenceGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$4;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings_ex/ProgressCategory;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->access$300(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;)Lcom/android/settings_ex/ProgressCategory;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 423
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$4;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mNoDevicePref:Landroid/preference/PreferenceGroup;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->access$2400(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;)Landroid/preference/PreferenceGroup;

    move-result-object v0

    const v1, 0x7f040185

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 424
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$4;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;

    invoke-virtual {v0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$4;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mNoDevicePref:Landroid/preference/PreferenceGroup;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->access$2400(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;)Landroid/preference/PreferenceGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 428
    :cond_1
    return-void
.end method

.method public onTick(J)V
    .locals 0
    .parameter "millisUntilFinished"

    .prologue
    .line 415
    return-void
.end method
