.class Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiApWarning.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;
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
    .line 113
    iput-object p1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$1;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v1, 0x0

    .line 116
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 118
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$1;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    const-string v3, "wifi_state"

    const/16 v4, 0xe

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    #calls: Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->handleWifiApStateChanged(I)V
    invoke-static {v2, v3}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->access$000(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;I)V

    .line 121
    :cond_0
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 122
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$1;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    iget-object v3, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$1;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    #getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->access$200(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    #setter for: Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->isAirplaneMode:Z
    invoke-static {v2, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->access$102(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;Z)Z

    .line 124
    :cond_2
    return-void
.end method
