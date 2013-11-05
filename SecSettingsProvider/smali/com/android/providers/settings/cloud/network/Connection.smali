.class public Lcom/android/providers/settings/cloud/network/Connection;
.super Ljava/lang/Object;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/settings/cloud/network/Connection$ConnectionException;,
        Lcom/android/providers/settings/cloud/network/Connection$Parameter;,
        Lcom/android/providers/settings/cloud/network/Connection$NetworkError;
    }
.end annotation


# instance fields
.field protected mNeedBaseParams:Z

.field protected mNeedGzipRequest:Z

.field protected mParameter:Lcom/android/providers/settings/cloud/network/Connection$Parameter;

.field protected mResponse:Lorg/json/JSONObject;

.field protected mUrl:Ljava/net/URL;

.field protected mUseGet:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .parameter "urlstring"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-string v3, "CloudSettingsConnection"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const/4 v1, 0x0

    .line 60
    .local v1, url:Ljava/net/URL;
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #url:Ljava/net/URL;
    .local v2, url:Ljava/net/URL;
    move-object v1, v2

    .line 64
    .end local v2           #url:Ljava/net/URL;
    .restart local v1       #url:Ljava/net/URL;
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/providers/settings/cloud/network/Connection;->init(Ljava/net/URL;)V

    .line 65
    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, e:Ljava/net/MalformedURLException;
    const-string v3, "CloudSettingsConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "URL error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static connect(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "baseUrlString"
    .parameter "appendUrlString"

    .prologue
    const/16 v2, 0x2f

    const/4 v1, 0x0

    .line 72
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object p0, p1

    .line 85
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 75
    .restart local p0
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_2

    .line 80
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 82
    :cond_2
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_3

    .line 83
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 85
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private handleResponseCode(I)Lcom/android/providers/settings/cloud/network/Connection$NetworkError;
    .locals 3
    .parameter "code"

    .prologue
    .line 360
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    .line 361
    sget-object v0, Lcom/android/providers/settings/cloud/network/Connection$NetworkError;->OK:Lcom/android/providers/settings/cloud/network/Connection$NetworkError;

    .line 364
    :goto_0
    return-object v0

    .line 363
    :cond_0
    const-string v0, "CloudSettingsConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Network Error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    sget-object v0, Lcom/android/providers/settings/cloud/network/Connection$NetworkError;->SERVER_ERROR:Lcom/android/providers/settings/cloud/network/Connection$NetworkError;

    goto :goto_0
.end method

.method private init(Ljava/net/URL;)V
    .locals 2
    .parameter "url"

    .prologue
    const/4 v1, 0x0

    .line 89
    iput-boolean v1, p0, Lcom/android/providers/settings/cloud/network/Connection;->mUseGet:Z

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/providers/settings/cloud/network/Connection;->mNeedBaseParams:Z

    .line 91
    iput-boolean v1, p0, Lcom/android/providers/settings/cloud/network/Connection;->mNeedGzipRequest:Z

    .line 92
    invoke-virtual {p0, p1}, Lcom/android/providers/settings/cloud/network/Connection;->checkURL(Ljava/net/URL;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iput-object p1, p0, Lcom/android/providers/settings/cloud/network/Connection;->mUrl:Ljava/net/URL;

    .line 95
    :cond_0
    return-void
.end method

.method private innerRequest(Ljava/lang/String;Ljava/lang/String;ZZLjava/io/OutputStream;)Lcom/android/providers/settings/cloud/network/Connection$NetworkError;
    .locals 15
    .parameter "url"
    .parameter "postData"
    .parameter "useGet"
    .parameter "gzipRequest"
    .parameter "outputStream"

    .prologue
    .line 243
    const/4 v5, 0x0

    .line 245
    .local v5, conn:Ljava/net/HttpURLConnection;
    const/4 v7, 0x0

    .line 247
    .local v7, currUrl:Ljava/net/URL;
    :try_start_0
    new-instance v8, Ljava/net/URL;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 254
    .end local v7           #currUrl:Ljava/net/URL;
    .local v8, currUrl:Ljava/net/URL;
    :try_start_1
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v5, v0

    .line 255
    const/16 v12, 0x2710

    invoke-virtual {v5, v12}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 256
    const/16 v12, 0x2710

    invoke-virtual {v5, v12}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 257
    const/4 v12, 0x1

    invoke-virtual {v5, v12}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 259
    if-eqz p3, :cond_5

    .line 260
    const-string v12, "GET"

    invoke-virtual {v5, v12}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 261
    const/4 v12, 0x0

    invoke-virtual {v5, v12}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 266
    :goto_0
    if-eqz p4, :cond_0

    .line 267
    const-string v12, "Content-Type"

    const-string v13, "application/gzip"

    invoke-virtual {v5, v12, v13}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const-string v12, "Content-Encoding"

    const-string v13, "gzip"

    invoke-virtual {v5, v12, v13}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 271
    :cond_0
    :try_start_2
    invoke-virtual {p0, v5}, Lcom/android/providers/settings/cloud/network/Connection;->onConnectionCreated(Ljava/net/HttpURLConnection;)Ljava/net/HttpURLConnection;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Lcom/android/providers/settings/cloud/network/Connection$ConnectionException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    move-result-object v5

    .line 275
    :try_start_3
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->connect()V

    .line 278
    if-nez p3, :cond_2

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 279
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    .line 280
    .local v10, out:Ljava/io/OutputStream;
    if-eqz p4, :cond_1

    .line 281
    new-instance v11, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v11, v10}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .end local v10           #out:Ljava/io/OutputStream;
    .local v11, out:Ljava/io/OutputStream;
    move-object v10, v11

    .line 283
    .end local v11           #out:Ljava/io/OutputStream;
    .restart local v10       #out:Ljava/io/OutputStream;
    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/io/OutputStream;->write([B)V

    .line 284
    invoke-virtual {v10}, Ljava/io/OutputStream;->flush()V

    .line 285
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V

    .line 288
    .end local v10           #out:Ljava/io/OutputStream;
    :cond_2
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v12

    invoke-direct {p0, v12}, Lcom/android/providers/settings/cloud/network/Connection;->handleResponseCode(I)Lcom/android/providers/settings/cloud/network/Connection$NetworkError;

    move-result-object v4

    .line 289
    .local v4, code:Lcom/android/providers/settings/cloud/network/Connection$NetworkError;
    sget-object v12, Lcom/android/providers/settings/cloud/network/Connection$NetworkError;->OK:Lcom/android/providers/settings/cloud/network/Connection$NetworkError;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    if-ne v4, v12, :cond_9

    .line 290
    if-eqz p5, :cond_9

    .line 291
    const/4 v1, 0x0

    .line 293
    .local v1, bis:Ljava/io/BufferedInputStream;
    :try_start_4
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v12

    const/16 v13, 0x2000

    invoke-direct {v2, v12, v13}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 294
    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .local v2, bis:Ljava/io/BufferedInputStream;
    const/16 v12, 0x400

    :try_start_5
    new-array v3, v12, [B

    .line 296
    .local v3, buffer:[B
    :goto_1
    const/4 v12, 0x0

    const/16 v13, 0x400

    invoke-virtual {v2, v3, v12, v13}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v6

    .local v6, count:I
    if-lez v6, :cond_8

    .line 297
    const/4 v12, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v3, v12, v6}, Ljava/io/OutputStream;->write([BII)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    .line 300
    .end local v3           #buffer:[B
    .end local v6           #count:I
    :catch_0
    move-exception v9

    move-object v1, v2

    .line 302
    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    .local v9, e:Ljava/lang/Exception;
    :goto_2
    :try_start_6
    const-string v12, "CloudSettingsConnection"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Connection Exception for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v8}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " : read file stream error "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    sget-object v4, Lcom/android/providers/settings/cloud/network/Connection$NetworkError;->NETWORK_ERROR:Lcom/android/providers/settings/cloud/network/Connection$NetworkError;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 306
    .end local v4           #code:Lcom/android/providers/settings/cloud/network/Connection$NetworkError;
    if-eqz v1, :cond_3

    .line 307
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 320
    :cond_3
    if-eqz v5, :cond_4

    .line 321
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    move-object v7, v8

    .line 326
    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .end local v8           #currUrl:Ljava/net/URL;
    .end local v9           #e:Ljava/lang/Exception;
    .restart local v7       #currUrl:Ljava/net/URL;
    :goto_3
    return-object v4

    .line 248
    :catch_1
    move-exception v9

    .line 249
    .local v9, e:Ljava/net/MalformedURLException;
    const-string v12, "CloudSettingsConnection"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " URL error :"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    sget-object v4, Lcom/android/providers/settings/cloud/network/Connection$NetworkError;->URL_ERROR:Lcom/android/providers/settings/cloud/network/Connection$NetworkError;

    goto :goto_3

    .line 263
    .end local v7           #currUrl:Ljava/net/URL;
    .end local v9           #e:Ljava/net/MalformedURLException;
    .restart local v8       #currUrl:Ljava/net/URL;
    :cond_5
    :try_start_8
    const-string v12, "POST"

    invoke-virtual {v5, v12}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 264
    const/4 v12, 0x1

    invoke-virtual {v5, v12}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_0

    .line 315
    :catch_2
    move-exception v9

    .line 316
    .local v9, e:Ljava/io/IOException;
    :try_start_9
    const-string v12, "CloudSettingsConnection"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Connection I/O Exception for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v8}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " :"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 320
    if-eqz v5, :cond_6

    .line 321
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 326
    .end local v9           #e:Ljava/io/IOException;
    :cond_6
    :goto_4
    sget-object v4, Lcom/android/providers/settings/cloud/network/Connection$NetworkError;->NETWORK_ERROR:Lcom/android/providers/settings/cloud/network/Connection$NetworkError;

    move-object v7, v8

    .end local v8           #currUrl:Ljava/net/URL;
    .restart local v7       #currUrl:Ljava/net/URL;
    goto :goto_3

    .line 272
    .end local v7           #currUrl:Ljava/net/URL;
    .restart local v8       #currUrl:Ljava/net/URL;
    :catch_3
    move-exception v9

    .line 273
    .local v9, e:Lcom/android/providers/settings/cloud/network/Connection$ConnectionException;
    :try_start_a
    iget-object v4, v9, Lcom/android/providers/settings/cloud/network/Connection$ConnectionException;->mError:Lcom/android/providers/settings/cloud/network/Connection$NetworkError;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    .line 320
    if-eqz v5, :cond_7

    .line 321
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_7
    move-object v7, v8

    .end local v8           #currUrl:Ljava/net/URL;
    .restart local v7       #currUrl:Ljava/net/URL;
    goto :goto_3

    .line 299
    .end local v7           #currUrl:Ljava/net/URL;
    .end local v9           #e:Lcom/android/providers/settings/cloud/network/Connection$ConnectionException;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    .restart local v3       #buffer:[B
    .restart local v4       #code:Lcom/android/providers/settings/cloud/network/Connection$NetworkError;
    .restart local v6       #count:I
    .restart local v8       #currUrl:Ljava/net/URL;
    :cond_8
    :try_start_b
    invoke-virtual/range {p5 .. p5}, Ljava/io/OutputStream;->flush()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    .line 306
    if-eqz v2, :cond_9

    .line 307
    :try_start_c
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    .line 320
    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .end local v3           #buffer:[B
    .end local v6           #count:I
    :cond_9
    if-eqz v5, :cond_a

    .line 321
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_a
    move-object v7, v8

    .end local v8           #currUrl:Ljava/net/URL;
    .restart local v7       #currUrl:Ljava/net/URL;
    goto :goto_3

    .line 306
    .end local v7           #currUrl:Ljava/net/URL;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    .restart local v8       #currUrl:Ljava/net/URL;
    :catchall_0
    move-exception v12

    :goto_5
    if-eqz v1, :cond_b

    .line 307
    :try_start_d
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    :cond_b
    throw v12
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4

    .line 317
    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .end local v4           #code:Lcom/android/providers/settings/cloud/network/Connection$NetworkError;
    :catch_4
    move-exception v9

    .line 318
    .local v9, e:Ljava/lang/Exception;
    :try_start_e
    const-string v12, "CloudSettingsConnection"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Connection Exception for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v8}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " :"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 320
    if-eqz v5, :cond_6

    .line 321
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_4

    .line 320
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v12

    if-eqz v5, :cond_c

    .line 321
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_c
    throw v12

    .line 306
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    .restart local v4       #code:Lcom/android/providers/settings/cloud/network/Connection$NetworkError;
    :catchall_2
    move-exception v12

    move-object v1, v2

    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    goto :goto_5

    .line 300
    :catch_5
    move-exception v9

    goto/16 :goto_2
.end method


# virtual methods
.method protected checkURL(Ljava/net/URL;)Z
    .locals 1
    .parameter "url"

    .prologue
    .line 353
    if-nez p1, :cond_0

    .line 354
    const/4 v0, 0x0

    .line 356
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getResponse()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/providers/settings/cloud/network/Connection;->mResponse:Lorg/json/JSONObject;

    return-object v0
.end method

.method protected onConnectionCreated(Ljava/net/HttpURLConnection;)Ljava/net/HttpURLConnection;
    .locals 0
    .parameter "connection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/settings/cloud/network/Connection$ConnectionException;
        }
    .end annotation

    .prologue
    .line 349
    return-object p1
.end method

.method protected onQueryCreated(Lcom/android/providers/settings/cloud/network/Connection$Parameter;)Lcom/android/providers/settings/cloud/network/Connection$Parameter;
    .locals 0
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/settings/cloud/network/Connection$ConnectionException;
        }
    .end annotation

    .prologue
    .line 334
    return-object p1
.end method

.method protected onURLCreated(Ljava/lang/String;Lcom/android/providers/settings/cloud/network/Connection$Parameter;)Ljava/lang/String;
    .locals 0
    .parameter "url"
    .parameter "finalParams"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/settings/cloud/network/Connection$ConnectionException;
        }
    .end annotation

    .prologue
    .line 342
    return-object p1
.end method

.method protected request(Ljava/io/OutputStream;)Lcom/android/providers/settings/cloud/network/Connection$NetworkError;
    .locals 10
    .parameter "outputStream"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/providers/settings/cloud/network/Connection;->mUrl:Ljava/net/URL;

    if-nez v0, :cond_0

    .line 189
    sget-object v0, Lcom/android/providers/settings/cloud/network/Connection$NetworkError;->URL_ERROR:Lcom/android/providers/settings/cloud/network/Connection$NetworkError;

    .line 237
    :goto_0
    return-object v0

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/android/providers/settings/cloud/network/Connection;->mParameter:Lcom/android/providers/settings/cloud/network/Connection$Parameter;

    if-nez v0, :cond_1

    .line 194
    new-instance v0, Lcom/android/providers/settings/cloud/network/Connection$Parameter;

    invoke-direct {v0, p0}, Lcom/android/providers/settings/cloud/network/Connection$Parameter;-><init>(Lcom/android/providers/settings/cloud/network/Connection;)V

    iput-object v0, p0, Lcom/android/providers/settings/cloud/network/Connection;->mParameter:Lcom/android/providers/settings/cloud/network/Connection$Parameter;

    .line 196
    :cond_1
    iget-boolean v0, p0, Lcom/android/providers/settings/cloud/network/Connection;->mNeedBaseParams:Z

    if-eqz v0, :cond_2

    .line 197
    iget-object v0, p0, Lcom/android/providers/settings/cloud/network/Connection;->mParameter:Lcom/android/providers/settings/cloud/network/Connection$Parameter;

    invoke-virtual {v0}, Lcom/android/providers/settings/cloud/network/Connection$Parameter;->addBaseParameter()V

    .line 201
    :cond_2
    iget-object v7, p0, Lcom/android/providers/settings/cloud/network/Connection;->mParameter:Lcom/android/providers/settings/cloud/network/Connection$Parameter;

    .line 203
    .local v7, finalParams:Lcom/android/providers/settings/cloud/network/Connection$Parameter;
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/settings/cloud/network/Connection;->mParameter:Lcom/android/providers/settings/cloud/network/Connection$Parameter;

    invoke-virtual {p0, v0}, Lcom/android/providers/settings/cloud/network/Connection;->onQueryCreated(Lcom/android/providers/settings/cloud/network/Connection$Parameter;)Lcom/android/providers/settings/cloud/network/Connection$Parameter;
    :try_end_0
    .catch Lcom/android/providers/settings/cloud/network/Connection$ConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 209
    iget-object v0, p0, Lcom/android/providers/settings/cloud/network/Connection;->mUrl:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    .line 210
    .local v1, url:Ljava/lang/String;
    iget-boolean v0, p0, Lcom/android/providers/settings/cloud/network/Connection;->mUseGet:Z

    if-eqz v0, :cond_3

    .line 212
    invoke-virtual {v7}, Lcom/android/providers/settings/cloud/network/Connection$Parameter;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 213
    iget-object v0, p0, Lcom/android/providers/settings/cloud/network/Connection;->mUrl:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v8

    .line 214
    .local v8, query:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/providers/settings/cloud/network/Connection;->mUrl:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v9

    .line 215
    .local v9, urlString:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "?"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Lcom/android/providers/settings/cloud/network/Connection$Parameter;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 220
    :goto_1
    move-object v1, v9

    .line 226
    .end local v8           #query:Ljava/lang/String;
    .end local v9           #urlString:Ljava/lang/String;
    :cond_3
    :try_start_1
    invoke-virtual {p0, v1, v7}, Lcom/android/providers/settings/cloud/network/Connection;->onURLCreated(Ljava/lang/String;Lcom/android/providers/settings/cloud/network/Connection$Parameter;)Ljava/lang/String;
    :try_end_1
    .catch Lcom/android/providers/settings/cloud/network/Connection$ConnectionException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 232
    const-string v2, ""

    .line 233
    .local v2, postData:Ljava/lang/String;
    iget-boolean v0, p0, Lcom/android/providers/settings/cloud/network/Connection;->mUseGet:Z

    if-nez v0, :cond_4

    .line 234
    invoke-virtual {v7}, Lcom/android/providers/settings/cloud/network/Connection$Parameter;->toString()Ljava/lang/String;

    move-result-object v2

    .line 237
    :cond_4
    iget-boolean v3, p0, Lcom/android/providers/settings/cloud/network/Connection;->mUseGet:Z

    iget-boolean v4, p0, Lcom/android/providers/settings/cloud/network/Connection;->mNeedGzipRequest:Z

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/settings/cloud/network/Connection;->innerRequest(Ljava/lang/String;Ljava/lang/String;ZZLjava/io/OutputStream;)Lcom/android/providers/settings/cloud/network/Connection$NetworkError;

    move-result-object v0

    goto :goto_0

    .line 204
    .end local v1           #url:Ljava/lang/String;
    .end local v2           #postData:Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 205
    .local v6, e:Lcom/android/providers/settings/cloud/network/Connection$ConnectionException;
    iget-object v0, v6, Lcom/android/providers/settings/cloud/network/Connection$ConnectionException;->mError:Lcom/android/providers/settings/cloud/network/Connection$NetworkError;

    goto :goto_0

    .line 218
    .end local v6           #e:Lcom/android/providers/settings/cloud/network/Connection$ConnectionException;
    .restart local v1       #url:Ljava/lang/String;
    .restart local v8       #query:Ljava/lang/String;
    .restart local v9       #urlString:Ljava/lang/String;
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Lcom/android/providers/settings/cloud/network/Connection$Parameter;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 227
    .end local v8           #query:Ljava/lang/String;
    .end local v9           #urlString:Ljava/lang/String;
    :catch_1
    move-exception v6

    .line 228
    .restart local v6       #e:Lcom/android/providers/settings/cloud/network/Connection$ConnectionException;
    iget-object v0, v6, Lcom/android/providers/settings/cloud/network/Connection$ConnectionException;->mError:Lcom/android/providers/settings/cloud/network/Connection$NetworkError;

    goto/16 :goto_0
.end method

.method public requestFile(Ljava/io/File;)Lcom/android/providers/settings/cloud/network/Connection$NetworkError;
    .locals 6
    .parameter "outFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 164
    if-nez p1, :cond_0

    .line 165
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 167
    :cond_0
    const/4 v1, 0x0

    .line 169
    .local v1, fos:Ljava/io/OutputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    .end local v1           #fos:Ljava/io/OutputStream;
    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    .restart local v1       #fos:Ljava/io/OutputStream;
    invoke-virtual {p0, v1}, Lcom/android/providers/settings/cloud/network/Connection;->request(Ljava/io/OutputStream;)Lcom/android/providers/settings/cloud/network/Connection$NetworkError;

    move-result-object v2

    .line 176
    .local v2, resp:Lcom/android/providers/settings/cloud/network/Connection$NetworkError;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 177
    sget-object v3, Lcom/android/providers/settings/cloud/network/Connection$NetworkError;->OK:Lcom/android/providers/settings/cloud/network/Connection$NetworkError;

    if-eq v2, v3, :cond_1

    .line 178
    const-string v3, "CloudSettingsConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Connection failed : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 183
    :cond_1
    :goto_0
    return-object v2

    .line 170
    .end local v1           #fos:Ljava/io/OutputStream;
    .end local v2           #resp:Lcom/android/providers/settings/cloud/network/Connection$NetworkError;
    :catch_0
    move-exception v0

    .line 171
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v3, "CloudSettingsConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "File not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    throw v0

    .line 181
    .end local v0           #e:Ljava/io/FileNotFoundException;
    .restart local v1       #fos:Ljava/io/OutputStream;
    .restart local v2       #resp:Lcom/android/providers/settings/cloud/network/Connection$NetworkError;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method public requestJSON()Lcom/android/providers/settings/cloud/network/Connection$NetworkError;
    .locals 6

    .prologue
    .line 125
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 126
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0, v0}, Lcom/android/providers/settings/cloud/network/Connection;->request(Ljava/io/OutputStream;)Lcom/android/providers/settings/cloud/network/Connection$NetworkError;

    move-result-object v2

    .line 128
    .local v2, resp:Lcom/android/providers/settings/cloud/network/Connection$NetworkError;
    :try_start_0
    sget-object v3, Lcom/android/providers/settings/cloud/network/Connection$NetworkError;->OK:Lcom/android/providers/settings/cloud/network/Connection$NetworkError;

    if-ne v2, v3, :cond_0

    .line 129
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/providers/settings/cloud/network/Connection;->mResponse:Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 142
    .end local v2           #resp:Lcom/android/providers/settings/cloud/network/Connection$NetworkError;
    :goto_1
    return-object v2

    .line 131
    .restart local v2       #resp:Lcom/android/providers/settings/cloud/network/Connection$NetworkError;
    :cond_0
    :try_start_2
    const-string v3, "CloudSettingsConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Connection failed : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 133
    :catch_0
    move-exception v1

    .line 134
    .local v1, e:Ljava/lang/Exception;
    :try_start_3
    const-string v3, "CloudSettingsConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "result error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    sget-object v2, Lcom/android/providers/settings/cloud/network/Connection$NetworkError;->RESULT_ERROR:Lcom/android/providers/settings/cloud/network/Connection$NetworkError;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 138
    .end local v2           #resp:Lcom/android/providers/settings/cloud/network/Connection$NetworkError;
    :try_start_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 139
    :catch_1
    move-exception v3

    goto :goto_1

    .line 137
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #resp:Lcom/android/providers/settings/cloud/network/Connection$NetworkError;
    :catchall_0
    move-exception v3

    .line 138
    :try_start_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 140
    :goto_2
    throw v3

    .line 139
    :catch_2
    move-exception v3

    goto :goto_1

    :catch_3
    move-exception v4

    goto :goto_2
.end method

.method public setUseGet(Z)V
    .locals 0
    .parameter "useGet"

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/android/providers/settings/cloud/network/Connection;->mUseGet:Z

    .line 111
    return-void
.end method
