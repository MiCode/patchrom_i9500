.class final Lcom/kenai/jbosh/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kenai/jbosh/aa;


# instance fields
.field private final a:Ljava/util/concurrent/locks/Lock;

.field private final b:Lorg/apache/http/protocol/HttpContext;

.field private final c:Lorg/apache/http/client/HttpClient;

.field private d:Lorg/apache/http/client/methods/HttpPost;

.field private e:J

.field private f:Z

.field private g:Lcom/kenai/jbosh/BOSHException;

.field private h:Lcom/kenai/jbosh/AbstractBody;

.field private i:I


# direct methods
.method constructor <init>(Lorg/apache/http/client/HttpClient;Lcom/kenai/jbosh/BOSHClientConfig;Lcom/kenai/jbosh/x;Lcom/kenai/jbosh/AbstractBody;Landroid/content/Context;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/kenai/jbosh/c;->a:Ljava/util/concurrent/locks/Lock;

    iput-object p1, p0, Lcom/kenai/jbosh/c;->c:Lorg/apache/http/client/HttpClient;

    new-instance v0, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v0}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    iput-object v0, p0, Lcom/kenai/jbosh/c;->b:Lorg/apache/http/protocol/HttpContext;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kenai/jbosh/c;->f:Z

    :try_start_0
    invoke-virtual {p4}, Lcom/kenai/jbosh/AbstractBody;->b()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/kenai/jbosh/q;->q:Lcom/kenai/jbosh/BodyQName;

    invoke-virtual {p4, v1}, Lcom/kenai/jbosh/AbstractBody;->a(Lcom/kenai/jbosh/BodyQName;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/kenai/jbosh/c;->e:J

    const-wide v1, 0x408f400000000000L

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    mul-double/2addr v1, v3

    double-to-int v1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "xm-http-bind&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/c/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p5}, Lcom/xiaomi/channel/commonutils/b/a;->b(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p2}, Lcom/kenai/jbosh/BOSHClientConfig;->a()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/kenai/jbosh/BOSHClientConfig;->a()Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/b/a;->a(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "t"

    invoke-virtual {v4, v5, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/kenai/jbosh/c;->d:Lorg/apache/http/client/methods/HttpPost;

    iget-object v1, p0, Lcom/kenai/jbosh/c;->d:Lorg/apache/http/client/methods/HttpPost;

    const-string v4, "X-Online-Host"

    invoke-virtual {v1, v4, v3}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lcom/kenai/jbosh/c;->d:Lorg/apache/http/client/methods/HttpPost;

    const-string v3, "X-Content-Sig"

    invoke-virtual {v1, v3, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kenai/jbosh/c;->d:Lorg/apache/http/client/methods/HttpPost;

    const-string v2, "Connection"

    const-string v3, "Keep-Alive"

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/kenai/jbosh/y;->a([B)[B

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    const-string v0, "application/octet-stream"

    invoke-virtual {v1, v0}, Lorg/apache/http/entity/ByteArrayEntity;->setContentType(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kenai/jbosh/c;->d:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    :goto_1
    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/kenai/jbosh/BOSHClientConfig;->a()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "t"

    invoke-virtual {v3, v4, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/kenai/jbosh/c;->d:Lorg/apache/http/client/methods/HttpPost;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/kenai/jbosh/BOSHException;

    const-string v2, "Could not generate request"

    invoke-direct {v1, v2, v0}, Lcom/kenai/jbosh/BOSHException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v1, p0, Lcom/kenai/jbosh/c;->g:Lcom/kenai/jbosh/BOSHException;

    goto :goto_1
.end method

.method private e()V
    .locals 9

    const/4 v1, 0x0

    const/4 v8, 0x3

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SMACK-BOSH: requesting, rid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/kenai/jbosh/c;->e:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " url="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/kenai/jbosh/c;->d:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpPost;->getURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    move v3, v0

    move-object v0, v1

    :goto_0
    if-ge v3, v8, :cond_0

    :try_start_1
    iget-object v2, p0, Lcom/kenai/jbosh/c;->c:Lorg/apache/http/client/HttpClient;

    iget-object v4, p0, Lcom/kenai/jbosh/c;->d:Lorg/apache/http/client/methods/HttpPost;

    iget-object v5, p0, Lcom/kenai/jbosh/c;->b:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v2, v4, v5}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v4

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SMACK-BOSH: get server response, code="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/xiaomi/channel/commonutils/logger/b;->b(Ljava/lang/String;)V

    const/16 v6, 0xc8

    if-ne v5, v6, :cond_2

    if-eqz v4, :cond_2

    const-string v6, "X-Content-Sig"

    invoke-interface {v2, v6}, Lorg/apache/http/HttpResponse;->containsHeader(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v4}, Lcom/kenai/jbosh/y;->b([B)[B

    move-result-object v4

    const-string v6, "X-Content-Sig"

    invoke-interface {v2, v6}, Lorg/apache/http/HttpResponse;->getLastHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-direct {v6, v4, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v6}, Lcom/kenai/jbosh/ad;->a(Ljava/lang/String;)Lcom/kenai/jbosh/ad;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "xm-http-bind&"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/kenai/jbosh/AbstractBody;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/xiaomi/channel/commonutils/c/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SMACK-BOSH: the server signature doesn\'t match, drop the response. received "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", expected "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/logger/b;->c(Ljava/lang/String;)V

    new-instance v2, Lcom/kenai/jbosh/BOSHException;

    const-string v4, "signature mismatch"

    invoke-direct {v2, v4}, Lcom/kenai/jbosh/BOSHException;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/kenai/jbosh/c;->g:Lcom/kenai/jbosh/BOSHException;

    invoke-virtual {p0}, Lcom/kenai/jbosh/c;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_1
    if-ne v3, v8, :cond_4

    :try_start_2
    invoke-virtual {p0}, Lcom/kenai/jbosh/c;->a()V

    iput-object v0, p0, Lcom/kenai/jbosh/c;->g:Lcom/kenai/jbosh/BOSHException;

    iget-object v0, p0, Lcom/kenai/jbosh/c;->g:Lcom/kenai/jbosh/BOSHException;

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_3
    iput-object v4, p0, Lcom/kenai/jbosh/c;->h:Lcom/kenai/jbosh/AbstractBody;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SMACK-BOSH: server response, rid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v6, p0, Lcom/kenai/jbosh/c;->e:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->b(Ljava/lang/String;)V

    iput v5, p0, Lcom/kenai/jbosh/c;->i:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kenai/jbosh/c;->f:Z

    move-object v0, v1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/kenai/jbosh/c;->a()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_4
    instance-of v2, v0, Ljava/net/SocketException;

    if-eqz v2, :cond_3

    new-instance v2, Lcom/kenai/jbosh/BOSHException;

    const-string v4, "Could not obtain response"

    invoke-direct {v2, v4, v0}, Lcom/kenai/jbosh/BOSHException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SMACK-BOSH: request error, retry="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move-object v0, v2

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/kenai/jbosh/c;->a()V

    new-instance v1, Lcom/kenai/jbosh/BOSHException;

    const-string v2, "Could not obtain response"

    invoke-direct {v1, v2, v0}, Lcom/kenai/jbosh/BOSHException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v1, p0, Lcom/kenai/jbosh/c;->g:Lcom/kenai/jbosh/BOSHException;

    iget-object v0, p0, Lcom/kenai/jbosh/c;->g:Lcom/kenai/jbosh/BOSHException;

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_4
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/kenai/jbosh/c;->d:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kenai/jbosh/c;->d:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    new-instance v0, Lcom/kenai/jbosh/BOSHException;

    const-string v1, "HTTP request aborted"

    invoke-direct {v0, v1}, Lcom/kenai/jbosh/BOSHException;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kenai/jbosh/c;->g:Lcom/kenai/jbosh/BOSHException;

    :cond_0
    return-void
.end method

.method public b()Lcom/kenai/jbosh/AbstractBody;
    .locals 2

    iget-object v0, p0, Lcom/kenai/jbosh/c;->g:Lcom/kenai/jbosh/BOSHException;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kenai/jbosh/c;->g:Lcom/kenai/jbosh/BOSHException;

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/kenai/jbosh/c;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-boolean v0, p0, Lcom/kenai/jbosh/c;->f:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/kenai/jbosh/c;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v0, p0, Lcom/kenai/jbosh/c;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iget-object v0, p0, Lcom/kenai/jbosh/c;->h:Lcom/kenai/jbosh/AbstractBody;

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/kenai/jbosh/c;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public c()I
    .locals 2

    iget-object v0, p0, Lcom/kenai/jbosh/c;->g:Lcom/kenai/jbosh/BOSHException;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kenai/jbosh/c;->g:Lcom/kenai/jbosh/BOSHException;

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/kenai/jbosh/c;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-boolean v0, p0, Lcom/kenai/jbosh/c;->f:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/kenai/jbosh/c;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v0, p0, Lcom/kenai/jbosh/c;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iget v0, p0, Lcom/kenai/jbosh/c;->i:I

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/kenai/jbosh/c;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public d()J
    .locals 2

    iget-wide v0, p0, Lcom/kenai/jbosh/c;->e:J

    return-wide v0
.end method
