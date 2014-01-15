.class Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$28;
.super Ljava/lang/Object;
.source "WifiApSwitchEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;)V
    .locals 0

    .prologue
    .line 1063
    iput-object p1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$28;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "button"

    .prologue
    const/4 v2, 0x1

    .line 1066
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 1067
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$28;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$28;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;

    #getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mDialogConfigure:Lcom/android/settings_ex/wifi/WifiApDialog;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->access$700(Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;)Lcom/android/settings_ex/wifi/WifiApDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/WifiApDialog;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    #setter for: Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->access$902(Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 1068
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$28;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;

    #getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->access$1000(Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$28;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;

    #getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->access$900(Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    .line 1071
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$28;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->saveIsShowPassword()V

    .line 1073
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$28;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->setSoftapEnabled(Z)Z

    .line 1074
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$28;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;

    #getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mDialogConfigure:Lcom/android/settings_ex/wifi/WifiApDialog;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->access$700(Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;)Lcom/android/settings_ex/wifi/WifiApDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1075
    const-string v0, "WifiApSwitchEnabler"

    const-string v1, "mDialogConfigure.dismiss()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$28;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;

    #getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mDialogConfigure:Lcom/android/settings_ex/wifi/WifiApDialog;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->access$700(Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;)Lcom/android/settings_ex/wifi/WifiApDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1087
    :cond_0
    :goto_0
    return-void

    .line 1078
    :cond_1
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 1080
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$28;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    .line 1081
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$28;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    .line 1082
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$28;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;

    #getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mDialogConfigure:Lcom/android/settings_ex/wifi/WifiApDialog;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->access$700(Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;)Lcom/android/settings_ex/wifi/WifiApDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1083
    const-string v0, "WifiApSwitchEnabler"

    const-string v1, "mDialogConfigure.dismiss()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$28;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;

    #getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mDialogConfigure:Lcom/android/settings_ex/wifi/WifiApDialog;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->access$700(Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;)Lcom/android/settings_ex/wifi/WifiApDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0
.end method
