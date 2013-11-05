.class public Lcom/android/providers/settings/SettingsApplication;
.super Landroid/app/Application;
.source "SettingsApplication.java"

# interfaces
.implements Lcom/xiaomi/miui/pushads/sdk/MiuiAdsListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final TOPIC:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/android/providers/settings/SettingsApplication;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/settings/SettingsApplication;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 26
    const-string v0, "SECURITY_TOPIC"

    iput-object v0, p0, Lcom/android/providers/settings/SettingsApplication;->TOPIC:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getActionPendingIntent(Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCell;)Landroid/app/PendingIntent;
    .locals 4
    .parameter "cell"

    .prologue
    .line 64
    const/4 v1, 0x0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const/high16 v3, 0x800

    invoke-static {p0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 66
    .local v0, clickPendingIntent:Landroid/app/PendingIntent;
    return-object v0
.end method

.method public getClickPendingIntent(Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCell;)Landroid/app/PendingIntent;
    .locals 4
    .parameter "cell"

    .prologue
    .line 55
    const/4 v1, 0x0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const/high16 v3, 0x800

    invoke-static {p0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 58
    .local v0, clickPendingIntent:Landroid/app/PendingIntent;
    return-object v0
.end method

.method public final getSmallIconID()I
    .locals 1

    .prologue
    .line 49
    const/high16 v0, 0x7f02

    return v0
.end method

.method public onBubbleReceived(Lcom/xiaomi/miui/pushads/sdk/BubbleAdsCell;)V
    .locals 3
    .parameter

    .prologue
    .line 77
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/providers/settings/cloud/push/CloudService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 78
    const-string v1, "push_content"

    invoke-virtual {p1}, Lcom/xiaomi/miui/pushads/sdk/BubbleAdsCell;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    invoke-virtual {p0, v0}, Lcom/android/providers/settings/SettingsApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 80
    return-void
.end method

.method public onChannelInitialized(JLjava/lang/String;)V
    .locals 7
    .parameter "resultCode"
    .parameter "regID"

    .prologue
    .line 39
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 40
    invoke-static {p0}, Lcom/xiaomi/miui/pushads/sdk/NetUtils;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 41
    .local v5, IEMI:Ljava/lang/String;
    const-string v0, "\u91cd\u65b0\u8c03\u7528 open2()"

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->showLog(Ljava/lang/String;)V

    .line 42
    const-string v2, "com.android.providers.settings"

    const-string v3, "1009058"

    const-string v4, "730100956058"

    const-string v6, "SECURITY_TOPIC"

    move-object v0, p0

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->reopen2(Landroid/content/Context;Lcom/xiaomi/miui/pushads/sdk/MiuiAdsListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;

    .line 45
    .end local v5           #IEMI:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 7

    .prologue
    .line 30
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 31
    invoke-static {}, Lcom/android/providers/settings/cloud/Constants;->configServerEnvironment()V

    .line 32
    invoke-static {p0}, Lcom/xiaomi/miui/pushads/sdk/NetUtils;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 33
    .local v5, IEMI:Ljava/lang/String;
    const-string v2, "com.android.providers.settings"

    const-string v3, "1009058"

    const-string v4, "730100956058"

    const-string v6, "SECURITY_TOPIC"

    move-object v0, p0

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->open2(Landroid/content/Context;Lcom/xiaomi/miui/pushads/sdk/MiuiAdsListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;

    .line 35
    return-void
.end method

.method public onNotifyReceived(Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCell;)Z
    .locals 1
    .parameter "cell"

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method
