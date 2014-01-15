.class Lcom/android/settings_ex/nearby/NearbySettings$12;
.super Landroid/content/BroadcastReceiver;
.source "NearbySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/nearby/NearbySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/nearby/NearbySettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/nearby/NearbySettings;)V
    .locals 0

    .prologue
    .line 1020
    iput-object p1, p0, Lcom/android/settings_ex/nearby/NearbySettings$12;->this$0:Lcom/android/settings_ex/nearby/NearbySettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 34
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1024
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 1025
    .local v3, action:Ljava/lang/String;
    const-string v29, "AllshareSetting: "

    const-string v30, "BroadcastReceiver"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "onReceive(): "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v29 .. v31}, Lcom/android/settings_ex/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1027
    const-string v29, "android.net.wifi.STATE_CHANGE"

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_0

    const-string v29, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_0

    const-string v29, "android.net.ethernet.ETH_STATE_CHANGED"

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_5

    .line 1030
    :cond_0
    const-string v29, "connectivity"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    .line 1032
    .local v6, connectivityManager:Landroid/net/ConnectivityManager;
    const/16 v29, 0x1

    move/from16 v0, v29

    invoke-virtual {v6, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v20

    .line 1035
    .local v20, netInfo:Landroid/net/NetworkInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/nearby/NearbySettings$12;->this$0:Lcom/android/settings_ex/nearby/NearbySettings;

    move-object/from16 v29, v0

    const-string v30, "wifip2p"

    #calls: Lcom/android/settings_ex/nearby/NearbySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    invoke-static/range {v29 .. v30}, Lcom/android/settings_ex/nearby/NearbySettings;->access$1300(Lcom/android/settings_ex/nearby/NearbySettings;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/net/wifi/p2p/WifiP2pManager;

    .line 1036
    .local v28, wifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    const/16 v29, 0xd

    move/from16 v0, v29

    invoke-virtual {v6, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v21

    .line 1039
    .local v21, netInfoP2p:Landroid/net/NetworkInfo;
    const-string v29, "android.net.wifi.STATE_CHANGE"

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_3

    .line 1040
    const-string v29, "networkInfo"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v20

    .end local v20           #netInfo:Landroid/net/NetworkInfo;
    check-cast v20, Landroid/net/NetworkInfo;

    .line 1047
    .restart local v20       #netInfo:Landroid/net/NetworkInfo;
    :cond_1
    :goto_0
    const/4 v4, 0x0

    .line 1060
    .local v4, bEthernetConnected:Z
    if-eqz v28, :cond_2

    if-eqz v20, :cond_2

    .line 1061
    const-string v29, "AllshareSetting: "

    const-string v30, "BroadcastReceiver"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "intent: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " state: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v20 .. v20}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v29 .. v31}, Lcom/android/settings_ex/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1064
    if-nez v4, :cond_4

    sget-object v29, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual/range {v20 .. v20}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_4

    sget-object v29, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual/range {v20 .. v20}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_4

    sget-object v29, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual/range {v21 .. v21}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_4

    sget-object v29, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual/range {v21 .. v21}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_4

    .line 1069
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/nearby/NearbySettings$12;->this$0:Lcom/android/settings_ex/nearby/NearbySettings;

    move-object/from16 v29, v0

    #getter for: Lcom/android/settings_ex/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;
    invoke-static/range {v29 .. v29}, Lcom/android/settings_ex/nearby/NearbySettings;->access$300(Lcom/android/settings_ex/nearby/NearbySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v29

    if-eqz v29, :cond_2

    .line 1073
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/nearby/NearbySettings$12;->this$0:Lcom/android/settings_ex/nearby/NearbySettings;

    move-object/from16 v29, v0

    #getter for: Lcom/android/settings_ex/nearby/NearbySettings;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v29 .. v29}, Lcom/android/settings_ex/nearby/NearbySettings;->access$1400(Lcom/android/settings_ex/nearby/NearbySettings;)Landroid/app/ProgressDialog;

    move-result-object v29

    if-eqz v29, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/nearby/NearbySettings$12;->this$0:Lcom/android/settings_ex/nearby/NearbySettings;

    move-object/from16 v29, v0

    #getter for: Lcom/android/settings_ex/nearby/NearbySettings;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v29 .. v29}, Lcom/android/settings_ex/nearby/NearbySettings;->access$1400(Lcom/android/settings_ex/nearby/NearbySettings;)Landroid/app/ProgressDialog;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/app/Dialog;->isShowing()Z

    move-result v29

    if-eqz v29, :cond_2

    .line 1074
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/nearby/NearbySettings$12;->this$0:Lcom/android/settings_ex/nearby/NearbySettings;

    move-object/from16 v29, v0

    #getter for: Lcom/android/settings_ex/nearby/NearbySettings;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v29 .. v29}, Lcom/android/settings_ex/nearby/NearbySettings;->access$1400(Lcom/android/settings_ex/nearby/NearbySettings;)Landroid/app/ProgressDialog;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/app/Dialog;->cancel()V

    .line 1259
    .end local v3           #action:Ljava/lang/String;
    .end local v4           #bEthernetConnected:Z
    .end local v6           #connectivityManager:Landroid/net/ConnectivityManager;
    .end local v20           #netInfo:Landroid/net/NetworkInfo;
    .end local v21           #netInfoP2p:Landroid/net/NetworkInfo;
    .end local v28           #wifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    :cond_2
    :goto_1
    return-void

    .line 1042
    .restart local v3       #action:Ljava/lang/String;
    .restart local v6       #connectivityManager:Landroid/net/ConnectivityManager;
    .restart local v20       #netInfo:Landroid/net/NetworkInfo;
    .restart local v21       #netInfoP2p:Landroid/net/NetworkInfo;
    .restart local v28       #wifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    :cond_3
    const-string v29, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_1

    .line 1043
    const-string v29, "networkInfo"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v21

    .end local v21           #netInfoP2p:Landroid/net/NetworkInfo;
    check-cast v21, Landroid/net/NetworkInfo;

    .restart local v21       #netInfoP2p:Landroid/net/NetworkInfo;
    goto/16 :goto_0

    .line 1077
    .restart local v4       #bEthernetConnected:Z
    :cond_4
    const-string v29, "AllshareSetting: "

    const-string v30, "BroadcastReceiver"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "STATE WIFI:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v20 .. v20}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ", P2P:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v21 .. v21}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v29 .. v31}, Lcom/android/settings_ex/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 1254
    .end local v3           #action:Ljava/lang/String;
    .end local v4           #bEthernetConnected:Z
    .end local v6           #connectivityManager:Landroid/net/ConnectivityManager;
    .end local v20           #netInfo:Landroid/net/NetworkInfo;
    .end local v21           #netInfoP2p:Landroid/net/NetworkInfo;
    .end local v28           #wifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    :catch_0
    move-exception v11

    .line 1255
    .local v11, e:Landroid/content/res/Resources$NotFoundException;
    const-string v29, "AllshareSetting: "

    const-string v30, "BroadcastReceiver"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "NotFoundException: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v29 .. v31}, Lcom/android/settings_ex/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1082
    .end local v11           #e:Landroid/content/res/Resources$NotFoundException;
    .restart local v3       #action:Ljava/lang/String;
    :cond_5
    :try_start_1
    const-string v29, "com.android.settings_ex.allshare.REFRESH"

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_6

    .line 1083
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/nearby/NearbySettings$12;->this$0:Lcom/android/settings_ex/nearby/NearbySettings;

    move-object/from16 v29, v0

    #calls: Lcom/android/settings_ex/nearby/NearbySettings;->refreshPreferenceValues()V
    invoke-static/range {v29 .. v29}, Lcom/android/settings_ex/nearby/NearbySettings;->access$200(Lcom/android/settings_ex/nearby/NearbySettings;)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1256
    .end local v3           #action:Ljava/lang/String;
    :catch_1
    move-exception v12

    .line 1257
    .local v12, e1:Ljava/lang/Exception;
    const-string v29, "AllshareSetting: "

    const-string v30, "BroadcastReceiver"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Exception: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v29 .. v31}, Lcom/android/settings_ex/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1084
    .end local v12           #e1:Ljava/lang/Exception;
    .restart local v3       #action:Ljava/lang/String;
    :cond_6
    :try_start_2
    const-string v29, "android.intent.action.MEDIA_MOUNTED"

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_7

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v29

    const-string v30, "android.intent.action.MEDIA_EJECT"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_a

    .line 1086
    :cond_7
    const-string v29, "AllshareSetting: "

    const-string v30, "BroadcastReceiver"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "media mount changed: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v29 .. v31}, Lcom/android/settings_ex/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1091
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/nearby/NearbySettings$12;->this$0:Lcom/android/settings_ex/nearby/NearbySettings;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/settings_ex/nearby/NearbySettings;->isExternalStorageSdMounted()Z

    move-result v29

    if-nez v29, :cond_9

    .line 1094
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/nearby/NearbySettings$12;->this$0:Lcom/android/settings_ex/nearby/NearbySettings;

    move-object/from16 v29, v0

    #getter for: Lcom/android/settings_ex/nearby/NearbySettings;->mDownloadTo:Lcom/android/settings_ex/nearby/DownloadListPreference;
    invoke-static/range {v29 .. v29}, Lcom/android/settings_ex/nearby/NearbySettings;->access$1500(Lcom/android/settings_ex/nearby/NearbySettings;)Lcom/android/settings_ex/nearby/DownloadListPreference;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v29

    const-string v30, "1"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_8

    .line 1095
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/nearby/NearbySettings$12;->this$0:Lcom/android/settings_ex/nearby/NearbySettings;

    move-object/from16 v29, v0

    #getter for: Lcom/android/settings_ex/nearby/NearbySettings;->mDownloadTo:Lcom/android/settings_ex/nearby/DownloadListPreference;
    invoke-static/range {v29 .. v29}, Lcom/android/settings_ex/nearby/NearbySettings;->access$1500(Lcom/android/settings_ex/nearby/NearbySettings;)Lcom/android/settings_ex/nearby/DownloadListPreference;

    move-result-object v29

    const-string v30, "0"

    invoke-virtual/range {v29 .. v30}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1096
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/nearby/NearbySettings$12;->this$0:Lcom/android/settings_ex/nearby/NearbySettings;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/nearby/NearbySettings$12;->this$0:Lcom/android/settings_ex/nearby/NearbySettings;

    move-object/from16 v30, v0

    #getter for: Lcom/android/settings_ex/nearby/NearbySettings;->mDownloadTo:Lcom/android/settings_ex/nearby/DownloadListPreference;
    invoke-static/range {v30 .. v30}, Lcom/android/settings_ex/nearby/NearbySettings;->access$1500(Lcom/android/settings_ex/nearby/NearbySettings;)Lcom/android/settings_ex/nearby/DownloadListPreference;

    move-result-object v30

    const-string v31, "0"

    invoke-virtual/range {v29 .. v31}, Lcom/android/settings_ex/nearby/NearbySettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 1098
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/nearby/NearbySettings$12;->this$0:Lcom/android/settings_ex/nearby/NearbySettings;

    move-object/from16 v29, v0

    #getter for: Lcom/android/settings_ex/nearby/NearbySettings;->mDownloadTo:Lcom/android/settings_ex/nearby/DownloadListPreference;
    invoke-static/range {v29 .. v29}, Lcom/android/settings_ex/nearby/NearbySettings;->access$1500(Lcom/android/settings_ex/nearby/NearbySettings;)Lcom/android/settings_ex/nearby/DownloadListPreference;

    move-result-object v29

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Lcom/android/settings_ex/nearby/DownloadListPreference;->setIsExternalMounted(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 1106
    :catch_2
    move-exception v11

    .line 1107
    .local v11, e:Ljava/lang/Exception;
    :try_start_4
    const-string v29, "AllshareSetting: "

    const-string v30, "BroadcastReceiver"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Exception:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v29 .. v31}, Lcom/android/settings_ex/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1108
    invoke-virtual {v11}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    .line 1101
    .end local v11           #e:Ljava/lang/Exception;
    :cond_9
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/nearby/NearbySettings$12;->this$0:Lcom/android/settings_ex/nearby/NearbySettings;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/settings_ex/nearby/NearbySettings;->isExternalStorageSdMounted()Z

    move-result v29

    if-eqz v29, :cond_2

    .line 1104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/nearby/NearbySettings$12;->this$0:Lcom/android/settings_ex/nearby/NearbySettings;

    move-object/from16 v29, v0

    #getter for: Lcom/android/settings_ex/nearby/NearbySettings;->mDownloadTo:Lcom/android/settings_ex/nearby/DownloadListPreference;
    invoke-static/range {v29 .. v29}, Lcom/android/settings_ex/nearby/NearbySettings;->access$1500(Lcom/android/settings_ex/nearby/NearbySettings;)Lcom/android/settings_ex/nearby/DownloadListPreference;

    move-result-object v29

    const/16 v30, 0x1

    invoke-virtual/range {v29 .. v30}, Lcom/android/settings_ex/nearby/DownloadListPreference;->setIsExternalMounted(Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_1

    .line 1110
    :cond_a
    :try_start_6
    const-string v29, "com.android.settings_ex.allshare.UPDATE_LIST"

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_d

    .line 1111
    const-string v29, "AllshareSetting: "

    const-string v30, "BroadcastReceiver"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "ACCEPTLIST"

    const/16 v33, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v29 .. v31}, Lcom/android/settings_ex/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    const-string v29, "ACCEPTLIST"

    const/16 v30, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v16

    .line 1114
    .local v16, isAcceptList:Z
    const-string v29, "INDEX"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v15

    .line 1118
    .local v15, index:[I
    if-eqz v16, :cond_b

    .line 1119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/nearby/NearbySettings$12;->this$0:Lcom/android/settings_ex/nearby/NearbySettings;

    move-object/from16 v29, v0

    #getter for: Lcom/android/settings_ex/nearby/NearbySettings;->mAcceptDevice:Lcom/android/settings_ex/nearby/AcceptListPreference;
    invoke-static/range {v29 .. v29}, Lcom/android/settings_ex/nearby/NearbySettings;->access$1600(Lcom/android/settings_ex/nearby/NearbySettings;)Lcom/android/settings_ex/nearby/AcceptListPreference;

    move-result-object v25

    .line 1124
    .local v25, preference:Landroid/preference/MultiSelectListPreference;
    :goto_2
    invoke-virtual/range {v25 .. v25}, Landroid/preference/MultiSelectListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v13

    .line 1125
    .local v13, entry:[Ljava/lang/CharSequence;
    new-instance v22, Ljava/util/HashSet;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashSet;-><init>()V

    .line 1126
    .local v22, newValue:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v14, 0x0

    .local v14, i:I
    :goto_3
    array-length v0, v15

    move/from16 v29, v0

    move/from16 v0, v29

    if-ge v14, v0, :cond_c

    .line 1127
    const-string v29, "AllshareSetting: "

    const-string v30, "BroadcastReceiver"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Index: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    aget v32, v15, v14

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    aget v32, v15, v14

    aget-object v32, v13, v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v29 .. v31}, Lcom/android/settings_ex/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1129
    aget v29, v15, v14

    aget-object v29, v13, v29

    check-cast v29, Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1126
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 1121
    .end local v13           #entry:[Ljava/lang/CharSequence;
    .end local v14           #i:I
    .end local v22           #newValue:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v25           #preference:Landroid/preference/MultiSelectListPreference;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/nearby/NearbySettings$12;->this$0:Lcom/android/settings_ex/nearby/NearbySettings;

    move-object/from16 v29, v0

    #getter for: Lcom/android/settings_ex/nearby/NearbySettings;->mRejectDevice:Lcom/android/settings_ex/nearby/RejectListPreference;
    invoke-static/range {v29 .. v29}, Lcom/android/settings_ex/nearby/NearbySettings;->access$1700(Lcom/android/settings_ex/nearby/NearbySettings;)Lcom/android/settings_ex/nearby/RejectListPreference;

    move-result-object v25

    .restart local v25       #preference:Landroid/preference/MultiSelectListPreference;
    goto :goto_2

    .line 1131
    .restart local v13       #entry:[Ljava/lang/CharSequence;
    .restart local v14       #i:I
    .restart local v22       #newValue:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/nearby/NearbySettings$12;->this$0:Lcom/android/settings_ex/nearby/NearbySettings;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v25

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/nearby/NearbySettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1132
    .end local v13           #entry:[Ljava/lang/CharSequence;
    .end local v14           #i:I
    .end local v15           #index:[I
    .end local v16           #isAcceptList:Z
    .end local v22           #newValue:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v25           #preference:Landroid/preference/MultiSelectListPreference;
    :cond_d
    const-string v29, "com.android.settings_ex.allshare.SERVER_STATE_CHANGE"

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_f

    .line 1133
    const-string v29, "AllshareSetting: "

    const-string v30, "BroadcastReceiver"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "START"

    const/16 v33, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v29 .. v31}, Lcom/android/settings_ex/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1136
    const-string v29, "START"

    const/16 v30, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v17

    .line 1138
    .local v17, isServerStarted:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/nearby/NearbySettings$12;->this$0:Lcom/android/settings_ex/nearby/NearbySettings;

    move-object/from16 v29, v0

    #getter for: Lcom/android/settings_ex/nearby/NearbySettings;->bFunctionState:Z
    invoke-static/range {v29 .. v29}, Lcom/android/settings_ex/nearby/NearbySettings;->access$1800(Lcom/android/settings_ex/nearby/NearbySettings;)Z

    move-result v29

    move/from16 v0, v29

    move/from16 v1, v17

    if-ne v0, v1, :cond_e

    .line 1139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/nearby/NearbySettings$12;->this$0:Lcom/android/settings_ex/nearby/NearbySettings;

    move-object/from16 v29, v0

    #getter for: Lcom/android/settings_ex/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;
    invoke-static/range {v29 .. v29}, Lcom/android/settings_ex/nearby/NearbySettings;->access$300(Lcom/android/settings_ex/nearby/NearbySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v29

    const/16 v30, 0x1

    invoke-virtual/range {v29 .. v30}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_1

    .line 1141
    :cond_e
    const-string v29, "AllshareSetting: "

    const-string v30, "BroadcastReceiver"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "INVALID FUNCTION STATE: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v29 .. v31}, Lcom/android/settings_ex/nearby/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/nearby/NearbySettings$12;->this$0:Lcom/android/settings_ex/nearby/NearbySettings;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v17

    #setter for: Lcom/android/settings_ex/nearby/NearbySettings;->bFunctionState:Z
    invoke-static {v0, v1}, Lcom/android/settings_ex/nearby/NearbySettings;->access$1802(Lcom/android/settings_ex/nearby/NearbySettings;Z)Z

    .line 1145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/nearby/NearbySettings$12;->this$0:Lcom/android/settings_ex/nearby/NearbySettings;

    move-object/from16 v29, v0

    #getter for: Lcom/android/settings_ex/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;
    invoke-static/range {v29 .. v29}, Lcom/android/settings_ex/nearby/NearbySettings;->access$300(Lcom/android/settings_ex/nearby/NearbySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/nearby/NearbySettings$12;->this$0:Lcom/android/settings_ex/nearby/NearbySettings;

    move-object/from16 v29, v0

    #getter for: Lcom/android/settings_ex/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;
    invoke-static/range {v29 .. v29}, Lcom/android/settings_ex/nearby/NearbySettings;->access$300(Lcom/android/settings_ex/nearby/NearbySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v29

    const/16 v30, 0x1

    invoke-virtual/range {v29 .. v30}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_1

    .line 1148
    .end local v17           #isServerStarted:Z
    :cond_f
    const-string v29, "com.sec.android.nearby.mediaserver.REFRESH_DEVICE_LIST"

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_11

    .line 1149
    const-string v29, "AllshareSetting: "

    const-string v30, "BroadcastReceiver"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "LIST"

    const/16 v33, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v29 .. v31}, Lcom/android/settings_ex/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1151
    const-string v29, "LIST"

    const/16 v30, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 1153
    .local v5, bIsAcceptedList:Z
    if-eqz v5, :cond_10

    .line 1154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/nearby/NearbySettings$12;->this$0:Lcom/android/settings_ex/nearby/NearbySettings;

    move-object/from16 v29, v0

    #getter for: Lcom/android/settings_ex/nearby/NearbySettings;->mAcceptDevice:Lcom/android/settings_ex/nearby/AcceptListPreference;
    invoke-static/range {v29 .. v29}, Lcom/android/settings_ex/nearby/NearbySettings;->access$1600(Lcom/android/settings_ex/nearby/NearbySettings;)Lcom/android/settings_ex/nearby/AcceptListPreference;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/android/settings_ex/nearby/AcceptListPreference;->updateDialog()Z

    move-result v29

    if-eqz v29, :cond_2

    .line 1155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/nearby/NearbySettings$12;->this$0:Lcom/android/settings_ex/nearby/NearbySettings;

    move-object/from16 v29, v0

    #getter for: Lcom/android/settings_ex/nearby/NearbySettings;->mAcceptDevice:Lcom/android/settings_ex/nearby/AcceptListPreference;
    invoke-static/range {v29 .. v29}, Lcom/android/settings_ex/nearby/NearbySettings;->access$1600(Lcom/android/settings_ex/nearby/NearbySettings;)Lcom/android/settings_ex/nearby/AcceptListPreference;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v10

    check-cast v10, Landroid/app/AlertDialog;

    .line 1157
    .local v10, dialog:Landroid/app/AlertDialog;
    if-eqz v10, :cond_2

    .line 1158
    const/16 v29, -0x1

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v24

    .line 1159
    .local v24, positiveButton:Landroid/widget/Button;
    const/16 v29, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1161
    invoke-virtual {v10}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v19

    .line 1163
    .local v19, listView:Landroid/widget/ListView;
    if-eqz v19, :cond_2

    .line 1164
    new-instance v18, Lcom/android/settings_ex/nearby/ListItemListener;

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/settings_ex/nearby/ListItemListener;-><init>(Landroid/widget/Button;)V

    .line 1166
    .local v18, listItemListener:Lcom/android/settings_ex/nearby/ListItemListener;
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1168
    new-instance v8, Lcom/android/settings_ex/nearby/DeleteButtonListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/nearby/NearbySettings$12;->this$0:Lcom/android/settings_ex/nearby/NearbySettings;

    move-object/from16 v29, v0

    #getter for: Lcom/android/settings_ex/nearby/NearbySettings;->mContext:Landroid/content/Context;
    invoke-static/range {v29 .. v29}, Lcom/android/settings_ex/nearby/NearbySettings;->access$400(Lcom/android/settings_ex/nearby/NearbySettings;)Landroid/content/Context;

    move-result-object v29

    const/16 v30, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-direct {v8, v0, v10, v1, v2}, Lcom/android/settings_ex/nearby/DeleteButtonListener;-><init>(Lcom/android/settings_ex/nearby/ListItemListener;Landroid/app/Dialog;Landroid/content/Context;Z)V

    .line 1170
    .local v8, deletebuttonlistener:Lcom/android/settings_ex/nearby/DeleteButtonListener;
    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 1175
    .end local v8           #deletebuttonlistener:Lcom/android/settings_ex/nearby/DeleteButtonListener;
    .end local v10           #dialog:Landroid/app/AlertDialog;
    .end local v18           #listItemListener:Lcom/android/settings_ex/nearby/ListItemListener;
    .end local v19           #listView:Landroid/widget/ListView;
    .end local v24           #positiveButton:Landroid/widget/Button;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/nearby/NearbySettings$12;->this$0:Lcom/android/settings_ex/nearby/NearbySettings;

    move-object/from16 v29, v0

    #getter for: Lcom/android/settings_ex/nearby/NearbySettings;->mRejectDevice:Lcom/android/settings_ex/nearby/RejectListPreference;
    invoke-static/range {v29 .. v29}, Lcom/android/settings_ex/nearby/NearbySettings;->access$1700(Lcom/android/settings_ex/nearby/NearbySettings;)Lcom/android/settings_ex/nearby/RejectListPreference;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/android/settings_ex/nearby/RejectListPreference;->updateDialog()Z

    move-result v29

    if-eqz v29, :cond_2

    .line 1176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/nearby/NearbySettings$12;->this$0:Lcom/android/settings_ex/nearby/NearbySettings;

    move-object/from16 v29, v0

    #getter for: Lcom/android/settings_ex/nearby/NearbySettings;->mRejectDevice:Lcom/android/settings_ex/nearby/RejectListPreference;
    invoke-static/range {v29 .. v29}, Lcom/android/settings_ex/nearby/NearbySettings;->access$1700(Lcom/android/settings_ex/nearby/NearbySettings;)Lcom/android/settings_ex/nearby/RejectListPreference;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v10

    check-cast v10, Landroid/app/AlertDialog;

    .line 1178
    .restart local v10       #dialog:Landroid/app/AlertDialog;
    if-eqz v10, :cond_2

    .line 1179
    const/16 v29, -0x1

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v24

    .line 1180
    .restart local v24       #positiveButton:Landroid/widget/Button;
    const/16 v29, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1182
    invoke-virtual {v10}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v19

    .line 1184
    .restart local v19       #listView:Landroid/widget/ListView;
    if-eqz v19, :cond_2

    .line 1185
    new-instance v18, Lcom/android/settings_ex/nearby/ListItemListener;

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/settings_ex/nearby/ListItemListener;-><init>(Landroid/widget/Button;)V

    .line 1187
    .restart local v18       #listItemListener:Lcom/android/settings_ex/nearby/ListItemListener;
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1189
    new-instance v8, Lcom/android/settings_ex/nearby/DeleteButtonListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/nearby/NearbySettings$12;->this$0:Lcom/android/settings_ex/nearby/NearbySettings;

    move-object/from16 v29, v0

    #getter for: Lcom/android/settings_ex/nearby/NearbySettings;->mContext:Landroid/content/Context;
    invoke-static/range {v29 .. v29}, Lcom/android/settings_ex/nearby/NearbySettings;->access$400(Lcom/android/settings_ex/nearby/NearbySettings;)Landroid/content/Context;

    move-result-object v29

    const/16 v30, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-direct {v8, v0, v10, v1, v2}, Lcom/android/settings_ex/nearby/DeleteButtonListener;-><init>(Lcom/android/settings_ex/nearby/ListItemListener;Landroid/app/Dialog;Landroid/content/Context;Z)V

    .line 1191
    .restart local v8       #deletebuttonlistener:Lcom/android/settings_ex/nearby/DeleteButtonListener;
    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 1199
    .end local v5           #bIsAcceptedList:Z
    .end local v8           #deletebuttonlistener:Lcom/android/settings_ex/nearby/DeleteButtonListener;
    .end local v10           #dialog:Landroid/app/AlertDialog;
    .end local v18           #listItemListener:Lcom/android/settings_ex/nearby/ListItemListener;
    .end local v19           #listView:Landroid/widget/ListView;
    .end local v24           #positiveButton:Landroid/widget/Button;
    :cond_11
    const-string v29, "com.android.settings_ex.allshare.SERVER_DB_UPDATE"

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_14

    .line 1200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/nearby/NearbySettings$12;->this$0:Lcom/android/settings_ex/nearby/NearbySettings;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    #setter for: Lcom/android/settings_ex/nearby/NearbySettings;->bDBUpdated:Z
    invoke-static/range {v29 .. v30}, Lcom/android/settings_ex/nearby/NearbySettings;->access$1902(Lcom/android/settings_ex/nearby/NearbySettings;Z)Z

    .line 1202
    const-string v29, "AUTO_START"

    const/16 v30, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v29

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_2

    .line 1203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/nearby/NearbySettings$12;->this$0:Lcom/android/settings_ex/nearby/NearbySettings;

    move-object/from16 v29, v0

    #getter for: Lcom/android/settings_ex/nearby/NearbySettings;->bAutoStart:Z
    invoke-static/range {v29 .. v29}, Lcom/android/settings_ex/nearby/NearbySettings;->access$1100(Lcom/android/settings_ex/nearby/NearbySettings;)Z

    move-result v29

    if-eqz v29, :cond_12

    .line 1204
    const-string v29, "AllshareSetting: "

    const-string v30, "BroadcastReceiver"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "Auto start DMS!!"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v29 .. v31}, Lcom/android/settings_ex/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/nearby/NearbySettings$12;->this$0:Lcom/android/settings_ex/nearby/NearbySettings;

    move-object/from16 v29, v0

    #getter for: Lcom/android/settings_ex/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;
    invoke-static/range {v29 .. v29}, Lcom/android/settings_ex/nearby/NearbySettings;->access$300(Lcom/android/settings_ex/nearby/NearbySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v29

    const/16 v30, 0x1

    invoke-virtual/range {v29 .. v30}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/nearby/NearbySettings$12;->this$0:Lcom/android/settings_ex/nearby/NearbySettings;

    move-object/from16 v29, v0

    #getter for: Lcom/android/settings_ex/nearby/NearbySettings;->mContext:Landroid/content/Context;
    invoke-static/range {v29 .. v29}, Lcom/android/settings_ex/nearby/NearbySettings;->access$400(Lcom/android/settings_ex/nearby/NearbySettings;)Landroid/content/Context;

    move-result-object v29

    const-string v30, "pref_allshare"

    const/16 v31, 0x0

    invoke-virtual/range {v29 .. v31}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v26

    .line 1209
    .local v26, sharedPreference:Landroid/content/SharedPreferences;
    const-string v29, "allshare_welcome_popup"

    const/16 v30, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v27

    .line 1212
    .local v27, welcomePopup:Z
    if-nez v27, :cond_12

    .line 1213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/nearby/NearbySettings$12;->this$0:Lcom/android/settings_ex/nearby/NearbySettings;

    move-object/from16 v29, v0

    #calls: Lcom/android/settings_ex/nearby/NearbySettings;->requestWelcomePopup()V
    invoke-static/range {v29 .. v29}, Lcom/android/settings_ex/nearby/NearbySettings;->access$2000(Lcom/android/settings_ex/nearby/NearbySettings;)V

    .line 1215
    .end local v26           #sharedPreference:Landroid/content/SharedPreferences;
    .end local v27           #welcomePopup:Z
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/nearby/NearbySettings$12;->this$0:Lcom/android/settings_ex/nearby/NearbySettings;

    move-object/from16 v29, v0

    const-wide/16 v30, 0x0

    #setter for: Lcom/android/settings_ex/nearby/NearbySettings;->dialogTime:J
    invoke-static/range {v29 .. v31}, Lcom/android/settings_ex/nearby/NearbySettings;->access$2102(Lcom/android/settings_ex/nearby/NearbySettings;J)J

    .line 1216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/nearby/NearbySettings$12;->this$0:Lcom/android/settings_ex/nearby/NearbySettings;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    #setter for: Lcom/android/settings_ex/nearby/NearbySettings;->bAutoStart:Z
    invoke-static/range {v29 .. v30}, Lcom/android/settings_ex/nearby/NearbySettings;->access$1102(Lcom/android/settings_ex/nearby/NearbySettings;Z)Z

    .line 1217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/nearby/NearbySettings$12;->this$0:Lcom/android/settings_ex/nearby/NearbySettings;

    move-object/from16 v29, v0

    #getter for: Lcom/android/settings_ex/nearby/NearbySettings;->mContext:Landroid/content/Context;
    invoke-static/range {v29 .. v29}, Lcom/android/settings_ex/nearby/NearbySettings;->access$400(Lcom/android/settings_ex/nearby/NearbySettings;)Landroid/content/Context;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string v30, "AutoDMS"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/nearby/NearbySettings$12;->this$0:Lcom/android/settings_ex/nearby/NearbySettings;

    move-object/from16 v31, v0

    #getter for: Lcom/android/settings_ex/nearby/NearbySettings;->bAutoStart:Z
    invoke-static/range {v31 .. v31}, Lcom/android/settings_ex/nearby/NearbySettings;->access$1100(Lcom/android/settings_ex/nearby/NearbySettings;)Z

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v29 .. v31}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1220
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/nearby/NearbySettings$12;->this$0:Lcom/android/settings_ex/nearby/NearbySettings;

    move-object/from16 v31, v0

    #getter for: Lcom/android/settings_ex/nearby/NearbySettings;->dialogTime:J
    invoke-static/range {v31 .. v31}, Lcom/android/settings_ex/nearby/NearbySettings;->access$2100(Lcom/android/settings_ex/nearby/NearbySettings;)J

    move-result-wide v31

    sub-long v29, v29, v31

    const-wide/16 v31, 0x3e8

    cmp-long v29, v29, v31

    if-gez v29, :cond_13

    .line 1221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/nearby/NearbySettings$12;->this$0:Lcom/android/settings_ex/nearby/NearbySettings;

    move-object/from16 v29, v0

    #getter for: Lcom/android/settings_ex/nearby/NearbySettings;->mHandler:Landroid/os/Handler;
    invoke-static/range {v29 .. v29}, Lcom/android/settings_ex/nearby/NearbySettings;->access$2200(Lcom/android/settings_ex/nearby/NearbySettings;)Landroid/os/Handler;

    move-result-object v29

    const/16 v30, 0xbba

    const-wide/16 v31, 0x3e8

    invoke-virtual/range {v29 .. v32}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    .line 1223
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/nearby/NearbySettings$12;->this$0:Lcom/android/settings_ex/nearby/NearbySettings;

    move-object/from16 v29, v0

    #getter for: Lcom/android/settings_ex/nearby/NearbySettings;->mHandler:Landroid/os/Handler;
    invoke-static/range {v29 .. v29}, Lcom/android/settings_ex/nearby/NearbySettings;->access$2200(Lcom/android/settings_ex/nearby/NearbySettings;)Landroid/os/Handler;

    move-result-object v29

    const/16 v30, 0xbba

    invoke-virtual/range {v29 .. v30}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    .line 1227
    :cond_14
    const-string v29, "com.android.settings_ex.allshare.ACTIVITY_START"

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_15

    .line 1228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/nearby/NearbySettings$12;->this$0:Lcom/android/settings_ex/nearby/NearbySettings;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/Intent;->getFlags()I

    move-result v7

    .line 1229
    .local v7, currentFlag:I
    const-string v29, "FLAG"

    const/16 v30, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v23

    .line 1231
    .local v23, otherFlag:I
    move/from16 v0, v23

    if-eq v7, v0, :cond_2

    .line 1232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/nearby/NearbySettings$12;->this$0:Lcom/android/settings_ex/nearby/NearbySettings;

    move-object/from16 v29, v0

    #getter for: Lcom/android/settings_ex/nearby/NearbySettings;->mHandler:Landroid/os/Handler;
    invoke-static/range {v29 .. v29}, Lcom/android/settings_ex/nearby/NearbySettings;->access$2200(Lcom/android/settings_ex/nearby/NearbySettings;)Landroid/os/Handler;

    move-result-object v29

    const/16 v30, 0xbbb

    invoke-virtual/range {v29 .. v30}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    .line 1236
    .end local v7           #currentFlag:I
    .end local v23           #otherFlag:I
    :cond_15
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v29

    const-string v30, "com.android.settings_ex.DEVICE_NAME_CHANGED"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_2

    .line 1237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/nearby/NearbySettings$12;->this$0:Lcom/android/settings_ex/nearby/NearbySettings;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/nearby/NearbySettings$12;->this$0:Lcom/android/settings_ex/nearby/NearbySettings;

    move-object/from16 v30, v0

    #calls: Lcom/android/settings_ex/nearby/NearbySettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static/range {v30 .. v30}, Lcom/android/settings_ex/nearby/NearbySettings;->access$2300(Lcom/android/settings_ex/nearby/NearbySettings;)Landroid/content/ContentResolver;

    move-result-object v30

    const-string v31, "device_name"

    invoke-static/range {v30 .. v31}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    #calls: Lcom/android/settings_ex/nearby/NearbySettings;->checkDeviceName(Ljava/lang/String;)Ljava/lang/String;
    invoke-static/range {v29 .. v30}, Lcom/android/settings_ex/nearby/NearbySettings;->access$2400(Lcom/android/settings_ex/nearby/NearbySettings;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1240
    .local v9, deviceName:Ljava/lang/String;
    if-eqz v9, :cond_2

    .line 1241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/nearby/NearbySettings$12;->this$0:Lcom/android/settings_ex/nearby/NearbySettings;

    move-object/from16 v29, v0

    #getter for: Lcom/android/settings_ex/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;
    invoke-static/range {v29 .. v29}, Lcom/android/settings_ex/nearby/NearbySettings;->access$300(Lcom/android/settings_ex/nearby/NearbySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_6
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_1
.end method
