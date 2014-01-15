.class public Lcom/android/settings_ex/wifi/WifiTimerService;
.super Landroid/app/Service;
.source "WifiTimerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/wifi/WifiTimerService$SheduleHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiTimer"

.field public static final WIFI_TIMER_ACTION_TYPE:Ljava/lang/String; = "com.android.settings_ex.wifi.wifisheduler_action_type"

.field public static final WIFI_TIMER_ACTION_TYPE_ALARM_TRIGGERED:I = 0x138c

.field public static final WIFI_TIMER_ACTION_TYPE_BOOT_COMPLETED:I = 0x138b

.field public static final WIFI_TIMER_ACTION_TYPE_ENABLE:I = 0x1389

.field public static final WIFI_TIMER_ACTION_TYPE_SHEDULE_CHANGED:I = 0x138a

.field public static final WIFI_TIMER_ACTION_TYPE_START_ACTIVITY:I = 0x138d

.field public static final WIFI_TIMER_ALARM:Ljava/lang/String; = "com.android.settings_ex.wifi.wifitimer_alarm"

.field public static final WIFI_TIMER_ALARM_TYPE:Ljava/lang/String; = "wifisheduler_alarm_type"

.field public static final WIFI_TIMER_NEW:I = 0x3eb

.field public static final WIFI_TIMER_START:I = 0x3e9

.field private static final WIFI_TIMER_START_REQUEST_ID:I = 0x7d1

.field public static final WIFI_TIMER_STOP:I = 0x3ea

.field private static final WIFI_TIMER_STOP_REQUEST_ID:I = 0x7d2


# instance fields
.field mContext:Landroid/content/Context;

.field private mSharedPref:Landroid/content/SharedPreferences;

.field private mSheduleHandler:Lcom/android/settings_ex/wifi/WifiTimerService$SheduleHandler;

.field private mSheduleHandlerThread:Ljava/lang/Thread;

.field final wifiOffNotificationIcon:I

.field final wifiOnNotificationIcon:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const v0, 0x7f0203e1

    .line 27
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 47
    iput v0, p0, Lcom/android/settings_ex/wifi/WifiTimerService;->wifiOnNotificationIcon:I

    .line 48
    iput v0, p0, Lcom/android/settings_ex/wifi/WifiTimerService;->wifiOffNotificationIcon:I

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/wifi/WifiTimerService;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiTimerService;->mSharedPref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/wifi/WifiTimerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiTimerService;->cancelAllAlarms()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/wifi/WifiTimerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiTimerService;->sheduleAllAlarms()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ex/wifi/WifiTimerService;Ljava/lang/Boolean;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/android/settings_ex/wifi/WifiTimerService;->enableWifi(Ljava/lang/Boolean;)V

    return-void
.end method

.method private cancelAlarm()V
    .locals 6

    .prologue
    .line 226
    const-string v3, "WifiTimer"

    const-string v4, "cancelAlarm"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.settings_ex.wifi.wifitimer_alarm"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 228
    .local v0, alarm_intent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const/high16 v5, 0x4000

    invoke-static {v3, v4, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 230
    .local v2, pending:Landroid/app/PendingIntent;
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiTimerService;->mContext:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 231
    .local v1, am:Landroid/app/AlarmManager;
    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 232
    return-void
.end method

.method private cancelAllAlarms()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 143
    const-string v4, "WifiTimer"

    const-string v5, "cancelAllAlarm"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.android.settings_ex.wifi.wifitimer_alarm"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 145
    .local v0, alarm_intent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/16 v5, 0x7d1

    invoke-static {v4, v5, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 147
    .local v2, startPending:Landroid/app/PendingIntent;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/16 v5, 0x7d2

    invoke-static {v4, v5, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 149
    .local v3, stopPending:Landroid/app/PendingIntent;
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiTimerService;->mContext:Landroid/content/Context;

    const-string v5, "alarm"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 150
    .local v1, am:Landroid/app/AlarmManager;
    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 151
    invoke-virtual {v1, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 152
    return-void
.end method

.method private cancelStartAlarms()V
    .locals 6

    .prologue
    .line 155
    const-string v3, "WifiTimer"

    const-string v4, "cancelStartAlarm"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.settings_ex.wifi.wifitimer_alarm"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 157
    .local v0, alarm_intent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x7d1

    const/4 v5, 0x0

    invoke-static {v3, v4, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 159
    .local v2, startPending:Landroid/app/PendingIntent;
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiTimerService;->mContext:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 160
    .local v1, am:Landroid/app/AlarmManager;
    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 161
    return-void
.end method

.method private cancelStopAlarms()V
    .locals 6

    .prologue
    .line 164
    const-string v3, "WifiTimer"

    const-string v4, "cancelStopAlarm"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.settings_ex.wifi.wifitimer_alarm"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 166
    .local v0, alarm_intent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x7d2

    const/4 v5, 0x0

    invoke-static {v3, v4, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 168
    .local v2, stopPending:Landroid/app/PendingIntent;
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiTimerService;->mContext:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 169
    .local v1, am:Landroid/app/AlarmManager;
    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 170
    return-void
.end method

.method private enableWifi(Ljava/lang/Boolean;)V
    .locals 7
    .parameter "enable"

    .prologue
    .line 235
    const-string v4, "WifiTimer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enableWifi "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 238
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiTimerService;->mContext:Landroid/content/Context;

    const-string v5, "device_policy"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 239
    .local v1, dpm:Landroid/app/admin/DevicePolicyManager;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/app/admin/DevicePolicyManager;->getAllowWifi(Landroid/content/ComponentName;)Z

    move-result v0

    .line 240
    .local v0, allowWifi:Z
    if-nez v0, :cond_0

    .line 241
    const-string v4, "WifiTimer"

    const-string v5, "Wi-Fi is not allowed (Policy)"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    .end local v0           #allowWifi:Z
    .end local v1           #dpm:Landroid/app/admin/DevicePolicyManager;
    :goto_0
    return-void

    .line 246
    :cond_0
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiTimerService;->mContext:Landroid/content/Context;

    const-string v5, "wifi"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 247
    .local v3, mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 248
    invoke-direct {p0, p1}, Lcom/android/settings_ex/wifi/WifiTimerService;->showNotification(Ljava/lang/Boolean;)V

    .line 250
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiTimerService;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 251
    .local v2, ed:Landroid/content/SharedPreferences$Editor;
    const-string v4, "wifitimer_wifi_start"

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 252
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private sheduleAllAlarms()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 132
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiTimerService;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "wifitimer_start_time_checked"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiTimerService;->wifiStartAlarm()V

    .line 136
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiTimerService;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "wifitimer_end_time_checked"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiTimerService;->wifiStopAlarm()V

    .line 140
    :goto_1
    return-void

    .line 135
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiTimerService;->cancelStartAlarms()V

    goto :goto_0

    .line 139
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiTimerService;->cancelStopAlarms()V

    goto :goto_1
.end method

.method private showNotification(Ljava/lang/Boolean;)V
    .locals 13
    .parameter "enable"

    .prologue
    const v12, 0x7f09034b

    const/16 v11, 0x138d

    const/16 v10, 0x10

    const/4 v9, 0x0

    const v8, 0x7f0203e1

    .line 256
    const-string v5, "WifiTimer"

    const-string v6, "showNotification"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    const-string v5, "notification"

    invoke-virtual {p0, v5}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 258
    .local v1, mNM:Landroid/app/NotificationManager;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_0

    .line 259
    invoke-virtual {v1, v8}, Landroid/app/NotificationManager;->cancel(I)V

    .line 261
    new-instance v3, Landroid/app/Notification;

    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiTimerService;->mContext:Landroid/content/Context;

    const v6, 0x7f09034c

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v3, v8, v5, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 264
    .local v3, wifiOffNotification:Landroid/app/Notification;
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.android.settings_ex.wifi.wifitimer_alarm"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 265
    .local v2, notificationIntent:Landroid/content/Intent;
    const-string v5, "com.android.settings_ex.wifi.wifisheduler_action_type"

    invoke-virtual {v2, v5, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 266
    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiTimerService;->mContext:Landroid/content/Context;

    invoke-static {v5, v9, v2, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 267
    .local v0, contentIntent:Landroid/app/PendingIntent;
    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiTimerService;->mContext:Landroid/content/Context;

    const v6, 0x7f09034c

    invoke-virtual {p0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    const v7, 0x7f09034d

    invoke-virtual {p0, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v3, v5, v6, v7, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 271
    iput v10, v3, Landroid/app/Notification;->flags:I

    .line 272
    invoke-virtual {v1, v8, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 288
    .end local v3           #wifiOffNotification:Landroid/app/Notification;
    :goto_0
    return-void

    .line 274
    .end local v0           #contentIntent:Landroid/app/PendingIntent;
    .end local v2           #notificationIntent:Landroid/content/Intent;
    :cond_0
    invoke-virtual {v1, v8}, Landroid/app/NotificationManager;->cancel(I)V

    .line 275
    new-instance v4, Landroid/app/Notification;

    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiTimerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v12}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v4, v8, v5, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 278
    .local v4, wifiOnNotification:Landroid/app/Notification;
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.android.settings_ex.wifi.wifitimer_alarm"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 279
    .restart local v2       #notificationIntent:Landroid/content/Intent;
    const-string v5, "com.android.settings_ex.wifi.wifisheduler_action_type"

    invoke-virtual {v2, v5, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 280
    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiTimerService;->mContext:Landroid/content/Context;

    invoke-static {v5, v9, v2, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 281
    .restart local v0       #contentIntent:Landroid/app/PendingIntent;
    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiTimerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v12}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    const v7, 0x7f09034d

    invoke-virtual {p0, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 285
    iput v10, v4, Landroid/app/Notification;->flags:I

    .line 286
    invoke-virtual {v1, v8, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method private wifiStartAlarm()V
    .locals 12

    .prologue
    const/4 v1, 0x0

    .line 173
    const-string v2, "WifiTimer"

    const-string v3, "wifiStartAlarm"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    .line 176
    .local v8, cal:Ljava/util/Calendar;
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiTimerService;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v3, "wifitimer_start_time"

    const-string v4, "19:00"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 177
    .local v9, startTime:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/settings_ex/wifi/WifiTimer;->getHour(Ljava/lang/String;)I

    move-result v10

    .line 178
    .local v10, startTimeHour:I
    invoke-static {v9}, Lcom/android/settings_ex/wifi/WifiTimer;->getMinute(Ljava/lang/String;)I

    move-result v11

    .line 180
    .local v11, startTimeMinute:I
    const-string v2, "WifiTimer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "StartTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const/16 v2, 0xb

    invoke-virtual {v8, v2, v10}, Ljava/util/Calendar;->set(II)V

    .line 182
    const/16 v2, 0xc

    invoke-virtual {v8, v2, v11}, Ljava/util/Calendar;->set(II)V

    .line 183
    const/16 v2, 0xd

    invoke-virtual {v8, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 184
    const/16 v2, 0xe

    invoke-virtual {v8, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 185
    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 186
    const-string v2, "WifiTimer"

    const-string v3, "Add one day"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const/4 v2, 0x6

    const/4 v3, 0x1

    invoke-virtual {v8, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 189
    :cond_0
    const-string v2, "WifiTimer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SystemTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const-string v2, "WifiTimer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SheduledTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    new-instance v7, Landroid/content/Intent;

    const-string v2, "com.android.settings_ex.wifi.wifitimer_alarm"

    invoke-direct {v7, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 192
    .local v7, alarm_intent:Landroid/content/Intent;
    const-string v2, "com.android.settings_ex.wifi.wifisheduler_action_type"

    const/16 v3, 0x138c

    invoke-virtual {v7, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 193
    const-string v2, "wifisheduler_alarm_type"

    const/16 v3, 0x3e9

    invoke-virtual {v7, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 194
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x7d1

    const/high16 v4, 0x800

    invoke-static {v2, v3, v7, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 196
    .local v6, pending:Landroid/app/PendingIntent;
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiTimerService;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 197
    .local v0, am:Landroid/app/AlarmManager;
    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 198
    return-void
.end method

.method private wifiStopAlarm()V
    .locals 12

    .prologue
    const/4 v1, 0x0

    .line 201
    const-string v2, "WifiTimer"

    const-string v3, "wifiStopAlarm"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    .line 204
    .local v8, cal:Ljava/util/Calendar;
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiTimerService;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v3, "wifitimer_end_time"

    const-string v4, "21:00"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 205
    .local v9, endTime:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/settings_ex/wifi/WifiTimer;->getHour(Ljava/lang/String;)I

    move-result v10

    .line 206
    .local v10, endTimeHour:I
    invoke-static {v9}, Lcom/android/settings_ex/wifi/WifiTimer;->getMinute(Ljava/lang/String;)I

    move-result v11

    .line 208
    .local v11, endTimeMinute:I
    const/16 v2, 0xb

    invoke-virtual {v8, v2, v10}, Ljava/util/Calendar;->set(II)V

    .line 209
    const/16 v2, 0xc

    invoke-virtual {v8, v2, v11}, Ljava/util/Calendar;->set(II)V

    .line 210
    const/16 v2, 0xd

    invoke-virtual {v8, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 211
    const/16 v2, 0xe

    invoke-virtual {v8, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 212
    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 213
    const/4 v2, 0x6

    const/4 v3, 0x1

    invoke-virtual {v8, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 215
    :cond_0
    new-instance v7, Landroid/content/Intent;

    const-string v2, "com.android.settings_ex.wifi.wifitimer_alarm"

    invoke-direct {v7, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 216
    .local v7, alarm_intent:Landroid/content/Intent;
    const-string v2, "com.android.settings_ex.wifi.wifisheduler_action_type"

    const/16 v3, 0x138c

    invoke-virtual {v7, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 217
    const-string v2, "wifisheduler_alarm_type"

    const/16 v3, 0x3ea

    invoke-virtual {v7, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 218
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x7d2

    const/high16 v4, 0x800

    invoke-static {v2, v3, v7, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 220
    .local v6, pending:Landroid/app/PendingIntent;
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiTimerService;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 221
    .local v0, am:Landroid/app/AlarmManager;
    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 222
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 84
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 58
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SheduleHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiTimerService;->mSheduleHandlerThread:Ljava/lang/Thread;

    .line 59
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiTimerService;->mSheduleHandlerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 60
    new-instance v1, Lcom/android/settings_ex/wifi/WifiTimerService$SheduleHandler;

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiTimerService;->mSheduleHandlerThread:Ljava/lang/Thread;

    check-cast v0, Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/android/settings_ex/wifi/WifiTimerService$SheduleHandler;-><init>(Lcom/android/settings_ex/wifi/WifiTimerService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiTimerService;->mSheduleHandler:Lcom/android/settings_ex/wifi/WifiTimerService$SheduleHandler;

    .line 62
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiTimerService;->mContext:Landroid/content/Context;

    .line 63
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiTimerService;->mContext:Landroid/content/Context;

    const-string v1, "wifitimer_pref"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiTimerService;->mSharedPref:Landroid/content/SharedPreferences;

    .line 65
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 66
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 89
    const-string v0, "WifiTimer"

    const-string v1, "Service Destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiTimerService;->mSheduleHandler:Lcom/android/settings_ex/wifi/WifiTimerService$SheduleHandler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 91
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 70
    const-string v1, "WifiTimer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiTimerService;->mSheduleHandler:Lcom/android/settings_ex/wifi/WifiTimerService$SheduleHandler;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 73
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiTimerService;->mSheduleHandler:Lcom/android/settings_ex/wifi/WifiTimerService$SheduleHandler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 74
    .local v0, msg:Landroid/os/Message;
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 75
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 76
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 77
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiTimerService;->mSheduleHandler:Lcom/android/settings_ex/wifi/WifiTimerService$SheduleHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 79
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method
