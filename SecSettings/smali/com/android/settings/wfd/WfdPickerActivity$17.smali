.class Lcom/android/settings_ex/wfd/WfdPickerActivity$17;
.super Ljava/lang/Object;
.source "WfdPickerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wfd/WfdPickerActivity;->createAutoConnectDialog()Landroid/app/AlertDialog;
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
    .line 2035
    iput-object p1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$17;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 2038
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$17;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWFDDialogState:I
    invoke-static {v0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$3700(Lcom/android/settings_ex/wfd/WfdPickerActivity;)I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 2039
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$17;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    invoke-virtual {v0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 2040
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$17;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings_ex/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings_ex/ProgressCategory;
    invoke-static {v0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$4300(Lcom/android/settings_ex/wfd/WfdPickerActivity;)Lcom/android/settings_ex/ProgressCategory;

    move-result-object v0

    const v1, 0x7f090408

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 2041
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$17;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings_ex/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings_ex/ProgressCategory;
    invoke-static {v0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$4300(Lcom/android/settings_ex/wfd/WfdPickerActivity;)Lcom/android/settings_ex/ProgressCategory;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 2042
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$17;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings_ex/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings_ex/ProgressCategory;
    invoke-static {v0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$4300(Lcom/android/settings_ex/wfd/WfdPickerActivity;)Lcom/android/settings_ex/ProgressCategory;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ProgressCategory;->setProgress(Z)V

    .line 2043
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$17;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    invoke-virtual {v0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$17;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings_ex/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings_ex/ProgressCategory;
    invoke-static {v1}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$4300(Lcom/android/settings_ex/wfd/WfdPickerActivity;)Lcom/android/settings_ex/ProgressCategory;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 2045
    invoke-static {}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$300()Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$17;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings_ex/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v1}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$100(Lcom/android/settings_ex/wfd/WfdPickerActivity;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->stopPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 2047
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$17;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #calls: Lcom/android/settings_ex/wfd/WfdPickerActivity;->cancelWfdConnect()V
    invoke-static {v0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$1200(Lcom/android/settings_ex/wfd/WfdPickerActivity;)V

    .line 2048
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$17;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings_ex/wfd/WfdPickerActivity;->mInPickerDialog:Z
    invoke-static {v0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->access$800(Lcom/android/settings_ex/wfd/WfdPickerActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2049
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$17;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/wfd/WfdPickerDialog;

    invoke-virtual {v0}, Lcom/android/settings_ex/wfd/WfdPickerDialog;->cancelConnect()V

    .line 2051
    :cond_0
    return-void
.end method
