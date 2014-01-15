.class Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$25;
.super Ljava/lang/Object;
.source "WifiApWarning.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)V
    .locals 0

    .prologue
    .line 496
    iput-object p1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$25;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 498
    iget-object v3, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$25;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    #getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v3}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->access$300(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)Landroid/net/wifi/WifiManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    .line 499
    .local v2, wifiState:I
    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 501
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$25;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    #getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v3}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->access$300(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)Landroid/net/wifi/WifiManager;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 502
    iget-object v3, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$25;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    #setter for: Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiDisabledByEnablingHotspot:Z
    invoke-static {v3, v4}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->access$1302(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;Z)Z

    .line 503
    iget-object v3, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$25;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    #getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->access$200(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 504
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v3, "wifi_saved_state"

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 506
    const-wide/16 v3, 0x258

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 511
    .end local v0           #cr:Landroid/content/ContentResolver;
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$25;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    #calls: Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->startProvisioningIfNecessary(I)V
    invoke-static {v3, v5}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->access$1400(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;I)V

    .line 512
    return-void

    .line 507
    .restart local v0       #cr:Landroid/content/ContentResolver;
    :catch_0
    move-exception v1

    .line 508
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
