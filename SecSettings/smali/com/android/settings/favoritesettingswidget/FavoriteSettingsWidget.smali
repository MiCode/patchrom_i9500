.class public Lcom/android/settings_ex/favoritesettingswidget/FavoriteSettingsWidget;
.super Landroid/appwidget/AppWidgetProvider;
.source "FavoriteSettingsWidget.java"


# static fields
.field private static final BUTTON_ACCOUNT_AND_SYNC:I = 0x8

.field private static final BUTTON_BATTERY:I = 0x6

.field private static final BUTTON_BRIGHTNESS:I = 0x7

.field private static final BUTTON_DATA_USAGE:I = 0x5

.field private static final BUTTON_FONT_SIZE:I = 0x4

.field private static final BUTTON_RINGTONE:I = 0x1

.field private static final BUTTON_SETTINGS:I = 0x9

.field private static final BUTTON_VOLUME:I = 0x3

.field private static final BUTTON_WALLPAPER:I = 0x2

.field private static final FLAG_ACTIVITY:I = 0x38000000

.field private static final TAG:Ljava/lang/String; = "FavoriteSettingsWidget"

.field static final THIS_APPWIDGET:Landroid/content/ComponentName;

.field private static mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 25
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.settings_ex"

    const-string v2, "com.android.settings_ex.favoritesettingswidget.FavoriteSettingsWidget"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings_ex/favoritesettingswidget/FavoriteSettingsWidget;->THIS_APPWIDGET:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method static buildUpdate(Landroid/content/Context;I)Landroid/widget/RemoteViews;
    .locals 24
    .parameter "context"
    .parameter "appWidgetId"

    .prologue
    .line 67
    new-instance v16, Landroid/widget/RemoteViews;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v21

    const v22, 0x7f040073

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 69
    .local v16, views:Landroid/widget/RemoteViews;
    invoke-static/range {p0 .. p0}, Lcom/android/settings_ex/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v21

    if-nez v21, :cond_0

    .line 70
    const v21, 0x7f0b014f

    const v22, 0x7f09116f

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v16

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 74
    :cond_0
    new-instance v12, Landroid/content/Intent;

    const-class v21, Lcom/android/settings_ex/SoundSettings;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v12, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 75
    .local v12, ringtoneIntent:Landroid/content/Intent;
    const-string v21, "1"

    invoke-static/range {v21 .. v21}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 76
    const/high16 v21, 0x3800

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 77
    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v12, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    .line 78
    .local v13, ringtonePendingIntent:Landroid/app/PendingIntent;
    const v21, 0x7f0b014d

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1, v13}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 81
    new-instance v19, Landroid/content/Intent;

    const-class v21, Lcom/android/settings_ex/LockScreenWallpaper;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 82
    .local v19, wallpaperIntent:Landroid/content/Intent;
    const-string v21, "android.intent.action.MAIN"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    const-string v21, "direct_wallpaper"

    const/16 v22, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 84
    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v19

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v20

    .line 85
    .local v20, wallpaperPendingIntent:Landroid/app/PendingIntent;
    const v21, 0x7f0b0150

    move-object/from16 v0, v16

    move/from16 v1, v21

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 88
    new-instance v17, Landroid/content/Intent;

    const-class v21, Lcom/android/settings_ex/SoundSettings;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 89
    .local v17, volumeIntent:Landroid/content/Intent;
    const-string v21, "3"

    invoke-static/range {v21 .. v21}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 90
    const/high16 v21, 0x3800

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 91
    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v17

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v18

    .line 92
    .local v18, volumePendingIntent:Landroid/app/PendingIntent;
    const v21, 0x7f0b0153

    move-object/from16 v0, v16

    move/from16 v1, v21

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 95
    new-instance v10, Landroid/content/Intent;

    const-class v21, Lcom/android/settings_ex/DisplaySettings;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v10, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 96
    .local v10, fontsizeIntent:Landroid/content/Intent;
    const-string v21, "4"

    invoke-static/range {v21 .. v21}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 97
    const/high16 v21, 0x3800

    move/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 98
    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v10, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    .line 99
    .local v11, fontsizePendingIntent:Landroid/app/PendingIntent;
    const v21, 0x7f0b0157

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1, v11}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 102
    new-instance v8, Landroid/content/Intent;

    const-string v21, "android.intent.action.MAIN"

    move-object/from16 v0, v21

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 103
    .local v8, dataUsageIntent:Landroid/content/Intent;
    const-string v21, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    new-instance v21, Landroid/content/ComponentName;

    const-string v22, "com.android.settings_ex"

    const-string v23, "com.android.settings_ex.Settings$DataUsageSummaryActivity"

    invoke-direct/range {v21 .. v23}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 106
    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v8, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 107
    .local v9, dataUsagePendingIntent:Landroid/app/PendingIntent;
    const v21, 0x7f0b015a

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1, v9}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 110
    new-instance v6, Landroid/content/Intent;

    const-class v21, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v6, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 111
    .local v6, batteryIntent:Landroid/content/Intent;
    const-string v21, "android.intent.action.MAIN"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v6, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 113
    .local v7, batteryPendingIntent:Landroid/app/PendingIntent;
    const v21, 0x7f0b015d

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1, v7}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 116
    const v21, 0x7f0b0161

    const/16 v22, 0x0

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/android/settings_ex/favoritesettingswidget/FavoriteSettingsWidget;->getLaunchPendingIntent(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object v22

    move-object/from16 v0, v16

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 119
    new-instance v4, Landroid/content/Intent;

    const-class v21, Lcom/android/settings_ex/accounts/AddAccountSettings;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v4, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 120
    .local v4, accountIntent:Landroid/content/Intent;
    const-string v21, "android.settings.ADD_ACCOUNT_SETTINGS"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v4, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 122
    .local v5, accountPendingIntent:Landroid/app/PendingIntent;
    const v21, 0x7f0b0164

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 125
    new-instance v14, Landroid/content/Intent;

    const-class v21, Lcom/android/settings_ex/Settings;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v14, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 126
    .local v14, settingsIntent:Landroid/content/Intent;
    const-string v21, "android.intent.action.MAIN"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v14, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v15

    .line 128
    .local v15, settingsPendingIntent:Landroid/app/PendingIntent;
    const v21, 0x7f0b0167

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1, v15}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 130
    return-object v16
.end method

.method private getBatteryChargingState()Z
    .locals 4

    .prologue
    .line 177
    const/4 v0, 0x0

    .line 178
    .local v0, sBatteryChargingState:Ljava/lang/String;
    const-string v1, "/sys/class/power_supply/battery/status"

    invoke-direct {p0, v1}, Lcom/android/settings_ex/favoritesettingswidget/FavoriteSettingsWidget;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 179
    const-string v1, "FavoriteSettingsWidget"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " BatteryChargingState result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "charging"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 181
    const/4 v1, 0x1

    .line 183
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getBatteryLevel()I
    .locals 4

    .prologue
    .line 151
    const/4 v0, -0x1

    .line 152
    .local v0, iBatteryLevel:B
    const-string v1, "/sys/class/power_supply/battery/capacity"

    invoke-direct {p0, v1}, Lcom/android/settings_ex/favoritesettingswidget/FavoriteSettingsWidget;->getByteFromFile(Ljava/lang/String;)B

    move-result v0

    .line 153
    const-string v1, "FavoriteSettingsWidget"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending  BatteryLevel = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    if-gez v0, :cond_0

    .line 155
    const/16 v0, 0x64

    .line 157
    .end local v0           #iBatteryLevel:B
    :cond_0
    return v0
.end method

.method private getByteFromFile(Ljava/lang/String;)B
    .locals 7
    .parameter "path"

    .prologue
    .line 162
    const/4 v1, 0x0

    .line 164
    .local v1, in:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x8

    invoke-direct {v2, v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    .end local v1           #in:Ljava/io/BufferedReader;
    .local v2, in:Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 166
    .local v4, s:Ljava/lang/String;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 167
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 168
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 169
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Byte;->byteValue()B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .local v3, ret:B
    move-object v1, v2

    .line 173
    .end local v2           #in:Ljava/io/BufferedReader;
    .end local v4           #s:Ljava/lang/String;
    .restart local v1       #in:Ljava/io/BufferedReader;
    :goto_0
    return v3

    .line 170
    .end local v3           #ret:B
    :catch_0
    move-exception v0

    .line 171
    .local v0, e:Ljava/lang/Exception;
    :goto_1
    const/4 v3, -0x1

    .restart local v3       #ret:B
    goto :goto_0

    .line 170
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #in:Ljava/io/BufferedReader;
    .end local v3           #ret:B
    .restart local v2       #in:Ljava/io/BufferedReader;
    .restart local v4       #s:Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2           #in:Ljava/io/BufferedReader;
    .restart local v1       #in:Ljava/io/BufferedReader;
    goto :goto_1
.end method

.method private static getLaunchPendingIntent(Landroid/content/Context;II)Landroid/app/PendingIntent;
    .locals 5
    .parameter "context"
    .parameter "appWidgetId"
    .parameter "buttonId"

    .prologue
    const/4 v4, 0x0

    .line 142
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 143
    .local v0, launchIntent:Landroid/content/Intent;
    const-class v2, Lcom/android/settings_ex/favoritesettingswidget/FavoriteSettingsWidget;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 144
    const-string v2, "android.intent.category.ALTERNATIVE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "custom:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 146
    invoke-static {p0, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 147
    .local v1, pi:Landroid/app/PendingIntent;
    return-object v1
.end method

.method private getStringFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "path"

    .prologue
    .line 188
    const/4 v1, 0x0

    .line 189
    .local v1, in:Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 191
    .local v3, s:Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x8

    invoke-direct {v2, v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    .end local v1           #in:Ljava/io/BufferedReader;
    .local v2, in:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 193
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 194
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 198
    .end local v2           #in:Ljava/io/BufferedReader;
    .restart local v1       #in:Ljava/io/BufferedReader;
    :goto_0
    return-object v3

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .local v0, e:Ljava/lang/Exception;
    :goto_1
    const-string v3, "ERROR"

    goto :goto_0

    .line 195
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #in:Ljava/io/BufferedReader;
    .restart local v2       #in:Ljava/io/BufferedReader;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2           #in:Ljava/io/BufferedReader;
    .restart local v1       #in:Ljava/io/BufferedReader;
    goto :goto_1
.end method


# virtual methods
.method public onDisabled(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onDisabled(Landroid/content/Context;)V

    .line 62
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onEnabled(Landroid/content/Context;)V

    .line 57
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 203
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 204
    const-string v3, "android.intent.category.ALTERNATIVE"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 205
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 206
    .local v2, data:Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 207
    .local v1, buttonId:I
    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 208
    invoke-direct {p0}, Lcom/android/settings_ex/favoritesettingswidget/FavoriteSettingsWidget;->getBatteryLevel()I

    move-result v3

    const/4 v4, 0x5

    if-gt v3, v4, :cond_1

    invoke-direct {p0}, Lcom/android/settings_ex/favoritesettingswidget/FavoriteSettingsWidget;->getBatteryChargingState()Z

    move-result v3

    if-nez v3, :cond_1

    .line 209
    const v3, 0x7f090fa0

    const/4 v4, 0x0

    invoke-static {p1, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 220
    .end local v1           #buttonId:I
    .end local v2           #data:Landroid/net/Uri;
    :cond_0
    :goto_0
    return-void

    .line 213
    .restart local v1       #buttonId:I
    .restart local v2       #data:Landroid/net/Uri;
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/android/settings_ex/DisplaySettings;

    invoke-direct {v0, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 214
    .local v0, brightnessIntent:Landroid/content/Intent;
    const-string v3, "7"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 215
    const/high16 v3, 0x3800

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 216
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 3
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sput-object v2, Lcom/android/settings_ex/favoritesettingswidget/FavoriteSettingsWidget;->mContext:Landroid/content/Context;

    .line 48
    const/4 v2, -0x1

    invoke-static {p1, v2}, Lcom/android/settings_ex/favoritesettingswidget/FavoriteSettingsWidget;->buildUpdate(Landroid/content/Context;I)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 49
    .local v1, view:Landroid/widget/RemoteViews;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p3

    if-ge v0, v2, :cond_0

    .line 50
    aget v2, p3, v0

    invoke-virtual {p2, v2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 52
    :cond_0
    return-void
.end method
