.class public Lcom/android/providers/settings/cloud/ConnectivityChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConnectivityChangeReceiver.java"


# static fields
.field private static mLastPendingIntentTime:Ljava/util/Date;


# instance fields
.field mAlarm:Landroid/app/AlarmManager;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/providers/settings/cloud/ConnectivityChangeReceiver;->mContext:Landroid/content/Context;

    return-void
.end method

.method private isJustSentUpdateRequest()Z
    .locals 7

    .prologue
    .line 44
    sget-object v3, Lcom/android/providers/settings/cloud/ConnectivityChangeReceiver;->mLastPendingIntentTime:Ljava/util/Date;

    if-eqz v3, :cond_0

    .line 45
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 48
    .local v0, now:Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sget-object v5, Lcom/android/providers/settings/cloud/ConnectivityChangeReceiver;->mLastPendingIntentTime:Ljava/util/Date;

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    div-long v1, v3, v5

    .line 51
    .local v1, secPassedSinceLastRequest:J
    const-wide/16 v3, 0x3c

    cmp-long v3, v1, v3

    if-gez v3, :cond_0

    .line 52
    const/4 v3, 0x1

    .line 56
    .end local v0           #now:Ljava/util/Date;
    .end local v1           #secPassedSinceLastRequest:J
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isNeedUpdate()Z
    .locals 2

    .prologue
    .line 63
    const/4 v0, 0x0

    .line 65
    .local v0, need:Z
    iget-object v1, p0, Lcom/android/providers/settings/cloud/ConnectivityChangeReceiver;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/providers/settings/cloud/util/Utils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    const/4 v0, 0x1

    .line 68
    .end local v0           #need:Z
    :cond_0
    return v0
.end method

.method private sendUpdateAppControlListRequest(Landroid/app/AlarmManager;Landroid/content/Context;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 81
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/providers/settings/cloud/CloudSettingsService;

    invoke-direct {v0, p2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 82
    const-string v1, "command"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 84
    const/high16 v1, 0x800

    invoke-static {p2, v2, v0, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 88
    const/4 v1, 0x1

    const-wide/16 v2, 0x7530

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 91
    const-string v0, "CloudSettingsConnectivityChangeReceiver"

    const-string v1, "request appcontrol list update"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 25
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/providers/settings/cloud/ConnectivityChangeReceiver;->mAlarm:Landroid/app/AlarmManager;

    .line 26
    iput-object p1, p0, Lcom/android/providers/settings/cloud/ConnectivityChangeReceiver;->mContext:Landroid/content/Context;

    .line 28
    invoke-direct {p0}, Lcom/android/providers/settings/cloud/ConnectivityChangeReceiver;->isJustSentUpdateRequest()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36
    :cond_0
    :goto_0
    return-void

    .line 32
    :cond_1
    invoke-direct {p0}, Lcom/android/providers/settings/cloud/ConnectivityChangeReceiver;->isNeedUpdate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/android/providers/settings/cloud/ConnectivityChangeReceiver;->mAlarm:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/providers/settings/cloud/ConnectivityChangeReceiver;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, v1}, Lcom/android/providers/settings/cloud/ConnectivityChangeReceiver;->sendUpdateAppControlListRequest(Landroid/app/AlarmManager;Landroid/content/Context;)V

    .line 34
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    sput-object v0, Lcom/android/providers/settings/cloud/ConnectivityChangeReceiver;->mLastPendingIntentTime:Ljava/util/Date;

    goto :goto_0
.end method
