.class public Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;
.super Lcom/xiaomi/mipush/sdk/MiPushClient$MiPushClientCallback;
.source "NotifyAdsManager.java"

# interfaces
.implements Lcom/xiaomi/miui/pushads/sdk/INotifyAdsListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager$NetState;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;


# instance fields
.field private mAdsCache:Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCache;

.field private mAdsListener:Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsReceivedListener;

.field private mAlias:Ljava/lang/String;

.field private mAppPackageName:Ljava/lang/String;

.field private mCacheCount:I

.field private mContext:Landroid/content/Context;

.field private mFileCacheCells:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCacheCell;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mImei:Ljava/lang/String;

.field private mInitialSuccess:Z

.field private mIp:Ljava/lang/String;

.field private mOuterId:Ljava/lang/String;

.field private mPrefer:Landroid/content/SharedPreferences;

.field private mSuccessCount:I

.field private mUserId:Ljava/lang/String;


# direct methods
.method private cache2File(Ljava/lang/String;JI)V
    .locals 2
    .parameter "adsJsonString"
    .parameter "lastShowTime"
    .parameter "failedCount"

    .prologue
    .line 491
    iget v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->mCacheCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->mCacheCount:I

    .line 492
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5b58\u5165cache \u7684\u6570\u91cf: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->mCacheCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/LogUtils;->logProcess(Ljava/lang/String;)V

    .line 493
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->mAdsCache:Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCache;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCache;->appendInfo(Ljava/lang/String;JI)V

    .line 494
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->mAdsCache:Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCache;

    invoke-virtual {v0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCache;->flushFile()V

    .line 495
    return-void
.end method

.method private createAndExcuteDownloader(Ljava/lang/String;ILjava/lang/String;)V
    .locals 7
    .parameter "adsJsonString"
    .parameter "failedCount"
    .parameter "appPackageName"

    .prologue
    .line 391
    new-instance v0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsDownloader;

    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->mPrefer:Landroid/content/SharedPreferences;

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsDownloader;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/lang/String;ILjava/lang/String;Lcom/xiaomi/miui/pushads/sdk/INotifyAdsListener;)V

    .line 393
    .local v0, oneDownloader:Lcom/xiaomi/miui/pushads/sdk/NotifyAdsDownloader;
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsDownloader;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 394
    return-void
.end method

.method private downloadCacheAds()V
    .locals 9

    .prologue
    const/16 v8, 0xa

    .line 633
    iget-object v4, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/xiaomi/miui/pushads/sdk/NetUtils;->canDownloadAds(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 672
    :cond_0
    :goto_0
    return-void

    .line 636
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cache \u4e2a\u6570: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->mFileCacheCells:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/miui/pushads/sdk/LogUtils;->logProcess(Ljava/lang/String;)V

    .line 637
    iget-object v4, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->mFileCacheCells:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 639
    .local v1, itor:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCacheCell;>;"
    const/4 v3, 0x0

    .line 641
    .local v3, sum:I
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    if-ge v3, v8, :cond_4

    .line 642
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCacheCell;

    .line 645
    .local v0, cell:Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCacheCell;
    iget-wide v4, v0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCacheCell;->lastShowTime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    iget-wide v4, v0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCacheCell;->lastShowTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_2

    .line 646
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u8fc7\u671f\uff0c\u6240\u4ee5\u8df3\u8fc7, lastShow: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCacheCell;->lastShowTime:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/miui/pushads/sdk/LogUtils;->logProcess(Ljava/lang/String;)V

    .line 647
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 652
    :cond_2
    iget v4, v0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCacheCell;->failedCount:I

    if-lt v4, v8, :cond_3

    .line 653
    const-string v4, "cache \u7684\u5931\u8d25\u6b21\u6570\u8d85\u8fc7\u4e0a\u9650\uff0c\u4e0d\u6b63\u5e38"

    invoke-static {v4}, Lcom/xiaomi/miui/pushads/sdk/LogUtils;->logProcess(Ljava/lang/String;)V

    .line 654
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 659
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 660
    iget-object v4, v0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCacheCell;->adsJsonString:Ljava/lang/String;

    iget v5, v0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCacheCell;->failedCount:I

    iget-object v6, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->mAppPackageName:Ljava/lang/String;

    invoke-direct {p0, v4, v5, v6}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->createAndExcuteDownloader(Ljava/lang/String;ILjava/lang/String;)V

    .line 661
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 666
    .end local v0           #cell:Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCacheCell;
    :cond_4
    iget-object v4, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->mFileCacheCells:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 667
    const-string v4, "cache \u592a\u591a\uff0c\u5206\u6279\u8fdb\u884c\u4e0b\u8f7d"

    invoke-static {v4}, Lcom/xiaomi/miui/pushads/sdk/LogUtils;->logProcess(Ljava/lang/String;)V

    .line 668
    iget-object v4, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 669
    .local v2, msg:Landroid/os/Message;
    const/4 v4, 0x1

    iput v4, v2, Landroid/os/Message;->what:I

    .line 670
    iget-object v4, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v5, 0xbb8

    invoke-virtual {v4, v2, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;
    .locals 2

    .prologue
    .line 340
    const-class v0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->sInstance:Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private passReceiveLimit(Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;)Z
    .locals 6
    .parameter "cell"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 458
    const/4 v0, 0x0

    .line 461
    .local v0, successCount:I
    iget v4, p1, Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;->receiveUpperBound:I

    if-gtz v4, :cond_1

    .line 462
    const-string v3, "\u767d\u540d\u5355\u7528\u6237"

    invoke-static {v3}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->showLog(Ljava/lang/String;)V

    .line 487
    :cond_0
    :goto_0
    return v2

    .line 466
    :cond_1
    const/4 v1, 0x0

    .line 468
    .local v1, upperBound:I
    iget v4, p1, Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;->showType:I

    packed-switch v4, :pswitch_data_0

    .line 481
    :goto_1
    if-le v0, v1, :cond_0

    .line 484
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5e7f\u544a\u6b21\u6570\u8d85\u8fc7\u4e0a\u9650---\u5df2\u7ecf\u83b7\u5f97\u6b21\u6570\uff1a "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " \u4e0a\u9650: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->showLog(Ljava/lang/String;)V

    move v2, v3

    .line 487
    goto :goto_0

    .line 470
    :pswitch_0
    iget v4, p1, Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;->receiveUpperBound:I

    mul-int/lit8 v1, v4, 0x4

    .line 471
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u5192\u6ce1\u4e0a\u9650: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->showLog(Ljava/lang/String;)V

    .line 472
    iget-object v4, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->mPrefer:Landroid/content/SharedPreferences;

    const-string v5, "bubblecount"

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 473
    goto :goto_1

    .line 475
    :pswitch_1
    iget v1, p1, Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;->receiveUpperBound:I

    .line 476
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u901a\u77e5\u4e0a\u9650: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->showLog(Ljava/lang/String;)V

    .line 477
    iget-object v4, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->mPrefer:Landroid/content/SharedPreferences;

    const-string v5, "notifycount"

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_1

    .line 468
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private pushCellsInCacheFile()V
    .locals 2

    .prologue
    .line 577
    const/4 v1, 0x0

    iput v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->mCacheCount:I

    .line 578
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->mAdsCache:Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCache;

    invoke-virtual {v1}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCache;->getAdsCacheCellFromCacheFile()Ljava/util/ArrayList;

    move-result-object v0

    .line 581
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCacheCell;>;"
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->mFileCacheCells:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 582
    invoke-direct {p0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->downloadCacheAds()V

    .line 583
    return-void
.end method

.method private pushOneAdsRequest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "adsJsonString"
    .parameter "appPackageName"

    .prologue
    .line 386
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->createAndExcuteDownloader(Ljava/lang/String;ILjava/lang/String;)V

    .line 387
    return-void
.end method

.method public static showLog(Ljava/lang/String;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 676
    const-string v0, "ads-notify-fd5dfce4"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    return-void
.end method


# virtual methods
.method public declared-synchronized getCurrentSuccess(I)I
    .locals 4
    .parameter "showType"

    .prologue
    .line 315
    monitor-enter p0

    const/4 v0, 0x0

    .line 316
    .local v0, ret:I
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 317
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->mPrefer:Landroid/content/SharedPreferences;

    const-string v2, "notifycount"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 322
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 318
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 319
    :try_start_1
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->mPrefer:Landroid/content/SharedPreferences;

    const-string v2, "bubblecount"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 315
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized increaseSuccessAds(I)V
    .locals 4
    .parameter "showType"

    .prologue
    .line 326
    monitor-enter p0

    const/4 v0, 0x0

    .line 328
    .local v0, ret:I
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 329
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->mPrefer:Landroid/content/SharedPreferences;

    const-string v2, "notifycount"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 330
    add-int/lit8 v0, v0, 0x1

    .line 331
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->mPrefer:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "notifycount"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 332
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 333
    :try_start_1
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->mPrefer:Landroid/content/SharedPreferences;

    const-string v2, "bubblecount"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 334
    add-int/lit8 v0, v0, 0x1

    .line 335
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->mPrefer:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "bubblecount"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 326
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public onAccountChanged()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 532
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5c0f\u7c73\u8d26\u6237\u53d1\u751f\u4e86\u6539\u53d8: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->mAlias:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " thread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->showLog(Ljava/lang/String;)V

    .line 534
    iget-boolean v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->mInitialSuccess:Z

    if-nez v1, :cond_1

    .line 574
    :cond_0
    :goto_0
    return-void

    .line 538
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/miui/pushads/sdk/NetUtils;->getXiaomiUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->mUserId:Ljava/lang/String;

    .line 539
    const-string v0, ""

    .line 545
    .local v0, newAlias:Ljava/lang/String;
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->mAlias:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->mOuterId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 546
    :cond_2
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->mOuterId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 547
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u7528\u6237\u4f7f\u7528\u7684\u662f\u81ea\u5b9a\u4e49\u7684\u8d26\u6237: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->mOuterId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->showLog(Ljava/lang/String;)V

    goto :goto_0

    .line 553
    :cond_3
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->mUserId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 554
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.xiaomi.miui.pushads.sdk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->mUserId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 562
    :goto_1
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->mAlias:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 563
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u53d6\u6d88\u65e7\u7684\u8d26\u6237: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->mAlias:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->showLog(Ljava/lang/String;)V

    .line 564
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->mAlias:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->getCategory()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/xiaomi/mipush/sdk/MiPushClient;->unsetAlias(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8bbe\u7f6e\u65b0\u7684\u8d26\u6237: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->showLog(Ljava/lang/String;)V

    .line 566
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->getCategory()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/xiaomi/mipush/sdk/MiPushClient;->setAlias(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    iput-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->mAlias:Ljava/lang/String;

    .line 570
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->mPrefer:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "starttime"

    const-wide/16 v3, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 571
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->mPrefer:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "notifycount"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 572
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->mPrefer:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "bubblecount"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 555
    :cond_4
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->mImei:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 556
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.xiaomi.miui.pushads.sdk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->mImei:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 558
    :cond_5
    const-string v1, "ads-notify-fd5dfce4"

    const-string v2, "\u6ca1\u6709 userid, imei onAccountChanged \u91cd\u8bbealias \u5931\u8d25"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onAdsReceived(ILcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;Lcom/xiaomi/miui/pushads/sdk/NotifyAdsDownloader;)V
    .locals 4
    .parameter "status"
    .parameter "cell"
    .parameter "downloader"

    .prologue
    .line 415
    if-nez p2, :cond_1

    .line 416
    const-string v0, "\u8fd4\u56de\u5e7f\u544a\u4e3anull"

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->showLog(Ljava/lang/String;)V

    .line 454
    :cond_0
    :goto_0
    return-void

    .line 420
    :cond_1
    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    .line 421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5e7f\u544a\u4e0b\u8f7d\u5931\u8d25: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p2, Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->showLog(Ljava/lang/String;)V

    .line 422
    iget v0, p2, Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;->failedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p2, Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;->failedCount:I

    .line 424
    iget v0, p2, Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;->failedCount:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_2

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4e0b\u8f7d\u5931\u8d25\u5199\u5165\u7f13\u5b58 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;->adsJsonString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p2, Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;->lastShowTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p2, Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;->failedCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/LogUtils;->logProcess(Ljava/lang/String;)V

    .line 426
    iget-object v0, p2, Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;->adsJsonString:Ljava/lang/String;

    iget-wide v1, p2, Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;->lastShowTime:J

    iget v3, p2, Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;->failedCount:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->cache2File(Ljava/lang/String;JI)V

    .line 446
    :goto_1
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->mAdsListener:Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsReceivedListener;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 447
    invoke-direct {p0, p2}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->passReceiveLimit(Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 448
    const-string v0, "===========\u7ed9APP \u53d1\u9001\u5e7f\u544a\u4fe1\u606f"

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->showLog(Ljava/lang/String;)V

    .line 449
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->mAdsListener:Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsReceivedListener;

    invoke-interface {v0, p2}, Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsReceivedListener;->onReceived(Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;)V

    goto :goto_0

    .line 428
    :cond_2
    const-string v0, "\u4e0b\u8f7d\u5931\u8d25\u6b21\u6570\u8d85\u8fc7 10 \u4e0d\u5199\u5165\u7f13\u5b58"

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/LogUtils;->logProcess(Ljava/lang/String;)V

    goto :goto_1

    .line 430
    :cond_3
    if-nez p1, :cond_5

    .line 432
    iget v0, p2, Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;->receiveUpperBound:I

    if-lez v0, :cond_4

    .line 433
    iget v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->mSuccessCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->mSuccessCount:I

    .line 434
    invoke-static {}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->getInstance()Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;

    move-result-object v0

    iget v1, p2, Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;->showType:I

    invoke-virtual {v0, v1}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->increaseSuccessAds(I)V

    .line 436
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5e7f\u544a\u4e0b\u8f7d\u6210\u529f: id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p2, Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u7c7b\u578b: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p2, Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;->showType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u6210\u529f\u6b21\u6570: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->getInstance()Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;

    move-result-object v1

    iget v2, p2, Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;->showType:I

    invoke-virtual {v1, v2}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->getCurrentSuccess(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->showLog(Ljava/lang/String;)V

    goto :goto_1

    .line 441
    :cond_5
    const-string v0, "com.miui.ads"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5e7f\u544a\u65e0\u6548\u6216\u8005\u8d85\u8fc7\u9650\u5236 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    const-string v0, "\u5e7f\u544a\u65e0\u6548\u6216\u8005\u8d85\u8fc7\u9650\u5236"

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/LogUtils;->logProcess(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 451
    :cond_6
    const-string v0, "\u5e7f\u544a\u6570\u91cf\u8d85\u8fc7\u9650\u5236\uff0c\u4e0d\u8fd4\u56de\u7ed9APP"

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->showLog(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onCommandResult(Ljava/lang/String;JLjava/lang/String;Ljava/util/List;)V
    .locals 5
    .parameter "command"
    .parameter "resultCode"
    .parameter "reason"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 271
    .local p5, params:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 273
    .local v2, setAliasFlag:Z
    const-wide/16 v3, 0x0

    cmp-long v3, p2, v3

    if-eqz v3, :cond_0

    .line 274
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u547d\u4ee4\u5931\u8d25: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " reason: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->showLog(Ljava/lang/String;)V

    .line 275
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 276
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "param: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->showLog(Ljava/lang/String;)V

    .line 275
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 280
    .end local v1           #i:I
    :cond_0
    const-string v3, "set-alias"

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 281
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_1
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 282
    invoke-interface {p5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 283
    .local v0, alias:Ljava/lang/String;
    iget-object v3, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->mAlias:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 284
    const/4 v2, 0x1

    .line 285
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u8bbe\u7f6e\u522b\u540d\u6210\u529f: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->mAlias:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->showLog(Ljava/lang/String;)V

    .line 281
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 289
    .end local v0           #alias:Ljava/lang/String;
    :cond_2
    if-nez v2, :cond_3

    .line 290
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u8bbe\u7f6e\u522b\u540d\u5931\u8d25\uff0c\u91cd\u65b0\u8bbe\u7f6e: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->mAlias:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->showLog(Ljava/lang/String;)V

    .line 291
    iget-object v3, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 294
    .end local v1           #i:I
    :cond_3
    return-void
.end method

.method public onInitializeResult(JLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "resultCode"
    .parameter "reason"
    .parameter "regID"

    .prologue
    .line 206
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->mAdsListener:Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsReceivedListener;

    if-eqz v1, :cond_0

    .line 207
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 208
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 209
    long-to-int v1, p1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 210
    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 211
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 214
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    sget v1, Lcom/xiaomi/mipush/sdk/ErrorCode;->SUCCESS:I

    int-to-long v1, v1

    cmp-long v1, v1, p1

    if-nez v1, :cond_1

    .line 215
    const-string v1, "\u901a\u9053\u8fdb\u884c\u521d\u59cb\u5316OK"

    invoke-static {v1}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->showLog(Ljava/lang/String;)V

    .line 216
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 217
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 222
    :goto_0
    return-void

    .line 219
    :cond_1
    const-string v1, "\u901a\u9053\u521d\u59cb\u5316\u5931\u8d25\uff0c \u5df2\u7ecf\u901a\u77e5\u4e86app\uff0c\u9700\u8981\u91cd\u65b0 open \u901a\u9053"

    invoke-static {v1}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->showLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onNetChanged()V
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/NetUtils;->canDownloadAds(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 505
    :goto_0
    return-void

    .line 503
    :cond_0
    invoke-static {}, Lcom/xiaomi/miui/pushads/sdk/NetUtils;->getLocalIPAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->mIp:Ljava/lang/String;

    .line 504
    invoke-direct {p0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->pushCellsInCacheFile()V

    goto :goto_0
.end method

.method public onReceiveMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .parameter "content"
    .parameter "alias"
    .parameter "topic"
    .parameter "flag"

    .prologue
    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u63a5\u53d7\u5230\u6d88\u606f "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "##"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "##"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->showLog(Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->mAlias:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6ca1\u6709\u6709\u6548alias\uff0c\u5ffd\u7565\u6d88\u606f "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "##"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "##"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->showLog(Ljava/lang/String;)V

    .line 200
    :goto_0
    return-void

    .line 191
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->mAlias:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 192
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->mAlias:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u63a5\u53d7\u5230\u4e0d\u540calias \u7684\u6d88\u606f\uff0c\u6ce8\u9500\u65e7\u7684 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "##"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "##"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->showLog(Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/xiaomi/mipush/sdk/MiPushClient;->unsetAlias(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->mAppPackageName:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->pushOneAdsRequest(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSubscribeResult(JLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "resultCode"
    .parameter "reason"
    .parameter "topic"

    .prologue
    .line 262
    return-void
.end method

.method public onUnsubscribeResult(JLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "resultCode"
    .parameter "reason"
    .parameter "topic"

    .prologue
    .line 267
    return-void
.end method
