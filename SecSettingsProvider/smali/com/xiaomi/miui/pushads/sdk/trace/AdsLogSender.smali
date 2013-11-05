.class public Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;
.super Ljava/lang/Object;
.source "AdsLogSender.java"

# interfaces
.implements Lcom/xiaomi/miui/pushads/sdk/trace/IAdsTraceListener;


# static fields
.field private static sInstance:Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;


# instance fields
.field private mAppId:Ljava/lang/String;

.field private mAppToken:Ljava/lang/String;

.field private mCacheCount:I

.field private mContext:Landroid/content/Context;

.field private mFailCount:I

.field private mFileCacheCells:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xiaomi/miui/pushads/sdk/trace/AdsCacheCell;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mImei:Ljava/lang/String;

.field private mIp:Ljava/lang/String;

.field private mLogCache:Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogCache;

.field private mNetChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mSendCount:I

.field private mSendingMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/xiaomi/miui/pushads/sdk/trace/AdsCacheCell;",
            ">;"
        }
    .end annotation
.end field

.field private mSuccCount:I

.field private mUserId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "appId"
    .parameter "appToken"

    .prologue
    const/16 v4, 0x64

    const/4 v1, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput v1, p0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;->mSuccCount:I

    .line 80
    iput v1, p0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;->mSendCount:I

    .line 81
    iput v1, p0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;->mFailCount:I

    .line 82
    iput v1, p0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;->mCacheCount:I

    .line 85
    iput-object p1, p0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;->mContext:Landroid/content/Context;

    .line 86
    invoke-static {}, Lcom/xiaomi/miui/pushads/sdk/NetUtils;->getLocalIPAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;->mIp:Ljava/lang/String;

    .line 87
    invoke-static {p1}, Lcom/xiaomi/miui/pushads/sdk/NetUtils;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;->mImei:Ljava/lang/String;

    .line 88
    invoke-static {p1}, Lcom/xiaomi/miui/pushads/sdk/NetUtils;->getXiaomiUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;->mUserId:Ljava/lang/String;

    .line 89
    iput-object p2, p0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;->mAppId:Ljava/lang/String;

    .line 90
    iput-object p3, p0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;->mAppToken:Ljava/lang/String;

    .line 92
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 93
    .local v0, cacheFolder:Ljava/io/File;
    new-instance v1, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogCache;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "com.xiaomi.miui.pushads.sdk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "logcache"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogCache;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;->mLogCache:Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogCache;

    .line 95
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v4}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;->mSendingMap:Ljava/util/HashMap;

    .line 96
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;->mFileCacheCells:Ljava/util/ArrayList;

    .line 97
    new-instance v1, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender$1;

    invoke-direct {v1, p0}, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender$1;-><init>(Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;)V

    iput-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;->mHandler:Landroid/os/Handler;

    .line 108
    invoke-direct {p0}, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;->initReceiver()V

    .line 113
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/miui/pushads/sdk/trace/AdsNetUtil;->canUploadLogs(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    invoke-direct {p0}, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;->pushCellsInCacheFile()V

    .line 116
    :cond_0
    return-void
.end method

.method private cache2LogFile(Lcom/xiaomi/miui/pushads/sdk/trace/AdsCacheCell;)V
    .locals 2
    .parameter "cell"

    .prologue
    .line 346
    iget v0, p0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;->mCacheCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;->mCacheCount:I

    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cacheCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;->mCacheCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/trace/AdsSaltUtil;->show(Ljava/lang/String;)V

    .line 348
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;->mLogCache:Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogCache;

    invoke-virtual {v0, p1}, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogCache;->appendInfo(Lcom/xiaomi/miui/pushads/sdk/trace/AdsCacheCell;)V

    .line 349
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;->mLogCache:Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogCache;

    invoke-virtual {v0}, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogCache;->flushFile()V

    .line 350
    return-void
.end method

.method private checkNetAndCacheIfNeed(Lcom/xiaomi/miui/pushads/sdk/trace/AdsCacheCell;)Z
    .locals 1
    .parameter "cell"

    .prologue
    .line 337
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/trace/AdsNetUtil;->canUploadLogs(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    const/4 v0, 0x1

    .line 342
    :goto_0
    return v0

    .line 341
    :cond_0
    invoke-direct {p0, p1}, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;->cache2LogFile(Lcom/xiaomi/miui/pushads/sdk/trace/AdsCacheCell;)V

    .line 342
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private excuteTrackTask(Lcom/xiaomi/miui/pushads/sdk/trace/AdsCacheCell;)V
    .locals 3
    .parameter "cell"

    .prologue
    .line 254
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;->mSendingMap:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/xiaomi/miui/pushads/sdk/trace/AdsCacheCell;->mMd5:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 264
    :goto_0
    return-void

    .line 258
    :cond_0
    iget v1, p0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;->mSendCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;->mSendCount:I

    .line 259
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;->mSendCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/miui/pushads/sdk/trace/AdsSaltUtil;->show(Ljava/lang/String;)V

    .line 260
    new-instance v0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogTraceTask;

    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;->mAppId:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;->mAppToken:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogTraceTask;-><init>(Lcom/xiaomi/miui/pushads/sdk/trace/IAdsTraceListener;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/miui/pushads/sdk/trace/AdsCacheCell;)V

    .line 262
    .local v0, logTask:Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogTraceTask;
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;->mSendingMap:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/xiaomi/miui/pushads/sdk/trace/AdsCacheCell;->mMd5:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogTraceTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private getBase64NotifyJsonString(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter
    .parameter "actionType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsTraceCell;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 291
    .local p1, cellList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsTraceCell;>;"
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 292
    .local v7, log:Lorg/json/JSONObject;
    const-string v8, "userId"

    iget-object v9, p0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;->mUserId:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 293
    const-string v8, "imei"

    iget-object v9, p0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;->mImei:Ljava/lang/String;

    invoke-static {v9}, Lcom/xiaomi/miui/pushads/sdk/trace/AdsSaltUtil;->getMd5Digest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 294
    const-string v8, "ip"

    iget-object v9, p0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;->mIp:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 295
    const-string v8, "actionType"

    invoke-virtual {v7, v8, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 296
    const-string v8, "actionTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v7, v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 299
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 301
    .local v0, adList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v5, v8, :cond_2

    .line 303
    const/4 v2, 0x0

    .line 304
    .local v2, cell:Lorg/json/JSONObject;
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsTraceCell;

    iget-object v8, v8, Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsTraceCell;->content:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 305
    new-instance v2, Lorg/json/JSONObject;

    .end local v2           #cell:Lorg/json/JSONObject;
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 314
    .restart local v2       #cell:Lorg/json/JSONObject;
    :goto_1
    if-nez v2, :cond_0

    .line 315
    new-instance v2, Lorg/json/JSONObject;

    .end local v2           #cell:Lorg/json/JSONObject;
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 318
    .restart local v2       #cell:Lorg/json/JSONObject;
    :cond_0
    const-string v9, "adId"

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsTraceCell;

    iget-wide v10, v8, Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsTraceCell;->adId:J

    invoke-virtual {v2, v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 319
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 308
    :cond_1
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsTraceCell;

    iget-object v8, v8, Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsTraceCell;->content:Ljava/lang/String;

    invoke-direct {v3, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #cell:Lorg/json/JSONObject;
    .local v3, cell:Lorg/json/JSONObject;
    move-object v2, v3

    .line 311
    .end local v3           #cell:Lorg/json/JSONObject;
    .restart local v2       #cell:Lorg/json/JSONObject;
    goto :goto_1

    .line 309
    :catch_0
    move-exception v4

    .line 310
    .local v4, e:Ljava/lang/Exception;
    const-string v8, "com.xiaomi.miui.ads.pushsdk"

    const-string v9, "content \u4e0d\u662fjson\u4e32"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 322
    .end local v2           #cell:Lorg/json/JSONObject;
    .end local v4           #e:Ljava/lang/Exception;
    :cond_2
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6, v0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 323
    .local v6, jsonArray:Lorg/json/JSONArray;
    const-string v8, "adList"

    invoke-virtual {v7, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 325
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    const/4 v9, 0x2

    invoke-static {v8, v9}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .line 327
    .local v1, base64:Ljava/lang/String;
    return-object v1
.end method

.method public static declared-synchronized getInstance()Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;
    .locals 2

    .prologue
    .line 146
    const-class v0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;->sInstance:Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;
    .locals 2
    .parameter "context"
    .parameter "appId"
    .parameter "appToken"

    .prologue
    .line 137
    const-class v1, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;->sInstance:Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;

    if-nez v0, :cond_0

    .line 138
    new-instance v0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;->sInstance:Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;

    .line 141
    :cond_0
    sget-object v0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;->sInstance:Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;

    invoke-static {v0, p0}, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;->replaceContext(Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;Landroid/content/Context;)V

    .line 142
    sget-object v0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;->sInstance:Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initReceiver()V
    .locals 3

    .prologue
    .line 119
    new-instance v1, Lcom/xiaomi/miui/pushads/sdk/trace/AdsNetReceiver;

    invoke-direct {v1, p0}, Lcom/xiaomi/miui/pushads/sdk/trace/AdsNetReceiver;-><init>(Lcom/xiaomi/miui/pushads/sdk/trace/IAdsTraceListener;)V

    iput-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;->mNetChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 120
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 121
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 122
    const-string v1, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 123
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;->mNetChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 124
    return-void
.end method

.method private pushCellsInCacheFile()V
    .locals 3

    .prologue
    .line 127
    const/4 v1, 0x0

    iput v1, p0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;->mCacheCount:I

    .line 128
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;->mLogCache:Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogCache;

    invoke-virtual {v1}, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogCache;->getAdsCacheCellFromCacheFile()Ljava/util/ArrayList;

    move-result-object v0

    .line 129
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/xiaomi/miui/pushads/sdk/trace/AdsCacheCell;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u83b7\u53d6cache\u5e76\u53d1\u9001  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/miui/pushads/sdk/NetUtils;->getNetState(Landroid/content/Context;)Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager$NetState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/miui/pushads/sdk/trace/AdsSaltUtil;->show(Ljava/lang/String;)V

    .line 131
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;->mFileCacheCells:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 132
    invoke-direct {p0}, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;->pushTraceTasks()V

    .line 133
    return-void
.end method

.method private pushTraceTasks()V
    .locals 7

    .prologue
    .line 230
    iget-object v4, p0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/xiaomi/miui/pushads/sdk/trace/AdsNetUtil;->canUploadLogs(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cache \u4e2a\u6570: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;->mFileCacheCells:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/miui/pushads/sdk/trace/AdsSaltUtil;->show(Ljava/lang/String;)V

    .line 234
    iget-object v4, p0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;->mFileCacheCells:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 235
    .local v2, itor:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/xiaomi/miui/pushads/sdk/trace/AdsCacheCell;>;"
    const/4 v1, 0x0

    .line 236
    .local v1, i:I
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0xa

    if-ge v1, v4, :cond_2

    .line 237
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsCacheCell;

    .line 238
    .local v0, cell:Lcom/xiaomi/miui/pushads/sdk/trace/AdsCacheCell;
    add-int/lit8 v1, v1, 0x1

    .line 239
    invoke-direct {p0, v0}, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;->excuteTrackTask(Lcom/xiaomi/miui/pushads/sdk/trace/AdsCacheCell;)V

    .line 240
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 243
    .end local v0           #cell:Lcom/xiaomi/miui/pushads/sdk/trace/AdsCacheCell;
    :cond_2
    iget-object v4, p0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;->mFileCacheCells:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 244
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cache \u592a\u591a\uff0c\u4e0b\u6b21\u53d1\u9001 left: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;->mFileCacheCells:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/miui/pushads/sdk/trace/AdsSaltUtil;->show(Ljava/lang/String;)V

    .line 245
    iget-object v4, p0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    .line 246
    .local v3, msg:Landroid/os/Message;
    const/4 v4, 0x1

    iput v4, v3, Landroid/os/Message;->what:I

    .line 247
    iget-object v4, p0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;->mHandler:Landroid/os/Handler;

    const-wide/16 v5, 0xbb8

    invoke-virtual {v4, v3, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private static replaceContext(Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;Landroid/content/Context;)V
    .locals 1
    .parameter "logSender"
    .parameter "context"

    .prologue
    .line 354
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 355
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;->mContext:Landroid/content/Context;

    if-eq v0, p1, :cond_0

    .line 356
    iput-object p1, p0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;->mContext:Landroid/content/Context;

    .line 359
    :cond_0
    return-void
.end method

.method private sendTask(Ljava/util/ArrayList;Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter "actionType"
    .parameter "showType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsTraceCell;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 198
    .local p1, cellList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsTraceCell;>;"
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;->getBase64NotifyJsonString(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, base64:Ljava/lang/String;
    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/trace/AdsSaltUtil;->getMd5Digest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 200
    .local v1, md5:Ljava/lang/String;
    new-instance v2, Lcom/xiaomi/miui/pushads/sdk/trace/AdsCacheCell;

    invoke-direct {v2, p3, v0, v1}, Lcom/xiaomi/miui/pushads/sdk/trace/AdsCacheCell;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;->checkNetAndCacheIfNeed(Lcom/xiaomi/miui/pushads/sdk/trace/AdsCacheCell;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 201
    new-instance v2, Lcom/xiaomi/miui/pushads/sdk/trace/AdsCacheCell;

    invoke-direct {v2, p3, v0, v1}, Lcom/xiaomi/miui/pushads/sdk/trace/AdsCacheCell;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;->excuteTrackTask(Lcom/xiaomi/miui/pushads/sdk/trace/AdsCacheCell;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    .end local v0           #base64:Ljava/lang/String;
    .end local v1           #md5:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 203
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public clickTrace(Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsTraceCell;)V
    .locals 5
    .parameter "cell"

    .prologue
    .line 170
    iget-wide v1, p1, Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsTraceCell;->adId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    .line 175
    :goto_0
    return-void

    .line 172
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 173
    .local v0, cellList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsTraceCell;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    const-string v1, "click"

    iget v2, p1, Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsTraceCell;->showType:I

    invoke-direct {p0, v0, v1, v2}, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;->sendTask(Ljava/util/ArrayList;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onAccountChanged()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/NetUtils;->getXiaomiUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;->mUserId:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public onNetStateChanged()V
    .locals 2

    .prologue
    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u7f51\u7edc\u6539\u53d8"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/miui/pushads/sdk/NetUtils;->getNetState(Landroid/content/Context;)Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager$NetState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/trace/AdsSaltUtil;->show(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/trace/AdsNetUtil;->canUploadLogs(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    :goto_0
    return-void

    .line 157
    :cond_0
    invoke-static {}, Lcom/xiaomi/miui/pushads/sdk/NetUtils;->getLocalIPAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;->mIp:Ljava/lang/String;

    .line 160
    invoke-direct {p0}, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;->pushCellsInCacheFile()V

    goto :goto_0
.end method

.method public onTraceTaskFinished(Ljava/lang/Integer;Lcom/xiaomi/miui/pushads/sdk/trace/AdsCacheCell;)V
    .locals 2
    .parameter "status"
    .parameter "cell"

    .prologue
    .line 273
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;->mSendingMap:Ljava/util/HashMap;

    iget-object v1, p2, Lcom/xiaomi/miui/pushads/sdk/trace/AdsCacheCell;->mMd5:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_1

    .line 275
    iget v0, p0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;->mFailCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;->mFailCount:I

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "faild: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;->mFailCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lcom/xiaomi/miui/pushads/sdk/trace/AdsCacheCell;->mMd5:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;->mSendingMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/trace/AdsSaltUtil;->show(Ljava/lang/String;)V

    .line 278
    invoke-direct {p0, p2}, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;->cache2LogFile(Lcom/xiaomi/miui/pushads/sdk/trace/AdsCacheCell;)V

    .line 284
    :goto_0
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;->mSendingMap:Ljava/util/HashMap;

    iget-object v1, p2, Lcom/xiaomi/miui/pushads/sdk/trace/AdsCacheCell;->mMd5:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    :cond_0
    return-void

    .line 280
    :cond_1
    iget v0, p0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;->mSuccCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;->mSuccCount:I

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "success: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;->mSuccCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/trace/AdsSaltUtil;->show(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public receiveTrace(Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsTraceCell;)V
    .locals 5
    .parameter "cell"

    .prologue
    .line 188
    iget-wide v1, p1, Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsTraceCell;->adId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    .line 193
    :goto_0
    return-void

    .line 190
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 191
    .local v0, cellList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsTraceCell;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    const-string v1, "received"

    iget v2, p1, Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsTraceCell;->showType:I

    invoke-direct {p0, v0, v1, v2}, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;->sendTask(Ljava/util/ArrayList;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public removeTrace(Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsTraceCell;)V
    .locals 5
    .parameter "cell"

    .prologue
    .line 179
    iget-wide v1, p1, Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsTraceCell;->adId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    .line 184
    :goto_0
    return-void

    .line 181
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 182
    .local v0, cellList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsTraceCell;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    const-string v1, "remove"

    iget v2, p1, Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsTraceCell;->showType:I

    invoke-direct {p0, v0, v1, v2}, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogSender;->sendTask(Ljava/util/ArrayList;Ljava/lang/String;I)V

    goto :goto_0
.end method
