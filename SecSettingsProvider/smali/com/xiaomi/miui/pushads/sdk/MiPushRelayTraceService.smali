.class public Lcom/xiaomi/miui/pushads/sdk/MiPushRelayTraceService;
.super Landroid/app/Service;
.source "MiPushRelayTraceService.java"


# static fields
.field private static sLogSender:Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 38
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 31
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 32
    invoke-static {}, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;->getInstance()Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/miui/pushads/sdk/MiPushRelayTraceService;->sLogSender:Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;

    .line 33
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 43
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 44
    if-nez p1, :cond_1

    .line 106
    :cond_0
    :goto_0
    return v6

    .line 48
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 49
    const-string v0, "intenttype"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 50
    const-string v2, "id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 51
    const-string v4, "showType"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 53
    new-instance v5, Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsTraceCell;

    invoke-direct {v5}, Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsTraceCell;-><init>()V

    .line 54
    iput-wide v2, v5, Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsTraceCell;->adId:J

    .line 55
    iput v4, v5, Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsTraceCell;->showType:I

    .line 56
    const-string v2, ""

    iput-object v2, v5, Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsTraceCell;->content:Ljava/lang/String;

    .line 58
    sget-object v2, Lcom/xiaomi/miui/pushads/sdk/MiPushRelayTraceService;->sLogSender:Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;

    if-nez v2, :cond_2

    .line 59
    const-string v0, "MiPushRelayTraceService"

    const-string v1, "log sender is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 63
    :cond_2
    packed-switch v0, :pswitch_data_0

    .line 84
    :cond_3
    :goto_1
    const-string v0, "notifyid"

    invoke-virtual {v1, v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 85
    if-eqz v1, :cond_0

    .line 86
    const-string v0, "\u662faction \u4e8b\u4ef6\uff0cremove \u539f\u5148\u7684notification"

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->showLog(Ljava/lang/String;)V

    .line 87
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/xiaomi/miui/pushads/sdk/MiPushRelayTraceService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 89
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 96
    :try_start_0
    const-class v0, Landroid/content/Context;

    const-string v1, "STATUS_BAR_SERVICE"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 97
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 98
    invoke-virtual {p0, v0}, Lcom/xiaomi/miui/pushads/sdk/MiPushRelayTraceService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 99
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "collapse"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 100
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string v0, "\u5173\u95edstatus bar \u6210\u529f"

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->showLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 102
    :catch_0
    move-exception v0

    .line 103
    const-string v0, "ads-notify-fd5dfce4"

    const-string v1, "Reflect failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 66
    :pswitch_0
    const-string v0, "\u53d1\u51fa click trace"

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->showLog(Ljava/lang/String;)V

    .line 67
    sget-object v0, Lcom/xiaomi/miui/pushads/sdk/MiPushRelayTraceService;->sLogSender:Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;

    invoke-virtual {v0, v5}, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;->clickTrace(Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsTraceCell;)V

    .line 68
    const-string v0, "pendingintent"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 69
    if-eqz v0, :cond_3

    .line 71
    :try_start_1
    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 72
    :catch_1
    move-exception v0

    .line 74
    invoke-virtual {v0}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    goto :goto_1

    .line 79
    :pswitch_1
    const-string v0, "\u53d1\u51fa delete trace"

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->showLog(Ljava/lang/String;)V

    .line 80
    sget-object v0, Lcom/xiaomi/miui/pushads/sdk/MiPushRelayTraceService;->sLogSender:Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;

    invoke-virtual {v0, v5}, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;->removeTrace(Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsTraceCell;)V

    goto :goto_1

    .line 63
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
