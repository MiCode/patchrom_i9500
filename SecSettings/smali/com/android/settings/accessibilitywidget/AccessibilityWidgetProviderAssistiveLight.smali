.class public Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;
.super Landroid/appwidget/AppWidgetProvider;
.source "AccessibilityWidgetProviderAssistiveLight.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight$SettingsBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final BUTTON_CENTER:I = 0x1

.field private static final EXPIRED_TIMER:I = 0x0

.field private static final KEY_FLASH_NOTIFICATION_ENABLED:Ljava/lang/String; = "key_flash_notitification_eabled"

.field private static final LOW_BATTERY_FLASH_TIME:I = 0xbb8

.field static final TAG:Ljava/lang/String; = "AccessibilityWidgetProviderAssistiveLight"

.field static final THIS_APPWIDGET:Landroid/content/ComponentName;

.field private static final mHandler:Landroid/os/Handler;

.field private static mStaticBatteryCharging:Z

.field private static mStaticBatteryLevel:I

.field private static sBroadcastReceiver:Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight$SettingsBroadcastReceiver;


# instance fields
.field private mAssistiveNotification:Landroid/app/Notification;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 61
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.settings_ex"

    const-string v2, "com.android.settings_ex.accessibilitywidget.AccessibilityWidgetProviderAssistiveLight"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->THIS_APPWIDGET:Landroid/content/ComponentName;

    .line 70
    const/16 v0, 0x64

    sput v0, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->mStaticBatteryLevel:I

    .line 71
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->mStaticBatteryCharging:Z

    .line 76
    new-instance v0, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight$1;

    invoke-direct {v0}, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight$1;-><init>()V

    sput-object v0, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 376
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 58
    sget v0, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->mStaticBatteryLevel:I

    return v0
.end method

.method static synthetic access$002(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    sput p0, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->mStaticBatteryLevel:I

    return p0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    sput-boolean p0, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->mStaticBatteryCharging:Z

    return p0
.end method

.method static synthetic access$200()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Landroid/content/Context;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-static {p0}, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->getWidgetMode(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;
    .locals 3
    .parameter "context"

    .prologue
    .line 145
    const/4 v0, 0x0

    .line 147
    .local v0, views:Landroid/widget/RemoteViews;
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/settings_ex/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 149
    new-instance v0, Landroid/widget/RemoteViews;

    .end local v0           #views:Landroid/widget/RemoteViews;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f040003

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 150
    .restart local v0       #views:Landroid/widget/RemoteViews;
    const-string v1, "AccessibilityWidgetProviderAssistiveLight"

    const-string v2, "buildUpdate PORTRAIT"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :goto_0
    const v1, 0x7f0b000e

    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 159
    invoke-static {v0, p0}, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->updateButtons(Landroid/widget/RemoteViews;Landroid/content/Context;)V

    .line 160
    return-object v0

    .line 153
    :cond_0
    new-instance v0, Landroid/widget/RemoteViews;

    .end local v0           #views:Landroid/widget/RemoteViews;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f040002

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 154
    .restart local v0       #views:Landroid/widget/RemoteViews;
    const-string v1, "AccessibilityWidgetProviderAssistiveLight"

    const-string v2, "buildUpdate LANDSCAPE"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static checkBroadcastReceiver(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 370
    sget-object v0, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->sBroadcastReceiver:Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight$SettingsBroadcastReceiver;

    if-nez v0, :cond_0

    .line 371
    new-instance v0, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight$SettingsBroadcastReceiver;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight$SettingsBroadcastReceiver;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->sBroadcastReceiver:Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight$SettingsBroadcastReceiver;

    .line 372
    sget-object v0, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->sBroadcastReceiver:Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight$SettingsBroadcastReceiver;

    invoke-virtual {v0}, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight$SettingsBroadcastReceiver;->registerBroadcastReceiver()V

    .line 374
    :cond_0
    return-void
.end method

.method private static getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 5
    .parameter "context"
    .parameter "buttonId"

    .prologue
    const/4 v4, 0x0

    .line 221
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 222
    .local v0, launchIntent:Landroid/content/Intent;
    const-class v2, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 223
    const-string v2, "android.intent.category.ALTERNATIVE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "custom:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 225
    invoke-static {p0, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 232
    .local v1, pi:Landroid/app/PendingIntent;
    return-object v1
.end method

.method private static getWidgetMode(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 362
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "torch_light"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 364
    .local v0, result:Z
    :cond_0
    const-string v1, "AccessibilityWidgetProviderAssistiveLight"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWidgetMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    return v0
.end method

.method private toggleWidgetMode(Landroid/content/Context;)V
    .locals 11
    .parameter "context"

    .prologue
    .line 292
    const-string v7, "AccessibilityWidgetProviderAssistiveLight"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "toggleWidgetMode() Static Battery Level : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->mStaticBatteryLevel:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    const-string v7, "prefs"

    const/4 v8, 0x0

    invoke-virtual {p1, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 296
    .local v6, preferences:Landroid/content/SharedPreferences;
    invoke-static {p1}, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->getWidgetMode(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 297
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "torch_light"

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 299
    const/4 v7, 0x1

    :try_start_0
    invoke-static {v7}, Lcom/sec/android/hardware/SecHardwareInterface;->setTorchLight(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    :goto_0
    sget v7, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->mStaticBatteryLevel:I

    const/4 v8, 0x5

    if-gt v7, v8, :cond_0

    sget-boolean v7, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->mStaticBatteryCharging:Z

    if-nez v7, :cond_0

    .line 305
    sget-object v7, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->mHandler:Landroid/os/Handler;

    sget-object v8, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    const-wide/16 v9, 0xbb8

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 310
    :cond_0
    const-string v7, "notification"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 312
    .local v4, notificationManager:Landroid/app/NotificationManager;
    iget-object v7, p0, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->mAssistiveNotification:Landroid/app/Notification;

    if-nez v7, :cond_1

    .line 313
    new-instance v7, Landroid/app/Notification;

    invoke-direct {v7}, Landroid/app/Notification;-><init>()V

    iput-object v7, p0, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->mAssistiveNotification:Landroid/app/Notification;

    .line 314
    iget-object v7, p0, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->mAssistiveNotification:Landroid/app/Notification;

    const v8, 0x7f0203dd

    iput v8, v7, Landroid/app/Notification;->icon:I

    .line 315
    iget-object v7, p0, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->mAssistiveNotification:Landroid/app/Notification;

    const-wide/16 v8, 0x0

    iput-wide v8, v7, Landroid/app/Notification;->when:J

    .line 316
    iget-object v7, p0, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->mAssistiveNotification:Landroid/app/Notification;

    const/4 v8, 0x2

    iput v8, v7, Landroid/app/Notification;->flags:I

    .line 317
    iget-object v7, p0, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->mAssistiveNotification:Landroid/app/Notification;

    const v8, 0x7f090b3c

    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 320
    :cond_1
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.intent.action.ACTION_ASSISTIVE_OFF"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 321
    .local v3, mIntent:Landroid/content/Intent;
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {p1, v7, v3, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 322
    .local v5, pi:Landroid/app/PendingIntent;
    iget-object v7, p0, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->mAssistiveNotification:Landroid/app/Notification;

    const v8, 0x7f090b3c

    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f090b3d

    invoke-virtual {p1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, p1, v8, v9, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 324
    iget-object v7, p0, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->mAssistiveNotification:Landroid/app/Notification;

    iget v7, v7, Landroid/app/Notification;->icon:I

    iget-object v8, p0, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->mAssistiveNotification:Landroid/app/Notification;

    invoke-virtual {v4, v7, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 326
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "flash_notification"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 328
    .local v2, flashNotification:I
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 329
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v7, "key_flash_notitification_eabled"

    invoke-interface {v1, v7, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 330
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 332
    const/4 v7, 0x1

    if-ne v2, v7, :cond_2

    .line 333
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "flash_notification"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 356
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v3           #mIntent:Landroid/content/Intent;
    .end local v5           #pi:Landroid/app/PendingIntent;
    :cond_2
    :goto_1
    const-string v7, "AccessibilityWidgetProviderAssistiveLight"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "toggleWidgetMode : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p1}, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->getWidgetMode(Landroid/content/Context;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    return-void

    .line 300
    .end local v2           #flashNotification:I
    .end local v4           #notificationManager:Landroid/app/NotificationManager;
    :catch_0
    move-exception v0

    .line 301
    .local v0, e:Ljava/lang/Exception;
    const-string v7, "AccessibilityWidgetProviderAssistiveLight"

    const-string v8, "could not turn off torch light"

    invoke-static {v7, v8, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 336
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "torch_light"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 338
    const/4 v7, 0x0

    :try_start_1
    invoke-static {v7}, Lcom/sec/android/hardware/SecHardwareInterface;->setTorchLight(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 343
    :goto_2
    sget-object v7, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 345
    const-string v7, "AccessibilityWidgetProviderAssistiveLight"

    const-string v8, "toggleWidgetMode() : cancel Timer"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    const-string v7, "notification"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 348
    .restart local v4       #notificationManager:Landroid/app/NotificationManager;
    const v7, 0x7f0203dd

    invoke-virtual {v4, v7}, Landroid/app/NotificationManager;->cancel(I)V

    .line 350
    const-string v7, "key_flash_notitification_eabled"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 352
    .restart local v2       #flashNotification:I
    const/4 v7, 0x1

    if-ne v2, v7, :cond_2

    .line 353
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "flash_notification"

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 339
    .end local v2           #flashNotification:I
    .end local v4           #notificationManager:Landroid/app/NotificationManager;
    :catch_1
    move-exception v0

    .line 340
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v7, "AccessibilityWidgetProviderAssistiveLight"

    const-string v8, "could not turn off torch light"

    invoke-static {v7, v8, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private static updateButtons(Landroid/widget/RemoteViews;Landroid/content/Context;)V
    .locals 9
    .parameter "views"
    .parameter "context"

    .prologue
    const v8, 0x7f090b38

    const/4 v7, 0x1

    const v4, 0x7f0b0010

    const v6, 0x7f0b000e

    const/4 v5, 0x0

    .line 188
    invoke-virtual {p0, v6, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 189
    const v2, 0x7f090dda

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v4, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 191
    invoke-static {p1}, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->getWidgetMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 192
    const v2, 0x7f0b0011

    const v3, 0x7f02000c

    invoke-virtual {p0, v2, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 193
    const-string v0, "#A4FF21"

    .line 194
    .local v0, strColor:Ljava/lang/String;
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v4, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 196
    const v2, 0x7f090b3e

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 197
    .local v1, strTalkback:Ljava/lang/String;
    invoke-virtual {p0, v6, v1}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 199
    const-string v2, "AccessibilityWidgetProviderAssistiveLight"

    const-string v3, "updateButtons , icon_on"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :goto_0
    return-void

    .line 202
    .end local v0           #strColor:Ljava/lang/String;
    .end local v1           #strTalkback:Ljava/lang/String;
    :cond_0
    const v2, 0x7f0b0011

    const v3, 0x7f020009

    invoke-virtual {p0, v2, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 203
    const-string v0, "#979797"

    .line 204
    .restart local v0       #strColor:Ljava/lang/String;
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v4, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 205
    const-string v2, "AccessibilityWidgetProviderAssistiveLight"

    const-string v3, "updateButtons , icon_off"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    const v2, 0x7f090b3f

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 208
    .restart local v1       #strTalkback:Ljava/lang/String;
    invoke-virtual {p0, v6, v1}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static updateWidget(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 169
    invoke-static {p0}, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 172
    .local v1, views:Landroid/widget/RemoteViews;
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 173
    .local v0, gm:Landroid/appwidget/AppWidgetManager;
    const-string v2, "AccessibilityWidgetProviderAssistiveLight"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateWidget : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->THIS_APPWIDGET:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    sget-object v2, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->THIS_APPWIDGET:Landroid/content/ComponentName;

    invoke-virtual {v0, v2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 175
    invoke-static {p0}, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->checkBroadcastReceiver(Landroid/content/Context;)V

    .line 176
    return-void
.end method


# virtual methods
.method public onDeleted(Landroid/content/Context;[I)V
    .locals 5
    .parameter "context"
    .parameter "appWidgetIds"

    .prologue
    const/4 v4, 0x0

    .line 125
    invoke-static {p1}, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->getWidgetMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 126
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "torch_light"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 128
    const/4 v2, 0x0

    :try_start_0
    invoke-static {v2}, Lcom/sec/android/hardware/SecHardwareInterface;->setTorchLight(I)V

    .line 130
    invoke-static {p1}, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->updateWidget(Landroid/content/Context;)V

    .line 132
    const-string v2, "notification"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 133
    .local v1, notificationManager:Landroid/app/NotificationManager;
    const v2, 0x7f0203dd

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .end local v1           #notificationManager:Landroid/app/NotificationManager;
    :cond_0
    :goto_0
    return-void

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "AccessibilityWidgetProviderAssistiveLight"

    const-string v3, "could not turn off torch light"

    invoke-static {v2, v3, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onDisabled(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 116
    sget-object v0, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->sBroadcastReceiver:Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight$SettingsBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 117
    sget-object v0, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->sBroadcastReceiver:Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight$SettingsBroadcastReceiver;

    invoke-virtual {v0}, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight$SettingsBroadcastReceiver;->unregisterBroadcastReceiver()V

    .line 118
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->sBroadcastReceiver:Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight$SettingsBroadcastReceiver;

    .line 121
    :cond_0
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 110
    invoke-static {p1}, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->checkBroadcastReceiver(Landroid/content/Context;)V

    .line 111
    const/16 v0, 0x64

    sput v0, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->mStaticBatteryLevel:I

    .line 112
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const v10, 0x7f090b3c

    const v8, 0x7f0203dd

    const/4 v9, 0x0

    .line 243
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 245
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 247
    .local v0, action:Ljava/lang/String;
    const-string v6, "android.intent.category.ALTERNATIVE"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 248
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 249
    .local v2, data:Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 250
    .local v1, buttonId:I
    const/4 v6, 0x1

    if-ne v1, v6, :cond_0

    .line 251
    const-string v6, "AccessibilityWidgetProviderAssistiveLight"

    const-string v7, "BUTTON_CENTER : "

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    invoke-direct {p0, p1}, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->toggleWidgetMode(Landroid/content/Context;)V

    .line 287
    :cond_0
    invoke-static {p1}, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->updateWidget(Landroid/content/Context;)V

    .line 288
    .end local v1           #buttonId:I
    .end local v2           #data:Landroid/net/Uri;
    :cond_1
    :goto_0
    return-void

    .line 256
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 257
    invoke-static {p1}, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->getWidgetMode(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 258
    const-string v6, "notification"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 259
    .local v4, notificationManager:Landroid/app/NotificationManager;
    invoke-virtual {v4, v8}, Landroid/app/NotificationManager;->cancel(I)V

    .line 261
    iget-object v6, p0, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->mAssistiveNotification:Landroid/app/Notification;

    if-nez v6, :cond_3

    .line 262
    new-instance v6, Landroid/app/Notification;

    invoke-direct {v6}, Landroid/app/Notification;-><init>()V

    iput-object v6, p0, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->mAssistiveNotification:Landroid/app/Notification;

    .line 263
    iget-object v6, p0, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->mAssistiveNotification:Landroid/app/Notification;

    iput v8, v6, Landroid/app/Notification;->icon:I

    .line 264
    iget-object v6, p0, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->mAssistiveNotification:Landroid/app/Notification;

    const-wide/16 v7, 0x0

    iput-wide v7, v6, Landroid/app/Notification;->when:J

    .line 265
    iget-object v6, p0, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->mAssistiveNotification:Landroid/app/Notification;

    const/4 v7, 0x2

    iput v7, v6, Landroid/app/Notification;->flags:I

    .line 266
    iget-object v6, p0, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->mAssistiveNotification:Landroid/app/Notification;

    invoke-virtual {p1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 269
    :cond_3
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.ACTION_ASSISTIVE_OFF"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 270
    .local v3, mIntent:Landroid/content/Intent;
    invoke-static {p1, v9, v3, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 271
    .local v5, pi:Landroid/app/PendingIntent;
    iget-object v6, p0, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->mAssistiveNotification:Landroid/app/Notification;

    invoke-virtual {p1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f090b3d

    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, p1, v7, v8, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 273
    iget-object v6, p0, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->mAssistiveNotification:Landroid/app/Notification;

    iget v6, v6, Landroid/app/Notification;->icon:I

    iget-object v7, p0, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->mAssistiveNotification:Landroid/app/Notification;

    invoke-virtual {v4, v6, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 276
    .end local v3           #mIntent:Landroid/content/Intent;
    .end local v4           #notificationManager:Landroid/app/NotificationManager;
    .end local v5           #pi:Landroid/app/PendingIntent;
    :cond_4
    const-string v6, "android.intent.action.ACTION_ASSISTIVE_OFF_WIDGETUPDATE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 277
    invoke-static {p1}, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->updateWidget(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 5
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 100
    const-string v2, "AccessibilityWidgetProviderAssistiveLight"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onUpdate, appWidgetIds.length : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-static {p1}, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 103
    .local v1, view:Landroid/widget/RemoteViews;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p3

    if-ge v0, v2, :cond_0

    .line 104
    aget v2, p3, v0

    invoke-virtual {p2, v2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 106
    :cond_0
    return-void
.end method
