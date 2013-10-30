.class public Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate;
.super Ljava/lang/Object;
.source "SimeXT9HotwordUpdate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate$KLconfiguration;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final HOTWORDS_CNDB_ID:I = 0x10e1

.field private static final HOTWORDS_HKDB_ID:I = 0x10e2

.field private static final HOTWORDS_TWDB_ID:I = 0x10e0

.field private static final TAG:Ljava/lang/String; = "SimeXT9HotwordUpdate"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDbId:I

.field private mDownloadCallBack:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManagerInterface$DownloadStatusListener;

.field private mKLmanagerWrapper:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;

.field private mLanguageListListener:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManagerInterface$LanguageListListener;

.field private mNotifier:Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateInterface$SimeDownloadNotifier;

.field startTime:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object v0, p0, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate;->mNotifier:Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateInterface$SimeDownloadNotifier;

    .line 43
    iput-object v0, p0, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate;->mContext:Landroid/content/Context;

    .line 44
    iput-object v0, p0, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate;->mKLmanagerWrapper:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;

    .line 45
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate;->startTime:Ljava/lang/Long;

    .line 189
    new-instance v0, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate$1;

    invoke-direct {v0, p0}, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate$1;-><init>(Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate;->mLanguageListListener:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManagerInterface$LanguageListListener;

    .line 222
    new-instance v0, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate$2;

    invoke-direct {v0, p0}, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate$2;-><init>(Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate;->mDownloadCallBack:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManagerInterface$DownloadStatusListener;

    .line 50
    iput-object p1, p0, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate;->mContext:Landroid/content/Context;

    .line 51
    invoke-static {p1}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->getLanguageDLManager(Landroid/content/Context;)Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate;->mKLmanagerWrapper:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate;)Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate;->mKLmanagerWrapper:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate;->mDbId:I

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate;)Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateInterface$SimeDownloadNotifier;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate;->mNotifier:Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateInterface$SimeDownloadNotifier;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate;)Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManagerInterface$DownloadStatusListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate;->mDownloadCallBack:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManagerInterface$DownloadStatusListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate;->convertSDKIdTodbId(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate;Ljava/io/File;)Ljava/util/List;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate;->extractFiles(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private convertSDKIdTodbId(I)I
    .locals 1
    .parameter "sdkId"

    .prologue
    .line 80
    const/4 v0, 0x0

    .line 82
    .local v0, dbId:I
    packed-switch p1, :pswitch_data_0

    .line 99
    :goto_0
    return v0

    .line 84
    :pswitch_0
    const/4 v0, 0x0

    .line 85
    goto :goto_0

    .line 88
    :pswitch_1
    const/4 v0, 0x2

    .line 89
    goto :goto_0

    .line 92
    :pswitch_2
    const/4 v0, 0x1

    .line 93
    goto :goto_0

    .line 82
    nop

    :pswitch_data_0
    .packed-switch 0x10e0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private convertdbIdToSDKId(I)I
    .locals 1
    .parameter "dbId"

    .prologue
    .line 56
    const/4 v0, 0x0

    .line 58
    .local v0, sdkId:I
    packed-switch p1, :pswitch_data_0

    .line 75
    :goto_0
    return v0

    .line 60
    :pswitch_0
    const/16 v0, 0x10e1

    .line 61
    goto :goto_0

    .line 64
    :pswitch_1
    const/16 v0, 0x10e2

    .line 65
    goto :goto_0

    .line 68
    :pswitch_2
    const/16 v0, 0x10e0

    .line 69
    goto :goto_0

    .line 58
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private extractFiles(Ljava/io/File;)Ljava/util/List;
    .locals 17
    .parameter "languagePackFileName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 300
    const/16 v1, 0x5000

    .line 302
    .local v1, BUF_SIZE:I
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 304
    .local v4, extractedFileList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 306
    .local v8, langPackZipInputStream:Ljava/util/zip/ZipInputStream;
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 308
    .local v7, langPackInputStream:Ljava/io/InputStream;
    new-instance v9, Ljava/util/zip/ZipInputStream;

    new-instance v15, Ljava/io/BufferedInputStream;

    const/16 v16, 0x5000

    move/from16 v0, v16

    invoke-direct {v15, v7, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {v9, v15}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 311
    .end local v8           #langPackZipInputStream:Ljava/util/zip/ZipInputStream;
    .local v9, langPackZipInputStream:Ljava/util/zip/ZipInputStream;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v15

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 312
    .local v3, dirPath:Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 313
    .local v5, file:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_0

    .line 314
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 318
    :cond_0
    const/16 v15, 0x5000

    new-array v6, v15, [B

    .line 321
    .local v6, fileDataBuffer:[B
    :goto_0
    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v12

    .local v12, langResourceZipEntry:Ljava/util/zip/ZipEntry;
    if-eqz v12, :cond_3

    .line 322
    invoke-virtual {v12}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v10

    .line 323
    .local v10, langResourceFileName:Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 325
    .local v14, unZipFileName:Ljava/lang/String;
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 327
    .local v11, langResourceOutputStream:Ljava/io/FileOutputStream;
    new-instance v13, Ljava/io/BufferedOutputStream;

    const/16 v15, 0x5000

    invoke-direct {v13, v11, v15}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 331
    .local v13, out:Ljava/io/OutputStream;
    :goto_1
    invoke-virtual {v9, v6}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v2

    .local v2, bytesRead:I
    const/4 v15, -0x1

    if-eq v2, v15, :cond_2

    .line 332
    const/4 v15, 0x0

    invoke-virtual {v13, v6, v15, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 338
    .end local v2           #bytesRead:I
    .end local v3           #dirPath:Ljava/lang/String;
    .end local v5           #file:Ljava/io/File;
    .end local v6           #fileDataBuffer:[B
    .end local v10           #langResourceFileName:Ljava/lang/String;
    .end local v11           #langResourceOutputStream:Ljava/io/FileOutputStream;
    .end local v12           #langResourceZipEntry:Ljava/util/zip/ZipEntry;
    .end local v13           #out:Ljava/io/OutputStream;
    .end local v14           #unZipFileName:Ljava/lang/String;
    :catchall_0
    move-exception v15

    move-object v8, v9

    .end local v7           #langPackInputStream:Ljava/io/InputStream;
    .end local v9           #langPackZipInputStream:Ljava/util/zip/ZipInputStream;
    .restart local v8       #langPackZipInputStream:Ljava/util/zip/ZipInputStream;
    :goto_2
    if-eqz v8, :cond_1

    .line 339
    invoke-virtual {v8}, Ljava/util/zip/ZipInputStream;->close()V

    :cond_1
    throw v15

    .line 334
    .end local v8           #langPackZipInputStream:Ljava/util/zip/ZipInputStream;
    .restart local v2       #bytesRead:I
    .restart local v3       #dirPath:Ljava/lang/String;
    .restart local v5       #file:Ljava/io/File;
    .restart local v6       #fileDataBuffer:[B
    .restart local v7       #langPackInputStream:Ljava/io/InputStream;
    .restart local v9       #langPackZipInputStream:Ljava/util/zip/ZipInputStream;
    .restart local v10       #langResourceFileName:Ljava/lang/String;
    .restart local v11       #langResourceOutputStream:Ljava/io/FileOutputStream;
    .restart local v12       #langResourceZipEntry:Ljava/util/zip/ZipEntry;
    .restart local v13       #out:Ljava/io/OutputStream;
    .restart local v14       #unZipFileName:Ljava/lang/String;
    :cond_2
    :try_start_2
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V

    .line 335
    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 338
    .end local v2           #bytesRead:I
    .end local v10           #langResourceFileName:Ljava/lang/String;
    .end local v11           #langResourceOutputStream:Ljava/io/FileOutputStream;
    .end local v13           #out:Ljava/io/OutputStream;
    .end local v14           #unZipFileName:Ljava/lang/String;
    :cond_3
    if-eqz v9, :cond_4

    .line 339
    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->close()V

    .line 342
    :cond_4
    return-object v4

    .line 338
    .end local v3           #dirPath:Ljava/lang/String;
    .end local v5           #file:Ljava/io/File;
    .end local v6           #fileDataBuffer:[B
    .end local v7           #langPackInputStream:Ljava/io/InputStream;
    .end local v9           #langPackZipInputStream:Ljava/util/zip/ZipInputStream;
    .end local v12           #langResourceZipEntry:Ljava/util/zip/ZipEntry;
    .restart local v8       #langPackZipInputStream:Ljava/util/zip/ZipInputStream;
    :catchall_1
    move-exception v15

    goto :goto_2
.end method


# virtual methods
.method public cancelUpdate(I)V
    .locals 3
    .parameter "dbId"

    .prologue
    .line 363
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate;->mKLmanagerWrapper:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate;->mKLmanagerWrapper:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->stop(Z)Z

    .line 365
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate;->mNotifier:Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateInterface$SimeDownloadNotifier;

    const/16 v1, 0x9

    new-instance v2, Lcom/samsung/inputmethod/dbmanager/SimeDownloadInfo;

    invoke-direct {v2, p1}, Lcom/samsung/inputmethod/dbmanager/SimeDownloadInfo;-><init>(I)V

    invoke-interface {v0, v1, v2}, Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateInterface$SimeDownloadNotifier;->handleDownloadEvent(ILjava/lang/Object;)Z

    .line 368
    :cond_0
    return-void
.end method

.method public setUpdateBackground(I)V
    .locals 1
    .parameter "dbId"

    .prologue
    .line 372
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate;->mKLmanagerWrapper:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate;->mKLmanagerWrapper:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->stop()Z

    .line 375
    :cond_0
    return-void
.end method

.method public update(ILjava/lang/String;Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateInterface$SimeDownloadNotifier;)V
    .locals 4
    .parameter "dbId"
    .parameter "currentVersion"
    .parameter "callBack"

    .prologue
    .line 348
    new-instance v0, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate$KLconfiguration;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate$KLconfiguration;-><init>(Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate;ILjava/lang/String;)V

    .line 350
    .local v0, configuration:Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate$KLconfiguration;
    iget-object v1, p0, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate;->mKLmanagerWrapper:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate;->mKLmanagerWrapper:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;

    iget-object v2, p0, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate;->mLanguageListListener:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManagerInterface$LanguageListListener;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->start(Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManagerInterface$KLDLMConfiguration;Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManagerInterface$LanguageListListener;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 353
    iput-object p3, p0, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate;->mNotifier:Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateInterface$SimeDownloadNotifier;

    .line 359
    :goto_0
    return-void

    .line 356
    :cond_0
    const-string v1, "SimeXT9HotwordUpdate"

    const-string v2, "KL manager not avaliable"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
