.class Lcom/android/settings_ex/wifi/WifiSettings$12;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/WifiSettings;->showDurationDialog(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/WifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/WifiSettings;)V
    .locals 0

    .prologue
    .line 1806
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiSettings$12;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 1808
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings$12;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings$12;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mWatchdogDialogRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/settings_ex/wifi/WifiSettings;->access$900(Lcom/android/settings_ex/wifi/WifiSettings;)Ljava/lang/Runnable;

    move-result-object v2

    #calls: Lcom/android/settings_ex/wifi/WifiSettings;->removeDialogTimer(Ljava/lang/Runnable;)V
    invoke-static {v1, v2}, Lcom/android/settings_ex/wifi/WifiSettings;->access$1000(Lcom/android/settings_ex/wifi/WifiSettings;Ljava/lang/Runnable;)V

    .line 1810
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.SHOW_INFO_MESSAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1811
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "info_type"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1812
    const-string v1, "visible"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1813
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings$12;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 1814
    return-void
.end method
