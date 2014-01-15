.class final Lcom/baidu/mapapi/d$1;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/mapapi/d;->a(IILjava/lang/String;Lcom/baidu/mapapi/d$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/baidu/mapapi/d$a;

.field final synthetic c:I

.field final synthetic d:I


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/baidu/mapapi/d$a;II)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mapapi/d$1;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/baidu/mapapi/d$1;->b:Lcom/baidu/mapapi/d$a;

    iput p3, p0, Lcom/baidu/mapapi/d$1;->c:I

    iput p4, p0, Lcom/baidu/mapapi/d$1;->d:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v2, 0x0

    sget-object v3, Lcom/baidu/mapapi/d;->b:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    sget-object v0, Lcom/baidu/mapapi/d;->b:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/baidu/mapapi/d$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/u;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/baidu/mapapi/d$1;->b:Lcom/baidu/mapapi/d$a;

    iget v2, p0, Lcom/baidu/mapapi/d$1;->c:I

    iget v4, p0, Lcom/baidu/mapapi/d$1;->d:I

    iget-object v5, p0, Lcom/baidu/mapapi/d$1;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v4, v5, v0}, Lcom/baidu/mapapi/d$a;->onOk(IILjava/lang/String;Ljava/lang/Object;)V

    monitor-exit v3

    :goto_0
    return-void

    :cond_0
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/baidu/mapapi/d$1;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/mapapi/d;->a(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v1

    if-eqz v1, :cond_5

    const/16 v0, 0x4e20

    :try_start_2
    invoke-virtual {v1, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {v1}, Ljava/net/URLConnection;->connect()V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v5, 0xc8

    if-ne v0, v5, :cond_2

    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    const/16 v0, 0x800

    new-array v5, v0, [B

    invoke-virtual {v2, v5}, Ljava/io/InputStream;->read([B)I

    move-result v0

    :goto_1
    const/4 v6, -0x1

    if-eq v0, v6, :cond_1

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {v2, v5}, Ljava/io/InputStream;->read([B)I

    move-result v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/baidu/mapapi/d$1;->b:Lcom/baidu/mapapi/d$a;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/baidu/mapapi/u;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/baidu/mapapi/u;-><init>([B)V

    new-instance v4, Ljava/lang/ref/SoftReference;

    invoke-direct {v4, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sget-object v5, Lcom/baidu/mapapi/d;->b:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/baidu/mapapi/d$1;->a:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/baidu/mapapi/d$1;->b:Lcom/baidu/mapapi/d$a;

    iget v5, p0, Lcom/baidu/mapapi/d$1;->c:I

    iget v6, p0, Lcom/baidu/mapapi/d$1;->d:I

    iget-object v7, p0, Lcom/baidu/mapapi/d$1;->a:Ljava/lang/String;

    invoke-interface {v4, v5, v6, v7, v0}, Lcom/baidu/mapapi/d$a;->onOk(IILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :goto_2
    if-eqz v2, :cond_3

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_3
    :goto_3
    if-eqz v1, :cond_4

    :try_start_4
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    :goto_4
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/baidu/mapapi/d$1;->b:Lcom/baidu/mapapi/d$a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/mapapi/d$1;->b:Lcom/baidu/mapapi/d$a;

    iget v4, p0, Lcom/baidu/mapapi/d$1;->c:I

    iget v5, p0, Lcom/baidu/mapapi/d$1;->d:I

    iget-object v6, p0, Lcom/baidu/mapapi/d$1;->a:Ljava/lang/String;

    const-string v7, "\u7f51\u7edc\u8fde\u63a5\u5931\u8d25"

    invoke-interface {v0, v4, v5, v6, v7}, Lcom/baidu/mapapi/d$a;->onError(IILjava/lang/String;Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    :goto_5
    :try_start_6
    iget-object v4, p0, Lcom/baidu/mapapi/d$1;->b:Lcom/baidu/mapapi/d$a;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/baidu/mapapi/d$1;->b:Lcom/baidu/mapapi/d$a;

    iget v5, p0, Lcom/baidu/mapapi/d$1;->c:I

    iget v6, p0, Lcom/baidu/mapapi/d$1;->d:I

    iget-object v7, p0, Lcom/baidu/mapapi/d$1;->a:Ljava/lang/String;

    const-string v8, "\u7f51\u7edc\u8fde\u63a5\u5931\u8d25"

    invoke-interface {v4, v5, v6, v7, v8}, Lcom/baidu/mapapi/d$a;->onError(IILjava/lang/String;Ljava/lang/Object;)V

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v2, :cond_7

    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_7
    :goto_6
    if-eqz v1, :cond_4

    :try_start_8
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_4

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v1, v2

    :goto_7
    if-eqz v2, :cond_8

    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    :cond_8
    :goto_8
    if-eqz v1, :cond_9

    :try_start_a
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_9
    throw v0

    :catch_3
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_8

    :catchall_2
    move-exception v0

    goto :goto_7

    :catch_4
    move-exception v0

    move-object v1, v2

    goto :goto_5
.end method
