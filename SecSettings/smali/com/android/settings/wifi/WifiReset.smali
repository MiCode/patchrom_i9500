.class public Lcom/android/settings_ex/wifi/WifiReset;
.super Ljava/lang/Object;
.source "WifiReset.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/android/settings_ex/wifi/WifiReset$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/WifiReset$1;-><init>(Lcom/android/settings_ex/wifi/WifiReset;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiReset;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 39
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiReset;->mContext:Landroid/content/Context;

    .line 40
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiReset;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/wifi/WifiReset;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiReset;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/wifi/WifiReset;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiReset;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private deleteFile()V
    .locals 11

    .prologue
    .line 78
    const-string v3, "/data/misc/wifi/"

    .line 80
    .local v3, folder:Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 81
    .local v7, scanFile:Ljava/io/File;
    new-instance v9, Lcom/android/settings_ex/wifi/WifiReset$2;

    invoke-direct {v9, p0}, Lcom/android/settings_ex/wifi/WifiReset$2;-><init>(Lcom/android/settings_ex/wifi/WifiReset;)V

    invoke-virtual {v7, v9}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v6

    .line 92
    .local v6, list:[Ljava/lang/String;
    array-length v9, v6

    if-nez v9, :cond_1

    .line 108
    :cond_0
    return-void

    .line 98
    :cond_1
    move-object v0, v6

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v2, v0, v4

    .line 99
    .local v2, file:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    .line 105
    .local v8, temp:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 106
    .local v1, deleteFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 98
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method


# virtual methods
.method public reset()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 58
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiReset;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_networks_available_notification_on"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 59
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiReset;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_hotspot20_enable"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 60
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiReset;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_internet_service_check_warning"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 61
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiReset;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_sleep_policy"

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 62
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiReset;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_watchdog_poor_network_test_enabled"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 63
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiReset;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiManager;->setWifiDualbandAPConnection(I)Z

    .line 64
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiReset;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_connection_monitor_enable"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 66
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiReset;->deleteFile()V

    .line 68
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiReset;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 69
    .local v0, powerManager:Landroid/os/PowerManager;
    const-string v1, "Device Reboot."

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 71
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiReset;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiReset;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiReset;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 73
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiReset;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 75
    :cond_0
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 44
    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiReset;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiReset;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 45
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiReset;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiReset;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090f88

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 46
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiReset;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 48
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiReset;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 49
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiReset;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 50
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 51
    .local v0, intent:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiReset;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiReset;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 55
    .end local v0           #intent:Landroid/content/IntentFilter;
    :goto_0
    return-void

    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiReset;->reset()V

    goto :goto_0
.end method
