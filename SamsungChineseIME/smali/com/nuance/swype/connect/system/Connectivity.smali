.class public Lcom/nuance/swype/connect/system/Connectivity;
.super Ljava/lang/Object;
.source "Connectivity.java"


# static fields
.field private static final CONECTIVITY_CHANGE_ACTION:Ljava/lang/String; = "android.net.conn.CONNECTIVITY_CHANGE"

.field private static final STABLE_CONNECTION:Ljava/lang/String; = "CONNECTIVITY_ALARM_STABLE_CONNECTION"


# instance fields
.field protected allowedMobile:Z

.field protected allowedRoaming:Z

.field protected allowedWifi:Z

.field protected client:Lcom/nuance/swype/connect/ConnectClient;

.field protected connectionChangeStableCellularRequirement:I

.field protected connectionChangeStableWifiRequirement:I

.field private currentNetworkState:Lcom/nuance/swype/connect/system/NetworkState;

.field protected lastNetworkState:Lcom/nuance/swype/connect/system/NetworkState;

.field private final mConnectivityCheckReceiver:Landroid/content/BroadcastReceiver;

.field private networkListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/nuance/swype/connect/system/NetworkListener;",
            ">;"
        }
    .end annotation
.end field

.field protected requireStableCellularTime:Z

.field protected requireStableWifiTime:Z


# direct methods
.method public constructor <init>(Lcom/nuance/swype/connect/ConnectClient;)V
    .locals 4
    .parameter "connect"

    .prologue
    const/4 v2, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nuance/swype/connect/system/Connectivity;->allowedWifi:Z

    .line 38
    iput-boolean v2, p0, Lcom/nuance/swype/connect/system/Connectivity;->allowedMobile:Z

    .line 39
    iput-boolean v2, p0, Lcom/nuance/swype/connect/system/Connectivity;->allowedRoaming:Z

    .line 42
    iput-boolean v2, p0, Lcom/nuance/swype/connect/system/Connectivity;->requireStableCellularTime:Z

    .line 45
    iput-boolean v2, p0, Lcom/nuance/swype/connect/system/Connectivity;->requireStableWifiTime:Z

    .line 48
    new-instance v1, Lcom/nuance/swype/connect/system/NetworkState;

    invoke-direct {v1}, Lcom/nuance/swype/connect/system/NetworkState;-><init>()V

    iput-object v1, p0, Lcom/nuance/swype/connect/system/Connectivity;->currentNetworkState:Lcom/nuance/swype/connect/system/NetworkState;

    .line 49
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nuance/swype/connect/system/Connectivity;->lastNetworkState:Lcom/nuance/swype/connect/system/NetworkState;

    .line 52
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/nuance/swype/connect/system/Connectivity;->networkListeners:Ljava/util/Set;

    .line 57
    new-instance v1, Lcom/nuance/swype/connect/system/Connectivity$1;

    invoke-direct {v1, p0}, Lcom/nuance/swype/connect/system/Connectivity$1;-><init>(Lcom/nuance/swype/connect/system/Connectivity;)V

    iput-object v1, p0, Lcom/nuance/swype/connect/system/Connectivity;->mConnectivityCheckReceiver:Landroid/content/BroadcastReceiver;

    .line 77
    iput-object p1, p0, Lcom/nuance/swype/connect/system/Connectivity;->client:Lcom/nuance/swype/connect/ConnectClient;

    .line 79
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 80
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, ".RefreshConnectData"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 81
    iget-object v1, p0, Lcom/nuance/swype/connect/system/Connectivity;->client:Lcom/nuance/swype/connect/ConnectClient;

    iget-object v2, p0, Lcom/nuance/swype/connect/system/Connectivity;->mConnectivityCheckReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/nuance/swype/connect/ConnectClient;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 84
    iget-object v1, p0, Lcom/nuance/swype/connect/system/Connectivity;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v1}, Lcom/nuance/swype/connect/ConnectClient;->getConfiguration()Lcom/nuance/swype/connect/configuration/ConnectConfiguration;

    move-result-object v1

    const-string v2, "STABLE_CELLUAR_CONNECTION_THRESHOLD"

    new-instance v3, Lcom/nuance/swype/connect/system/Connectivity$2;

    invoke-direct {v3, p0}, Lcom/nuance/swype/connect/system/Connectivity$2;-><init>(Lcom/nuance/swype/connect/system/Connectivity;)V

    invoke-virtual {v1, v2, v3}, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->setConfigurationListener(Ljava/lang/String;Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;)V

    .line 92
    iget-object v1, p0, Lcom/nuance/swype/connect/system/Connectivity;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v1}, Lcom/nuance/swype/connect/ConnectClient;->getConfiguration()Lcom/nuance/swype/connect/configuration/ConnectConfiguration;

    move-result-object v1

    const-string v2, "STABLE_CELLUAR_CONNECTION_THRESHOLD"

    invoke-virtual {v1, v2}, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->getIntProperty(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/nuance/swype/connect/system/Connectivity;->setStableCellularTime(I)V

    .line 96
    iget-object v1, p0, Lcom/nuance/swype/connect/system/Connectivity;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v1}, Lcom/nuance/swype/connect/ConnectClient;->getConfiguration()Lcom/nuance/swype/connect/configuration/ConnectConfiguration;

    move-result-object v1

    const-string v2, "STABLE_WIFI_CONNECTION_THRESHOLD"

    new-instance v3, Lcom/nuance/swype/connect/system/Connectivity$3;

    invoke-direct {v3, p0}, Lcom/nuance/swype/connect/system/Connectivity$3;-><init>(Lcom/nuance/swype/connect/system/Connectivity;)V

    invoke-virtual {v1, v2, v3}, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->setConfigurationListener(Ljava/lang/String;Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;)V

    .line 104
    iget-object v1, p0, Lcom/nuance/swype/connect/system/Connectivity;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v1}, Lcom/nuance/swype/connect/ConnectClient;->getConfiguration()Lcom/nuance/swype/connect/configuration/ConnectConfiguration;

    move-result-object v1

    const-string v2, "STABLE_WIFI_CONNECTION_THRESHOLD"

    invoke-virtual {v1, v2}, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->getIntProperty(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/nuance/swype/connect/system/Connectivity;->setStableWifiTime(I)V

    .line 109
    iget-object v1, p0, Lcom/nuance/swype/connect/system/Connectivity;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v1}, Lcom/nuance/swype/connect/ConnectClient;->getConfiguration()Lcom/nuance/swype/connect/configuration/ConnectConfiguration;

    move-result-object v1

    const-string v2, "PROPERTY_ALLOW_DATA_ROAMING"

    new-instance v3, Lcom/nuance/swype/connect/system/Connectivity$4;

    invoke-direct {v3, p0}, Lcom/nuance/swype/connect/system/Connectivity$4;-><init>(Lcom/nuance/swype/connect/system/Connectivity;)V

    invoke-virtual {v1, v2, v3}, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->setConfigurationListener(Ljava/lang/String;Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;)V

    .line 116
    iget-object v1, p0, Lcom/nuance/swype/connect/system/Connectivity;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v1}, Lcom/nuance/swype/connect/ConnectClient;->getConfiguration()Lcom/nuance/swype/connect/configuration/ConnectConfiguration;

    move-result-object v1

    const-string v2, "PROPERTY_ALLOW_DATA_ROAMING"

    invoke-virtual {v1, v2}, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->getBooleanProperty(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/nuance/swype/connect/system/Connectivity;->setAllowedRoaming(Z)V

    .line 119
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/connect/system/Connectivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/nuance/swype/connect/system/Connectivity;->checkAvailableNetworkConnections()V

    return-void
.end method

.method static synthetic access$100(Lcom/nuance/swype/connect/system/Connectivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/system/Connectivity;->setStableCellularTime(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/nuance/swype/connect/system/Connectivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/system/Connectivity;->setStableWifiTime(I)V

    return-void
.end method

.method private checkAvailableNetworkConnections()V
    .locals 15

    .prologue
    const/4 v1, 0x1

    .line 174
    iget-object v12, p0, Lcom/nuance/swype/connect/system/Connectivity;->client:Lcom/nuance/swype/connect/ConnectClient;

    const-string v13, "connectivity"

    invoke-virtual {v12, v13}, Lcom/nuance/swype/connect/ConnectClient;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/ConnectivityManager;

    .line 176
    .local v9, cm:Landroid/net/ConnectivityManager;
    const/4 v0, 0x0

    .line 179
    .local v0, newState:Lcom/nuance/swype/connect/system/NetworkState;
    invoke-virtual {v9}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v10

    .line 180
    .local v10, info:Landroid/net/NetworkInfo;
    if-eqz v10, :cond_1

    invoke-virtual {v10}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 181
    invoke-virtual {v10}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    .line 182
    .local v3, connectionType:I
    invoke-virtual {v10}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v4

    .line 183
    .local v4, connectionTypeName:Ljava/lang/String;
    invoke-virtual {v10}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v5

    .line 184
    .local v5, isRoaming:Z
    invoke-virtual {v10}, Landroid/net/NetworkInfo;->isFailover()Z

    move-result v2

    .line 185
    .local v2, isFailover:Z
    invoke-direct {p0, v3}, Lcom/nuance/swype/connect/system/Connectivity;->getStableConnectionRequirement(I)I

    move-result v8

    .line 188
    .local v8, connectionChangeStableRequirement:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 189
    .local v6, lastConnectionChange:J
    iget-object v12, p0, Lcom/nuance/swype/connect/system/Connectivity;->lastNetworkState:Lcom/nuance/swype/connect/system/NetworkState;

    if-nez v12, :cond_0

    .line 190
    int-to-long v12, v8

    sub-long/2addr v6, v12

    .line 193
    :cond_0
    iget-boolean v12, p0, Lcom/nuance/swype/connect/system/Connectivity;->allowedMobile:Z

    iget-boolean v13, p0, Lcom/nuance/swype/connect/system/Connectivity;->allowedRoaming:Z

    iget-boolean v14, p0, Lcom/nuance/swype/connect/system/Connectivity;->allowedWifi:Z

    invoke-static {v3, v5, v12, v13, v14}, Lcom/nuance/swype/connect/system/NetworkState;->isValidConnection(IZZZZ)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 194
    invoke-direct {p0, v3}, Lcom/nuance/swype/connect/system/Connectivity;->requireStableConnection(I)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 195
    new-instance v0, Lcom/nuance/swype/connect/system/NetworkState;

    .end local v0           #newState:Lcom/nuance/swype/connect/system/NetworkState;
    invoke-direct/range {v0 .. v8}, Lcom/nuance/swype/connect/system/NetworkState;-><init>(ZZILjava/lang/String;ZJI)V

    .line 199
    .restart local v0       #newState:Lcom/nuance/swype/connect/system/NetworkState;
    new-instance v1, Lcom/nuance/swype/connect/util/Alarm$Builder;

    iget-object v12, p0, Lcom/nuance/swype/connect/system/Connectivity;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v12}, Lcom/nuance/swype/connect/ConnectClient;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    const-class v13, Lcom/nuance/swype/connect/system/Connectivity;

    const-string v14, "CONNECTIVITY_ALARM_STABLE_CONNECTION"

    invoke-direct {v1, v12, v13, v14}, Lcom/nuance/swype/connect/util/Alarm$Builder;-><init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Lcom/nuance/swype/connect/util/Alarm$Builder;->millis(I)Lcom/nuance/swype/connect/util/Alarm$Builder;

    move-result-object v1

    const/4 v12, 0x0

    invoke-virtual {v1, v12}, Lcom/nuance/swype/connect/util/Alarm$Builder;->wakeDevice(Z)Lcom/nuance/swype/connect/util/Alarm$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/connect/util/Alarm$Builder;->build()Lcom/nuance/swype/connect/util/Alarm;

    move-result-object v11

    .line 204
    .local v11, stableConnectionAlarm:Lcom/nuance/swype/connect/util/Alarm;
    invoke-virtual {v11}, Lcom/nuance/swype/connect/util/Alarm;->set()V

    .line 213
    .end local v2           #isFailover:Z
    .end local v3           #connectionType:I
    .end local v4           #connectionTypeName:Ljava/lang/String;
    .end local v5           #isRoaming:Z
    .end local v6           #lastConnectionChange:J
    .end local v8           #connectionChangeStableRequirement:I
    .end local v11           #stableConnectionAlarm:Lcom/nuance/swype/connect/util/Alarm;
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 214
    new-instance v0, Lcom/nuance/swype/connect/system/NetworkState;

    .end local v0           #newState:Lcom/nuance/swype/connect/system/NetworkState;
    invoke-direct {v0}, Lcom/nuance/swype/connect/system/NetworkState;-><init>()V

    .line 217
    .restart local v0       #newState:Lcom/nuance/swype/connect/system/NetworkState;
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/swype/connect/system/Connectivity;->getNetworkState()Lcom/nuance/swype/connect/system/NetworkState;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nuance/swype/connect/system/NetworkState;->isSame(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/nuance/swype/connect/system/Connectivity;->lastNetworkState:Lcom/nuance/swype/connect/system/NetworkState;

    if-nez v1, :cond_4

    .line 218
    :cond_3
    invoke-virtual {p0}, Lcom/nuance/swype/connect/system/Connectivity;->getNetworkState()Lcom/nuance/swype/connect/system/NetworkState;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/connect/system/Connectivity;->lastNetworkState:Lcom/nuance/swype/connect/system/NetworkState;

    .line 219
    iput-object v0, p0, Lcom/nuance/swype/connect/system/Connectivity;->currentNetworkState:Lcom/nuance/swype/connect/system/NetworkState;

    .line 222
    :cond_4
    iget-object v1, p0, Lcom/nuance/swype/connect/system/Connectivity;->currentNetworkState:Lcom/nuance/swype/connect/system/NetworkState;

    invoke-virtual {v1}, Lcom/nuance/swype/connect/system/NetworkState;->hasConnectivity()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/nuance/swype/connect/system/Connectivity;->lastNetworkState:Lcom/nuance/swype/connect/system/NetworkState;

    invoke-virtual {v1}, Lcom/nuance/swype/connect/system/NetworkState;->hasConnectivity()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 224
    new-instance v1, Lcom/nuance/swype/connect/util/Alarm$Builder;

    iget-object v12, p0, Lcom/nuance/swype/connect/system/Connectivity;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v12}, Lcom/nuance/swype/connect/ConnectClient;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    const-class v13, Lcom/nuance/swype/connect/system/Connectivity;

    const-string v14, "CONNECTIVITY_ALARM_STABLE_CONNECTION"

    invoke-direct {v1, v12, v13, v14}, Lcom/nuance/swype/connect/util/Alarm$Builder;-><init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/nuance/swype/connect/util/Alarm$Builder;->build()Lcom/nuance/swype/connect/util/Alarm;

    move-result-object v11

    .line 226
    .restart local v11       #stableConnectionAlarm:Lcom/nuance/swype/connect/util/Alarm;
    invoke-virtual {v11}, Lcom/nuance/swype/connect/util/Alarm;->cancel()V

    .line 229
    .end local v11           #stableConnectionAlarm:Lcom/nuance/swype/connect/util/Alarm;
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Connectivity.checkAvailableNetworkConnections()\nhasConnectivity: "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/nuance/swype/connect/system/NetworkState;->hasConnectivity()Z

    move-result v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 232
    invoke-direct {p0}, Lcom/nuance/swype/connect/system/Connectivity;->sendStatus()V

    .line 233
    return-void

    .line 207
    .restart local v2       #isFailover:Z
    .restart local v3       #connectionType:I
    .restart local v4       #connectionTypeName:Ljava/lang/String;
    .restart local v5       #isRoaming:Z
    .restart local v6       #lastConnectionChange:J
    .restart local v8       #connectionChangeStableRequirement:I
    :cond_6
    new-instance v0, Lcom/nuance/swype/connect/system/NetworkState;

    .end local v0           #newState:Lcom/nuance/swype/connect/system/NetworkState;
    invoke-direct/range {v0 .. v7}, Lcom/nuance/swype/connect/system/NetworkState;-><init>(ZZILjava/lang/String;ZJ)V

    .restart local v0       #newState:Lcom/nuance/swype/connect/system/NetworkState;
    goto :goto_0
.end method

.method private getStableConnectionRequirement(I)I
    .locals 1
    .parameter "connectionType"

    .prologue
    .line 251
    iget v0, p0, Lcom/nuance/swype/connect/system/Connectivity;->connectionChangeStableCellularRequirement:I

    .line 253
    .local v0, stable:I
    packed-switch p1, :pswitch_data_0

    .line 262
    :goto_0
    :pswitch_0
    return v0

    .line 258
    :pswitch_1
    iget v0, p0, Lcom/nuance/swype/connect/system/Connectivity;->connectionChangeStableWifiRequirement:I

    goto :goto_0

    .line 253
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private requireStableConnection(I)Z
    .locals 1
    .parameter "connectionType"

    .prologue
    .line 236
    iget-boolean v0, p0, Lcom/nuance/swype/connect/system/Connectivity;->requireStableCellularTime:Z

    .line 238
    .local v0, required:Z
    packed-switch p1, :pswitch_data_0

    .line 247
    :goto_0
    :pswitch_0
    return v0

    .line 243
    :pswitch_1
    iget-boolean v0, p0, Lcom/nuance/swype/connect/system/Connectivity;->requireStableWifiTime:Z

    goto :goto_0

    .line 238
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private sendStatus()V
    .locals 3

    .prologue
    .line 270
    iget-object v2, p0, Lcom/nuance/swype/connect/system/Connectivity;->currentNetworkState:Lcom/nuance/swype/connect/system/NetworkState;

    invoke-virtual {v2}, Lcom/nuance/swype/connect/system/NetworkState;->hasConnectivity()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/nuance/swype/connect/system/Connectivity;->lastNetworkState:Lcom/nuance/swype/connect/system/NetworkState;

    invoke-virtual {v2}, Lcom/nuance/swype/connect/system/NetworkState;->hasConnectivity()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 272
    :cond_1
    iget-object v2, p0, Lcom/nuance/swype/connect/system/Connectivity;->currentNetworkState:Lcom/nuance/swype/connect/system/NetworkState;

    invoke-virtual {v2}, Lcom/nuance/swype/connect/system/NetworkState;->hasConnectivity()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/nuance/swype/connect/system/Connectivity;->lastNetworkState:Lcom/nuance/swype/connect/system/NetworkState;

    invoke-virtual {v2}, Lcom/nuance/swype/connect/system/NetworkState;->hasConnectivity()Z

    move-result v2

    if-nez v2, :cond_2

    .line 274
    const-string v2, "Connectivity.sendStatus() -- onNetworkAvailable()"

    invoke-static {v2}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 275
    iget-object v2, p0, Lcom/nuance/swype/connect/system/Connectivity;->networkListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/connect/system/NetworkListener;

    .line 276
    .local v1, l:Lcom/nuance/swype/connect/system/NetworkListener;
    invoke-interface {v1}, Lcom/nuance/swype/connect/system/NetworkListener;->onNetworkAvailable()V

    goto :goto_1

    .line 278
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #l:Lcom/nuance/swype/connect/system/NetworkListener;
    :cond_2
    iget-object v2, p0, Lcom/nuance/swype/connect/system/Connectivity;->currentNetworkState:Lcom/nuance/swype/connect/system/NetworkState;

    invoke-virtual {v2}, Lcom/nuance/swype/connect/system/NetworkState;->hasConnectivity()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/nuance/swype/connect/system/Connectivity;->lastNetworkState:Lcom/nuance/swype/connect/system/NetworkState;

    invoke-virtual {v2}, Lcom/nuance/swype/connect/system/NetworkState;->hasConnectivity()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 280
    const-string v2, "Connectivity.sendStatus() -- onNetworkDisconnect()"

    invoke-static {v2}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 281
    iget-object v2, p0, Lcom/nuance/swype/connect/system/Connectivity;->networkListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/connect/system/NetworkListener;

    .line 282
    .restart local v1       #l:Lcom/nuance/swype/connect/system/NetworkListener;
    invoke-interface {v1}, Lcom/nuance/swype/connect/system/NetworkListener;->onNetworkDisconnect()V

    goto :goto_2

    .line 284
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #l:Lcom/nuance/swype/connect/system/NetworkListener;
    :cond_3
    iget-object v2, p0, Lcom/nuance/swype/connect/system/Connectivity;->currentNetworkState:Lcom/nuance/swype/connect/system/NetworkState;

    invoke-virtual {v2}, Lcom/nuance/swype/connect/system/NetworkState;->hasConnectivity()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/nuance/swype/connect/system/Connectivity;->lastNetworkState:Lcom/nuance/swype/connect/system/NetworkState;

    invoke-virtual {v2}, Lcom/nuance/swype/connect/system/NetworkState;->hasConnectivity()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0
.end method

.method private setStableCellularTime(I)V
    .locals 1
    .parameter "millis"

    .prologue
    .line 145
    if-ltz p1, :cond_0

    .line 146
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/connect/system/Connectivity;->requireStableCellularTime:Z

    .line 147
    iput p1, p0, Lcom/nuance/swype/connect/system/Connectivity;->connectionChangeStableCellularRequirement:I

    .line 148
    iget-object v0, p0, Lcom/nuance/swype/connect/system/Connectivity;->currentNetworkState:Lcom/nuance/swype/connect/system/NetworkState;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/connect/system/NetworkState;->setConnectionStableRequirement(I)V

    .line 153
    :goto_0
    invoke-direct {p0}, Lcom/nuance/swype/connect/system/Connectivity;->checkAvailableNetworkConnections()V

    .line 154
    return-void

    .line 150
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/connect/system/Connectivity;->requireStableCellularTime:Z

    .line 151
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/nuance/swype/connect/system/Connectivity;->connectionChangeStableCellularRequirement:I

    goto :goto_0
.end method

.method private setStableWifiTime(I)V
    .locals 1
    .parameter "millis"

    .prologue
    .line 157
    if-ltz p1, :cond_0

    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/connect/system/Connectivity;->requireStableWifiTime:Z

    .line 159
    iput p1, p0, Lcom/nuance/swype/connect/system/Connectivity;->connectionChangeStableWifiRequirement:I

    .line 160
    iget-object v0, p0, Lcom/nuance/swype/connect/system/Connectivity;->currentNetworkState:Lcom/nuance/swype/connect/system/NetworkState;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/connect/system/NetworkState;->setConnectionStableRequirement(I)V

    .line 165
    :goto_0
    invoke-direct {p0}, Lcom/nuance/swype/connect/system/Connectivity;->checkAvailableNetworkConnections()V

    .line 166
    return-void

    .line 162
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/connect/system/Connectivity;->requireStableWifiTime:Z

    .line 163
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/nuance/swype/connect/system/Connectivity;->connectionChangeStableWifiRequirement:I

    goto :goto_0
.end method


# virtual methods
.method public alarmNotification(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4
    .parameter "type"
    .parameter "data"

    .prologue
    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connectivity.alarmNotification() - Type: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 66
    const-string v2, "CONNECTIVITY_ALARM_STABLE_CONNECTION"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nuance/swype/connect/system/Connectivity;->currentNetworkState:Lcom/nuance/swype/connect/system/NetworkState;

    invoke-virtual {v2}, Lcom/nuance/swype/connect/system/NetworkState;->isStableConnection()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 67
    iget-object v2, p0, Lcom/nuance/swype/connect/system/Connectivity;->networkListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/connect/system/NetworkListener;

    .line 68
    .local v1, l:Lcom/nuance/swype/connect/system/NetworkListener;
    invoke-interface {v1}, Lcom/nuance/swype/connect/system/NetworkListener;->onNetworkStable()V

    goto :goto_0

    .line 71
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #l:Lcom/nuance/swype/connect/system/NetworkListener;
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/nuance/swype/connect/system/Connectivity;->networkListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 126
    iget-object v0, p0, Lcom/nuance/swype/connect/system/Connectivity;->client:Lcom/nuance/swype/connect/ConnectClient;

    iget-object v1, p0, Lcom/nuance/swype/connect/system/Connectivity;->mConnectivityCheckReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/ConnectClient;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 127
    return-void
.end method

.method public getNetworkState()Lcom/nuance/swype/connect/system/NetworkState;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/nuance/swype/connect/system/Connectivity;->currentNetworkState:Lcom/nuance/swype/connect/system/NetworkState;

    return-object v0
.end method

.method public registerNetworkListener(Lcom/nuance/swype/connect/system/NetworkListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 290
    iget-object v0, p0, Lcom/nuance/swype/connect/system/Connectivity;->networkListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 291
    return-void
.end method

.method public setAllowedMobile(Z)V
    .locals 0
    .parameter "allowed"

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/nuance/swype/connect/system/Connectivity;->allowedMobile:Z

    .line 131
    invoke-direct {p0}, Lcom/nuance/swype/connect/system/Connectivity;->checkAvailableNetworkConnections()V

    .line 132
    return-void
.end method

.method public setAllowedRoaming(Z)V
    .locals 0
    .parameter "allowed"

    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/nuance/swype/connect/system/Connectivity;->allowedRoaming:Z

    .line 136
    invoke-direct {p0}, Lcom/nuance/swype/connect/system/Connectivity;->checkAvailableNetworkConnections()V

    .line 137
    return-void
.end method

.method public setAllowedWifi(Z)V
    .locals 0
    .parameter "allowed"

    .prologue
    .line 140
    iput-boolean p1, p0, Lcom/nuance/swype/connect/system/Connectivity;->allowedWifi:Z

    .line 141
    invoke-direct {p0}, Lcom/nuance/swype/connect/system/Connectivity;->checkAvailableNetworkConnections()V

    .line 142
    return-void
.end method

.method public unregisterNetworkListener(Lcom/nuance/swype/connect/system/NetworkListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 294
    iget-object v0, p0, Lcom/nuance/swype/connect/system/Connectivity;->networkListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 295
    return-void
.end method
