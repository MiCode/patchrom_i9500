.class Lcom/touchtype/personalizer/PersonalizationRequest$2;
.super Ljava/lang/Thread;
.source "PersonalizationRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/touchtype/personalizer/PersonalizationRequest;->deleteRemoteData(Lcom/touchtype/personalizer/PersonalizationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/touchtype/personalizer/PersonalizationRequest;

.field final synthetic val$deleteUrl:Ljava/lang/String;

.field final synthetic val$pzListener:Lcom/touchtype/personalizer/PersonalizationListener;


# direct methods
.method constructor <init>(Lcom/touchtype/personalizer/PersonalizationRequest;Ljava/lang/String;Lcom/touchtype/personalizer/PersonalizationListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 422
    iput-object p1, p0, Lcom/touchtype/personalizer/PersonalizationRequest$2;->this$0:Lcom/touchtype/personalizer/PersonalizationRequest;

    iput-object p2, p0, Lcom/touchtype/personalizer/PersonalizationRequest$2;->val$deleteUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/touchtype/personalizer/PersonalizationRequest$2;->val$pzListener:Lcom/touchtype/personalizer/PersonalizationListener;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 428
    :try_start_0
    new-instance v3, Ljava/net/URL;

    iget-object v4, p0, Lcom/touchtype/personalizer/PersonalizationRequest$2;->val$deleteUrl:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 429
    .local v3, url:Ljava/net/URL;
    invoke-static {}, Lcom/touchtype/personalizer/PersonalizationRequest;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sending Delete Remote Data request to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/touchtype_fluency/service/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    .line 435
    .local v1, httpsConn:Ljavax/net/ssl/HttpsURLConnection;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljavax/net/ssl/HttpsURLConnection;->setInstanceFollowRedirects(Z)V

    .line 436
    const-string v4, "DELETE"

    invoke-virtual {v1, v4}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 437
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 438
    const/16 v4, 0x2710

    invoke-virtual {v1, v4}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 439
    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v2

    .line 441
    .local v2, response:I
    invoke-static {}, Lcom/touchtype/personalizer/PersonalizationRequest;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Delete request: got response "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/touchtype_fluency/service/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    sparse-switch v2, :sswitch_data_0

    .line 457
    invoke-static {}, Lcom/touchtype/personalizer/PersonalizationRequest;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Unhandled HTTP response in delete request"

    invoke-static {v4, v5}, Lcom/touchtype_fluency/service/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 470
    .end local v1           #httpsConn:Ljavax/net/ssl/HttpsURLConnection;
    .end local v2           #response:I
    .end local v3           #url:Ljava/net/URL;
    :goto_0
    iget-object v4, p0, Lcom/touchtype/personalizer/PersonalizationRequest$2;->val$pzListener:Lcom/touchtype/personalizer/PersonalizationListener;

    invoke-interface {v4}, Lcom/touchtype/personalizer/PersonalizationListener;->failed()V

    .line 471
    :goto_1
    return-void

    .line 446
    .restart local v1       #httpsConn:Ljavax/net/ssl/HttpsURLConnection;
    .restart local v2       #response:I
    .restart local v3       #url:Ljava/net/URL;
    :sswitch_0
    :try_start_1
    invoke-static {}, Lcom/touchtype/personalizer/PersonalizationRequest;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Delete request successful"

    invoke-static {v4, v5}, Lcom/touchtype_fluency/service/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    iget-object v4, p0, Lcom/touchtype/personalizer/PersonalizationRequest$2;->val$pzListener:Lcom/touchtype/personalizer/PersonalizationListener;

    invoke-interface {v4}, Lcom/touchtype/personalizer/PersonalizationListener;->succeeded()V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 462
    .end local v1           #httpsConn:Ljavax/net/ssl/HttpsURLConnection;
    .end local v2           #response:I
    .end local v3           #url:Ljava/net/URL;
    :catch_0
    move-exception v0

    .line 463
    .local v0, e:Ljava/net/MalformedURLException;
    invoke-static {}, Lcom/touchtype/personalizer/PersonalizationRequest;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Malformed URL: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/touchtype/personalizer/PersonalizationRequest$2;->val$deleteUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/touchtype_fluency/service/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 451
    .end local v0           #e:Ljava/net/MalformedURLException;
    .restart local v1       #httpsConn:Ljavax/net/ssl/HttpsURLConnection;
    .restart local v2       #response:I
    .restart local v3       #url:Ljava/net/URL;
    :sswitch_1
    :try_start_2
    invoke-static {}, Lcom/touchtype/personalizer/PersonalizationRequest;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Delete request forbidden for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/touchtype_fluency/service/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 464
    .end local v1           #httpsConn:Ljavax/net/ssl/HttpsURLConnection;
    .end local v2           #response:I
    .end local v3           #url:Ljava/net/URL;
    :catch_1
    move-exception v4

    goto :goto_0

    .line 466
    :catch_2
    move-exception v0

    .line 467
    .local v0, e:Ljava/io/IOException;
    invoke-static {}, Lcom/touchtype/personalizer/PersonalizationRequest;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IO Exception trying to DELETE "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/touchtype/personalizer/PersonalizationRequest$2;->val$deleteUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/touchtype_fluency/service/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 443
    nop

    :sswitch_data_0
    .sparse-switch
        0xca -> :sswitch_0
        0x193 -> :sswitch_1
    .end sparse-switch
.end method
