.class Lcom/xiaomi/miui/pushads/sdk/trace/AdsNetUtil;
.super Ljava/lang/Object;
.source "AdsNetUtil.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canUploadLogs(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 37
    invoke-static {p0}, Lcom/xiaomi/miui/pushads/sdk/NetUtils;->getNetState(Landroid/content/Context;)Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager$NetState;

    move-result-object v0

    .line 38
    .local v0, curState:Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager$NetState;
    const/4 v1, 0x1

    .line 41
    .local v1, ret:Z
    sget-object v2, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager$NetState;->NONE:Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManager$NetState;

    if-ne v2, v0, :cond_0

    .line 42
    const/4 v1, 0x0

    .line 45
    :cond_0
    return v1
.end method

.method public static doAdsTrackLog(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/miui/pushads/sdk/trace/AdsCacheCell;)I
    .locals 10
    .parameter "appId"
    .parameter "appToken"
    .parameter "cell"

    .prologue
    .line 51
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 52
    .local v1, paramList:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "logValue"

    iget-object v8, p2, Lcom/xiaomi/miui/pushads/sdk/trace/AdsCacheCell;->mBase64:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "appId"

    invoke-direct {v6, v7, p0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "showType"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, p2, Lcom/xiaomi/miui/pushads/sdk/trace/AdsCacheCell;->mShowType:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    invoke-static {v1, p1}, Lcom/xiaomi/miui/pushads/sdk/trace/AdsSaltUtil;->getKeyFromParams(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 57
    .local v5, s:Ljava/lang/String;
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "s"

    invoke-direct {v6, v7, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    const/4 v2, 0x0

    .line 64
    .local v2, post:Lorg/apache/http/client/methods/HttpPost;
    :try_start_0
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    const-string v6, "http://new.api.ad.xiaomi.com/logNotificationAdActions"

    invoke-direct {v3, v6}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 66
    .end local v2           #post:Lorg/apache/http/client/methods/HttpPost;
    .local v3, post:Lorg/apache/http/client/methods/HttpPost;
    :try_start_1
    new-instance v6, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v7, "UTF-8"

    invoke-direct {v6, v1, v7}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 67
    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-virtual {v6, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 68
    .local v4, response:Lorg/apache/http/HttpResponse;
    const/16 v6, 0xc8

    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v7

    if-ne v6, v7, :cond_0

    .line 69
    const/4 v6, 0x0

    .line 79
    .end local v3           #post:Lorg/apache/http/client/methods/HttpPost;
    .end local v4           #response:Lorg/apache/http/HttpResponse;
    :goto_0
    return v6

    .line 71
    .restart local v2       #post:Lorg/apache/http/client/methods/HttpPost;
    :catch_0
    move-exception v0

    .line 72
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    :goto_1
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 79
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    .end local v2           #post:Lorg/apache/http/client/methods/HttpPost;
    :cond_0
    :goto_2
    const/4 v6, 0x1

    goto :goto_0

    .line 73
    .restart local v2       #post:Lorg/apache/http/client/methods/HttpPost;
    :catch_1
    move-exception v0

    .line 74
    .local v0, e:Lorg/apache/http/client/ClientProtocolException;
    :goto_3
    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_2

    .line 75
    .end local v0           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_2
    move-exception v0

    .line 76
    .local v0, e:Ljava/io/IOException;
    :goto_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 75
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #post:Lorg/apache/http/client/methods/HttpPost;
    .restart local v3       #post:Lorg/apache/http/client/methods/HttpPost;
    :catch_3
    move-exception v0

    move-object v2, v3

    .end local v3           #post:Lorg/apache/http/client/methods/HttpPost;
    .restart local v2       #post:Lorg/apache/http/client/methods/HttpPost;
    goto :goto_4

    .line 73
    .end local v2           #post:Lorg/apache/http/client/methods/HttpPost;
    .restart local v3       #post:Lorg/apache/http/client/methods/HttpPost;
    :catch_4
    move-exception v0

    move-object v2, v3

    .end local v3           #post:Lorg/apache/http/client/methods/HttpPost;
    .restart local v2       #post:Lorg/apache/http/client/methods/HttpPost;
    goto :goto_3

    .line 71
    .end local v2           #post:Lorg/apache/http/client/methods/HttpPost;
    .restart local v3       #post:Lorg/apache/http/client/methods/HttpPost;
    :catch_5
    move-exception v0

    move-object v2, v3

    .end local v3           #post:Lorg/apache/http/client/methods/HttpPost;
    .restart local v2       #post:Lorg/apache/http/client/methods/HttpPost;
    goto :goto_1
.end method
