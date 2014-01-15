.class public Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderMonoAudio;
.super Landroid/appwidget/AppWidgetProvider;
.source "AccessibilityWidgetProviderMonoAudio.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderMonoAudio$SettingsObserver;
    }
.end annotation


# static fields
.field private static final BUTTON_CENTER:I = 0x1

.field private static final MONO_AUDIO_CHANGED:Ljava/lang/String; = "android.settings.MONO_AUDIO_CHANGED"

.field public static final MONO_AUDIO_KEY_CHECKBOX_DB:Ljava/lang/String; = "mono_audio_db"

.field static final TAG:Ljava/lang/String; = "AccessibilityWidgetProviderMonoAudio"

.field static final THIS_APPWIDGET:Landroid/content/ComponentName;

.field private static sSettingsObserver:Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderMonoAudio$SettingsObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 50
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.settings_ex"

    const-string v2, "com.android.settings_ex.accessibilitywidget.AccessibilityWidgetProviderMonoAudio"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderMonoAudio;->THIS_APPWIDGET:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 235
    return-void
.end method

.method static buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 90
    const/4 v0, 0x0

    .line 92
    .local v0, views:Landroid/widget/RemoteViews;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v3, :cond_0

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/settings_ex/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/android/settings_ex/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 94
    new-instance v0, Landroid/widget/RemoteViews;

    .end local v0           #views:Landroid/widget/RemoteViews;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f040003

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 95
    .restart local v0       #views:Landroid/widget/RemoteViews;
    const-string v1, "AccessibilityWidgetProviderMonoAudio"

    const-string v2, "buildUpdate PORTRAIT"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :goto_0
    const v1, 0x7f0b000e

    invoke-static {p0, v3}, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderMonoAudio;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 105
    invoke-static {v0, p0}, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderMonoAudio;->updateButtons(Landroid/widget/RemoteViews;Landroid/content/Context;)V

    .line 106
    return-object v0

    .line 99
    :cond_0
    new-instance v0, Landroid/widget/RemoteViews;

    .end local v0           #views:Landroid/widget/RemoteViews;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f040002

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 100
    .restart local v0       #views:Landroid/widget/RemoteViews;
    const-string v1, "AccessibilityWidgetProviderMonoAudio"

    const-string v2, "buildUpdate LANDSCAPE"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static checkObserver(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 227
    sget-object v0, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderMonoAudio;->sSettingsObserver:Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderMonoAudio$SettingsObserver;

    if-nez v0, :cond_0

    .line 228
    new-instance v0, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderMonoAudio$SettingsObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderMonoAudio$SettingsObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderMonoAudio;->sSettingsObserver:Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderMonoAudio$SettingsObserver;

    .line 230
    sget-object v0, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderMonoAudio;->sSettingsObserver:Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderMonoAudio$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderMonoAudio$SettingsObserver;->startObserving()V

    .line 232
    :cond_0
    return-void
.end method

.method private static getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 5
    .parameter "context"
    .parameter "buttonId"

    .prologue
    const/4 v4, 0x0

    .line 160
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 161
    .local v0, launchIntent:Landroid/content/Intent;
    const-class v2, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderMonoAudio;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 162
    const-string v2, "android.intent.category.ALTERNATIVE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 163
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

    .line 164
    invoke-static {p0, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 171
    .local v1, pi:Landroid/app/PendingIntent;
    return-object v1
.end method

.method private static getWidgetMode(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 219
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mono_audio_db"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 221
    .local v0, result:Z
    :cond_0
    const-string v1, "AccessibilityWidgetProviderMonoAudio"

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

    .line 223
    return v0
.end method

.method private toggleWidgetMode(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 203
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.MONO_AUDIO_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 205
    .local v0, mono_intent:Landroid/content/Intent;
    invoke-static {p1}, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderMonoAudio;->getWidgetMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 206
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mono_audio_db"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 207
    const-string v1, "mono"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 212
    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 213
    const-string v1, "AccessibilityWidgetProviderMonoAudio"

    const-string v2, "Mono Audio broadcast"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    return-void

    .line 209
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mono_audio_db"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 210
    const-string v1, "mono"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method private static updateButtons(Landroid/widget/RemoteViews;Landroid/content/Context;)V
    .locals 5
    .parameter "views"
    .parameter "context"

    .prologue
    const v4, 0x7f0b0011

    const v3, 0x7f0b0010

    .line 133
    const v1, 0x7f0b000e

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 134
    const v1, 0x7f090dd9

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v3, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 136
    invoke-static {p1}, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderMonoAudio;->getWidgetMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    const v1, 0x7f020006

    invoke-virtual {p0, v4, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 138
    const-string v0, "#A4FF21"

    .line 139
    .local v0, strColor:Ljava/lang/String;
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v3, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 140
    const-string v1, "AccessibilityWidgetProviderMonoAudio"

    const-string v2, "updateButtons , icon_on"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :goto_0
    return-void

    .line 143
    .end local v0           #strColor:Ljava/lang/String;
    :cond_0
    const v1, 0x7f020003

    invoke-virtual {p0, v4, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 144
    const-string v0, "#979797"

    .line 145
    .restart local v0       #strColor:Ljava/lang/String;
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v3, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 146
    const-string v1, "AccessibilityWidgetProviderMonoAudio"

    const-string v2, "updateButtons , icon_off"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static updateWidget(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 115
    invoke-static {p0}, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderMonoAudio;->buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 118
    .local v1, views:Landroid/widget/RemoteViews;
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 119
    .local v0, gm:Landroid/appwidget/AppWidgetManager;
    const-string v2, "AccessibilityWidgetProviderMonoAudio"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateWidget : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderMonoAudio;->THIS_APPWIDGET:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    sget-object v2, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderMonoAudio;->THIS_APPWIDGET:Landroid/content/ComponentName;

    invoke-virtual {v0, v2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 121
    invoke-static {p0}, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderMonoAudio;->checkObserver(Landroid/content/Context;)V

    .line 122
    return-void
.end method


# virtual methods
.method public onDisabled(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 80
    sget-object v0, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderMonoAudio;->sSettingsObserver:Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderMonoAudio$SettingsObserver;

    if-eqz v0, :cond_0

    .line 81
    sget-object v0, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderMonoAudio;->sSettingsObserver:Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderMonoAudio$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderMonoAudio$SettingsObserver;->stopObserving()V

    .line 82
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderMonoAudio;->sSettingsObserver:Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderMonoAudio$SettingsObserver;

    .line 84
    :cond_0
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 75
    invoke-static {p1}, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderMonoAudio;->checkObserver(Landroid/content/Context;)V

    .line 76
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 182
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 184
    const-string v2, "android.intent.category.ALTERNATIVE"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 185
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 186
    .local v1, data:Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 187
    .local v0, buttonId:I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 188
    const-string v2, "AccessibilityWidgetProviderMonoAudio"

    const-string v3, "BUTTON_CENTER : "

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-direct {p0, p1}, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderMonoAudio;->toggleWidgetMode(Landroid/content/Context;)V

    .line 199
    :cond_0
    invoke-static {p1}, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderMonoAudio;->updateWidget(Landroid/content/Context;)V

    .line 200
    .end local v0           #buttonId:I
    .end local v1           #data:Landroid/net/Uri;
    :cond_1
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 5
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 65
    const-string v2, "AccessibilityWidgetProviderMonoAudio"

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

    .line 67
    invoke-static {p1}, Lcom/android/settings_ex/accessibilitywidget/AccessibilityWidgetProviderMonoAudio;->buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 68
    .local v1, view:Landroid/widget/RemoteViews;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p3

    if-ge v0, v2, :cond_0

    .line 69
    aget v2, p3, v0

    invoke-virtual {p2, v2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    :cond_0
    return-void
.end method
