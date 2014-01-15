.class Lcom/android/settings_ex/wifi/AdvancedWifiSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "AdvancedWifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/AdvancedWifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/AdvancedWifiSettings;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings$2;->this$0:Lcom/android/settings_ex/wifi/AdvancedWifiSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 261
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.net.wifi.SEC_PICK_WIFI_NETWORK"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "android.net.wifi.SEC_PICK_WIFI_NETWORK_WITH_ON"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 264
    :cond_0
    iget-object v4, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings$2;->this$0:Lcom/android/settings_ex/wifi/AdvancedWifiSettings;

    invoke-virtual {v4}, Lcom/android/settings_ex/SettingsPreferenceFragment;->finish()V

    .line 298
    :cond_1
    :goto_0
    return-void

    .line 265
    :cond_2
    const-string v4, "android.net.wifi.SEC_PICK_WIFI_NETWORK_WITH_DIALOG"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 266
    const-string v4, "launch_with"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 267
    .local v2, launchWith:I
    if-eq v2, v9, :cond_1

    .line 268
    iget-object v4, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings$2;->this$0:Lcom/android/settings_ex/wifi/AdvancedWifiSettings;

    invoke-virtual {v4}, Lcom/android/settings_ex/SettingsPreferenceFragment;->finish()V

    goto :goto_0

    .line 270
    .end local v2           #launchWith:I
    :cond_3
    const-string v4, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 271
    const-string v4, "networkInfo"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 272
    .local v1, info:Landroid/net/NetworkInfo;
    iget-object v4, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings$2;->this$0:Lcom/android/settings_ex/wifi/AdvancedWifiSettings;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    #setter for: Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mIsConn:Z
    invoke-static {v4, v5}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->access$102(Lcom/android/settings_ex/wifi/AdvancedWifiSettings;Z)Z

    .line 273
    iget-object v4, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings$2;->this$0:Lcom/android/settings_ex/wifi/AdvancedWifiSettings;

    #calls: Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->refreshWifiInfo()V
    invoke-static {v4}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->access$200(Lcom/android/settings_ex/wifi/AdvancedWifiSettings;)V

    goto :goto_0

    .line 274
    .end local v1           #info:Landroid/net/NetworkInfo;
    :cond_4
    const-string v4, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 275
    const-string v4, "wifi_state"

    const/4 v5, 0x4

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 277
    .local v3, state:I
    iget-object v5, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings$2;->this$0:Lcom/android/settings_ex/wifi/AdvancedWifiSettings;

    iget-object v4, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings$2;->this$0:Lcom/android/settings_ex/wifi/AdvancedWifiSettings;

    const-string v6, "wifi_hotspot20_enable"

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings_ex/SettingsSwitchPreference;

    iput-object v4, v5, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mEnableHs20:Lcom/android/settings_ex/SettingsSwitchPreference;

    .line 278
    if-ne v3, v9, :cond_5

    .line 279
    iget-object v4, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings$2;->this$0:Lcom/android/settings_ex/wifi/AdvancedWifiSettings;

    iget-object v4, v4, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mEnableHs20:Lcom/android/settings_ex/SettingsSwitchPreference;

    if-eqz v4, :cond_1

    .line 280
    iget-object v4, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings$2;->this$0:Lcom/android/settings_ex/wifi/AdvancedWifiSettings;

    iget-object v4, v4, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mEnableHs20:Lcom/android/settings_ex/SettingsSwitchPreference;

    invoke-virtual {v4, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 282
    :cond_5
    if-ne v3, v8, :cond_1

    .line 283
    iget-object v4, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings$2;->this$0:Lcom/android/settings_ex/wifi/AdvancedWifiSettings;

    iget-object v4, v4, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mEnableHs20:Lcom/android/settings_ex/SettingsSwitchPreference;

    if-eqz v4, :cond_1

    .line 284
    iget-object v4, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings$2;->this$0:Lcom/android/settings_ex/wifi/AdvancedWifiSettings;

    iget-object v4, v4, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mEnableHs20:Lcom/android/settings_ex/SettingsSwitchPreference;

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 287
    .end local v3           #state:I
    :cond_6
    const-string v4, "android.net.wifi.HS20_DISABLED_COMPLETE_BY_CREDERROR_ACTION"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 289
    const-string v4, "AdvancedWifiSettings"

    const-string v5, "HS20_DISABLED_COMPLETE_BY_CREDERROR_ACTION"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object v4, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings$2;->this$0:Lcom/android/settings_ex/wifi/AdvancedWifiSettings;

    #calls: Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->changeHotspot20(Z)V
    invoke-static {v4, v7}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->access$300(Lcom/android/settings_ex/wifi/AdvancedWifiSettings;Z)V

    .line 291
    iget-object v4, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings$2;->this$0:Lcom/android/settings_ex/wifi/AdvancedWifiSettings;

    invoke-virtual {v4}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f090285

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 293
    :cond_7
    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 294
    iget-object v4, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings$2;->this$0:Lcom/android/settings_ex/wifi/AdvancedWifiSettings;

    #calls: Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->updateWifiInternetServiceCheck()V
    invoke-static {v4}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->access$000(Lcom/android/settings_ex/wifi/AdvancedWifiSettings;)V

    goto/16 :goto_0

    .line 295
    :cond_8
    const-string v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 296
    iget-object v4, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings$2;->this$0:Lcom/android/settings_ex/wifi/AdvancedWifiSettings;

    #calls: Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->updateWifiInternetServiceCheck()V
    invoke-static {v4}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->access$000(Lcom/android/settings_ex/wifi/AdvancedWifiSettings;)V

    goto/16 :goto_0
.end method
