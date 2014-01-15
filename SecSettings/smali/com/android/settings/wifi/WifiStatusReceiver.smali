.class public Lcom/android/settings_ex/wifi/WifiStatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiStatusReceiver.java"


# static fields
.field private static final ACTION_BCS_REQUEST:Ljava/lang/String; = "android.intent.action.BCS_REQUEST"

.field private static final ACTION_BCS_RESPONSE:Ljava/lang/String; = "android.intent.action.BCS_RESPONSE"

.field private static final ATT_COMMAND_WIFIVALUE:Ljava/lang/String; = "AT+WIFIVALUE"

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final DISABLED_NETWORK_NOTIFICATION_ID:I = 0x7f0903d4

.field private static final DISABLED_SCC_DIFF_NOTIFICATION_ID:I = 0x7f0903d2

.field public static final EXTRA_ID:Ljava/lang/String; = "extra_id"

.field public static final EXTRA_INFO_TYPE:Ljava/lang/String; = "info_type"

.field public static final EXTRA_SHOW_ONCE:Ljava/lang/String; = "show_dialog_once"

.field public static final INFO_TYPE_DISABLE_DNS_CHECK_FAILED:I = 0x8

.field public static final INFO_TYPE_DISABLE_HOTSPOT:I = 0x1

.field public static final INFO_TYPE_DPM_HOTSPOT:I = 0x3

.field public static final INFO_TYPE_DPM_WIFI:I = 0x2

.field public static final INFO_TYPE_SCC_NOTIFICATION:I = 0x6

.field public static final INFO_TYPE_UNABLE_TO_TURNON_WIFI:I = 0x5

.field public static final INFO_TYPE_UNABLE_TO_TURNON_WIFI_AT_AIRPLANE_MODE:I = 0x7

.field public static final INFO_TYPE_WATCHDOG_NOTIFICATION:I = 0x4

.field private static final TAG:Ljava/lang/String; = "WifiStatusReceiver"

.field private static final WIFI_ERRORCODE:Z

.field private static final WIFI_SCREENCONNECTEDINFO:Z

.field private static mDialogFlag:Z

.field private static mEnableShowApEventFlag:Z

.field private static mIsConnectivityNotiShowing:Z

.field public static mIsForegroundWifiSettings:Z

.field public static mIsForegroundWifiSubSettings:Z

.field private static mIsWifiSCCDiffNotiShowing:Z

.field private static mLastInfo:Landroid/net/NetworkInfo;

.field private static mNotification:Landroid/app/Notification;

.field private static mShowOnceFlag:Z

.field private static mWifiDisabledWarning:Landroid/app/Notification;

.field private static mWifiSCCDiffWarning:Landroid/app/Notification;


# instance fields
.field private mEapMethod:Ljava/lang/String;

.field private mPrioritymode:Z

.field private mRequested:Z

.field private mSettingsDialogShow:Z

.field private mTalkBackEnabled:Z

.field private runTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 74
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v2

    if-ne v2, v0, :cond_0

    move v0, v1

    :cond_0
    sput-boolean v0, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->DEBUG:Z

    .line 75
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v2, "CscFeature_Wifi_EnableDetailEapErrorCodesAndState"

    invoke-virtual {v0, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->WIFI_ERRORCODE:Z

    .line 77
    sput-boolean v1, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->mDialogFlag:Z

    .line 78
    sput-boolean v1, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->mShowOnceFlag:Z

    .line 79
    sput-boolean v1, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->mIsForegroundWifiSettings:Z

    .line 80
    sput-boolean v1, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->mIsForegroundWifiSubSettings:Z

    .line 118
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_DisplaySsidStatusBarInfo"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->WIFI_SCREENCONNECTEDINFO:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 72
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->mPrioritymode:Z

    .line 120
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_EapMethodSetting"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->mEapMethod:Ljava/lang/String;

    return-void
.end method

.method private enableShowApEvent(Landroid/net/wifi/WifiManager;Z)V
    .locals 5
    .parameter "wifiManager"
    .parameter "enable"

    .prologue
    .line 676
    sget-boolean v2, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->mEnableShowApEventFlag:Z

    if-ne v2, p2, :cond_1

    .line 691
    :cond_0
    :goto_0
    return-void

    .line 679
    :cond_1
    sput-boolean p2, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->mEnableShowApEventFlag:Z

    .line 680
    sget-boolean v2, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "WifiStatusReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableShowApEvent : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    :cond_2
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 682
    .local v1, msg:Landroid/os/Message;
    const/16 v2, 0x10

    iput v2, v1, Landroid/os/Message;->what:I

    .line 683
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 684
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "enable"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 685
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 687
    invoke-virtual {p1, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 688
    if-eqz p2, :cond_0

    .line 689
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->startScanActive()Z

    goto :goto_0
.end method

.method public static isFactoryMode()Z
    .locals 6

    .prologue
    .line 611
    const-string v1, "/efs/FactoryApp/factorymode"

    .line 613
    .local v1, factoryModeFile:Ljava/lang/String;
    const/4 v2, 0x0

    .line 615
    .local v2, mode:Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string v4, "/efs/FactoryApp/factorymode"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x20

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 621
    :goto_0
    if-eqz v2, :cond_0

    const-string v3, "ON"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 622
    const/4 v3, 0x0

    .line 624
    :goto_1
    return v3

    .line 616
    :catch_0
    move-exception v0

    .line 617
    .local v0, e:Ljava/io/IOException;
    const-string v2, "OFF"

    .line 618
    const-string v3, "WifiStatusReceiver"

    const-string v4, "cannot open file"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 624
    .end local v0           #e:Ljava/io/IOException;
    :cond_0
    const/4 v3, 0x1

    goto :goto_1
.end method

.method private isWifiSettingScreen(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 600
    sget-boolean v0, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiStatusReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiSettings on top: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->mIsForegroundWifiSettings:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", WifiSubSettings on top: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->mIsForegroundWifiSubSettings:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    :cond_0
    sget-boolean v0, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->mIsForegroundWifiSettings:Z

    if-eqz v0, :cond_1

    .line 603
    const/4 v0, 0x1

    .line 607
    :goto_0
    return v0

    .line 604
    :cond_1
    sget-boolean v0, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->mIsForegroundWifiSubSettings:Z

    if-eqz v0, :cond_2

    .line 605
    const/4 v0, 0x2

    goto :goto_0

    .line 607
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private launchHS20Browser(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    .line 502
    const-string v4, "WifiStatusReceiver"

    const-string v5, "launch Brower with operator URL"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    const-string v4, "wifi"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 504
    .local v2, mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/net/wifi/WifiManager;->getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 506
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_0

    .line 517
    :goto_0
    return-void

    .line 508
    :cond_0
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->HS20OpURL:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 509
    const-string v4, "WifiStatusReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "launch Brower with operator URL"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->HS20OpURL:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    new-instance v3, Landroid/net/WebAddress;

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->HS20OpURL:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V

    .line 511
    .local v3, webAddress:Landroid/net/WebAddress;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v3}, Landroid/net/WebAddress;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 512
    .local v1, mIntent:Landroid/content/Intent;
    const/high16 v4, 0x1400

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 513
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 515
    .end local v1           #mIntent:Landroid/content/Intent;
    .end local v3           #webAddress:Landroid/net/WebAddress;
    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {p0, p1, v4, v5}, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->startWifiPickerActivity(Landroid/content/Context;Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private sccNotification(Landroid/content/Context;Z)V
    .locals 12
    .parameter "context"
    .parameter "visible"

    .prologue
    const/4 v11, 0x4

    const v10, 0x7f0903d2

    const/4 v9, 0x0

    .line 561
    const-string v6, "notification"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 564
    .local v3, notificationManager:Landroid/app/NotificationManager;
    invoke-direct {p0, p1}, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->isWifiSettingScreen(Landroid/content/Context;)I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_1

    .line 565
    sget-object v6, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->mWifiSCCDiffWarning:Landroid/app/Notification;

    if-nez v6, :cond_0

    .line 566
    new-instance v6, Landroid/app/Notification;

    invoke-direct {v6}, Landroid/app/Notification;-><init>()V

    sput-object v6, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->mWifiSCCDiffWarning:Landroid/app/Notification;

    .line 567
    sget-object v6, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->mWifiSCCDiffWarning:Landroid/app/Notification;

    const v7, 0x108008a

    iput v7, v6, Landroid/app/Notification;->icon:I

    .line 568
    sget-object v6, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->mWifiSCCDiffWarning:Landroid/app/Notification;

    const/4 v7, -0x1

    iput v7, v6, Landroid/app/Notification;->defaults:I

    .line 569
    sget-object v6, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->mWifiSCCDiffWarning:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, v6, Landroid/app/Notification;->when:J

    .line 570
    sget-object v6, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->mWifiSCCDiffWarning:Landroid/app/Notification;

    const/16 v7, 0x10

    iput v7, v6, Landroid/app/Notification;->flags:I

    .line 572
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.net.wifi.SEC_PICK_WIFI_NETWORK_WITH_DIALOG"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 573
    .local v1, intent:Landroid/content/Intent;
    const-string v6, "launch_with"

    invoke-virtual {v1, v6, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 574
    sget-object v6, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->mWifiSCCDiffWarning:Landroid/app/Notification;

    invoke-static {p1, v9, v1, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    iput-object v7, v6, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 576
    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.net.wifi.SEC_NOTIFICATION_CANCEL"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 577
    .local v0, deleteIntent:Landroid/content/Intent;
    const-string v6, "nid"

    invoke-virtual {v0, v6, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 578
    sget-object v6, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->mWifiSCCDiffWarning:Landroid/app/Notification;

    invoke-static {p1, v9, v0, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    iput-object v7, v6, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 581
    .end local v0           #deleteIntent:Landroid/content/Intent;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 582
    .local v4, r:Landroid/content/res/Resources;
    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 583
    .local v5, title:Ljava/lang/CharSequence;
    const v6, 0x7f0903d5

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 584
    .local v2, msg:Ljava/lang/String;
    sget-object v6, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->mWifiSCCDiffWarning:Landroid/app/Notification;

    iput-object v5, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 585
    sget-object v6, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->mWifiSCCDiffWarning:Landroid/app/Notification;

    sget-object v7, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->mWifiSCCDiffWarning:Landroid/app/Notification;

    iget-object v7, v7, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v6, p1, v5, v2, v7}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 587
    sput-boolean p2, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->mIsWifiSCCDiffNotiShowing:Z

    .line 588
    sget-object v6, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->mWifiSCCDiffWarning:Landroid/app/Notification;

    invoke-virtual {v3, v10, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 589
    sput v11, Lcom/android/settings_ex/wifi/WifiSettings;->mStartWith:I

    .line 597
    .end local v2           #msg:Ljava/lang/String;
    .end local v4           #r:Landroid/content/res/Resources;
    .end local v5           #title:Ljava/lang/CharSequence;
    :goto_0
    return-void

    .line 591
    :cond_1
    sput-boolean p2, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->mIsWifiSCCDiffNotiShowing:Z

    .line 592
    invoke-virtual {v3, v10}, Landroid/app/NotificationManager;->cancel(I)V

    .line 593
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.net.wifi.SEC_PICK_WIFI_NETWORK_WITH_DIALOG"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 594
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v6, "launch_with"

    invoke-virtual {v1, v6, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 595
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private setAuthenticationInformationn(Ljava/lang/String;)V
    .locals 4
    .parameter "information"

    .prologue
    .line 696
    :try_start_0
    const-string v2, "/data/misc/wifi/message.txt"

    .line 698
    .local v2, path:Ljava/lang/String;
    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 701
    .local v1, fw:Ljava/io/FileWriter;
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 703
    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V

    .line 708
    return-void

    .line 703
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V

    throw v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 705
    .end local v1           #fw:Ljava/io/FileWriter;
    .end local v2           #path:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 706
    .local v0, e:Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method private showConnectedNotification(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 8
    .parameter "context"
    .parameter "connected"
    .parameter "ssid"

    .prologue
    const v7, 0x2df96b

    const/4 v6, 0x0

    .line 629
    const-string v3, "WifiStatusReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "show AT&T wifi notification visible:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    const-string v3, "notification"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 632
    .local v1, notificationManager:Landroid/app/NotificationManager;
    if-eqz p2, :cond_1

    .line 633
    sget-object v3, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->mNotification:Landroid/app/Notification;

    if-nez v3, :cond_0

    .line 635
    new-instance v3, Landroid/app/Notification;

    invoke-direct {v3}, Landroid/app/Notification;-><init>()V

    sput-object v3, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->mNotification:Landroid/app/Notification;

    .line 636
    sget-object v3, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->mNotification:Landroid/app/Notification;

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Landroid/app/Notification;->when:J

    .line 637
    sget-object v3, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->mNotification:Landroid/app/Notification;

    const v4, 0x1080763

    iput v4, v3, Landroid/app/Notification;->icon:I

    .line 638
    sget-object v3, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->mNotification:Landroid/app/Notification;

    const/4 v4, 0x2

    iput v4, v3, Landroid/app/Notification;->flags:I

    .line 639
    sget-object v3, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->mNotification:Landroid/app/Notification;

    const/4 v4, -0x2

    iput v4, v3, Landroid/app/Notification;->priority:I

    .line 640
    sget-object v3, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->mNotification:Landroid/app/Notification;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.net.wifi.SEC_PICK_WIFI_NETWORK"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v6, v4, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iput-object v4, v3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 642
    :cond_0
    const v3, 0x7f090331

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 643
    .local v2, title:Ljava/lang/String;
    const v3, 0x7f090332

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p3, v4, v6

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 644
    .local v0, details:Ljava/lang/String;
    sget-object v3, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->mNotification:Landroid/app/Notification;

    iput-object v2, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 645
    sget-object v3, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->mNotification:Landroid/app/Notification;

    sget-object v4, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->mNotification:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, p1, v2, v0, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 646
    sget-object v3, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->mNotification:Landroid/app/Notification;

    invoke-virtual {v1, v7, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 650
    .end local v0           #details:Ljava/lang/String;
    .end local v2           #title:Ljava/lang/String;
    :goto_0
    return-void

    .line 648
    :cond_1
    invoke-virtual {v1, v7}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method private startWifiPickerActivity(Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 4
    .parameter "context"
    .parameter "intent"
    .parameter "launchWith"

    .prologue
    .line 490
    sget-boolean v1, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "WifiStatusReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startWifiPickerActivity with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->isWifiSettingScreen(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_2

    .line 493
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.PICK_WIFI_NETWORK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 494
    .local v0, wifiIntent:Landroid/content/Intent;
    if-lez p3, :cond_1

    .line 495
    sput p3, Lcom/android/settings_ex/wifi/WifiSettings;->mStartWith:I

    .line 496
    :cond_1
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 497
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 499
    .end local v0           #wifiIntent:Landroid/content/Intent;
    :cond_2
    return-void
.end method

.method private startWifiPickerDialog(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 480
    sget-boolean v1, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "WifiStatusReceiver"

    const-string v2, "Call AP LIST dialog"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 482
    .local v0, startDialogIntent:Landroid/content/Intent;
    const-class v1, Lcom/android/settings_ex/wifi/WifiPickerDialog;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 483
    const/high16 v1, 0x1080

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 484
    const-string v1, "found_ssid_list"

    const-string v2, "found_ssid_list"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 486
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 487
    return-void
.end method

.method private updateResources(Landroid/content/Context;Landroid/net/wifi/WifiManager;)V
    .locals 2
    .parameter "context"
    .parameter "wifiManager"

    .prologue
    .line 653
    sget-boolean v0, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiStatusReceiver"

    const-string v1, "updateResources "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    :cond_0
    sget-boolean v0, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->mIsConnectivityNotiShowing:Z

    if-eqz v0, :cond_1

    .line 656
    sget-boolean v0, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->mIsConnectivityNotiShowing:Z

    invoke-direct {p0, p1, v0}, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->watchdogNotification(Landroid/content/Context;Z)V

    .line 673
    :cond_1
    return-void
.end method

.method private watchdogNotification(Landroid/content/Context;Z)V
    .locals 12
    .parameter "context"
    .parameter "visible"

    .prologue
    const/4 v11, 0x1

    const v10, 0x7f0903d4

    const/4 v9, 0x0

    .line 521
    const-string v6, "notification"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 524
    .local v3, notificationManager:Landroid/app/NotificationManager;
    if-eqz p2, :cond_2

    .line 525
    invoke-direct {p0, p1}, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->isWifiSettingScreen(Landroid/content/Context;)I

    move-result v6

    if-eq v6, v11, :cond_1

    .line 526
    sget-object v6, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->mWifiDisabledWarning:Landroid/app/Notification;

    if-nez v6, :cond_0

    .line 527
    new-instance v6, Landroid/app/Notification;

    invoke-direct {v6}, Landroid/app/Notification;-><init>()V

    sput-object v6, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->mWifiDisabledWarning:Landroid/app/Notification;

    .line 528
    sget-object v6, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->mWifiDisabledWarning:Landroid/app/Notification;

    const v7, 0x108008a

    iput v7, v6, Landroid/app/Notification;->icon:I

    .line 530
    sget-object v6, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->mWifiDisabledWarning:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, v6, Landroid/app/Notification;->when:J

    .line 531
    sget-object v6, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->mWifiDisabledWarning:Landroid/app/Notification;

    const/16 v7, 0x10

    iput v7, v6, Landroid/app/Notification;->flags:I

    .line 533
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.net.wifi.SEC_PICK_WIFI_NETWORK_WITH_DIALOG"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 534
    .local v1, intent:Landroid/content/Intent;
    const-string v6, "launch_with"

    invoke-virtual {v1, v6, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 535
    sput v11, Lcom/android/settings_ex/wifi/WifiSettings;->mStartWith:I

    .line 537
    sget-object v6, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->mWifiDisabledWarning:Landroid/app/Notification;

    invoke-static {p1, v9, v1, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    iput-object v7, v6, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 539
    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.net.wifi.SEC_NOTIFICATION_CANCEL"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 540
    .local v0, deleteIntent:Landroid/content/Intent;
    const-string v6, "nid"

    invoke-virtual {v0, v6, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 541
    sget-object v6, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->mWifiDisabledWarning:Landroid/app/Notification;

    invoke-static {p1, v9, v0, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    iput-object v7, v6, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 544
    .end local v0           #deleteIntent:Landroid/content/Intent;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 545
    .local v4, r:Landroid/content/res/Resources;
    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 546
    .local v5, title:Ljava/lang/CharSequence;
    const v6, 0x7f0903d5

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 547
    .local v2, msg:Ljava/lang/String;
    sget-object v6, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->mWifiDisabledWarning:Landroid/app/Notification;

    iput-object v5, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 548
    sget-object v6, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->mWifiDisabledWarning:Landroid/app/Notification;

    sget-object v7, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->mWifiDisabledWarning:Landroid/app/Notification;

    iget-object v7, v7, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v6, p1, v5, v2, v7}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 550
    sput-boolean p2, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->mIsConnectivityNotiShowing:Z

    .line 551
    sget-object v6, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->mWifiDisabledWarning:Landroid/app/Notification;

    invoke-virtual {v3, v10, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 558
    .end local v2           #msg:Ljava/lang/String;
    .end local v4           #r:Landroid/content/res/Resources;
    .end local v5           #title:Ljava/lang/CharSequence;
    :cond_1
    :goto_0
    return-void

    .line 554
    :cond_2
    sput-boolean p2, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->mIsConnectivityNotiShowing:Z

    .line 555
    invoke-virtual {v3, v10}, Landroid/app/NotificationManager;->cancel(I)V

    .line 556
    sput v9, Lcom/android/settings_ex/wifi/WifiSettings;->mStartWith:I

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 30
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 124
    const-string v24, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/WifiManager;

    .line 126
    .local v10, mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 127
    .local v4, action:Ljava/lang/String;
    sget-boolean v24, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->DEBUG:Z

    if-eqz v24, :cond_0

    .line 128
    const-string v24, "WifiStatusReceiver"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "action: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->mEapMethod:Ljava/lang/String;

    move-object/from16 v24, v0

    const-string v25, "AKA"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_4

    .line 133
    const-string v24, "android.net.wifi.SHOW_EAP_MESSAGE"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_4

    .line 134
    const-string v24, "message"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 135
    .local v11, message:Ljava/lang/String;
    const-string v24, "WifiStatusReceiver"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "onReceive, message of received: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    if-nez v11, :cond_2

    .line 477
    .end local v11           #message:Ljava/lang/String;
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 149
    .restart local v11       #message:Ljava/lang/String;
    :cond_2
    const-string v24, ""

    const-string v25, "KTT"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_3

    invoke-direct/range {p0 .. p1}, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->isWifiSettingScreen(Landroid/content/Context;)I

    move-result v24

    if-eqz v24, :cond_1

    .line 154
    :cond_3
    const/16 v24, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-static {v0, v11, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/widget/Toast;->show()V

    .line 190
    .end local v11           #message:Ljava/lang/String;
    :cond_4
    sget-boolean v24, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->WIFI_ERRORCODE:Z

    if-eqz v24, :cond_6

    .line 191
    const-string v24, "android.net.wifi.SHOW_EAP_MESSAGE"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_6

    .line 192
    const-string v24, "message"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 193
    .restart local v11       #message:Ljava/lang/String;
    const-string v24, "WifiStatusReceiver"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "SHOW EAP SIM MESSAGE ACTION: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    if-eqz v11, :cond_1

    .line 197
    const-string v24, "General failure"

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_5

    .line 198
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f090305

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 200
    :cond_5
    const/16 v24, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-static {v0, v11, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/widget/Toast;->show()V

    .line 203
    .end local v11           #message:Ljava/lang/String;
    :cond_6
    const-string v24, "android.net.wifi.WIFI_STATE_CHANGED"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_b

    .line 204
    const-string v24, "wifi_state"

    const/16 v25, 0x4

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v23

    .line 205
    .local v23, wifiState:I
    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_9

    .line 206
    sget-boolean v24, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->DEBUG:Z

    if-eqz v24, :cond_7

    const-string v24, "WifiStatusReceiver"

    const-string v25, "WIFI_STATE_ENABLED"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_7
    sget-boolean v24, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->mShowOnceFlag:Z

    if-eqz v24, :cond_8

    .line 208
    const/16 v24, 0x0

    sput-boolean v24, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->mShowOnceFlag:Z

    .line 209
    sget-boolean v24, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->mIsForegroundWifiSettings:Z

    if-nez v24, :cond_1

    .line 210
    const/16 v24, 0x1

    sput-boolean v24, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->mDialogFlag:Z

    .line 211
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v10, v1}, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->enableShowApEvent(Landroid/net/wifi/WifiManager;Z)V

    goto/16 :goto_0

    .line 214
    :cond_8
    const/16 v24, 0x0

    sput-boolean v24, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->mDialogFlag:Z

    .line 215
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v10, v1}, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->enableShowApEvent(Landroid/net/wifi/WifiManager;Z)V

    goto/16 :goto_0

    .line 217
    :cond_9
    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1

    .line 218
    sget-boolean v24, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->DEBUG:Z

    if-eqz v24, :cond_a

    const-string v24, "WifiStatusReceiver"

    const-string v25, "WIFI_STATE_DISABLED"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_a
    const/16 v24, 0x0

    sput-boolean v24, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->mShowOnceFlag:Z

    .line 220
    const/16 v24, 0x0

    sput-boolean v24, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->mDialogFlag:Z

    .line 221
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v10, v1}, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->enableShowApEvent(Landroid/net/wifi/WifiManager;Z)V

    goto/16 :goto_0

    .line 223
    .end local v23           #wifiState:I
    :cond_b
    const-string v24, "android.net.wifi.SHOW_AP_LIST_DIALOG"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_11

    .line 224
    const-string v24, "show_dialog_once"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_d

    .line 225
    const-string v24, "show_dialog_once"

    const/16 v25, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 226
    .local v7, flag:Z
    sget-boolean v24, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->DEBUG:Z

    if-eqz v24, :cond_c

    const-string v24, "WifiStatusReceiver"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Want to show AP LIST:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_c
    sput-boolean v7, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->mShowOnceFlag:Z

    .line 228
    if-nez v7, :cond_1

    .line 229
    const/16 v24, 0x0

    sput-boolean v24, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->mDialogFlag:Z

    goto/16 :goto_0

    .line 232
    .end local v7           #flag:Z
    :cond_d
    sget-boolean v24, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->mDialogFlag:Z

    if-eqz v24, :cond_1

    .line 233
    invoke-direct/range {p0 .. p1}, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->isWifiSettingScreen(Landroid/content/Context;)I

    move-result v24

    if-nez v24, :cond_e

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v24

    if-eqz v24, :cond_e

    .line 242
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string v25, "accessibility_enabled"

    const/16 v26, 0x0

    invoke-static/range {v24 .. v26}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_f

    const/16 v24, 0x1

    :goto_1
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->mTalkBackEnabled:Z

    .line 244
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->mTalkBackEnabled:Z

    move/from16 v24, v0

    if-nez v24, :cond_10

    .line 245
    invoke-direct/range {p0 .. p2}, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->startWifiPickerDialog(Landroid/content/Context;Landroid/content/Intent;)V

    .line 253
    :cond_e
    :goto_2
    const/16 v24, 0x0

    sput-boolean v24, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->mDialogFlag:Z

    .line 254
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v10, v1}, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->enableShowApEvent(Landroid/net/wifi/WifiManager;Z)V

    goto/16 :goto_0

    .line 242
    :cond_f
    const/16 v24, 0x0

    goto :goto_1

    .line 247
    :cond_10
    const-string v24, "WifiStatusReceiver"

    const-string v25, "Ignore wifi picker dialog : Talkback mode is on"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 257
    :cond_11
    const-string v24, "android.net.wifi.STATE_CHANGE"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_18

    .line 258
    const-string v24, "networkInfo"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v24

    check-cast v24, Landroid/net/NetworkInfo;

    sput-object v24, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->mLastInfo:Landroid/net/NetworkInfo;

    .line 259
    sget-object v24, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->mLastInfo:Landroid/net/NetworkInfo;

    if-eqz v24, :cond_17

    sget-object v24, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->mLastInfo:Landroid/net/NetworkInfo;

    invoke-virtual/range {v24 .. v24}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v24

    if-eqz v24, :cond_17

    .line 260
    const-string v24, "wifiInfo"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v22

    check-cast v22, Landroid/net/wifi/WifiInfo;

    .line 261
    .local v22, wifiInfo:Landroid/net/wifi/WifiInfo;
    if-eqz v22, :cond_13

    .line 262
    sget-boolean v24, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->DEBUG:Z

    if-eqz v24, :cond_12

    .line 263
    const-string v24, "WifiStatusReceiver"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "getConnectionInfo.SSID : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    const-string v24, "WifiStatusReceiver"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "wifiInfo : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v22 .. v22}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_12
    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v24

    if-eqz v24, :cond_15

    .line 275
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0d0009

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    const-string v25, "#ff"

    const-string v26, "#"

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 276
    .local v5, colorText:Ljava/lang/String;
    const v24, 0x7f10002b

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->setTheme(I)V

    .line 277
    const-string v24, "#DEAD00"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_14

    .line 278
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f090869

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v22 .. v22}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/android/settings_ex/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    aput-object v28, v26, v27

    invoke-virtual/range {v24 .. v26}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 280
    .local v12, msg:Ljava/lang/String;
    const/16 v24, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-static {v0, v12, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/widget/Toast;->show()V

    .line 293
    .end local v5           #colorText:Ljava/lang/String;
    .end local v12           #msg:Ljava/lang/String;
    :goto_3
    sget-boolean v24, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->WIFI_SCREENCONNECTEDINFO:Z

    if-eqz v24, :cond_16

    .line 294
    sget-object v24, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->mLastInfo:Landroid/net/NetworkInfo;

    invoke-virtual/range {v24 .. v24}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v24

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v24

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->showConnectedNotification(Landroid/content/Context;ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 267
    :cond_13
    const-string v24, "WifiStatusReceiver"

    const-string v25, "wifiinfo is null"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 282
    .restart local v5       #colorText:Ljava/lang/String;
    :cond_14
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f090869

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "<font color="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ">"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v22 .. v22}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/android/settings_ex/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "</font>"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    aput-object v28, v26, v27

    invoke-virtual/range {v24 .. v26}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 285
    .restart local v12       #msg:Ljava/lang/String;
    invoke-static {v12}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v24

    const/16 v25, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v17

    .line 286
    .local v17, toast:Landroid/widget/Toast;
    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v24

    const v25, 0x102000b

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 287
    .local v18, tv:Landroid/widget/TextView;
    const/16 v24, 0x11

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 288
    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3

    .line 291
    .end local v5           #colorText:Ljava/lang/String;
    .end local v12           #msg:Ljava/lang/String;
    .end local v17           #toast:Landroid/widget/Toast;
    .end local v18           #tv:Landroid/widget/TextView;
    :cond_15
    const-string v24, "WifiStatusReceiver"

    const-string v25, "Ignore wifi connected toast. Because wifi is not enabled"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 297
    :cond_16
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v10, v1}, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->enableShowApEvent(Landroid/net/wifi/WifiManager;Z)V

    goto/16 :goto_0

    .line 300
    .end local v22           #wifiInfo:Landroid/net/wifi/WifiInfo;
    :cond_17
    sget-boolean v24, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->WIFI_SCREENCONNECTEDINFO:Z

    if-eqz v24, :cond_1

    .line 301
    sget-object v24, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->mLastInfo:Landroid/net/NetworkInfo;

    if-eqz v24, :cond_1

    .line 302
    sget-object v24, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->mLastInfo:Landroid/net/NetworkInfo;

    invoke-virtual/range {v24 .. v24}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v24

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v24

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->showConnectedNotification(Landroid/content/Context;ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 306
    :cond_18
    const-string v24, "android.net.wifi.SHOW_INFO_MESSAGE"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_1a

    .line 307
    const-string v24, "info_type"

    const/16 v25, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 309
    .local v13, msgId:I
    packed-switch v13, :pswitch_data_0

    goto/16 :goto_0

    .line 311
    :pswitch_1
    const v24, 0x7f0903ce

    const/16 v25, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 314
    :pswitch_2
    const v24, 0x7f090474

    const/16 v25, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 317
    :pswitch_3
    const v24, 0x7f090475

    const/16 v25, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 322
    :pswitch_4
    const-string v24, "visible"

    const/16 v25, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v20

    .line 323
    .local v20, visible:Z
    if-eqz v20, :cond_19

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v24

    if-nez v24, :cond_19

    .line 324
    const-string v24, "WifiStatusReceiver"

    const-string v25, "Ignore watchdog notification. Because wifi is not enabled"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 327
    :cond_19
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->watchdogNotification(Landroid/content/Context;Z)V

    goto/16 :goto_0

    .line 331
    .end local v20           #visible:Z
    :pswitch_5
    const v24, 0x7f0903d0

    const/16 v25, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 344
    :pswitch_6
    const v24, 0x7f090297

    const/16 v25, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 349
    .end local v13           #msgId:I
    :cond_1a
    const-string v24, "android.net.wifi.SEC_PICK_WIFI_NETWORK"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_1c

    .line 350
    const-string v24, "WifiStatusReceiver"

    const-string v25, "ACTION_SEC_PICK_WIFI_NETWORK"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    const-string v24, "type"

    const/16 v25, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1b

    .line 352
    invoke-direct/range {p0 .. p2}, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->startWifiPickerDialog(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 354
    :cond_1b
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->startWifiPickerActivity(Landroid/content/Context;Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 356
    :cond_1c
    const-string v24, "android.net.wifi.SEC_PICK_WIFI_NETWORK_WITH_ON"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_22

    .line 357
    const-string v24, "WifiStatusReceiver"

    const-string v25, "ACTION_SEC_PICK_WIFI_NETWORK_WITH_ON"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v24

    if-nez v24, :cond_20

    .line 359
    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v21

    .line 360
    .local v21, wifiApState:I
    const/16 v24, 0xc

    move/from16 v0, v21

    move/from16 v1, v24

    if-eq v0, v1, :cond_1d

    const/16 v24, 0xd

    move/from16 v0, v21

    move/from16 v1, v24

    if-ne v0, v1, :cond_1e

    :cond_1d
    const/4 v8, 0x1

    .line 362
    .local v8, isApEnabled:Z
    :goto_4
    if-eqz v8, :cond_21

    .line 363
    invoke-direct/range {p0 .. p1}, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->isWifiSettingScreen(Landroid/content/Context;)I

    move-result v24

    if-nez v24, :cond_1f

    .line 364
    const/16 v24, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->startWifiPickerActivity(Landroid/content/Context;Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 360
    .end local v8           #isApEnabled:Z
    :cond_1e
    const/4 v8, 0x0

    goto :goto_4

    .line 367
    .restart local v8       #isApEnabled:Z
    :cond_1f
    new-instance v24, Landroid/content/Intent;

    const-string v25, "com.android.settings_ex.wifi.WIFI_ON"

    invoke-direct/range {v24 .. v25}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 373
    .end local v8           #isApEnabled:Z
    .end local v21           #wifiApState:I
    :cond_20
    :goto_5
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->startWifiPickerActivity(Landroid/content/Context;Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 370
    .restart local v8       #isApEnabled:Z
    .restart local v21       #wifiApState:I
    :cond_21
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_5

    .line 374
    .end local v8           #isApEnabled:Z
    .end local v21           #wifiApState:I
    :cond_22
    const-string v24, "android.net.wifi.SEC_PICK_WIFI_NETWORK_WITH_DIALOG"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_23

    .line 375
    const-string v24, "WifiStatusReceiver"

    const-string v25, "ACTION_SEC_PICK_WIFI_NETWORK_WITH_DIALOG"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    const-string v24, "launch_with"

    const/16 v25, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 377
    .local v9, launchWith:I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v9}, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->startWifiPickerActivity(Landroid/content/Context;Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 378
    .end local v9           #launchWith:I
    :cond_23
    const-string v24, "android.intent.action.BOOT_COMPLETED"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_26

    .line 379
    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v24

    if-eqz v24, :cond_24

    .line 380
    invoke-static {}, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->isFactoryMode()Z

    move-result v24

    if-eqz v24, :cond_24

    .line 381
    const-string v24, "WifiStatusReceiver"

    const-string v25, "Factory Mode is ON. Turn off Wi-Fi"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 388
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f090442

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 389
    .local v6, errMsg:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v24

    const/16 v25, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/widget/Toast;->show()V

    .line 394
    .end local v6           #errMsg:Ljava/lang/String;
    :cond_24
    const-string v24, "wifitimer_pref"

    const/16 v25, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v16

    .line 395
    .local v16, sharedPref:Landroid/content/SharedPreferences;
    const-string v24, "wifitimer_enabled"

    const/16 v25, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v24

    if-eqz v24, :cond_25

    .line 396
    new-instance v15, Landroid/content/Intent;

    const-string v24, "com.android.settings_ex.wifi.WifiTimerService"

    move-object/from16 v0, v24

    invoke-direct {v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 397
    .local v15, serviceIntent:Landroid/content/Intent;
    const-string v24, "com.android.settings_ex.wifi.wifisheduler_action_type"

    const/16 v25, 0x138b

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 398
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 402
    .end local v15           #serviceIntent:Landroid/content/Intent;
    :cond_25
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->mPrioritymode:Z

    move/from16 v24, v0

    if-eqz v24, :cond_1

    .line 403
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string v25, "wifi_connection_monitor_enable"

    const/16 v26, 0x1

    invoke-static/range {v24 .. v26}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    .line 405
    .local v19, value:I
    const/16 v24, 0x1

    move/from16 v0, v19

    move/from16 v1, v24

    if-ne v0, v1, :cond_1

    .line 406
    new-instance v24, Landroid/content/Intent;

    const-class v25, Lcom/android/settings_ex/wifi/WifiConnectionMonitorService;

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 409
    .end local v16           #sharedPref:Landroid/content/SharedPreferences;
    .end local v19           #value:I
    :cond_26
    const-string v24, "com.android.settings_ex.wifi.wifitimer_alarm"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_28

    .line 410
    sget-boolean v24, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->DEBUG:Z

    if-eqz v24, :cond_27

    const-string v24, "WifiStatusReceiver"

    const-string v25, "WifiTimer Broadcast Received"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :cond_27
    new-instance v15, Landroid/content/Intent;

    const-string v24, "com.android.settings_ex.wifi.WifiTimerService"

    move-object/from16 v0, v24

    invoke-direct {v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 412
    .restart local v15       #serviceIntent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 413
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 414
    .end local v15           #serviceIntent:Landroid/content/Intent;
    :cond_28
    const-string v24, "android.net.wifi.SEC_NOTIFICATION_CANCEL"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_2c

    .line 415
    const-string v24, "nid"

    const/16 v25, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 416
    .local v14, nid:I
    sget-boolean v24, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->DEBUG:Z

    if-eqz v24, :cond_29

    const-string v24, "WifiStatusReceiver"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, ">> ACTION_SEC_NOTIFICATION_CANCEL nid:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :cond_29
    const v24, 0x7f0903d4

    move/from16 v0, v24

    if-ne v14, v0, :cond_2a

    .line 418
    const/16 v24, 0x0

    sput-boolean v24, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->mIsConnectivityNotiShowing:Z

    goto/16 :goto_0

    .line 419
    :cond_2a
    const v24, 0x7f0903d2

    move/from16 v0, v24

    if-ne v14, v0, :cond_2b

    .line 420
    const/16 v24, 0x0

    sput-boolean v24, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->mIsWifiSCCDiffNotiShowing:Z

    goto/16 :goto_0

    .line 421
    :cond_2b
    if-nez v14, :cond_1

    .line 422
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10}, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->updateResources(Landroid/content/Context;Landroid/net/wifi/WifiManager;)V

    goto/16 :goto_0

    .line 444
    .end local v14           #nid:I
    :cond_2c
    const-string v24, "android.net.wifi.SEC_LAUNCH_OPERTOR_URL"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_2d

    .line 446
    invoke-direct/range {p0 .. p1}, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->launchHS20Browser(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 447
    :cond_2d
    const-string v24, "android.intent.action.BCS_REQUEST"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_1

    goto/16 :goto_0

    .line 309
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_4
    .end packed-switch
.end method
