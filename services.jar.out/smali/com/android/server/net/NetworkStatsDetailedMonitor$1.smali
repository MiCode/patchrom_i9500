.class Lcom/android/server/net/NetworkStatsDetailedMonitor$1;
.super Landroid/content/BroadcastReceiver;
.source "NetworkStatsDetailedMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkStatsDetailedMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkStatsDetailedMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkStatsDetailedMonitor;)V
    .locals 0

    .prologue
    .line 408
    iput-object p1, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor$1;->this$0:Lcom/android/server/net/NetworkStatsDetailedMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 411
    const-string v1, "NetworkStatsEx"

    const-string v2, "(xxxz) NSS>> mReceiverMonitoringSetting: Begin..."

    #calls: Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->access$100(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    const-string v1, "com.samsung.android.permission.NETWORK_WAKELOCK_MONITORING"

    invoke-virtual {p1, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 413
    const-string v1, "NetworkStatsEx"

    const-string v2, "Permission Denial: can\'t give access to monitor Wakelocks & Netstats"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    :goto_0
    const-string v1, "NetworkStatsEx"

    const-string v2, "(xxxz) NSS>> mReceiverMonitoringSetting: End!"

    #calls: Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->access$100(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    :goto_1
    return-void

    .line 416
    :cond_0
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor$1;->this$0:Lcom/android/server/net/NetworkStatsDetailedMonitor;

    #calls: Lcom/android/server/net/NetworkStatsDetailedMonitor;->checkShipAndDebugLevel()Z
    invoke-static {v1}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->access$400(Lcom/android/server/net/NetworkStatsDetailedMonitor;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 417
    const-string v1, "NetworkStatsEx"

    const-string v2, "(xxxz) NSS>> mReceiverMonitoringSetting: ship or debug is low. disable the monitoring."

    #calls: Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->access$100(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor$1;->this$0:Lcom/android/server/net/NetworkStatsDetailedMonitor;

    #calls: Lcom/android/server/net/NetworkStatsDetailedMonitor;->disable(Z)V
    invoke-static {v1, v4}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->access$500(Lcom/android/server/net/NetworkStatsDetailedMonitor;Z)V

    .line 419
    const-string v1, "NetworkStatsEx"

    const-string v2, "(xxxz) NSS>> mReceiverMonitoringSetting: End! ignore"

    #calls: Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->access$100(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 423
    :cond_1
    const-string v1, "rate"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 424
    .local v0, rate:I
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor$1;->this$0:Lcom/android/server/net/NetworkStatsDetailedMonitor;

    #calls: Lcom/android/server/net/NetworkStatsDetailedMonitor;->setSamplingRateFromSetting(I)V
    invoke-static {v1, v0}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->access$600(Lcom/android/server/net/NetworkStatsDetailedMonitor;I)V

    .line 425
    const-string v1, "NetworkStatsEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(xxxz) NSS>> mReceiverMonitoringSetting: rate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->access$100(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    if-gtz v0, :cond_2

    .line 427
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor$1;->this$0:Lcom/android/server/net/NetworkStatsDetailedMonitor;

    #calls: Lcom/android/server/net/NetworkStatsDetailedMonitor;->disable(Z)V
    invoke-static {v1, v4}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->access$500(Lcom/android/server/net/NetworkStatsDetailedMonitor;Z)V

    .line 432
    :goto_2
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor$1;->this$0:Lcom/android/server/net/NetworkStatsDetailedMonitor;

    #getter for: Lcom/android/server/net/NetworkStatsDetailedMonitor;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->access$000(Lcom/android/server/net/NetworkStatsDetailedMonitor;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "persist.sys.monitor_network"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 429
    :cond_2
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor$1;->this$0:Lcom/android/server/net/NetworkStatsDetailedMonitor;

    mul-int/lit16 v2, v0, 0x3e8

    int-to-long v2, v2

    #calls: Lcom/android/server/net/NetworkStatsDetailedMonitor;->enable(JZ)V
    invoke-static {v1, v2, v3, v4}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->access$700(Lcom/android/server/net/NetworkStatsDetailedMonitor;JZ)V

    goto :goto_2
.end method
