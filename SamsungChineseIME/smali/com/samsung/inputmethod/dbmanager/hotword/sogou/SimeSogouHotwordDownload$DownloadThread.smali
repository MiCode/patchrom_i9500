.class Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload$DownloadThread;
.super Ljava/lang/Thread;
.source "SimeSogouHotwordDownload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadThread"
.end annotation


# instance fields
.field private mDownloadURL:Ljava/lang/String;

.field private mURLConnection:Ljava/net/HttpURLConnection;

.field final synthetic this$0:Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload;


# direct methods
.method public constructor <init>(Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload;Ljava/lang/String;Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateInterface$SimeDownloadNotifier;)V
    .locals 1
    .parameter
    .parameter "url"
    .parameter "notifier"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload$DownloadThread;->this$0:Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload$DownloadThread;->mURLConnection:Ljava/net/HttpURLConnection;

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload$DownloadThread;->mDownloadURL:Ljava/lang/String;

    .line 79
    iput-object p2, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload$DownloadThread;->mDownloadURL:Ljava/lang/String;

    .line 80
    #setter for: Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload;->mNotifier:Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateInterface$SimeDownloadNotifier;
    invoke-static {p1, p3}, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload;->access$002(Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload;Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateInterface$SimeDownloadNotifier;)Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateInterface$SimeDownloadNotifier;

    .line 81
    return-void
.end method

.method private connectURL(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 6
    .parameter "url"

    .prologue
    .line 100
    const/4 v3, 0x0

    .line 102
    .local v3, urlConnection:Ljava/net/HttpURLConnection;
    if-eqz p1, :cond_0

    .line 105
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 106
    .local v1, downloadURL:Ljava/net/URL;
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v3, v0

    .line 108
    const/16 v4, 0x2710

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 109
    const/16 v4, 0x2710

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 110
    const-string v4, "Accept-Encoding"

    const-string v5, "identity"

    invoke-virtual {v3, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 122
    .end local v1           #downloadURL:Ljava/net/URL;
    :cond_0
    :goto_0
    return-object v3

    .line 114
    :catch_0
    move-exception v2

    .line 116
    .local v2, e:Ljava/net/MalformedURLException;
    invoke-virtual {v2}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0

    .line 117
    .end local v2           #e:Ljava/net/MalformedURLException;
    :catch_1
    move-exception v2

    .line 119
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private disCurrentConnection()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload$DownloadThread;->mURLConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload$DownloadThread;->mURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 129
    :cond_0
    return-void
.end method


# virtual methods
.method public isDownloading()Z
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload$DownloadThread;->this$0:Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload;

    #getter for: Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload;->mbUpdating:Z
    invoke-static {v0}, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload;->access$100(Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload;)Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 19

    .prologue
    .line 134
    const/4 v11, 0x0

    .line 135
    .local v11, nStartPos:I
    const/4 v9, 0x0

    .line 136
    .local v9, nDownloadLen:I
    const/4 v14, 0x0

    .line 137
    .local v14, readLen:I
    const/4 v8, 0x0

    .line 139
    .local v8, msgId:I
    const/4 v6, 0x0

    .line 140
    .local v6, inputStream:Ljava/io/BufferedInputStream;
    const/4 v12, 0x0

    .line 146
    .local v12, randomAccfile:Ljava/io/RandomAccessFile;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload$DownloadThread;->mDownloadURL:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload$DownloadThread;->connectURL(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload$DownloadThread;->mURLConnection:Ljava/net/HttpURLConnection;

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload$DownloadThread;->mURLConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v9

    .line 153
    new-instance v13, Ljava/io/RandomAccessFile;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload$DownloadThread;->this$0:Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload;

    move-object/from16 v17, v0

    #getter for: Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload;->mFileName:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload;->access$200(Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "rw"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v13, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7

    .line 155
    .end local v12           #randomAccfile:Ljava/io/RandomAccessFile;
    .local v13, randomAccfile:Ljava/io/RandomAccessFile;
    int-to-long v0, v11

    move-wide/from16 v17, v0

    :try_start_1
    move-wide/from16 v0, v17

    invoke-virtual {v13, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 157
    new-instance v7, Ljava/io/BufferedInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload$DownloadThread;->mURLConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8

    .line 160
    .end local v6           #inputStream:Ljava/io/BufferedInputStream;
    .local v7, inputStream:Ljava/io/BufferedInputStream;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload$DownloadThread;->mURLConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v10

    .line 166
    .local v10, nRespose:I
    const/16 v17, 0xc8

    move/from16 v0, v17

    if-eq v10, v0, :cond_0

    const/16 v17, 0xce

    move/from16 v0, v17

    if-ne v10, v0, :cond_a

    .line 168
    :cond_0
    const/4 v2, 0x0

    .line 169
    .local v2, buf:[B
    const/16 v15, 0x400

    .line 171
    .local v15, size:I
    new-array v2, v15, [B

    .line 173
    const/4 v3, 0x0

    .line 175
    .local v3, bufferLen:I
    new-instance v4, Lcom/samsung/inputmethod/dbmanager/SimeDownloadInfo;

    const/16 v17, 0x4

    move/from16 v0, v17

    invoke-direct {v4, v0}, Lcom/samsung/inputmethod/dbmanager/SimeDownloadInfo;-><init>(I)V

    .line 178
    .local v4, downloadInfo:Lcom/samsung/inputmethod/dbmanager/SimeDownloadInfo;
    :cond_1
    :goto_0
    invoke-virtual {v7, v2}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v3

    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v3, v0, :cond_2

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload$DownloadThread;->this$0:Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload;

    move-object/from16 v17, v0

    #getter for: Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload;->mbUpdating:Z
    invoke-static/range {v17 .. v17}, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload;->access$100(Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v17

    if-nez v17, :cond_7

    .line 184
    const/16 v8, 0x9

    .line 224
    .end local v2           #buf:[B
    .end local v3           #bufferLen:I
    .end local v4           #downloadInfo:Lcom/samsung/inputmethod/dbmanager/SimeDownloadInfo;
    .end local v15           #size:I
    :cond_2
    :goto_1
    if-eqz v13, :cond_3

    .line 226
    :try_start_3
    invoke-virtual {v13}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 232
    :cond_3
    :goto_2
    if-eqz v7, :cond_4

    .line 234
    :try_start_4
    invoke-virtual {v7}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 240
    :cond_4
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload$DownloadThread;->disCurrentConnection()V

    move-object v12, v13

    .end local v13           #randomAccfile:Ljava/io/RandomAccessFile;
    .restart local v12       #randomAccfile:Ljava/io/RandomAccessFile;
    move-object v6, v7

    .line 243
    .end local v7           #inputStream:Ljava/io/BufferedInputStream;
    .end local v10           #nRespose:I
    .restart local v6       #inputStream:Ljava/io/BufferedInputStream;
    :goto_4
    if-eqz v8, :cond_5

    .line 245
    new-instance v16, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload$DownloadThread;->this$0:Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload;

    move-object/from16 v17, v0

    #getter for: Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload;->mFileName:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload;->access$200(Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload;)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 246
    .local v16, tempFile:Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_5

    .line 247
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    .line 249
    .end local v16           #tempFile:Ljava/io/File;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload$DownloadThread;->this$0:Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload;

    move-object/from16 v17, v0

    #getter for: Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload;->mNotifier:Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateInterface$SimeDownloadNotifier;
    invoke-static/range {v17 .. v17}, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload;->access$000(Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload;)Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateInterface$SimeDownloadNotifier;

    move-result-object v17

    if-eqz v17, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload$DownloadThread;->this$0:Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload;

    move-object/from16 v17, v0

    #getter for: Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload;->mbUpdating:Z
    invoke-static/range {v17 .. v17}, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload;->access$100(Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 254
    new-instance v4, Lcom/samsung/inputmethod/dbmanager/SimeDownloadInfo;

    const/16 v17, 0x4

    move/from16 v0, v17

    invoke-direct {v4, v0}, Lcom/samsung/inputmethod/dbmanager/SimeDownloadInfo;-><init>(I)V

    .line 257
    .restart local v4       #downloadInfo:Lcom/samsung/inputmethod/dbmanager/SimeDownloadInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload$DownloadThread;->this$0:Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload;

    move-object/from16 v17, v0

    #getter for: Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload;->mFileName:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload;->access$200(Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v4, Lcom/samsung/inputmethod/dbmanager/SimeDownloadInfo;->fileName:Ljava/lang/String;

    .line 258
    const/16 v17, 0x1

    move/from16 v0, v17

    iput v0, v4, Lcom/samsung/inputmethod/dbmanager/SimeDownloadInfo;->percent:I

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload$DownloadThread;->this$0:Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload;

    move-object/from16 v17, v0

    #getter for: Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload;->mNotifier:Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateInterface$SimeDownloadNotifier;
    invoke-static/range {v17 .. v17}, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload;->access$000(Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload;)Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateInterface$SimeDownloadNotifier;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v0, v8, v4}, Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateInterface$SimeDownloadNotifier;->handleDownloadEvent(ILjava/lang/Object;)Z

    .line 261
    .end local v4           #downloadInfo:Lcom/samsung/inputmethod/dbmanager/SimeDownloadInfo;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload$DownloadThread;->this$0:Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    #setter for: Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload;->mbUpdating:Z
    invoke-static/range {v17 .. v18}, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload;->access$102(Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload;Z)Z

    .line 262
    return-void

    .line 188
    .end local v6           #inputStream:Ljava/io/BufferedInputStream;
    .end local v12           #randomAccfile:Ljava/io/RandomAccessFile;
    .restart local v2       #buf:[B
    .restart local v3       #bufferLen:I
    .restart local v4       #downloadInfo:Lcom/samsung/inputmethod/dbmanager/SimeDownloadInfo;
    .restart local v7       #inputStream:Ljava/io/BufferedInputStream;
    .restart local v10       #nRespose:I
    .restart local v13       #randomAccfile:Ljava/io/RandomAccessFile;
    .restart local v15       #size:I
    :cond_7
    const/16 v17, 0x0

    :try_start_5
    move/from16 v0, v17

    invoke-virtual {v13, v2, v0, v3}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 189
    add-int/2addr v14, v3

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload$DownloadThread;->this$0:Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload;

    move-object/from16 v17, v0

    #getter for: Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload;->mNotifier:Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateInterface$SimeDownloadNotifier;
    invoke-static/range {v17 .. v17}, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload;->access$000(Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload;)Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateInterface$SimeDownloadNotifier;

    move-result-object v17

    if-eqz v17, :cond_1

    if-lez v9, :cond_1

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload$DownloadThread;->this$0:Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload;

    move-object/from16 v17, v0

    #getter for: Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload;->mFileName:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload;->access$200(Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v4, Lcom/samsung/inputmethod/dbmanager/SimeDownloadInfo;->fileName:Ljava/lang/String;

    .line 193
    mul-int/lit8 v17, v14, 0x64

    div-int v17, v17, v9

    move/from16 v0, v17

    iput v0, v4, Lcom/samsung/inputmethod/dbmanager/SimeDownloadInfo;->percent:I

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload$DownloadThread;->this$0:Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload;

    move-object/from16 v17, v0

    #getter for: Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload;->mNotifier:Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateInterface$SimeDownloadNotifier;
    invoke-static/range {v17 .. v17}, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload;->access$000(Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload;)Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateInterface$SimeDownloadNotifier;

    move-result-object v17

    const/16 v18, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v0, v1, v4}, Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateInterface$SimeDownloadNotifier;->handleDownloadEvent(ILjava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    .line 212
    .end local v2           #buf:[B
    .end local v3           #bufferLen:I
    .end local v4           #downloadInfo:Lcom/samsung/inputmethod/dbmanager/SimeDownloadInfo;
    .end local v10           #nRespose:I
    .end local v15           #size:I
    :catch_0
    move-exception v5

    move-object v12, v13

    .end local v13           #randomAccfile:Ljava/io/RandomAccessFile;
    .restart local v12       #randomAccfile:Ljava/io/RandomAccessFile;
    move-object v6, v7

    .line 220
    .end local v7           #inputStream:Ljava/io/BufferedInputStream;
    .local v5, e:Ljava/io/IOException;
    .restart local v6       #inputStream:Ljava/io/BufferedInputStream;
    :goto_5
    const/4 v8, 0x6

    .line 222
    :try_start_6
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 224
    if-eqz v12, :cond_8

    .line 226
    :try_start_7
    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 232
    :cond_8
    :goto_6
    if-eqz v6, :cond_9

    .line 234
    :try_start_8
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 240
    :cond_9
    :goto_7
    invoke-direct/range {p0 .. p0}, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload$DownloadThread;->disCurrentConnection()V

    goto/16 :goto_4

    .line 209
    .end local v5           #e:Ljava/io/IOException;
    .end local v6           #inputStream:Ljava/io/BufferedInputStream;
    .end local v12           #randomAccfile:Ljava/io/RandomAccessFile;
    .restart local v7       #inputStream:Ljava/io/BufferedInputStream;
    .restart local v10       #nRespose:I
    .restart local v13       #randomAccfile:Ljava/io/RandomAccessFile;
    :cond_a
    const/4 v8, 0x6

    goto/16 :goto_1

    .line 227
    :catch_1
    move-exception v5

    .line 229
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 235
    .end local v5           #e:Ljava/io/IOException;
    :catch_2
    move-exception v5

    .line 237
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 227
    .end local v7           #inputStream:Ljava/io/BufferedInputStream;
    .end local v10           #nRespose:I
    .end local v13           #randomAccfile:Ljava/io/RandomAccessFile;
    .restart local v6       #inputStream:Ljava/io/BufferedInputStream;
    .restart local v12       #randomAccfile:Ljava/io/RandomAccessFile;
    :catch_3
    move-exception v5

    .line 229
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 235
    :catch_4
    move-exception v5

    .line 237
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 224
    .end local v5           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v17

    :goto_8
    if-eqz v12, :cond_b

    .line 226
    :try_start_9
    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 232
    :cond_b
    :goto_9
    if-eqz v6, :cond_c

    .line 234
    :try_start_a
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 240
    :cond_c
    :goto_a
    invoke-direct/range {p0 .. p0}, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload$DownloadThread;->disCurrentConnection()V

    throw v17

    .line 227
    :catch_5
    move-exception v5

    .line 229
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 235
    .end local v5           #e:Ljava/io/IOException;
    :catch_6
    move-exception v5

    .line 237
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 224
    .end local v5           #e:Ljava/io/IOException;
    .end local v12           #randomAccfile:Ljava/io/RandomAccessFile;
    .restart local v13       #randomAccfile:Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v17

    move-object v12, v13

    .end local v13           #randomAccfile:Ljava/io/RandomAccessFile;
    .restart local v12       #randomAccfile:Ljava/io/RandomAccessFile;
    goto :goto_8

    .end local v6           #inputStream:Ljava/io/BufferedInputStream;
    .end local v12           #randomAccfile:Ljava/io/RandomAccessFile;
    .restart local v7       #inputStream:Ljava/io/BufferedInputStream;
    .restart local v13       #randomAccfile:Ljava/io/RandomAccessFile;
    :catchall_2
    move-exception v17

    move-object v12, v13

    .end local v13           #randomAccfile:Ljava/io/RandomAccessFile;
    .restart local v12       #randomAccfile:Ljava/io/RandomAccessFile;
    move-object v6, v7

    .end local v7           #inputStream:Ljava/io/BufferedInputStream;
    .restart local v6       #inputStream:Ljava/io/BufferedInputStream;
    goto :goto_8

    .line 212
    :catch_7
    move-exception v5

    goto :goto_5

    .end local v12           #randomAccfile:Ljava/io/RandomAccessFile;
    .restart local v13       #randomAccfile:Ljava/io/RandomAccessFile;
    :catch_8
    move-exception v5

    move-object v12, v13

    .end local v13           #randomAccfile:Ljava/io/RandomAccessFile;
    .restart local v12       #randomAccfile:Ljava/io/RandomAccessFile;
    goto :goto_5
.end method

.method public setDownloadStop()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload$DownloadThread;->this$0:Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload;

    const/4 v1, 0x0

    #setter for: Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload;->mbUpdating:Z
    invoke-static {v0, v1}, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload;->access$102(Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload;Z)Z

    .line 85
    return-void
.end method

.method public stopDownload()V
    .locals 0

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload$DownloadThread;->setDownloadStop()V

    .line 97
    return-void
.end method
