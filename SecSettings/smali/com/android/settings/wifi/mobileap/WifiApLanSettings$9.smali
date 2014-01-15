.class Lcom/android/settings_ex/wifi/mobileap/WifiApLanSettings$9;
.super Ljava/lang/Object;
.source "WifiApLanSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/mobileap/WifiApLanSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApLanSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/mobileap/WifiApLanSettings;)V
    .locals 0

    .prologue
    .line 432
    iput-object p1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApLanSettings$9;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApLanSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v5, 0x1

    .line 434
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApLanSettings$9;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApLanSettings;

    #getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApLanSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;
    invoke-static {v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApLanSettings;->access$1400(Lcom/android/settings_ex/wifi/mobileap/WifiApLanSettings;)Landroid/net/ConnectivityManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApLanSettings$9;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApLanSettings;

    #calls: Lcom/android/settings_ex/wifi/mobileap/WifiApLanSettings;->getLocalServerConfig()Landroid/net/DhcpServerConfiguration;
    invoke-static {v3}, Lcom/android/settings_ex/wifi/mobileap/WifiApLanSettings;->access$1300(Lcom/android/settings_ex/wifi/mobileap/WifiApLanSettings;)Landroid/net/DhcpServerConfiguration;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->saveDhcpServerConfiguration(Landroid/net/DhcpServerConfiguration;)Z

    .line 436
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApLanSettings$9;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApLanSettings;

    #getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApLanSettings;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApLanSettings;->access$1600(Lcom/android/settings_ex/wifi/mobileap/WifiApLanSettings;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "SAMSUNG_HOTSPOT"

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 437
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApLanSettings$9;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApLanSettings;

    #getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApLanSettings;->prefs:Landroid/content/SharedPreferences;
    invoke-static {v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApLanSettings;->access$1500(Lcom/android/settings_ex/wifi/mobileap/WifiApLanSettings;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 438
    .local v1, ed:Landroid/content/SharedPreferences$Editor;
    const-string v2, "DHCP_CHANGE"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 439
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 441
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApLanSettings$9;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApLanSettings;

    #getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApLanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApLanSettings;->access$1700(Lcom/android/settings_ex/wifi/mobileap/WifiApLanSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 443
    const-wide/16 v2, 0x258

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 447
    :goto_0
    sput-boolean v5, Lcom/android/settings_ex/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    .line 448
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApLanSettings$9;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApLanSettings;

    #getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApLanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApLanSettings;->access$1700(Lcom/android/settings_ex/wifi/mobileap/WifiApLanSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApLanSettings$9;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApLanSettings;

    #getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApLanSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v3}, Lcom/android/settings_ex/wifi/mobileap/WifiApLanSettings;->access$1800(Lcom/android/settings_ex/wifi/mobileap/WifiApLanSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 449
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApLanSettings$9;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApLanSettings;

    invoke-virtual {v2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->finish()V

    .line 450
    return-void

    .line 444
    :catch_0
    move-exception v0

    .line 445
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
