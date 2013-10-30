.class Lcom/touchtype_fluency/util/HttpDownload$2;
.super Ljava/lang/Object;
.source "HttpDownload.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/touchtype_fluency/util/HttpDownload;->startTimeoutThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/touchtype_fluency/util/HttpDownload;


# direct methods
.method constructor <init>(Lcom/touchtype_fluency/util/HttpDownload;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/touchtype_fluency/util/HttpDownload$2;->this$0:Lcom/touchtype_fluency/util/HttpDownload;

    .line 606
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized run()V
    .locals 7

    .prologue
    .line 608
    monitor-enter p0

    :try_start_0
    const-string v1, "HttpDownload"

    const-string v2, "Timeout thread starting"

    invoke-static {v1, v2}, Lcom/touchtype_fluency/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 611
    :cond_0
    :goto_0
    const-wide/32 v1, 0xea60

    :try_start_1
    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V

    .line 612
    const-string v1, "HttpDownload"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "polling: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/touchtype_fluency/util/HttpDownload$2;->this$0:Lcom/touchtype_fluency/util/HttpDownload;

    #getter for: Lcom/touchtype_fluency/util/HttpDownload;->timeLastDataSeen:J
    invoke-static {v3}, Lcom/touchtype_fluency/util/HttpDownload;->access$0(Lcom/touchtype_fluency/util/HttpDownload;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/touchtype_fluency/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/touchtype_fluency/util/HttpDownload$2;->this$0:Lcom/touchtype_fluency/util/HttpDownload;

    #getter for: Lcom/touchtype_fluency/util/HttpDownload;->timeLastDataSeen:J
    invoke-static {v3}, Lcom/touchtype_fluency/util/HttpDownload;->access$0(Lcom/touchtype_fluency/util/HttpDownload;)J

    move-result-wide v3

    const-wide/32 v5, 0x1d4c0

    add-long/2addr v3, v5

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 614
    iget-object v1, p0, Lcom/touchtype_fluency/util/HttpDownload$2;->this$0:Lcom/touchtype_fluency/util/HttpDownload;

    invoke-virtual {v1}, Lcom/touchtype_fluency/util/HttpDownload;->interrupt()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 616
    :catch_0
    move-exception v0

    .line 617
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    const-string v1, "HttpDownload"

    const-string v2, "Timeout thread stopping"

    invoke-static {v1, v2}, Lcom/touchtype_fluency/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 619
    monitor-exit p0

    return-void

    .line 608
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
