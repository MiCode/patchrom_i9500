.class Lcom/xiaomi/miui/pushads/sdk/DownloadUtils;
.super Ljava/lang/Object;
.source "DownloadUtils.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static downFile(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCell;)I
    .locals 9
    .parameter "context"
    .parameter "parentFolder"
    .parameter "adsImage"
    .parameter "cell"

    .prologue
    .line 44
    const/4 v4, -0x1

    .line 45
    .local v4, ret:I
    const/4 v3, 0x0

    .line 46
    .local v3, inputStream:Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 47
    .local v5, retFile:Ljava/io/File;
    invoke-static {p2}, Lcom/xiaomi/miui/pushads/sdk/DownloadUtils;->urlToFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 48
    .local v2, fileName:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, absolutePath:Ljava/lang/String;
    :try_start_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 51
    .end local v5           #retFile:Ljava/io/File;
    .local v6, retFile:Ljava/io/File;
    :try_start_1
    invoke-virtual {v6}, Ljava/io/File;->exists()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result v7

    if-eqz v7, :cond_3

    .line 52
    const/4 v4, 0x0

    .line 61
    :goto_0
    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v5, v6

    .line 67
    .end local v6           #retFile:Ljava/io/File;
    .restart local v5       #retFile:Ljava/io/File;
    :cond_1
    :goto_1
    if-nez v4, :cond_2

    .line 68
    invoke-virtual {p3, v0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsCell;->setDownloadedImagePath(Ljava/lang/String;)V

    .line 71
    :cond_2
    return v4

    .line 54
    .end local v5           #retFile:Ljava/io/File;
    .restart local v6       #retFile:Ljava/io/File;
    :cond_3
    :try_start_3
    const-string v7, "\u4ecesever \u4e0b\u8f7d\u6587\u4ef6 debug \u6a21\u5f0f"

    invoke-static {v7}, Lcom/xiaomi/miui/pushads/sdk/LogUtils;->logProcess(Ljava/lang/String;)V

    .line 55
    invoke-static {p2}, Lcom/xiaomi/miui/pushads/sdk/DownloadUtils;->getInputStreamFromURL(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 56
    invoke-static {p0, v0, v3}, Lcom/xiaomi/miui/pushads/sdk/DownloadUtils;->write2SDFromInput(Landroid/content/Context;Ljava/lang/String;Ljava/io/InputStream;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    move-result v4

    goto :goto_0

    .line 62
    :catch_0
    move-exception v1

    .line 63
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v5, v6

    .line 65
    .end local v6           #retFile:Ljava/io/File;
    .restart local v5       #retFile:Ljava/io/File;
    goto :goto_1

    .line 58
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v7

    .line 61
    :goto_2
    if-eqz v3, :cond_1

    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 62
    :catch_2
    move-exception v1

    .line 63
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 60
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 61
    :goto_3
    if-eqz v3, :cond_4

    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 64
    :cond_4
    :goto_4
    throw v7

    .line 62
    :catch_3
    move-exception v1

    .line 63
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 60
    .end local v1           #e:Ljava/io/IOException;
    .end local v5           #retFile:Ljava/io/File;
    .restart local v6       #retFile:Ljava/io/File;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6           #retFile:Ljava/io/File;
    .restart local v5       #retFile:Ljava/io/File;
    goto :goto_3

    .line 58
    .end local v5           #retFile:Ljava/io/File;
    .restart local v6       #retFile:Ljava/io/File;
    :catch_4
    move-exception v7

    move-object v5, v6

    .end local v6           #retFile:Ljava/io/File;
    .restart local v5       #retFile:Ljava/io/File;
    goto :goto_2
.end method

.method private static getBytes(Ljava/lang/String;)[B
    .locals 2
    .parameter "s"

    .prologue
    .line 184
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 186
    :goto_0
    return-object v1

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    goto :goto_0
.end method

.method private static getInputStreamFromURL(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 6
    .parameter "urlStr"

    .prologue
    .line 80
    const/4 v4, 0x0

    .line 81
    .local v4, urlConn:Ljava/net/HttpURLConnection;
    const/4 v2, 0x0

    .line 84
    .local v2, inputStream:Ljava/io/InputStream;
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 85
    .local v3, url:Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v4, v0

    .line 86
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v5, v2

    .line 90
    .end local v3           #url:Ljava/net/URL;
    :goto_0
    return-object v5

    .line 87
    :catch_0
    move-exception v1

    .line 88
    .local v1, e:Ljava/io/IOException;
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static getMd5Digest(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "pInput"

    .prologue
    .line 192
    :try_start_0
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 193
    .local v0, lDigest:Ljava/security/MessageDigest;
    invoke-static {p0}, Lcom/xiaomi/miui/pushads/sdk/DownloadUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 194
    new-instance v2, Ljava/math/BigInteger;

    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 195
    .local v2, lHashInt:Ljava/math/BigInteger;
    const-string v3, "%1$032X"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 196
    .end local v0           #lDigest:Ljava/security/MessageDigest;
    .end local v2           #lHashInt:Ljava/math/BigInteger;
    :catch_0
    move-exception v1

    .line 197
    .local v1, lException:Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method private static urlToFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "url"

    .prologue
    .line 151
    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 152
    .local v0, pos:I
    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 154
    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 153
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static write2SDFromInput(Landroid/content/Context;Ljava/lang/String;Ljava/io/InputStream;)I
    .locals 16
    .parameter "context"
    .parameter "absolutePath"
    .parameter "input"

    .prologue
    .line 99
    if-nez p2, :cond_1

    const/4 v7, -0x1

    .line 142
    :cond_0
    :goto_0
    return v7

    .line 101
    :cond_1
    const/4 v7, -0x1

    .line 102
    .local v7, ret:I
    const/4 v10, 0x0

    .line 103
    .local v10, tmpFile:Ljava/io/File;
    const/4 v4, 0x0

    .line 104
    .local v4, output:Ljava/io/OutputStream;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 105
    .local v12, tmpPath:Ljava/lang/String;
    const/4 v8, 0x0

    .line 107
    .local v8, retFile:Ljava/io/File;
    :try_start_0
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 108
    .end local v10           #tmpFile:Ljava/io/File;
    .local v11, tmpFile:Ljava/io/File;
    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 109
    .end local v4           #output:Ljava/io/OutputStream;
    .local v5, output:Ljava/io/OutputStream;
    :try_start_2
    sget v13, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsDef;->DOWNLOAD_BUFFER:I

    new-array v1, v13, [B

    .line 110
    .local v1, buffer:[B
    const/4 v6, 0x0

    .line 113
    .local v6, readCount:I
    invoke-static/range {p0 .. p0}, Lcom/xiaomi/miui/pushads/sdk/NetUtils;->canDownloadAds(Landroid/content/Context;)Z

    move-result v3

    .line 114
    .local v3, netOk:Z
    :goto_1
    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v13, -0x1

    if-eq v6, v13, :cond_2

    if-eqz v3, :cond_2

    .line 115
    const/4 v13, 0x0

    invoke-virtual {v5, v1, v13, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 116
    invoke-static/range {p0 .. p0}, Lcom/xiaomi/miui/pushads/sdk/NetUtils;->canDownloadAds(Landroid/content/Context;)Z

    move-result v3

    goto :goto_1

    .line 119
    :cond_2
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 121
    const/4 v13, -0x1

    if-ne v6, v13, :cond_5

    .line 122
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 123
    .end local v8           #retFile:Ljava/io/File;
    .local v9, retFile:Ljava/io/File;
    :try_start_3
    invoke-virtual {v11, v9}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    .line 124
    const/4 v7, 0x0

    move-object v8, v9

    .line 134
    .end local v9           #retFile:Ljava/io/File;
    .restart local v8       #retFile:Ljava/io/File;
    :cond_3
    :goto_2
    :try_start_4
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 135
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 136
    invoke-virtual {v11}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_4
    move-object v4, v5

    .end local v5           #output:Ljava/io/OutputStream;
    .restart local v4       #output:Ljava/io/OutputStream;
    move-object v10, v11

    .line 140
    .end local v11           #tmpFile:Ljava/io/File;
    .restart local v10       #tmpFile:Ljava/io/File;
    goto :goto_0

    .line 125
    .end local v4           #output:Ljava/io/OutputStream;
    .end local v10           #tmpFile:Ljava/io/File;
    .restart local v5       #output:Ljava/io/OutputStream;
    .restart local v11       #tmpFile:Ljava/io/File;
    :cond_5
    if-nez v3, :cond_3

    .line 126
    const/4 v7, -0x1

    goto :goto_2

    .line 138
    :catch_0
    move-exception v2

    .line 139
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v5

    .end local v5           #output:Ljava/io/OutputStream;
    .restart local v4       #output:Ljava/io/OutputStream;
    move-object v10, v11

    .line 141
    .end local v11           #tmpFile:Ljava/io/File;
    .restart local v10       #tmpFile:Ljava/io/File;
    goto :goto_0

    .line 129
    .end local v1           #buffer:[B
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #netOk:Z
    .end local v6           #readCount:I
    :catch_1
    move-exception v2

    .line 130
    .local v2, e:Ljava/lang/Exception;
    :goto_3
    const/4 v7, -0x1

    .line 134
    :try_start_5
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 135
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 136
    invoke-virtual {v10}, Ljava/io/File;->delete()Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    .line 138
    :catch_2
    move-exception v2

    .line 139
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 133
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v13

    .line 134
    :goto_4
    :try_start_6
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 135
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 136
    invoke-virtual {v10}, Ljava/io/File;->delete()Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 140
    :cond_6
    :goto_5
    throw v13

    .line 138
    :catch_3
    move-exception v2

    .line 139
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 133
    .end local v2           #e:Ljava/io/IOException;
    .end local v10           #tmpFile:Ljava/io/File;
    .restart local v11       #tmpFile:Ljava/io/File;
    :catchall_1
    move-exception v13

    move-object v10, v11

    .end local v11           #tmpFile:Ljava/io/File;
    .restart local v10       #tmpFile:Ljava/io/File;
    goto :goto_4

    .end local v4           #output:Ljava/io/OutputStream;
    .end local v10           #tmpFile:Ljava/io/File;
    .restart local v5       #output:Ljava/io/OutputStream;
    .restart local v11       #tmpFile:Ljava/io/File;
    :catchall_2
    move-exception v13

    move-object v4, v5

    .end local v5           #output:Ljava/io/OutputStream;
    .restart local v4       #output:Ljava/io/OutputStream;
    move-object v10, v11

    .end local v11           #tmpFile:Ljava/io/File;
    .restart local v10       #tmpFile:Ljava/io/File;
    goto :goto_4

    .end local v4           #output:Ljava/io/OutputStream;
    .end local v8           #retFile:Ljava/io/File;
    .end local v10           #tmpFile:Ljava/io/File;
    .restart local v1       #buffer:[B
    .restart local v3       #netOk:Z
    .restart local v5       #output:Ljava/io/OutputStream;
    .restart local v6       #readCount:I
    .restart local v9       #retFile:Ljava/io/File;
    .restart local v11       #tmpFile:Ljava/io/File;
    :catchall_3
    move-exception v13

    move-object v8, v9

    .end local v9           #retFile:Ljava/io/File;
    .restart local v8       #retFile:Ljava/io/File;
    move-object v4, v5

    .end local v5           #output:Ljava/io/OutputStream;
    .restart local v4       #output:Ljava/io/OutputStream;
    move-object v10, v11

    .end local v11           #tmpFile:Ljava/io/File;
    .restart local v10       #tmpFile:Ljava/io/File;
    goto :goto_4

    .line 129
    .end local v1           #buffer:[B
    .end local v3           #netOk:Z
    .end local v6           #readCount:I
    .end local v10           #tmpFile:Ljava/io/File;
    .restart local v11       #tmpFile:Ljava/io/File;
    :catch_4
    move-exception v2

    move-object v10, v11

    .end local v11           #tmpFile:Ljava/io/File;
    .restart local v10       #tmpFile:Ljava/io/File;
    goto :goto_3

    .end local v4           #output:Ljava/io/OutputStream;
    .end local v10           #tmpFile:Ljava/io/File;
    .restart local v5       #output:Ljava/io/OutputStream;
    .restart local v11       #tmpFile:Ljava/io/File;
    :catch_5
    move-exception v2

    move-object v4, v5

    .end local v5           #output:Ljava/io/OutputStream;
    .restart local v4       #output:Ljava/io/OutputStream;
    move-object v10, v11

    .end local v11           #tmpFile:Ljava/io/File;
    .restart local v10       #tmpFile:Ljava/io/File;
    goto :goto_3

    .end local v4           #output:Ljava/io/OutputStream;
    .end local v8           #retFile:Ljava/io/File;
    .end local v10           #tmpFile:Ljava/io/File;
    .restart local v1       #buffer:[B
    .restart local v3       #netOk:Z
    .restart local v5       #output:Ljava/io/OutputStream;
    .restart local v6       #readCount:I
    .restart local v9       #retFile:Ljava/io/File;
    .restart local v11       #tmpFile:Ljava/io/File;
    :catch_6
    move-exception v2

    move-object v8, v9

    .end local v9           #retFile:Ljava/io/File;
    .restart local v8       #retFile:Ljava/io/File;
    move-object v4, v5

    .end local v5           #output:Ljava/io/OutputStream;
    .restart local v4       #output:Ljava/io/OutputStream;
    move-object v10, v11

    .end local v11           #tmpFile:Ljava/io/File;
    .restart local v10       #tmpFile:Ljava/io/File;
    goto :goto_3
.end method
