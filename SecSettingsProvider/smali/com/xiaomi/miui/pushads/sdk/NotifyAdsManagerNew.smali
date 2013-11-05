.class public Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;
.super Lcom/xiaomi/mipush/sdk/MiPushClient$MiPushClientCallback;
.source "NotifyAdsManagerNew.java"

# interfaces
.implements Lcom/xiaomi/miui/pushads/sdk/INotifyAdsListener;


# static fields
.field private static sInstance:Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;


# instance fields
.field private logSender:Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;

.field private mAdsCache:Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCache;

.field private mAdsListener:Lcom/xiaomi/miui/pushads/sdk/MiuiAdsListener;

.field private mAlias:Ljava/lang/String;

.field private mAppId:Ljava/lang/String;

.field private mAppPackageName:Ljava/lang/String;

.field private mAppToken:Ljava/lang/String;

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

.field private mNetChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mOuterId:Ljava/lang/String;

.field private mPrefer:Landroid/content/SharedPreferences;

.field private mReceiverRegistered:Z

.field private mSuccessCount:I

.field private mTopic:Ljava/lang/String;

.field private mUserId:Ljava/lang/String;

.field private outerListener:Lcom/xiaomi/miui/pushads/sdk/common/IOuterMsgListener;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/xiaomi/miui/pushads/sdk/MiuiAdsListener;)V
    .locals 1
    .parameter "context"
    .parameter "listener"

    .prologue
    const/4 v0, 0x0

    .line 130
    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/MiPushClient$MiPushClientCallback;-><init>()V

    .line 93
    iput v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mSuccessCount:I

    .line 94
    iput v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mCacheCount:I

    .line 117
    iput-boolean v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mInitialSuccess:Z

    .line 131
    iput-object p2, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mAdsListener:Lcom/xiaomi/miui/pushads/sdk/MiuiAdsListener;

    .line 132
    iput-object p1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mContext:Landroid/content/Context;

    .line 133
    invoke-direct {p0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->initReceiver()V

    .line 134
    invoke-direct {p0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->initMembers()V

    .line 137
    invoke-direct {p0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->doCleanCacheFolder()V

    .line 140
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/NetUtils;->canDownloadAds(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    const-string v0, "\u6709 cache \u6587\u4ef6\uff0c\u5f00\u59cb\u4e0b\u8f7dcache"

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/LogUtils;->logProcess(Ljava/lang/String;)V

    .line 142
    invoke-direct {p0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->pushCellsInCacheFile()V

    .line 144
    :cond_0
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/xiaomi/miui/pushads/sdk/MiuiAdsListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "listener"
    .parameter "appPackageName"
    .parameter "appId"
    .parameter "appToken"
    .parameter "outerId"
    .parameter "topicId"

    .prologue
    .line 148
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;-><init>(Landroid/content/Context;Lcom/xiaomi/miui/pushads/sdk/MiuiAdsListener;)V

    .line 151
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 152
    iput-object p6, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mOuterId:Ljava/lang/String;

    .line 155
    :cond_0
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.xiaomi.miui.pushads.sdk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mTopic:Ljava/lang/String;

    .line 159
    :cond_1
    iput-object p3, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mAppPackageName:Ljava/lang/String;

    .line 160
    iput-object p4, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mAppId:Ljava/lang/String;

    .line 161
    iput-object p5, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mAppToken:Ljava/lang/String;

    .line 163
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mContext:Landroid/content/Context;

    invoke-static {v1, p4, p5}, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;->getInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->logSender:Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "logSender: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->logSender:Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->showLog(Ljava/lang/String;)V

    .line 166
    invoke-direct {p0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->getNamedCategory()Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, category:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->setCategory(Ljava/lang/String;)V

    .line 170
    const-string v1, "\u901a\u9053\u8fdb\u884c\u521d\u59cb\u5316"

    invoke-static {v1}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->showLog(Ljava/lang/String;)V

    .line 171
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mAppId:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mAppToken:Ljava/lang/String;

    invoke-static {v1, v2, v3, p0}, Lcom/xiaomi/mipush/sdk/MiPushClient;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/mipush/sdk/MiPushClient$MiPushClientCallback;)V

    .line 172
    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->downloadCacheAds()V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->setAlias()V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->setTopic()V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;)Lcom/xiaomi/miui/pushads/sdk/MiuiAdsListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mAdsListener:Lcom/xiaomi/miui/pushads/sdk/MiuiAdsListener;

    return-object v0
.end method

.method static synthetic access$402(Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mInitialSuccess:Z

    return p1
.end method

.method private cache2File(Ljava/lang/String;JI)V
    .locals 2
    .parameter "adsJsonString"
    .parameter "lastShowTime"
    .parameter "failedCount"

    .prologue
    .line 755
    iget v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mCacheCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mCacheCount:I

    .line 756
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5b58\u5165cache \u7684\u6570\u91cf: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mCacheCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/LogUtils;->logProcess(Ljava/lang/String;)V

    .line 757
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mAdsCache:Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCache;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCache;->appendInfo(Ljava/lang/String;JI)V

    .line 758
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mAdsCache:Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCache;

    invoke-virtual {v0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCache;->flushFile()V

    .line 759
    return-void
.end method

.method private createAndExcuteDownloader(Ljava/lang/String;ILjava/lang/String;)V
    .locals 7
    .parameter "adsJsonString"
    .parameter "failedCount"
    .parameter "appPackageName"

    .prologue
    .line 505
    new-instance v0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsDownloader;

    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mPrefer:Landroid/content/SharedPreferences;

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsDownloader;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/lang/String;ILjava/lang/String;Lcom/xiaomi/miui/pushads/sdk/INotifyAdsListener;)V

    .line 507
    .local v0, oneDownloader:Lcom/xiaomi/miui/pushads/sdk/NotifyAdsDownloader;
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsDownloader;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 508
    return-void
.end method

.method private doCleanCacheFolder()V
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 851
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mContext:Landroid/content/Context;

    const-string v1, "comxiaomimiuipushadssdk"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v4

    .line 852
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 853
    const-wide/16 v0, 0x0

    .line 855
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 858
    if-nez v5, :cond_1

    .line 890
    :cond_0
    return-void

    .line 860
    :cond_1
    array-length v7, v5

    move v2, v3

    :goto_0
    if-ge v2, v7, :cond_3

    aget-object v8, v5, v2

    .line 861
    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-nez v9, :cond_2

    .line 862
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 863
    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v8

    add-long/2addr v0, v8

    .line 860
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 867
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "docleancache  "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "  "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v4, :cond_4

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "   "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/miui/pushads/sdk/LogUtils;->logProcess(Ljava/lang/String;)V

    .line 871
    const-wide/32 v4, 0x1400000

    cmp-long v0, v0, v4

    if-ltz v0, :cond_0

    .line 872
    new-instance v0, Ljava/util/TreeSet;

    new-instance v1, Lcom/xiaomi/miui/pushads/sdk/FileComparatorByLastModifier;

    invoke-direct {v1}, Lcom/xiaomi/miui/pushads/sdk/FileComparatorByLastModifier;-><init>()V

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 875
    invoke-virtual {v0, v6}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 876
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 877
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 878
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 879
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 880
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    move v2, v3

    .line 867
    goto :goto_1

    .line 884
    :cond_5
    :goto_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    if-ge v3, v0, :cond_0

    .line 885
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 886
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 887
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delet4e  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/LogUtils;->logProcess(Ljava/lang/String;)V

    .line 884
    add-int/lit8 v3, v3, 0x1

    goto :goto_3
.end method

.method private downloadCacheAds()V
    .locals 8

    .prologue
    const/16 v7, 0xa

    .line 896
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/NetUtils;->canDownloadAds(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 935
    :cond_0
    :goto_0
    return-void

    .line 899
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cache \u4e2a\u6570: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mFileCacheCells:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/LogUtils;->logProcess(Ljava/lang/String;)V

    .line 900
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mFileCacheCells:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 902
    const/4 v0, 0x0

    move v1, v0

    .line 904
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    if-ge v1, v7, :cond_4

    .line 905
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCacheCell;

    .line 908
    iget-wide v3, v0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCacheCell;->lastShowTime:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    iget-wide v3, v0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCacheCell;->lastShowTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_2

    .line 909
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u8fc7\u671f\uff0c\u6240\u4ee5\u8df3\u8fc7, lastShow: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCacheCell;->lastShowTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/LogUtils;->logProcess(Ljava/lang/String;)V

    .line 910
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 915
    :cond_2
    iget v3, v0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCacheCell;->failedCount:I

    if-lt v3, v7, :cond_3

    .line 916
    const-string v0, "cache \u7684\u5931\u8d25\u6b21\u6570\u8d85\u8fc7\u4e0a\u9650\uff0c\u4e0d\u6b63\u5e38"

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/LogUtils;->logProcess(Ljava/lang/String;)V

    .line 917
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 922
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 923
    iget-object v3, v0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCacheCell;->adsJsonString:Ljava/lang/String;

    iget v0, v0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCacheCell;->failedCount:I

    iget-object v4, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mAppPackageName:Ljava/lang/String;

    invoke-direct {p0, v3, v0, v4}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->createAndExcuteDownloader(Ljava/lang/String;ILjava/lang/String;)V

    .line 924
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 929
    :cond_4
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mFileCacheCells:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 930
    const-string v0, "cache \u592a\u591a\uff0c\u5206\u6279\u8fdb\u884c\u4e0b\u8f7d"

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/LogUtils;->logProcess(Ljava/lang/String;)V

    .line 931
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 932
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 933
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;
    .locals 2

    .prologue
    .line 432
    const-class v0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->sInstance:Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getNamedCategory()Ljava/lang/String;
    .locals 5

    .prologue
    .line 347
    const-string v3, "fd5dfce4-64df-4434-aa66-2a70ff84a9c4"

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 348
    .local v2, splits:[Ljava/lang/String;
    const-string v1, "com.xiaomi.miui.pushads.sdk"

    .line 349
    .local v1, result:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 350
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 351
    invoke-static {v1}, Lcom/xiaomi/miui/pushads/sdk/DownloadUtils;->getMd5Digest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 349
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 353
    :cond_0
    return-object v1
.end method

.method private getPendingIntentByType(Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCell;I)Landroid/app/PendingIntent;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 603
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mContext:Landroid/content/Context;

    const-class v2, Lcom/xiaomi/miui/pushads/sdk/MiPushRelayTraceService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 605
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 607
    invoke-virtual {p1}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCell;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 608
    const-string v2, "intenttype"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 611
    const/4 v2, 0x2

    if-ne p2, v2, :cond_0

    iget-object v2, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mAdsListener:Lcom/xiaomi/miui/pushads/sdk/MiuiAdsListener;

    if-eqz v2, :cond_0

    .line 612
    new-instance v2, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCell;

    invoke-direct {v2, p1}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCell;-><init>(Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCell;)V

    .line 613
    iget-object v3, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mAdsListener:Lcom/xiaomi/miui/pushads/sdk/MiuiAdsListener;

    invoke-interface {v3, v2}, Lcom/xiaomi/miui/pushads/sdk/MiuiAdsListener;->getClickPendingIntent(Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCell;)Landroid/app/PendingIntent;

    move-result-object v2

    .line 614
    if-eqz v2, :cond_0

    .line 615
    const-string v3, "pendingintent"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 619
    :cond_0
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 621
    iget-wide v1, p1, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCell;->id:J

    long-to-int v1, v1

    .line 622
    mul-int/2addr v1, v1

    add-int/2addr v1, p2

    .line 625
    iget-object v2, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mContext:Landroid/content/Context;

    const/high16 v3, 0x800

    invoke-static {v2, v1, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 628
    return-object v0
.end method

.method private handleAdsCellBySDK(Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;)V
    .locals 6
    .parameter "cell"

    .prologue
    .line 577
    invoke-direct {p0, p1}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->sendReceiveLog(Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;)V

    .line 579
    iget v4, p1, Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;->showType:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    move-object v0, p1

    .line 580
    check-cast v0, Lcom/xiaomi/miui/pushads/sdk/BubbleAdsCell;

    .line 581
    .local v0, bcell:Lcom/xiaomi/miui/pushads/sdk/BubbleAdsCell;
    iget-object v4, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mAdsListener:Lcom/xiaomi/miui/pushads/sdk/MiuiAdsListener;

    if-eqz v4, :cond_0

    .line 582
    iget-object v4, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mAdsListener:Lcom/xiaomi/miui/pushads/sdk/MiuiAdsListener;

    invoke-interface {v4, v0}, Lcom/xiaomi/miui/pushads/sdk/MiuiAdsListener;->onBubbleReceived(Lcom/xiaomi/miui/pushads/sdk/BubbleAdsCell;)V

    .line 599
    .end local v0           #bcell:Lcom/xiaomi/miui/pushads/sdk/BubbleAdsCell;
    :cond_0
    :goto_0
    return-void

    .line 584
    :cond_1
    iget v4, p1, Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;->showType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    move-object v3, p1

    .line 585
    check-cast v3, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCell;

    .line 587
    .local v3, ncell:Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCell;
    :try_start_0
    const-string v4, "\u63a5\u53d7\u5230\u4e86\u901a\u77e5\u680f\u4fe1\u606f"

    invoke-static {v4}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->showLog(Ljava/lang/String;)V

    .line 588
    iget-object v4, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mAdsListener:Lcom/xiaomi/miui/pushads/sdk/MiuiAdsListener;

    if-eqz v4, :cond_0

    .line 589
    new-instance v1, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCell;

    invoke-direct {v1, v3}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCell;-><init>(Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCell;)V

    .line 590
    .local v1, callBackCell:Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCell;
    iget-object v4, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mAdsListener:Lcom/xiaomi/miui/pushads/sdk/MiuiAdsListener;

    invoke-interface {v4, v1}, Lcom/xiaomi/miui/pushads/sdk/MiuiAdsListener;->onNotifyReceived(Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCell;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 591
    invoke-direct {p0, v3}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->handleNotifyCell(Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCell;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 595
    .end local v1           #callBackCell:Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCell;
    :catch_0
    move-exception v2

    .line 596
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "ads-notify-fd5dfce4"

    const-string v5, "SDK \u53d1\u51fanotification \u5931\u8d25"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleNotifyCell(Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCell;)V
    .locals 13
    .parameter "cell"

    .prologue
    const/4 v12, 0x1

    .line 669
    const/4 v8, 0x0

    .line 670
    .local v8, showPicture:Landroid/graphics/Bitmap;
    const/4 v9, 0x0

    .line 672
    .local v9, smallIcon:I
    const-string v10, "sdk \u5904\u7406\u901a\u77e5\u680f\u6d88\u606f"

    invoke-static {v10}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->showLog(Ljava/lang/String;)V

    .line 674
    iget-object v10, p1, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCell;->actionUrl:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v10

    iget-object v11, p1, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCell;->priText:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v11

    add-int v6, v10, v11

    .line 675
    .local v6, notifyId:I
    iget-object v10, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mAdsListener:Lcom/xiaomi/miui/pushads/sdk/MiuiAdsListener;

    invoke-interface {v10}, Lcom/xiaomi/miui/pushads/sdk/MiuiAdsListener;->getSmallIconID()I

    move-result v9

    .line 676
    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v10, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mContext:Landroid/content/Context;

    invoke-direct {v1, v10}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 678
    .local v1, builder:Landroid/app/Notification$Builder;
    if-eqz v9, :cond_0

    invoke-virtual {v1, v9}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 680
    :cond_0
    new-instance v7, Lcom/xiaomi/miui/pushads/sdk/NotificationBaseRemoteView;

    iget-object v10, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mContext:Landroid/content/Context;

    invoke-direct {v7, v10}, Lcom/xiaomi/miui/pushads/sdk/NotificationBaseRemoteView;-><init>(Landroid/content/Context;)V

    .line 682
    .local v7, remoteViews:Lcom/xiaomi/miui/pushads/sdk/NotificationBaseRemoteView;
    iget-object v10, p1, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCell;->priText:Ljava/lang/String;

    iget-object v11, p1, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCell;->secText:Ljava/lang/String;

    invoke-virtual {v7, v10, v11}, Lcom/xiaomi/miui/pushads/sdk/NotificationBaseRemoteView;->setTitles(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    invoke-virtual {v7, v9}, Lcom/xiaomi/miui/pushads/sdk/NotificationBaseRemoteView;->setIcon(I)V

    .line 684
    invoke-direct {p0, p1, v6, v7}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->setActionButton(Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCell;ILcom/xiaomi/miui/pushads/sdk/NotificationBaseRemoteView;)V

    .line 686
    invoke-virtual {v1, v7}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 687
    iget-object v10, p1, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCell;->titText:Ljava/lang/String;

    invoke-virtual {v1, v10}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v10

    invoke-virtual {v10, v12}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 692
    const/4 v10, 0x2

    invoke-direct {p0, p1, v10}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->getPendingIntentByType(Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCell;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 693
    .local v2, clickPendingIntent:Landroid/app/PendingIntent;
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 695
    invoke-direct {p0, p1, v12}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->getPendingIntentByType(Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCell;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 696
    .local v3, deletePendingIntent:Landroid/app/PendingIntent;
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 698
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    .line 701
    .local v5, notification:Landroid/app/Notification;
    invoke-virtual {p1}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCell;->getDownloadedImagePath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 702
    invoke-virtual {p1}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCell;->getDownloadedImagePath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 703
    if-eqz v8, :cond_1

    .line 704
    const-string v10, "\u5927\u56fe\u6a21\u5f0f"

    invoke-static {v10}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->showLog(Ljava/lang/String;)V

    .line 705
    new-instance v0, Lcom/xiaomi/miui/pushads/sdk/NotificationBigRemoteView;

    iget-object v10, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mContext:Landroid/content/Context;

    invoke-direct {v0, v10}, Lcom/xiaomi/miui/pushads/sdk/NotificationBigRemoteView;-><init>(Landroid/content/Context;)V

    .line 706
    .local v0, bigRemoteViews:Lcom/xiaomi/miui/pushads/sdk/NotificationBigRemoteView;
    iget-object v10, p1, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCell;->priText:Ljava/lang/String;

    iget-object v11, p1, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCell;->secText:Ljava/lang/String;

    invoke-virtual {v0, v10, v11}, Lcom/xiaomi/miui/pushads/sdk/NotificationBigRemoteView;->setTitles(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    invoke-virtual {v0, v9}, Lcom/xiaomi/miui/pushads/sdk/NotificationBigRemoteView;->setIcon(I)V

    .line 708
    invoke-virtual {v0, v8}, Lcom/xiaomi/miui/pushads/sdk/NotificationBigRemoteView;->setBigPicture(Landroid/graphics/Bitmap;)V

    .line 709
    invoke-direct {p0, p1, v6, v0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->setActionButton(Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCell;ILcom/xiaomi/miui/pushads/sdk/NotificationBaseRemoteView;)V

    .line 710
    iput-object v0, v5, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 714
    .end local v0           #bigRemoteViews:Lcom/xiaomi/miui/pushads/sdk/NotificationBigRemoteView;
    :cond_1
    iget-object v10, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mContext:Landroid/content/Context;

    const-string v11, "notification"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 717
    .local v4, manager:Landroid/app/NotificationManager;
    invoke-virtual {v4, v6, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 718
    return-void
.end method

.method private handleOuterMessage(Ljava/lang/String;)Z
    .locals 7
    .parameter "content"

    .prologue
    const/4 v4, 0x1

    .line 265
    const/4 v0, 0x0

    .line 267
    .local v0, contentJson:Lorg/json/JSONObject;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    .end local v0           #contentJson:Lorg/json/JSONObject;
    .local v1, contentJson:Lorg/json/JSONObject;
    :try_start_1
    const-string v5, "showType"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    .line 269
    .local v3, showType:I
    const/16 v5, 0x3e8

    if-ne v3, v5, :cond_1

    .line 270
    iget-object v5, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->outerListener:Lcom/xiaomi/miui/pushads/sdk/common/IOuterMsgListener;

    if-eqz v5, :cond_0

    .line 271
    iget-object v5, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->outerListener:Lcom/xiaomi/miui/pushads/sdk/common/IOuterMsgListener;

    const-string v6, "content"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/xiaomi/miui/pushads/sdk/common/IOuterMsgListener;->onRecOuterMsg(Ljava/lang/String;)V

    move-object v0, v1

    .line 282
    .end local v1           #contentJson:Lorg/json/JSONObject;
    .end local v3           #showType:I
    .restart local v0       #contentJson:Lorg/json/JSONObject;
    :goto_0
    return v4

    .line 275
    .end local v0           #contentJson:Lorg/json/JSONObject;
    .restart local v1       #contentJson:Lorg/json/JSONObject;
    .restart local v3       #showType:I
    :cond_0
    const-string v5, "ads-notify-fd5dfce4"

    const-string v6, "\u63a5\u53d7\u5230\u5916\u90e8\u7684\u6d88\u606f\uff0c\u4f46\u662f\u5916\u90e8\u7684listener"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 276
    .end local v1           #contentJson:Lorg/json/JSONObject;
    .restart local v0       #contentJson:Lorg/json/JSONObject;
    goto :goto_0

    .line 278
    .end local v3           #showType:I
    :catch_0
    move-exception v2

    .line 279
    .local v2, e:Lorg/json/JSONException;
    :goto_1
    goto :goto_0

    .line 282
    .end local v0           #contentJson:Lorg/json/JSONObject;
    .end local v2           #e:Lorg/json/JSONException;
    .restart local v1       #contentJson:Lorg/json/JSONObject;
    .restart local v3       #showType:I
    :cond_1
    const/4 v4, 0x0

    move-object v0, v1

    .end local v1           #contentJson:Lorg/json/JSONObject;
    .restart local v0       #contentJson:Lorg/json/JSONObject;
    goto :goto_0

    .line 278
    .end local v0           #contentJson:Lorg/json/JSONObject;
    .end local v3           #showType:I
    .restart local v1       #contentJson:Lorg/json/JSONObject;
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1           #contentJson:Lorg/json/JSONObject;
    .restart local v0       #contentJson:Lorg/json/JSONObject;
    goto :goto_1
.end method

.method private initMembers()V
    .locals 4

    .prologue
    .line 175
    invoke-static {}, Lcom/xiaomi/miui/pushads/sdk/NetUtils;->getLocalIPAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mIp:Ljava/lang/String;

    .line 177
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/miui/pushads/sdk/NetUtils;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mImei:Ljava/lang/String;

    .line 178
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/miui/pushads/sdk/NetUtils;->getXiaomiUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mUserId:Ljava/lang/String;

    .line 180
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 181
    .local v0, cacheFolder:Ljava/io/File;
    new-instance v1, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCache;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "com.xiaomi.miui.pushads.sdk:adscache"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCache;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mAdsCache:Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCache;

    .line 182
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mFileCacheCells:Ljava/util/ArrayList;

    .line 183
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mPrefer:Landroid/content/SharedPreferences;

    .line 186
    new-instance v1, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew$1;

    invoke-direct {v1, p0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew$1;-><init>(Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;)V

    iput-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mHandler:Landroid/os/Handler;

    .line 216
    return-void
.end method

.method private initReceiver()V
    .locals 3

    .prologue
    .line 398
    new-instance v1, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsNetReceiver;

    invoke-direct {v1, p0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsNetReceiver;-><init>(Lcom/xiaomi/miui/pushads/sdk/INotifyAdsListener;)V

    iput-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mNetChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 399
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 400
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 401
    const-string v1, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 402
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mNetChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 403
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mReceiverRegistered:Z

    .line 404
    return-void
.end method

.method public static declared-synchronized open2(Landroid/content/Context;Lcom/xiaomi/miui/pushads/sdk/MiuiAdsListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;
    .locals 9
    .parameter "context"
    .parameter "listener"
    .parameter "appPackageName"
    .parameter "appId"
    .parameter "appToken"
    .parameter "outerId"
    .parameter "topicId"

    .prologue
    .line 467
    const-class v8, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;

    monitor-enter v8

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6253\u5f00\u7684 app \u662f: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->showLog(Ljava/lang/String;)V

    .line 468
    sget-object v0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->sInstance:Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;

    if-nez v0, :cond_2

    .line 470
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0"

    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 471
    :cond_0
    const-string p5, ""

    .line 472
    :cond_1
    new-instance v0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;-><init>(Landroid/content/Context;Lcom/xiaomi/miui/pushads/sdk/MiuiAdsListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->sInstance:Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;

    .line 475
    :cond_2
    sget-object v0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->sInstance:Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v8

    return-object v0

    .line 467
    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0
.end method

.method private passReceiveLimit(Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;)Z
    .locals 6
    .parameter "cell"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 722
    const/4 v0, 0x0

    .line 725
    .local v0, successCount:I
    iget v4, p1, Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;->receiveUpperBound:I

    if-gtz v4, :cond_1

    .line 726
    const-string v3, "\u767d\u540d\u5355\u7528\u6237"

    invoke-static {v3}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->showLog(Ljava/lang/String;)V

    .line 751
    :cond_0
    :goto_0
    return v2

    .line 730
    :cond_1
    const/4 v1, 0x0

    .line 732
    .local v1, upperBound:I
    iget v4, p1, Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;->showType:I

    packed-switch v4, :pswitch_data_0

    .line 745
    :goto_1
    if-le v0, v1, :cond_0

    .line 748
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

    invoke-static {v2}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->showLog(Ljava/lang/String;)V

    move v2, v3

    .line 751
    goto :goto_0

    .line 734
    :pswitch_0
    iget v4, p1, Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;->receiveUpperBound:I

    mul-int/lit8 v1, v4, 0x4

    .line 735
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u5192\u6ce1\u4e0a\u9650: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->showLog(Ljava/lang/String;)V

    .line 736
    iget-object v4, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mPrefer:Landroid/content/SharedPreferences;

    const-string v5, "bubblecount"

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 737
    goto :goto_1

    .line 739
    :pswitch_1
    iget v1, p1, Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;->receiveUpperBound:I

    .line 740
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u901a\u77e5\u4e0a\u9650: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->showLog(Ljava/lang/String;)V

    .line 741
    iget-object v4, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mPrefer:Landroid/content/SharedPreferences;

    const-string v5, "notifycount"

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_1

    .line 732
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
    .line 842
    const/4 v1, 0x0

    iput v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mCacheCount:I

    .line 843
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mAdsCache:Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCache;

    invoke-virtual {v1}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCache;->getAdsCacheCellFromCacheFile()Ljava/util/ArrayList;

    move-result-object v0

    .line 844
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCacheCell;>;"
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mFileCacheCells:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 845
    invoke-direct {p0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->downloadCacheAds()V

    .line 846
    return-void
.end method

.method private pushOneAdsRequest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "adsJsonString"
    .parameter "appPackageName"

    .prologue
    .line 500
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->createAndExcuteDownloader(Ljava/lang/String;ILjava/lang/String;)V

    .line 501
    return-void
.end method

.method public static declared-synchronized reopen2(Landroid/content/Context;Lcom/xiaomi/miui/pushads/sdk/MiuiAdsListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;
    .locals 9
    .parameter "context"
    .parameter "listener"
    .parameter "appPackageName"
    .parameter "appId"
    .parameter "appToken"
    .parameter "outerId"
    .parameter "topicId"

    .prologue
    .line 494
    const-class v8, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;

    monitor-enter v8

    :try_start_0
    new-instance v0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;-><init>(Landroid/content/Context;Lcom/xiaomi/miui/pushads/sdk/MiuiAdsListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->sInstance:Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;

    .line 495
    sget-object v0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->sInstance:Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v8

    return-object v0

    .line 494
    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0
.end method

.method private sendReceiveLog(Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;)V
    .locals 3
    .parameter "cell"

    .prologue
    .line 570
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->logSender:Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;

    if-eqz v0, :cond_0

    .line 571
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u53d1\u9001\u9001\u8fbe\u7684 trace "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p1, Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->showLog(Ljava/lang/String;)V

    .line 572
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->logSender:Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;

    new-instance v1, Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsTraceCell;

    invoke-direct {v1, p1}, Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsTraceCell;-><init>(Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;->receiveTrace(Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsTraceCell;)V

    .line 574
    :cond_0
    return-void
.end method

.method private setActionButton(Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCell;ILcom/xiaomi/miui/pushads/sdk/NotificationBaseRemoteView;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 634
    const/4 v0, 0x0

    .line 635
    new-instance v1, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCell;

    invoke-direct {v1, p1}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCell;-><init>(Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCell;)V

    .line 637
    iget-object v2, p1, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCell;->actionText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 638
    iget-object v2, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mAdsListener:Lcom/xiaomi/miui/pushads/sdk/MiuiAdsListener;

    if-eqz v2, :cond_0

    .line 639
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mAdsListener:Lcom/xiaomi/miui/pushads/sdk/MiuiAdsListener;

    invoke-interface {v0, v1}, Lcom/xiaomi/miui/pushads/sdk/MiuiAdsListener;->getActionPendingIntent(Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCell;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 643
    :cond_0
    if-nez v0, :cond_1

    .line 666
    :goto_0
    return-void

    .line 645
    :cond_1
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mContext:Landroid/content/Context;

    const-class v3, Lcom/xiaomi/miui/pushads/sdk/MiPushRelayTraceService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 646
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 648
    invoke-virtual {p1}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCell;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 649
    const-string v3, "intenttype"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 653
    const-string v3, "notifyid"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 656
    const-string v3, "pendingintent"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 657
    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 659
    iget-wide v2, p1, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCell;->id:J

    long-to-int v0, v2

    .line 660
    mul-int/2addr v0, v0

    add-int/lit8 v0, v0, 0x3

    .line 662
    iget-object v2, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mContext:Landroid/content/Context;

    const/high16 v3, 0x800

    invoke-static {v2, v0, v1, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 665
    iget-object v1, p1, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCell;->actionText:Ljava/lang/String;

    invoke-virtual {p3, v1, v0}, Lcom/xiaomi/miui/pushads/sdk/NotificationBaseRemoteView;->setActionButton(Ljava/lang/String;Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private setAlias()V
    .locals 3

    .prologue
    .line 327
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mOuterId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 328
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mOuterId:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mAlias:Ljava/lang/String;

    .line 341
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.xiaomi.miui.pushads.sdk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mAlias:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mAlias:Ljava/lang/String;

    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8bbe\u7f6e\u522b\u540d: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mAlias:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " thread: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->showLog(Ljava/lang/String;)V

    .line 343
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mAlias:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->getCategory()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/xiaomi/mipush/sdk/MiPushClient;->setAlias(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    :goto_1
    return-void

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mUserId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 331
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mUserId:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mAlias:Ljava/lang/String;

    goto :goto_0

    .line 332
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mImei:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 333
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mImei:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mAlias:Ljava/lang/String;

    goto :goto_0

    .line 335
    :cond_2
    const-string v0, "ads-notify-fd5dfce4"

    const-string v1, "\u6ca1\u6709 outerId, userId, imei, \u8bbe\u7f6e\u522b\u540d\u5931\u8d25"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private setTopic()V
    .locals 3

    .prologue
    .line 315
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mTopic:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8bbe\u7f6etopic "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mTopic:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->showLog(Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mTopic:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->getCategory()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/xiaomi/mipush/sdk/MiPushClient;->subscribe(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    :cond_0
    return-void
.end method

.method public static showLog(Ljava/lang/String;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 939
    const-string v0, "ads-notify-fd5dfce4"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    return-void
.end method


# virtual methods
.method public declared-synchronized getCurrentSuccess(I)I
    .locals 4
    .parameter "showType"

    .prologue
    .line 407
    monitor-enter p0

    const/4 v0, 0x0

    .line 408
    .local v0, ret:I
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 409
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mPrefer:Landroid/content/SharedPreferences;

    const-string v2, "notifycount"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 414
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 410
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 411
    :try_start_1
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mPrefer:Landroid/content/SharedPreferences;

    const-string v2, "bubblecount"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 407
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized increaseSuccessAds(I)V
    .locals 4
    .parameter "showType"

    .prologue
    .line 418
    monitor-enter p0

    const/4 v0, 0x0

    .line 420
    .local v0, ret:I
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 421
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mPrefer:Landroid/content/SharedPreferences;

    const-string v2, "notifycount"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 422
    add-int/lit8 v0, v0, 0x1

    .line 423
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mPrefer:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "notifycount"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 429
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 424
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 425
    :try_start_1
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mPrefer:Landroid/content/SharedPreferences;

    const-string v2, "bubblecount"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 426
    add-int/lit8 v0, v0, 0x1

    .line 427
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mPrefer:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "bubblecount"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 418
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public onAccountChanged()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 797
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5c0f\u7c73\u8d26\u6237\u53d1\u751f\u4e86\u6539\u53d8: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mAlias:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " thread: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->showLog(Ljava/lang/String;)V

    .line 800
    iget-boolean v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mInitialSuccess:Z

    if-nez v0, :cond_1

    .line 839
    :cond_0
    :goto_0
    return-void

    .line 803
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/NetUtils;->getXiaomiUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mUserId:Ljava/lang/String;

    .line 804
    const-string v0, ""

    .line 810
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mAlias:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mOuterId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 811
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mOuterId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 812
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u7528\u6237\u4f7f\u7528\u7684\u662f\u81ea\u5b9a\u4e49\u7684\u8d26\u6237: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mOuterId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->showLog(Ljava/lang/String;)V

    goto :goto_0

    .line 818
    :cond_3
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mUserId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 819
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.xiaomi.miui.pushads.sdk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mUserId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 827
    :goto_1
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mAlias:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 828
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u53d6\u6d88\u65e7\u7684\u8d26\u6237: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mAlias:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->showLog(Ljava/lang/String;)V

    .line 829
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mAlias:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->getCategory()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/xiaomi/mipush/sdk/MiPushClient;->unsetAlias(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8bbe\u7f6e\u65b0\u7684\u8d26\u6237: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->showLog(Ljava/lang/String;)V

    .line 831
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->getCategory()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/xiaomi/mipush/sdk/MiPushClient;->setAlias(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    iput-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mAlias:Ljava/lang/String;

    .line 835
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mPrefer:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "starttime"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 836
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mPrefer:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "notifycount"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 837
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mPrefer:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "bubblecount"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 820
    :cond_4
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mImei:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 821
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.xiaomi.miui.pushads.sdk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mImei:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 823
    :cond_5
    const-string v0, "ads-notify-fd5dfce4"

    const-string v1, "\u6ca1\u6709 userid, imei onAccountChanged \u91cd\u8bbealias \u5931\u8d25"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onAdsReceived(ILcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;Lcom/xiaomi/miui/pushads/sdk/NotifyAdsDownloader;)V
    .locals 4
    .parameter "status"
    .parameter "cell"
    .parameter "downloader"

    .prologue
    .line 529
    if-nez p2, :cond_1

    .line 530
    const-string v0, "\u8fd4\u56de\u5e7f\u544a\u4e3anull"

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->showLog(Ljava/lang/String;)V

    .line 567
    :cond_0
    :goto_0
    return-void

    .line 534
    :cond_1
    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    .line 535
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

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->showLog(Ljava/lang/String;)V

    .line 536
    iget v0, p2, Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;->failedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p2, Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;->failedCount:I

    .line 538
    iget v0, p2, Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;->failedCount:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_2

    .line 539
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

    .line 540
    iget-object v0, p2, Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;->adsJsonString:Ljava/lang/String;

    iget-wide v1, p2, Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;->lastShowTime:J

    iget v3, p2, Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;->failedCount:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->cache2File(Ljava/lang/String;JI)V

    .line 560
    :goto_1
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mAdsListener:Lcom/xiaomi/miui/pushads/sdk/MiuiAdsListener;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 561
    invoke-direct {p0, p2}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->passReceiveLimit(Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 562
    invoke-direct {p0, p2}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->handleAdsCellBySDK(Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;)V

    goto :goto_0

    .line 542
    :cond_2
    const-string v0, "\u4e0b\u8f7d\u5931\u8d25\u6b21\u6570\u8d85\u8fc7 10 \u4e0d\u5199\u5165\u7f13\u5b58"

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/LogUtils;->logProcess(Ljava/lang/String;)V

    goto :goto_1

    .line 544
    :cond_3
    if-nez p1, :cond_5

    .line 546
    iget v0, p2, Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;->receiveUpperBound:I

    if-lez v0, :cond_4

    .line 547
    iget v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mSuccessCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mSuccessCount:I

    .line 548
    invoke-static {}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->getInstance()Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;

    move-result-object v0

    iget v1, p2, Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;->showType:I

    invoke-virtual {v0, v1}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->increaseSuccessAds(I)V

    .line 550
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

    invoke-static {}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->getInstance()Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;

    move-result-object v1

    iget v2, p2, Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;->showType:I

    invoke-virtual {v1, v2}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->getCurrentSuccess(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->showLog(Ljava/lang/String;)V

    goto :goto_1

    .line 555
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

    .line 556
    const-string v0, "\u5e7f\u544a\u65e0\u6548\u6216\u8005\u8d85\u8fc7\u9650\u5236"

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/LogUtils;->logProcess(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 564
    :cond_6
    const-string v0, "\u5e7f\u544a\u6570\u91cf\u8d85\u8fc7\u9650\u5236\uff0c\u4e0d\u8fd4\u56de\u7ed9APP"

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->showLog(Ljava/lang/String;)V

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
    .line 374
    .local p5, params:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 376
    .local v2, setAliasFlag:Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCommandResult == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " resultCode: "

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

    invoke-static {v3}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->showLog(Ljava/lang/String;)V

    .line 377
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 378
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

    invoke-static {v3}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->showLog(Ljava/lang/String;)V

    .line 377
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 381
    :cond_0
    const-string v3, "set-alias"

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 382
    const/4 v1, 0x0

    :goto_1
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 383
    invoke-interface {p5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 384
    .local v0, alias:Ljava/lang/String;
    iget-object v3, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mAlias:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 385
    const/4 v2, 0x1

    .line 386
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mAppPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-->\u8bbe\u7f6e\u522b\u540d\u6210\u529f: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mAlias:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->showLog(Ljava/lang/String;)V

    .line 382
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 390
    .end local v0           #alias:Ljava/lang/String;
    :cond_2
    if-nez v2, :cond_3

    .line 391
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mAppPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-->\u8bbe\u7f6e\u522b\u540d\u5931\u8d25\uff0c\u91cd\u65b0\u8bbe\u7f6e: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mAlias:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->showLog(Ljava/lang/String;)V

    .line 392
    iget-object v3, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 395
    :cond_3
    return-void
.end method

.method public onInitializeResult(JLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "resultCode"
    .parameter "reason"
    .parameter "regID"

    .prologue
    .line 289
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mAdsListener:Lcom/xiaomi/miui/pushads/sdk/MiuiAdsListener;

    if-eqz v1, :cond_0

    .line 290
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 291
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 292
    long-to-int v1, p1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 293
    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 294
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 297
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    sget v1, Lcom/xiaomi/mipush/sdk/ErrorCode;->SUCCESS:I

    int-to-long v1, v1

    cmp-long v1, v1, p1

    if-nez v1, :cond_2

    .line 298
    const-string v1, "\u901a\u9053\u8fdb\u884c\u521d\u59cb\u5316OK"

    invoke-static {v1}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->showLog(Ljava/lang/String;)V

    .line 299
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 301
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mTopic:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 302
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 304
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 309
    :goto_0
    return-void

    .line 306
    :cond_2
    const-string v1, "\u901a\u9053\u521d\u59cb\u5316\u5931\u8d25\uff0c \u5df2\u7ecf\u901a\u77e5\u4e86app\uff0c\u9700\u8981\u91cd\u65b0 open \u901a\u9053"

    invoke-static {v1}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->showLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onNetChanged()V
    .locals 1

    .prologue
    .line 764
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/NetUtils;->canDownloadAds(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 770
    :goto_0
    return-void

    .line 767
    :cond_0
    invoke-static {}, Lcom/xiaomi/miui/pushads/sdk/NetUtils;->getLocalIPAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mIp:Ljava/lang/String;

    .line 769
    invoke-direct {p0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->pushCellsInCacheFile()V

    goto :goto_0
.end method

.method public onReceiveMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .parameter "content"
    .parameter "alias"
    .parameter "topic"
    .parameter "flag"

    .prologue
    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

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

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->showLog(Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mAlias:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 231
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

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->showLog(Ljava/lang/String;)V

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mAlias:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 236
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mAlias:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 237
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

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->showLog(Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/xiaomi/mipush/sdk/MiPushClient;->unsetAlias(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 244
    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mTopic:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 245
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mTopic:Ljava/lang/String;

    invoke-static {v0, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u63a5\u53d7\u5230\u4e0d\u540ctopic \u7684\u6d88\u606f\uff0c\u6ce8\u9500\u65e7\u7684 "

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

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->showLog(Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p3, v1}, Lcom/xiaomi/mipush/sdk/MiPushClient;->unsubscribe(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 254
    :cond_3
    invoke-direct {p0, p1}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->handleOuterMessage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mAppPackageName:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->pushOneAdsRequest(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onSubscribeResult(JLjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "resultCode"
    .parameter "reason"
    .parameter "topic"

    .prologue
    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mAppPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-->topic \u56de\u8c03 resultCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " topic: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->showLog(Ljava/lang/String;)V

    .line 360
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    const-wide/32 v2, 0x36ee80

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 364
    :cond_0
    return-void
.end method

.method public onUnsubscribeResult(JLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "resultCode"
    .parameter "reason"
    .parameter "topic"

    .prologue
    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unsuscribe topic \u56de\u8c03 resultCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " topic: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->showLog(Ljava/lang/String;)V

    .line 370
    return-void
.end method
