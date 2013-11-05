.class Lcom/xiaomi/miui/pushads/sdk/NotifyAdsDownloader;
.super Landroid/os/AsyncTask;
.source "NotifyAdsDownloader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private mAdsCell:Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;

.field private mAdsJsonString:Ljava/lang/String;

.field private mAdsListener:Lcom/xiaomi/miui/pushads/sdk/INotifyAdsListener;

.field private mAppPackageName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mFailedCount:I

.field private mPrefer:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/lang/String;ILjava/lang/String;Lcom/xiaomi/miui/pushads/sdk/INotifyAdsListener;)V
    .locals 0
    .parameter "context"
    .parameter "pre"
    .parameter "adsJsonString"
    .parameter "failedCount"
    .parameter "appPackageName"
    .parameter "listener"

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsDownloader;->mContext:Landroid/content/Context;

    .line 39
    iput-object p6, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsDownloader;->mAdsListener:Lcom/xiaomi/miui/pushads/sdk/INotifyAdsListener;

    .line 40
    iput-object p3, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsDownloader;->mAdsJsonString:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsDownloader;->mPrefer:Landroid/content/SharedPreferences;

    .line 42
    iput-object p5, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsDownloader;->mAppPackageName:Ljava/lang/String;

    .line 43
    return-void
.end method

.method private downloadXiaomiAds(Ljava/io/File;)I
    .locals 6
    .parameter "parentFolder"

    .prologue
    .line 318
    const/4 v3, 0x0

    .line 319
    .local v3, ret:I
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsDownloader;->mAdsCell:Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;

    check-cast v1, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCell;

    .line 320
    .local v1, cell:Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCell;
    iget-object v0, v1, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCell;->imgUrl:Ljava/lang/String;

    .line 322
    .local v0, adsImage:Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v4, -0x1

    .line 336
    :goto_0
    return v4

    .line 324
    :cond_0
    iget-object v4, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsDownloader;->mContext:Landroid/content/Context;

    invoke-static {v4, p1, v0, v1}, Lcom/xiaomi/miui/pushads/sdk/DownloadUtils;->downFile(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCell;)I

    move-result v3

    .line 325
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u4e0b\u8f7d\u5e7f\u544a imgUrl: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \u7ed3\u679c\uff1a "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/miui/pushads/sdk/LogUtils;->logProcess(Ljava/lang/String;)V

    .line 327
    invoke-virtual {p0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsDownloader;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz v3, :cond_2

    .line 328
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsDownloader;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 329
    const-string v4, "asynctask \u88abcancel"

    invoke-static {v4}, Lcom/xiaomi/miui/pushads/sdk/LogUtils;->logProcess(Ljava/lang/String;)V

    :cond_2
    :goto_1
    move v4, v3

    .line 336
    goto :goto_0

    .line 331
    :cond_3
    iget-object v4, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsDownloader;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/xiaomi/miui/pushads/sdk/NetUtils;->getNetState(Landroid/content/Context;)Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager$NetState;

    move-result-object v2

    .line 332
    .local v2, curState:Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager$NetState;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u7f51\u7edc\u7c7b\u578b\u6539\u53d8\uff0c\u4e2d\u65ad\u4e0b\u8f7d: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/miui/pushads/sdk/LogUtils;->logProcess(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getAdsCellByType(I)Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;
    .locals 2
    .parameter "showType"

    .prologue
    .line 182
    new-instance v0, Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;

    invoke-direct {v0}, Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;-><init>()V

    .line 183
    .local v0, cell:Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;
    packed-switch p1, :pswitch_data_0

    .line 197
    :goto_0
    iget v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsDownloader;->mFailedCount:I

    iput v1, v0, Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;->failedCount:I

    .line 198
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsDownloader;->mAdsJsonString:Ljava/lang/String;

    iput-object v1, v0, Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;->adsJsonString:Ljava/lang/String;

    .line 199
    return-object v0

    .line 186
    :pswitch_0
    new-instance v0, Lcom/xiaomi/miui/pushads/sdk/BubbleAdsCell;

    .end local v0           #cell:Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;
    invoke-direct {v0}, Lcom/xiaomi/miui/pushads/sdk/BubbleAdsCell;-><init>()V

    .line 187
    .restart local v0       #cell:Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;
    goto :goto_0

    .line 190
    :pswitch_1
    new-instance v0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCell;

    .end local v0           #cell:Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;
    invoke-direct {v0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCell;-><init>()V

    .line 191
    .restart local v0       #cell:Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;
    goto :goto_0

    .line 183
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getResonByCode(I)Ljava/lang/String;
    .locals 1
    .parameter "ret"

    .prologue
    .line 83
    const-string v0, ""

    .line 84
    .local v0, str:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 106
    :goto_0
    return-object v0

    .line 86
    :pswitch_0
    const-string v0, "\u6210\u529f"

    .line 87
    goto :goto_0

    .line 89
    :pswitch_1
    const-string v0, "\u672a\u77e5\u539f\u56e0"

    .line 90
    goto :goto_0

    .line 92
    :pswitch_2
    const-string v0, "\u8fc7\u671f"

    .line 93
    goto :goto_0

    .line 95
    :pswitch_3
    const-string v0, "\u5230\u8fbe\u4e0a\u9650"

    .line 96
    goto :goto_0

    .line 98
    :pswitch_4
    const-string v0, "\u5e7f\u544a\u5931\u6548"

    .line 99
    goto :goto_0

    .line 101
    :pswitch_5
    const-string v0, "\u6d88\u606f\u4e0d\u5339\u914d"

    goto :goto_0

    .line 84
    :pswitch_data_0
    .packed-switch -0x5
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getShowTypeByJSON(Lorg/json/JSONObject;)I
    .locals 1
    .parameter "adsJsonObject"

    .prologue
    .line 178
    const-string v0, "showType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private parseAdsResponse(Ljava/lang/String;)I
    .locals 6
    .parameter "adsJsonString"

    .prologue
    .line 115
    const/4 v0, 0x0

    .line 117
    .local v0, adsJson:Lorg/json/JSONObject;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .end local v0           #adsJson:Lorg/json/JSONObject;
    .local v1, adsJson:Lorg/json/JSONObject;
    invoke-direct {p0, v1}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsDownloader;->passFilterRules(Lorg/json/JSONObject;)I

    move-result v3

    .line 124
    .local v3, ret:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u89e3\u6790\u53c2\u6570\u5e76\u68c0\u67e5, \u8fd4\u56de\u7ed3\u679c: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, v3}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsDownloader;->getResonByCode(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->showLog(Ljava/lang/String;)V

    .line 126
    if-eqz v3, :cond_0

    move-object v0, v1

    .line 135
    .end local v1           #adsJson:Lorg/json/JSONObject;
    .end local v3           #ret:I
    .restart local v0       #adsJson:Lorg/json/JSONObject;
    :goto_0
    return v3

    .line 118
    :catch_0
    move-exception v2

    .line 119
    .local v2, e:Lorg/json/JSONException;
    const/4 v3, -0x1

    goto :goto_0

    .line 129
    .end local v0           #adsJson:Lorg/json/JSONObject;
    .end local v2           #e:Lorg/json/JSONException;
    .restart local v1       #adsJson:Lorg/json/JSONObject;
    .restart local v3       #ret:I
    :cond_0
    invoke-direct {p0, v1}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsDownloader;->passAdsDistributePolicy(Lorg/json/JSONObject;)I

    move-result v3

    .line 131
    iget-object v4, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsDownloader;->mAdsCell:Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;

    if-eqz v4, :cond_1

    .line 132
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u5e7f\u544a\u83b7\u53d6\u6700\u7ec8\u7ed3\u679c\uff1a "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \u7c7b\u578b: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsDownloader;->mAdsCell:Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;

    iget v5, v5, Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;->showType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->showLog(Ljava/lang/String;)V

    :cond_1
    move-object v0, v1

    .line 135
    .end local v1           #adsJson:Lorg/json/JSONObject;
    .restart local v0       #adsJson:Lorg/json/JSONObject;
    goto :goto_0
.end method

.method private passAdsDistributePolicy(Lorg/json/JSONObject;)I
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 241
    invoke-direct {p0, p1}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsDownloader;->getShowTypeByJSON(Lorg/json/JSONObject;)I

    move-result v3

    .line 248
    :try_start_0
    const-string v0, "miui.util.NotificationFilterHelper"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 249
    const-string v4, "canSendNotifications"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 250
    iget-object v4, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsDownloader;->mAppPackageName:Ljava/lang/String;

    invoke-static {v4}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->showLog(Ljava/lang/String;)V

    .line 252
    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsDownloader;->mContext:Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsDownloader;->mAppPackageName:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 253
    if-nez v0, :cond_1

    move v0, v1

    .line 259
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u662f\u5426\u7981\u7528\u4e86\u901a\u77e5\u680f\u5e7f\u544a "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->showLog(Ljava/lang/String;)V

    .line 261
    const-string v4, "receiveUpperBound"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    .line 264
    if-lez v4, :cond_3

    .line 265
    invoke-direct {p0, v4, v3}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsDownloader;->passLimitConstrain(II)Z

    move-result v4

    if-nez v4, :cond_2

    .line 270
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u662f\u5426\u8fbe\u5230\u4e0a\u9650 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->showLog(Ljava/lang/String;)V

    .line 273
    if-nez v1, :cond_0

    if-ne v3, v8, :cond_7

    if-eqz v0, :cond_7

    .line 275
    :cond_0
    :try_start_1
    const-string v1, "\u4f7f\u7528\u5019\u9009\u5e7f\u544a "

    invoke-static {v1}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->showLog(Ljava/lang/String;)V

    .line 276
    const-string v1, "subAdId"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 277
    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-gtz v1, :cond_4

    .line 278
    const-string v0, "\u6ca1\u6709\u5019\u9009\u5e7f\u544a "

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->showLog(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 279
    const/4 v2, -0x5

    .line 307
    :goto_2
    return v2

    :cond_1
    move v0, v2

    .line 253
    goto :goto_0

    .line 254
    :catch_0
    move-exception v0

    .line 255
    const-string v4, "NotifyAdsDownloader"

    const-string v5, "reflect errors!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    .line 265
    goto :goto_1

    :cond_3
    move v1, v2

    .line 267
    goto :goto_1

    .line 282
    :cond_4
    :try_start_2
    const-string v1, "subAdInfo"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 285
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 286
    invoke-direct {p0, v3}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsDownloader;->getShowTypeByJSON(Lorg/json/JSONObject;)I

    move-result v1

    .line 288
    if-ne v1, v8, :cond_5

    if-eqz v0, :cond_5

    .line 289
    const/4 v2, -0x6

    goto :goto_2

    .line 292
    :cond_5
    invoke-direct {p0, v3}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsDownloader;->passFilterRules(Lorg/json/JSONObject;)I

    move-result v0

    .line 293
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u5019\u9009\u5e7f\u544a\u89e3\u6790\u53c2\u6570\u5e76\u68c0\u67e5\uff1a "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->showLog(Ljava/lang/String;)V

    .line 294
    if-eqz v0, :cond_6

    move v2, v0

    .line 295
    goto :goto_2

    .line 297
    :cond_6
    invoke-direct {p0, v1}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsDownloader;->getAdsCellByType(I)Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsDownloader;->mAdsCell:Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;

    .line 298
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsDownloader;->mAdsCell:Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;

    invoke-virtual {v0, v3}, Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;->setValuesByJson(Lorg/json/JSONObject;)V

    goto :goto_2

    .line 306
    :catch_1
    move-exception v0

    .line 307
    const/4 v2, -0x1

    goto :goto_2

    .line 300
    :cond_7
    const-string v0, "\u4f7f\u7528\u4e3b\u5e7f\u544a "

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager;->showLog(Ljava/lang/String;)V

    .line 301
    invoke-direct {p0, v3}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsDownloader;->getAdsCellByType(I)Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsDownloader;->mAdsCell:Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;

    .line 302
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsDownloader;->mAdsCell:Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;

    invoke-virtual {v0, p1}, Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;->setValuesByJson(Lorg/json/JSONObject;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2
.end method

.method private passFilterRules(Lorg/json/JSONObject;)I
    .locals 9
    .parameter "adsJsonObject"

    .prologue
    const-wide/16 v7, 0x0

    const/4 v4, -0x1

    .line 145
    if-nez p1, :cond_1

    .line 174
    :cond_0
    :goto_0
    return v4

    .line 148
    :cond_1
    const-string v5, "status"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 149
    .local v3, status:Ljava/lang/String;
    const-string v5, "success"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 153
    const-string v4, "nonsense"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 154
    .local v2, nosense:I
    if-eqz v2, :cond_2

    .line 155
    const-string v4, "MIUIADSPUSH"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u5e7f\u544a\u65e0\u6548\u6807\u5fd7\u8bbe\u7f6e: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const-string v4, "\u5e7f\u544a\u65e0\u6548"

    invoke-static {v4}, Lcom/xiaomi/miui/pushads/sdk/LogUtils;->logProcess(Ljava/lang/String;)V

    .line 157
    const/4 v4, -0x2

    goto :goto_0

    .line 163
    :cond_2
    const-string v4, "lastShowTime"

    invoke-virtual {p1, v4, v7, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 165
    .local v0, lastShow:J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "expireTime: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " currentTime: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->showLog(Ljava/lang/String;)V

    .line 166
    cmp-long v4, v0, v7

    if-eqz v4, :cond_3

    .line 167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v4, v0, v4

    if-gez v4, :cond_3

    .line 168
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u5e7f\u544a\u5df2\u7ecf\u8fc7\u671f lastShow: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " current: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/miui/pushads/sdk/LogUtils;->logProcess(Ljava/lang/String;)V

    .line 170
    const/4 v4, -0x4

    goto/16 :goto_0

    .line 174
    :cond_3
    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method private passLimitConstrain(II)Z
    .locals 12
    .parameter "upperBound"
    .parameter "showType"

    .prologue
    .line 203
    iget-object v7, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsDownloader;->mPrefer:Landroid/content/SharedPreferences;

    monitor-enter v7

    .line 204
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 205
    .local v1, current:J
    iget-object v6, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsDownloader;->mPrefer:Landroid/content/SharedPreferences;

    const-string v8, "starttime"

    const-wide/16 v9, 0x0

    invoke-interface {v6, v8, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 207
    .local v4, start:J
    const-wide/16 v8, 0x0

    cmp-long v6, v4, v8

    if-nez v6, :cond_0

    .line 208
    iget-object v6, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsDownloader;->mPrefer:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v8, "starttime"

    invoke-interface {v6, v8, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 209
    move-wide v4, v1

    .line 210
    const/4 v6, 0x1

    monitor-exit v7

    .line 231
    :goto_0
    return v6

    .line 214
    :cond_0
    sub-long v8, v1, v4

    const-wide/32 v10, 0x5265c00

    cmp-long v6, v8, v10

    if-lez v6, :cond_1

    .line 215
    iget-object v6, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsDownloader;->mPrefer:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v8, "starttime"

    const-wide/16 v9, 0x0

    invoke-interface {v6, v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 216
    iget-object v6, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsDownloader;->mPrefer:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v8, "notifycount"

    const/4 v9, 0x0

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 217
    iget-object v6, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsDownloader;->mPrefer:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v8, "bubblecount"

    const/4 v9, 0x0

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 218
    const/4 v6, 0x1

    monitor-exit v7

    goto :goto_0

    .line 232
    .end local v1           #current:J
    .end local v4           #start:J
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 221
    .restart local v1       #current:J
    .restart local v4       #start:J
    :cond_1
    const/4 v6, 0x2

    if-ne p2, v6, :cond_2

    .line 222
    :try_start_1
    iget-object v6, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsDownloader;->mPrefer:Landroid/content/SharedPreferences;

    const-string v8, "notifycount"

    const/4 v9, 0x0

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 223
    .local v3, notifyCount:I
    if-ge v3, p1, :cond_3

    const/4 v6, 0x1

    monitor-exit v7

    goto :goto_0

    .line 224
    .end local v3           #notifyCount:I
    :cond_2
    const/4 v6, 0x1

    if-ne p2, v6, :cond_3

    .line 225
    iget-object v6, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsDownloader;->mPrefer:Landroid/content/SharedPreferences;

    const-string v8, "bubblecount"

    const/4 v9, 0x0

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 226
    .local v0, bubbleCount:I
    mul-int/lit8 v6, p1, 0x4

    if-ge v0, v6, :cond_3

    const/4 v6, 0x1

    monitor-exit v7

    goto :goto_0

    .line 230
    .end local v0           #bubbleCount:I
    :cond_3
    const-string v6, "\u8d85\u8fc7\u4e86\u6bcf\u5929\u63a5\u53d7\u5e7f\u544a\u7684\u4e0a\u9650"

    invoke-static {v6}, Lcom/xiaomi/miui/pushads/sdk/LogUtils;->logUpLimit(Ljava/lang/String;)V

    .line 231
    const/4 v6, 0x0

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 4
    .parameter "params"

    .prologue
    .line 48
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsDownloader;->mAdsJsonString:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsDownloader;->parseAdsResponse(Ljava/lang/String;)I

    move-result v0

    .line 51
    .local v0, ret:I
    if-eqz v0, :cond_0

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5e7f\u544a\u89e3\u6790\u5931\u8d25 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/miui/pushads/sdk/LogUtils;->logProcess(Ljava/lang/String;)V

    .line 53
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 60
    :goto_0
    return-object v1

    .line 56
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsDownloader;->mAdsCell:Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;

    iget v1, v1, Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;->showType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 57
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsDownloader;->mContext:Landroid/content/Context;

    const-string v2, "comxiaomimiuipushadssdk"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsDownloader;->downloadXiaomiAds(Ljava/io/File;)I

    move-result v0

    .line 60
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsDownloader;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 2

    .prologue
    .line 77
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 78
    const-string v0, "ADS_DOWNLOAD"

    const-string v1, "onCancelled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3
    .parameter "integer"

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 67
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsDownloader;->mAdsListener:Lcom/xiaomi/miui/pushads/sdk/INotifyAdsListener;

    if-eqz v0, :cond_0

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4e0b\u8f7d post \u7684\u7ed3\u679c\u662f: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/LogUtils;->logProcess(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsDownloader;->mAdsListener:Lcom/xiaomi/miui/pushads/sdk/INotifyAdsListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsDownloader;->mAdsCell:Lcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;

    invoke-interface {v0, v1, v2, p0}, Lcom/xiaomi/miui/pushads/sdk/INotifyAdsListener;->onAdsReceived(ILcom/xiaomi/miui/pushads/sdk/common/MiuiAdsCell;Lcom/xiaomi/miui/pushads/sdk/NotifyAdsDownloader;)V

    .line 71
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsDownloader;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
