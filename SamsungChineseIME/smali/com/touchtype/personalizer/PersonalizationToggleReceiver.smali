.class public Lcom/touchtype/personalizer/PersonalizationToggleReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PersonalizationToggleReceiver.java"


# static fields
.field private static final PERSONALIZATION_DISABLE_PERIOD:I = 0x5265c00

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/touchtype/personalizer/PersonalizationToggleReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/touchtype/personalizer/PersonalizationToggleReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 20
    return-void
.end method

.method private getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .parameter "context"

    .prologue
    .line 125
    const-string v0, "personalizer_service"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private setAlarm(Landroid/content/Context;J)V
    .locals 6
    .parameter "context"
    .parameter "when"

    .prologue
    .line 111
    sget-object v3, Lcom/touchtype/personalizer/PersonalizationToggleReceiver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setAlarm for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/touchtype_fluency/service/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.touchtype.personalizer.ACTION_ENABLE_PERSONALIZATION"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-class v4, Lcom/touchtype/personalizer/PersonalizationToggleReceiver;

    invoke-virtual {v3, p1, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    .line 116
    .local v1, intent:Landroid/content/Intent;
    const/4 v3, 0x0

    const/high16 v4, 0x4000

    invoke-static {p1, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 119
    .local v2, pendingIntent:Landroid/app/PendingIntent;
    const-string v3, "alarm"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 121
    .local v0, alarmManager:Landroid/app/AlarmManager;
    const/4 v3, 0x1

    invoke-virtual {v0, v3, p2, p3, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 122
    return-void
.end method


# virtual methods
.method public checkAlarmSet(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const-wide/16 v8, 0x0

    .line 31
    sget-object v6, Lcom/touchtype/personalizer/PersonalizationToggleReceiver;->TAG:Ljava/lang/String;

    const-string v7, "checkAlarmSet"

    invoke-static {v6, v7}, Lcom/touchtype_fluency/service/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0, p1}, Lcom/touchtype/personalizer/PersonalizationToggleReceiver;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 34
    .local v1, preferences:Landroid/content/SharedPreferences;
    const-string v6, "enabled"

    const/4 v7, 0x0

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 37
    .local v0, personalizationDisabled:Z
    if-eqz v0, :cond_0

    .line 39
    const-string v6, "enable_time"

    invoke-interface {v1, v6, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 41
    .local v4, timeScheduled:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 43
    .local v2, timeNow:J
    cmp-long v6, v4, v8

    if-nez v6, :cond_1

    .line 45
    invoke-direct {p0, p1, v2, v3}, Lcom/touchtype/personalizer/PersonalizationToggleReceiver;->setAlarm(Landroid/content/Context;J)V

    .line 58
    .end local v2           #timeNow:J
    .end local v4           #timeScheduled:J
    :cond_0
    :goto_0
    return-void

    .line 48
    .restart local v2       #timeNow:J
    .restart local v4       #timeScheduled:J
    :cond_1
    cmp-long v6, v4, v2

    if-gtz v6, :cond_2

    .line 51
    invoke-direct {p0, p1, v2, v3}, Lcom/touchtype/personalizer/PersonalizationToggleReceiver;->setAlarm(Landroid/content/Context;J)V

    goto :goto_0

    .line 54
    :cond_2
    invoke-direct {p0, p1, v4, v5}, Lcom/touchtype/personalizer/PersonalizationToggleReceiver;->setAlarm(Landroid/content/Context;J)V

    goto :goto_0
.end method

.method public disablePersonalization(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    .line 69
    sget-object v7, Lcom/touchtype/personalizer/PersonalizationToggleReceiver;->TAG:Ljava/lang/String;

    const-string v8, "disablePersonalization"

    invoke-static {v7, v8}, Lcom/touchtype_fluency/service/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-direct {p0, p1}, Lcom/touchtype/personalizer/PersonalizationToggleReceiver;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 72
    .local v2, preferences:Landroid/content/SharedPreferences;
    const-string v7, "enabled"

    const/4 v8, 0x0

    invoke-interface {v2, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 75
    .local v1, personalizationDisabled:Z
    if-nez v1, :cond_0

    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 77
    .local v3, timeNow:J
    const-wide/32 v7, 0x5265c00

    add-long v5, v3, v7

    .line 79
    .local v5, timeWhen:J
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 80
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    monitor-enter v0

    .line 81
    :try_start_0
    const-string v7, "enabled"

    const/4 v8, 0x1

    invoke-interface {v0, v7, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 82
    const-string v7, "enable_time"

    invoke-interface {v0, v7, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 83
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 84
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    invoke-direct {p0, p1, v5, v6}, Lcom/touchtype/personalizer/PersonalizationToggleReceiver;->setAlarm(Landroid/content/Context;J)V

    .line 88
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v3           #timeNow:J
    .end local v5           #timeWhen:J
    :cond_0
    return-void

    .line 84
    .restart local v0       #editor:Landroid/content/SharedPreferences$Editor;
    .restart local v3       #timeNow:J
    .restart local v5       #timeWhen:J
    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 92
    sget-object v2, Lcom/touchtype/personalizer/PersonalizationToggleReceiver;->TAG:Ljava/lang/String;

    const-string v3, "onReceive"

    invoke-static {v2, v3}, Lcom/touchtype_fluency/service/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-direct {p0, p1}, Lcom/touchtype/personalizer/PersonalizationToggleReceiver;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 96
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    monitor-enter v0

    .line 97
    :try_start_0
    const-string v2, "enabled"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 98
    const-string v2, "enable_time"

    const-wide/16 v3, 0x0

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 99
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 100
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.touchtype.personalizer.ACTION_ENABLE_PERSONALIZATION"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-class v3, Lcom/touchtype/personalizer/PersonalizerService;

    invoke-virtual {v2, p1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    .line 106
    .local v1, pzintent:Landroid/content/Intent;
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 107
    return-void

    .line 100
    .end local v1           #pzintent:Landroid/content/Intent;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
