.class Lcom/android/settings_ex/dmr/DMRSettings$4;
.super Landroid/content/BroadcastReceiver;
.source "DMRSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/dmr/DMRSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final TAGClass2:Ljava/lang/String; = "mBroadcastReceiver: "


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/dmr/DMRSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/dmr/DMRSettings;)V
    .locals 0

    .prologue
    .line 1196
    iput-object p1, p0, Lcom/android/settings_ex/dmr/DMRSettings$4;->this$0:Lcom/android/settings_ex/dmr/DMRSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1203
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1205
    .local v0, action:Ljava/lang/String;
    const-string v8, "DMR Setting: "

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mBroadcastReceiver: BroadcastReceiver onReceive(): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    const-string v8, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "android.net.ethernet.ETH_STATE_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1211
    :cond_0
    const-string v8, "connectivity"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 1215
    .local v2, connectivityManager:Landroid/net/ConnectivityManager;
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    .line 1219
    .local v5, netInfo:Landroid/net/NetworkInfo;
    iget-object v8, p0, Lcom/android/settings_ex/dmr/DMRSettings$4;->this$0:Lcom/android/settings_ex/dmr/DMRSettings;

    const-string v9, "wifip2p"

    #calls: Lcom/android/settings_ex/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {v8, v9}, Lcom/android/settings_ex/dmr/DMRSettings;->access$400(Lcom/android/settings_ex/dmr/DMRSettings;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/p2p/WifiP2pManager;

    .line 1221
    .local v7, wifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    const/16 v8, 0xd

    invoke-virtual {v2, v8}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v6

    .line 1225
    .local v6, netInfoP2p:Landroid/net/NetworkInfo;
    const/4 v1, 0x0

    .line 1236
    .local v1, bEthernetConnected:Z
    if-eqz v7, :cond_1

    if-eqz v5, :cond_1

    .line 1238
    const-string v8, "Settings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DMR Setting: intent: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " state: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    if-nez v1, :cond_2

    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 1251
    iget-object v8, p0, Lcom/android/settings_ex/dmr/DMRSettings$4;->this$0:Lcom/android/settings_ex/dmr/DMRSettings;

    #getter for: Lcom/android/settings_ex/dmr/DMRSettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;
    invoke-static {v8}, Lcom/android/settings_ex/dmr/DMRSettings;->access$000(Lcom/android/settings_ex/dmr/DMRSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v8

    invoke-virtual {v8}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1255
    iget-object v8, p0, Lcom/android/settings_ex/dmr/DMRSettings$4;->this$0:Lcom/android/settings_ex/dmr/DMRSettings;

    #getter for: Lcom/android/settings_ex/dmr/DMRSettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;
    invoke-static {v8}, Lcom/android/settings_ex/dmr/DMRSettings;->access$000(Lcom/android/settings_ex/dmr/DMRSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1257
    iget-object v8, p0, Lcom/android/settings_ex/dmr/DMRSettings$4;->this$0:Lcom/android/settings_ex/dmr/DMRSettings;

    iget-object v9, p0, Lcom/android/settings_ex/dmr/DMRSettings$4;->this$0:Lcom/android/settings_ex/dmr/DMRSettings;

    #getter for: Lcom/android/settings_ex/dmr/DMRSettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;
    invoke-static {v9}, Lcom/android/settings_ex/dmr/DMRSettings;->access$000(Lcom/android/settings_ex/dmr/DMRSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v9

    #calls: Lcom/android/settings_ex/dmr/DMRSettings;->refreshPreference(Landroid/preference/Preference;)V
    invoke-static {v8, v9}, Lcom/android/settings_ex/dmr/DMRSettings;->access$500(Lcom/android/settings_ex/dmr/DMRSettings;Landroid/preference/Preference;)V

    .line 1539
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #bEthernetConnected:Z
    .end local v2           #connectivityManager:Landroid/net/ConnectivityManager;
    .end local v5           #netInfo:Landroid/net/NetworkInfo;
    .end local v6           #netInfoP2p:Landroid/net/NetworkInfo;
    .end local v7           #wifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    :cond_1
    :goto_0
    return-void

    .line 1267
    .restart local v0       #action:Ljava/lang/String;
    .restart local v1       #bEthernetConnected:Z
    .restart local v2       #connectivityManager:Landroid/net/ConnectivityManager;
    .restart local v5       #netInfo:Landroid/net/NetworkInfo;
    .restart local v6       #netInfoP2p:Landroid/net/NetworkInfo;
    .restart local v7       #wifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    :cond_2
    const-string v8, "Settings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DMR Setting: STATE WIFI:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", P2P:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1527
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #bEthernetConnected:Z
    .end local v2           #connectivityManager:Landroid/net/ConnectivityManager;
    .end local v5           #netInfo:Landroid/net/NetworkInfo;
    .end local v6           #netInfoP2p:Landroid/net/NetworkInfo;
    .end local v7           #wifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    :catch_0
    move-exception v3

    .line 1529
    .local v3, e:Landroid/content/res/Resources$NotFoundException;
    const-string v8, "Settings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DMR Setting: NotFoundException on broadcast receiver: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1531
    .end local v3           #e:Landroid/content/res/Resources$NotFoundException;
    :catch_1
    move-exception v4

    .line 1533
    .local v4, e1:Ljava/lang/Exception;
    const-string v8, "Settings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DMR Setting: Exception on broadcast receiver: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
