.class public Lcom/android/settings_ex/wifi/mobileap/WifiApBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiApBroadcastReceiver.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static MAX_CLIENTS:I = 0x0

.field private static final PREF_NAME:Ljava/lang/String; = "SAMSUNG_HOTSPOT"

.field private static final TAG:Ljava/lang/String; = "WifiApBroadcastReceiver"

.field private static final TURNOFF_HOTSPOT:I = 0x7f090352

.field public static final TURNOFF_HOTSPOT_ACTION:Ljava/lang/String; = "com.android.settings_ex.wifi.mobileap.TURNOFF_HOTSPOT"

.field public static final WIFIAP_ENABLE_WARNING:Ljava/lang/String; = "android.intent.action.WIFI_AP_ENABLE_WARNING"

.field public static final WIFIAP_MODEMNAI_MISSMATH:Ljava/lang/String; = "android.intent.action.MIP_ERROR"

.field public static final WIFIAP_PLUG_STATE_CHANGED:Ljava/lang/String; = "com.android.settings_ex.wifi.PLUG_STATE_CHANGED"

.field public static final WIFIAP_PLUG_STATE_CHANGED_OPTION:Ljava/lang/String; = "wifiap_plug_state_changed_option"

.field public static final WIFIAP_POWER_MODE_ALARM:Ljava/lang/String; = "com.android.settings_ex.wifi.wifiap_power_mode_alarm"

.field public static final WIFIAP_POWER_MODE_ALARM_EXPIRE:I = 0x1

.field public static final WIFIAP_POWER_MODE_ALARM_OPTION:Ljava/lang/String; = "wifiap_power_mode_alarm_option"

.field public static final WIFIAP_POWER_MODE_ALARM_START:I = 0x0

.field public static final WIFIAP_POWER_MODE_ALARM_STOP:I = 0x2

.field public static final WIFIAP_POWER_MODE_ALARM_UNKNOWN:I = 0x3

.field public static final WIFIAP_POWER_MODE_VALUE_CHANGED:I = 0x4

.field public static final WIFIAP_TETHERING_DENIED:Ljava/lang/String; = "android.intent.action.TETHERING_DENIED"

.field public static final WIFIAP_TETHERING_FAILED:Ljava/lang/String; = "android.intent.action.TETHERING_FAILED"

.field public static final WIFI_ENABLE_WARNING:Ljava/lang/String; = "android.intent.action.WIFI_ENABLE_WARNING"

.field private static bExpireAlarm:Z

.field private static bStartAlarm:Z

.field private static mGateTraceTag:Ljava/lang/String;

.field public static mIsForegroundWifiSettings:Z

.field public static mIsProvisioningResultOk:Z

.field private static mLastClientNum:I


# instance fields
.field mNotificationManager:Landroid/app/NotificationManager;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 50
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v2

    if-ne v2, v0, :cond_0

    move v0, v1

    :cond_0
    sput-boolean v0, Lcom/android/settings_ex/wifi/mobileap/WifiApBroadcastReceiver;->DBG:Z

    .line 52
    const-string v0, "GATE"

    sput-object v0, Lcom/android/settings_ex/wifi/mobileap/WifiApBroadcastReceiver;->mGateTraceTag:Ljava/lang/String;

    .line 56
    sput-boolean v1, Lcom/android/settings_ex/wifi/mobileap/WifiApBroadcastReceiver;->mIsForegroundWifiSettings:Z

    .line 57
    sput-boolean v1, Lcom/android/settings_ex/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    .line 76
    sput v1, Lcom/android/settings_ex/wifi/mobileap/WifiApBroadcastReceiver;->mLastClientNum:I

    .line 78
    sput-boolean v1, Lcom/android/settings_ex/wifi/mobileap/WifiApBroadcastReceiver;->bExpireAlarm:Z

    .line 79
    sput-boolean v1, Lcom/android/settings_ex/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    .line 82
    sput v1, Lcom/android/settings_ex/wifi/mobileap/WifiApBroadcastReceiver;->MAX_CLIENTS:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 84
    iput-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApBroadcastReceiver;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 85
    iput-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    return-void
.end method

.method private getRvfMode(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 441
    const/4 v0, 0x0

    .line 442
    .local v0, mRvfMode:I
    const-string v3, "wifi"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 443
    .local v1, mWifiManager:Landroid/net/wifi/WifiManager;
    if-eqz v1, :cond_0

    .line 444
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 445
    .local v2, msg:Landroid/os/Message;
    const/16 v3, 0x1c

    iput v3, v2, Landroid/os/Message;->what:I

    .line 446
    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v0

    .line 448
    .end local v2           #msg:Landroid/os/Message;
    :cond_0
    return v0
.end method

.method private getTimeoutValueFromSheredPreference(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 405
    const-string v1, "SAMSUNG_HOTSPOT"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 406
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "CONNECTION_TIMEOUT"

    const-string v2, "1200"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private isProvisioningNeeded(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 451
    sget-boolean v2, Lcom/android/settings_ex/wifi/mobileap/WifiApBroadcastReceiver;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "Provisioning.disable"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 458
    :cond_0
    :goto_0
    return v1

    .line 454
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1070022

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 456
    .local v0, mProvisionApp:[Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 457
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private sendWifiPowerModeAlarmIntent(Landroid/content/Context;I)V
    .locals 2
    .parameter "ctxt"
    .parameter "type"

    .prologue
    .line 399
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings_ex.wifi.wifiap_power_mode_alarm"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 400
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "wifiap_power_mode_alarm_option"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 401
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 402
    return-void
.end method

.method private showHotspotErrorDialog(Landroid/content/Context;I)V
    .locals 9
    .parameter "context"
    .parameter "DialogType"

    .prologue
    const/16 v8, 0xd

    const/16 v7, 0xc

    .line 353
    const-string v4, "WifiApBroadcastReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[showHotspotErrorDialog] DialogType : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    const-string v4, "wifi"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 355
    .local v0, mWifiManager:Landroid/net/wifi/WifiManager;
    if-eqz v0, :cond_0

    .line 356
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v3

    .line 357
    .local v3, wifiApState:I
    const/4 v4, 0x3

    if-ne p2, v4, :cond_1

    .line 358
    if-eq v3, v7, :cond_2

    if-eq v3, v8, :cond_2

    .line 386
    .end local v3           #wifiApState:I
    :cond_0
    :goto_0
    return-void

    .line 361
    .restart local v3       #wifiApState:I
    :cond_1
    const/4 v4, 0x4

    if-ne p2, v4, :cond_4

    .line 362
    if-eq v3, v7, :cond_0

    if-eq v3, v8, :cond_0

    .line 375
    :cond_2
    :goto_1
    const-string v4, "statusbar"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/StatusBarManager;

    .line 376
    .local v2, statusBar:Landroid/app/StatusBarManager;
    if-eqz v2, :cond_3

    .line 377
    invoke-virtual {v2}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 379
    :cond_3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 380
    .local v1, startDialogIntent:Landroid/content/Intent;
    const-class v4, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    invoke-virtual {v1, p1, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 381
    const/high16 v4, 0x1000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 382
    const-string v4, "com.android.settings_ex.wifi.mobileap.wifiapwarning"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 383
    const-string v4, "wifiap_warning_dialog_type"

    invoke-virtual {v1, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 384
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 366
    .end local v1           #startDialogIntent:Landroid/content/Intent;
    .end local v2           #statusBar:Landroid/app/StatusBarManager;
    :cond_4
    if-eq v3, v7, :cond_5

    if-ne v3, v8, :cond_0

    .line 370
    :cond_5
    const-string v4, "WifiApBroadcastReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Mobile AP is disabled by [showHotspotErrorDialog] : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    goto :goto_1
.end method

.method private startHotspotProvisioningRequest(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "DialogType"

    .prologue
    .line 389
    const-string v1, "WifiApBroadcastReceiver"

    const-string v2, "startHotspotProvisioningRequest"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 391
    .local v0, startDialogIntent:Landroid/content/Intent;
    const-class v1, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 392
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 393
    const-string v1, "com.android.settings_ex.wifi.mobileap.wifiapwarning"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 394
    const-string v1, "wifiap_warning_dialog_type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 395
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 396
    return-void
.end method

.method private startWifiApSettings(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 411
    sget-boolean v1, Lcom/android/settings_ex/wifi/mobileap/WifiApBroadcastReceiver;->mIsForegroundWifiSettings:Z

    if-nez v1, :cond_0

    .line 412
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 413
    .local v0, wifiApIntent:Landroid/content/Intent;
    const-string v1, "android.settings.WIFI_AP_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 414
    const/high16 v1, 0x1080

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 415
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 417
    .end local v0           #wifiApIntent:Landroid/content/Intent;
    :cond_0
    return-void
.end method


# virtual methods
.method clearTimeoutNotification(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 435
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    .line 436
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    .line 437
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    const v1, 0x7f090352

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 438
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 27
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 88
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 89
    .local v4, action:Ljava/lang/String;
    const-string v23, "WifiApBroadcastReceiver"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "onReceive: action "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const-string v23, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2

    .line 92
    const-string v23, "wifi_state"

    const/16 v24, 0xe

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 94
    .local v7, apState:I
    packed-switch v7, :pswitch_data_0

    .line 350
    .end local v7           #apState:I
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 96
    .restart local v7       #apState:I
    :pswitch_1
    invoke-direct/range {p0 .. p1}, Lcom/android/settings_ex/wifi/mobileap/WifiApBroadcastReceiver;->isProvisioningNeeded(Landroid/content/Context;)Z

    move-result v23

    if-eqz v23, :cond_1

    sget-boolean v23, Lcom/android/settings_ex/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    if-nez v23, :cond_1

    invoke-direct/range {p0 .. p1}, Lcom/android/settings_ex/wifi/mobileap/WifiApBroadcastReceiver;->getRvfMode(Landroid/content/Context;)I

    move-result v23

    if-nez v23, :cond_1

    .line 98
    const-string v23, "WifiApBroadcastReceiver"

    const-string v24, "Provisioning is failed, start provisioning once again"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const/16 v23, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApBroadcastReceiver;->startHotspotProvisioningRequest(Landroid/content/Context;I)V

    goto :goto_0

    .line 101
    :cond_1
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApBroadcastReceiver;->sendWifiPowerModeAlarmIntent(Landroid/content/Context;I)V

    .line 118
    const/16 v23, 0x0

    sput-boolean v23, Lcom/android/settings_ex/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    goto :goto_0

    .line 124
    :pswitch_2
    const/16 v23, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApBroadcastReceiver;->sendWifiPowerModeAlarmIntent(Landroid/content/Context;I)V

    goto :goto_0

    .line 139
    .end local v7           #apState:I
    :cond_2
    const-string v23, "com.android.settings_ex.wifi.wifiap_power_mode_alarm"

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_9

    .line 140
    const-string v23, "wifiap_power_mode_alarm_option"

    const/16 v24, 0x3

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 142
    .local v15, option:I
    if-nez v15, :cond_5

    .line 143
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 146
    .local v8, cr:Landroid/content/ContentResolver;
    :try_start_0
    const-string v23, "wifi_ap_plugged_type"

    move-object/from16 v0, v23

    invoke-static {v8, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v17

    .line 151
    .local v17, pluggedType:I
    :goto_1
    invoke-direct/range {p0 .. p1}, Lcom/android/settings_ex/wifi/mobileap/WifiApBroadcastReceiver;->getTimeoutValueFromSheredPreference(Landroid/content/Context;)I

    move-result v19

    .line 152
    .local v19, powermode_value:I
    const-string v23, "WifiApBroadcastReceiver"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "ALARM_START : set "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " sec"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    if-eqz v19, :cond_3

    .line 154
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    move/from16 v0, v19

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v25, v0

    add-long v10, v23, v25

    .line 156
    .local v10, expireTime:J
    new-instance v5, Landroid/content/Intent;

    const-string v23, "com.android.settings_ex.wifi.wifiap_power_mode_alarm"

    move-object/from16 v0, v23

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 157
    .local v5, alarm_intent:Landroid/content/Intent;
    const-string v23, "wifiap_power_mode_alarm_option"

    const/16 v24, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 158
    const/16 v23, 0x0

    const/high16 v24, 0x1000

    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v0, v1, v5, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v16

    .line 160
    .local v16, pending:Landroid/app/PendingIntent;
    const-string v23, "alarm"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AlarmManager;

    .line 161
    .local v6, am:Landroid/app/AlarmManager;
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v6, v0, v10, v11, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 163
    const/16 v23, 0x0

    sput-boolean v23, Lcom/android/settings_ex/wifi/mobileap/WifiApBroadcastReceiver;->bExpireAlarm:Z

    .line 164
    const/16 v23, 0x1

    sput-boolean v23, Lcom/android/settings_ex/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    goto/16 :goto_0

    .line 147
    .end local v5           #alarm_intent:Landroid/content/Intent;
    .end local v6           #am:Landroid/app/AlarmManager;
    .end local v10           #expireTime:J
    .end local v16           #pending:Landroid/app/PendingIntent;
    .end local v17           #pluggedType:I
    .end local v19           #powermode_value:I
    :catch_0
    move-exception v9

    .line 148
    .local v9, e:Landroid/provider/Settings$SettingNotFoundException;
    const/16 v17, 0x0

    .restart local v17       #pluggedType:I
    goto :goto_1

    .line 166
    .end local v9           #e:Landroid/provider/Settings$SettingNotFoundException;
    .restart local v19       #powermode_value:I
    :cond_3
    sget-boolean v23, Lcom/android/settings_ex/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    if-eqz v23, :cond_4

    .line 167
    new-instance v5, Landroid/content/Intent;

    const-string v23, "com.android.settings_ex.wifi.wifiap_power_mode_alarm"

    move-object/from16 v0, v23

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 168
    .restart local v5       #alarm_intent:Landroid/content/Intent;
    const-string v23, "wifiap_power_mode_alarm_option"

    const/16 v24, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 169
    const/16 v23, 0x0

    const/high16 v24, 0x1000

    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v0, v1, v5, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v16

    .line 171
    .restart local v16       #pending:Landroid/app/PendingIntent;
    const-string v23, "alarm"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AlarmManager;

    .line 172
    .restart local v6       #am:Landroid/app/AlarmManager;
    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 174
    .end local v5           #alarm_intent:Landroid/content/Intent;
    .end local v6           #am:Landroid/app/AlarmManager;
    .end local v16           #pending:Landroid/app/PendingIntent;
    :cond_4
    const/16 v23, 0x0

    sput-boolean v23, Lcom/android/settings_ex/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    goto/16 :goto_0

    .line 177
    .end local v8           #cr:Landroid/content/ContentResolver;
    .end local v17           #pluggedType:I
    .end local v19           #powermode_value:I
    :cond_5
    const/16 v23, 0x4

    move/from16 v0, v23

    if-ne v15, v0, :cond_6

    .line 178
    const-string v23, "WifiApBroadcastReceiver"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "WIFIAP_POWER_MODE_VALUE_CHANGED, mLastClientNum = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sget v25, Lcom/android/settings_ex/wifi/mobileap/WifiApBroadcastReceiver;->mLastClientNum:I

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    sget v23, Lcom/android/settings_ex/wifi/mobileap/WifiApBroadcastReceiver;->mLastClientNum:I

    if-nez v23, :cond_0

    .line 180
    const-string v23, "WifiApBroadcastReceiver"

    const-string v24, "ALARM_START because of WIFIAP_POWER_MODE_VALUE_CHANGED"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApBroadcastReceiver;->sendWifiPowerModeAlarmIntent(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 183
    :cond_6
    const/16 v23, 0x1

    move/from16 v0, v23

    if-ne v15, v0, :cond_8

    .line 184
    const-string v23, "WifiApBroadcastReceiver"

    const-string v24, "ALARM_EXPIRE"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 186
    .restart local v8       #cr:Landroid/content/ContentResolver;
    const/16 v23, 0x1

    sput-boolean v23, Lcom/android/settings_ex/wifi/mobileap/WifiApBroadcastReceiver;->bExpireAlarm:Z

    .line 187
    const/16 v23, 0x0

    sput-boolean v23, Lcom/android/settings_ex/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    .line 190
    const-string v23, "power"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/os/PowerManager;

    .line 191
    .local v18, pm:Landroid/os/PowerManager;
    const/16 v23, 0x1

    const-string v24, "MobileAPCloseService"

    move-object/from16 v0, v18

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v12

    .line 193
    .local v12, mStopService:Landroid/os/PowerManager$WakeLock;
    :try_start_1
    invoke-virtual {v12}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 198
    :goto_2
    const-string v23, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/net/wifi/WifiManager;

    .line 200
    .local v22, wm:Landroid/net/wifi/WifiManager;
    invoke-virtual/range {v22 .. v22}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v20

    .line 201
    .local v20, wifiApState:I
    const/16 v21, 0x0

    .line 202
    .local v21, wifiSavedState:I
    invoke-direct/range {p0 .. p1}, Lcom/android/settings_ex/wifi/mobileap/WifiApBroadcastReceiver;->getTimeoutValueFromSheredPreference(Landroid/content/Context;)I

    move-result v19

    .line 204
    .restart local v19       #powermode_value:I
    new-instance v13, Landroid/os/Message;

    invoke-direct {v13}, Landroid/os/Message;-><init>()V

    .line 205
    .local v13, msg:Landroid/os/Message;
    const/16 v23, 0x3

    move/from16 v0, v23

    iput v0, v13, Landroid/os/Message;->what:I

    .line 206
    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v14

    .line 208
    .local v14, num:I
    const-string v23, "WifiApBroadcastReceiver"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "powermode_value = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    if-nez v14, :cond_7

    const/16 v23, 0xd

    move/from16 v0, v20

    move/from16 v1, v23

    if-ne v0, v1, :cond_7

    if-eqz v19, :cond_7

    .line 210
    const-string v23, "WifiApBroadcastReceiver"

    const-string v24, "--> ap disable"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 215
    :try_start_2
    const-string v23, "wifi_saved_state"

    move-object/from16 v0, v23

    invoke-static {v8, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_4

    move-result v21

    .line 219
    :goto_3
    const/16 v23, 0x1

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_7

    .line 221
    const-wide/16 v23, 0x258

    :try_start_3
    invoke-static/range {v23 .. v24}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2

    .line 225
    :goto_4
    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 226
    const-string v23, "wifi_saved_state"

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-static {v8, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 230
    :cond_7
    if-eqz v12, :cond_0

    .line 232
    :try_start_4
    invoke-virtual {v12}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    .line 233
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 194
    .end local v13           #msg:Landroid/os/Message;
    .end local v14           #num:I
    .end local v19           #powermode_value:I
    .end local v20           #wifiApState:I
    .end local v21           #wifiSavedState:I
    .end local v22           #wm:Landroid/net/wifi/WifiManager;
    :catch_1
    move-exception v9

    .line 195
    .local v9, e:Ljava/lang/Throwable;
    const-string v23, "WifiApBroadcastReceiver"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Cannot acquire wake lock ~~"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 222
    .end local v9           #e:Ljava/lang/Throwable;
    .restart local v13       #msg:Landroid/os/Message;
    .restart local v14       #num:I
    .restart local v19       #powermode_value:I
    .restart local v20       #wifiApState:I
    .restart local v21       #wifiSavedState:I
    .restart local v22       #wm:Landroid/net/wifi/WifiManager;
    :catch_2
    move-exception v9

    .line 223
    .local v9, e:Ljava/lang/InterruptedException;
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 234
    .end local v9           #e:Ljava/lang/InterruptedException;
    :catch_3
    move-exception v9

    .line 235
    .local v9, e:Ljava/lang/Throwable;
    const-string v23, "WifiApBroadcastReceiver"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Cannot release wake lock ~~"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 238
    .end local v8           #cr:Landroid/content/ContentResolver;
    .end local v9           #e:Ljava/lang/Throwable;
    .end local v12           #mStopService:Landroid/os/PowerManager$WakeLock;
    .end local v13           #msg:Landroid/os/Message;
    .end local v14           #num:I
    .end local v18           #pm:Landroid/os/PowerManager;
    .end local v19           #powermode_value:I
    .end local v20           #wifiApState:I
    .end local v21           #wifiSavedState:I
    .end local v22           #wm:Landroid/net/wifi/WifiManager;
    :cond_8
    const/16 v23, 0x2

    move/from16 v0, v23

    if-ne v15, v0, :cond_0

    .line 239
    const-string v23, "WifiApBroadcastReceiver"

    const-string v24, "ALARM_STOP"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    sget-boolean v23, Lcom/android/settings_ex/wifi/mobileap/WifiApBroadcastReceiver;->bExpireAlarm:Z

    if-nez v23, :cond_0

    sget-boolean v23, Lcom/android/settings_ex/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    if-eqz v23, :cond_0

    .line 241
    new-instance v5, Landroid/content/Intent;

    const-string v23, "com.android.settings_ex.wifi.wifiap_power_mode_alarm"

    move-object/from16 v0, v23

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 242
    .restart local v5       #alarm_intent:Landroid/content/Intent;
    const-string v23, "wifiap_power_mode_alarm_option"

    const/16 v24, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 243
    const/16 v23, 0x0

    const/high16 v24, 0x1000

    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v0, v1, v5, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v16

    .line 244
    .restart local v16       #pending:Landroid/app/PendingIntent;
    const-string v23, "alarm"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AlarmManager;

    .line 245
    .restart local v6       #am:Landroid/app/AlarmManager;
    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 246
    const/16 v23, 0x0

    sput-boolean v23, Lcom/android/settings_ex/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    goto/16 :goto_0

    .line 249
    .end local v5           #alarm_intent:Landroid/content/Intent;
    .end local v6           #am:Landroid/app/AlarmManager;
    .end local v15           #option:I
    .end local v16           #pending:Landroid/app/PendingIntent;
    :cond_9
    const-string v23, "com.android.settings_ex.wifi.PLUG_STATE_CHANGED"

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_b

    .line 250
    const-string v23, "wifiap_plug_state_changed_option"

    const/16 v24, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 251
    .restart local v15       #option:I
    if-nez v15, :cond_a

    .line 252
    const-string v23, "WifiApBroadcastReceiver"

    const-string v24, "Unplugged"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const-string v23, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/net/wifi/WifiManager;

    .line 254
    .restart local v22       #wm:Landroid/net/wifi/WifiManager;
    invoke-virtual/range {v22 .. v22}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v20

    .line 255
    .restart local v20       #wifiApState:I
    const/16 v23, 0xd

    move/from16 v0, v20

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    sget v23, Lcom/android/settings_ex/wifi/mobileap/WifiApBroadcastReceiver;->mLastClientNum:I

    if-nez v23, :cond_0

    .line 256
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApBroadcastReceiver;->sendWifiPowerModeAlarmIntent(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 259
    .end local v20           #wifiApState:I
    .end local v22           #wm:Landroid/net/wifi/WifiManager;
    :cond_a
    const-string v23, "WifiApBroadcastReceiver"

    const-string v24, "Plugged"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    sget-boolean v23, Lcom/android/settings_ex/wifi/mobileap/WifiApBroadcastReceiver;->bExpireAlarm:Z

    if-nez v23, :cond_0

    sget-boolean v23, Lcom/android/settings_ex/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    if-eqz v23, :cond_0

    .line 261
    const/16 v23, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApBroadcastReceiver;->sendWifiPowerModeAlarmIntent(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 264
    .end local v15           #option:I
    :cond_b
    const-string v23, "android.net.wifi.WIFI_AP_STA_STATUS_CHANGED"

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_f

    .line 265
    const-string v23, "NUM"

    const/16 v24, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 266
    .local v3, ClientNum:I
    const-string v23, "WifiApBroadcastReceiver"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "ClientNum from WIFI_AP_STA_STATUS_CHANGED_ACTION = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    if-gez v3, :cond_c

    .line 268
    const/4 v3, 0x0

    .line 280
    :cond_c
    if-nez v3, :cond_e

    sget v23, Lcom/android/settings_ex/wifi/mobileap/WifiApBroadcastReceiver;->mLastClientNum:I

    if-eqz v23, :cond_e

    .line 281
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApBroadcastReceiver;->sendWifiPowerModeAlarmIntent(Landroid/content/Context;I)V

    .line 285
    :cond_d
    :goto_5
    sput v3, Lcom/android/settings_ex/wifi/mobileap/WifiApBroadcastReceiver;->mLastClientNum:I

    goto/16 :goto_0

    .line 282
    :cond_e
    if-lez v3, :cond_d

    .line 283
    const/16 v23, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApBroadcastReceiver;->sendWifiPowerModeAlarmIntent(Landroid/content/Context;I)V

    goto :goto_5

    .line 286
    .end local v3           #ClientNum:I
    :cond_f
    const-string v23, "com.android.settings_ex.wifi.mobileap.TURNOFF_HOTSPOT"

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_10

    .line 287
    invoke-virtual/range {p0 .. p1}, Lcom/android/settings_ex/wifi/mobileap/WifiApBroadcastReceiver;->clearTimeoutNotification(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 288
    :cond_10
    const-string v23, "android.settings.WIFI_AP_SEC_SETTINGS"

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_11

    .line 289
    invoke-direct/range {p0 .. p1}, Lcom/android/settings_ex/wifi/mobileap/WifiApBroadcastReceiver;->startWifiApSettings(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 290
    :cond_11
    const-string v23, "android.intent.action.MIP_ERROR"

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_0

    const-string v23, "android.intent.action.TETHERING_DENIED"

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_0

    const-string v23, "android.intent.action.TETHERING_FAILED"

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_0

    .line 303
    const-string v23, "android.intent.action.WIFI_ENABLE_WARNING"

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_12

    .line 304
    const/16 v23, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApBroadcastReceiver;->showHotspotErrorDialog(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 305
    :cond_12
    const-string v23, "android.intent.action.WIFI_AP_ENABLE_WARNING"

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 306
    const/16 v23, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApBroadcastReceiver;->showHotspotErrorDialog(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 216
    .restart local v8       #cr:Landroid/content/ContentResolver;
    .restart local v12       #mStopService:Landroid/os/PowerManager$WakeLock;
    .restart local v13       #msg:Landroid/os/Message;
    .restart local v14       #num:I
    .restart local v15       #option:I
    .restart local v18       #pm:Landroid/os/PowerManager;
    .restart local v19       #powermode_value:I
    .restart local v20       #wifiApState:I
    .restart local v21       #wifiSavedState:I
    .restart local v22       #wm:Landroid/net/wifi/WifiManager;
    :catch_4
    move-exception v23

    goto/16 :goto_3

    .line 94
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method showTimeoutNotification(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const v7, 0x7f090352

    const/4 v6, 0x0

    .line 420
    const v1, 0x108008a

    .line 421
    .local v1, icon:I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 423
    .local v4, title:Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.android.settings_ex.wifi.mobileap.TURNOFF_HOTSPOT"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 424
    .local v3, notificationIntent:Landroid/content/Intent;
    invoke-static {p1, v6, v3, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 426
    .local v0, contentIntent:Landroid/app/PendingIntent;
    new-instance v2, Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v2, v1, v4, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 427
    .local v2, notification:Landroid/app/Notification;
    const/4 v5, 0x0

    invoke-virtual {v2, p1, v4, v5, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 429
    iget-object v5, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v5, :cond_0

    .line 430
    const-string v5, "notification"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    iput-object v5, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    .line 431
    :cond_0
    iget-object v5, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v5, v7, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 432
    return-void
.end method
