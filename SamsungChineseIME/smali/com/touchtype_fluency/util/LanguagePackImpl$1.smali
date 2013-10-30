.class Lcom/touchtype_fluency/util/LanguagePackImpl$1;
.super Lcom/touchtype_fluency/util/Downloader;
.source "LanguagePackImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/touchtype_fluency/util/LanguagePackImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/touchtype_fluency/util/LanguagePackImpl;


# direct methods
.method constructor <init>(Lcom/touchtype_fluency/util/LanguagePackImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/touchtype_fluency/util/LanguagePackImpl$1;->this$0:Lcom/touchtype_fluency/util/LanguagePackImpl;

    .line 45
    invoke-direct {p0}, Lcom/touchtype_fluency/util/Downloader;-><init>()V

    return-void
.end method


# virtual methods
.method protected onDownload(Lcom/touchtype_fluency/util/HttpDownload;)V
    .locals 18
    .parameter "httpDownload"

    .prologue
    .line 48
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/touchtype_fluency/util/LanguagePackImpl$1;->this$0:Lcom/touchtype_fluency/util/LanguagePackImpl;

    #getter for: Lcom/touchtype_fluency/util/LanguagePackImpl;->mStorage:Lcom/touchtype_fluency/util/Storage;
    invoke-static {v11}, Lcom/touchtype_fluency/util/LanguagePackImpl;->access$0(Lcom/touchtype_fluency/util/LanguagePackImpl;)Lcom/touchtype_fluency/util/Storage;

    move-result-object v11

    invoke-interface {v11}, Lcom/touchtype_fluency/util/Storage;->getTempDirectory()Ljava/io/File;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/touchtype_fluency/util/LanguagePackImpl$1;->this$0:Lcom/touchtype_fluency/util/LanguagePackImpl;

    invoke-virtual {v12}, Lcom/touchtype_fluency/util/LanguagePackImpl;->getID()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 49
    .local v10, tempDir:Ljava/io/File;
    const/4 v9, 0x0

    .line 50
    .local v9, success:Z
    const/4 v2, 0x1

    .line 53
    .local v2, digestOK:Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/touchtype_fluency/util/LanguagePackImpl$1;->this$0:Lcom/touchtype_fluency/util/LanguagePackImpl;

    #getter for: Lcom/touchtype_fluency/util/LanguagePackImpl;->mListener:Lcom/touchtype_fluency/util/LanguagePackManagerImpl$ProxyProgressListener;
    invoke-static {v11}, Lcom/touchtype_fluency/util/LanguagePackImpl;->access$1(Lcom/touchtype_fluency/util/LanguagePackImpl;)Lcom/touchtype_fluency/util/LanguagePackManagerImpl$ProxyProgressListener;

    move-result-object v11

    if-eqz v11, :cond_0

    const/4 v11, 0x1

    :goto_0
    invoke-static {v11}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 54
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/touchtype_fluency/util/LanguagePackImpl$1;->this$0:Lcom/touchtype_fluency/util/LanguagePackImpl;

    #getter for: Lcom/touchtype_fluency/util/LanguagePackImpl;->archive:Ljava/net/URL;
    invoke-static {v11}, Lcom/touchtype_fluency/util/LanguagePackImpl;->access$2(Lcom/touchtype_fluency/util/LanguagePackImpl;)Ljava/net/URL;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/touchtype_fluency/util/LanguagePackImpl$1;->this$0:Lcom/touchtype_fluency/util/LanguagePackImpl;

    #getter for: Lcom/touchtype_fluency/util/LanguagePackImpl;->sha1:Ljava/lang/String;
    invoke-static {v12}, Lcom/touchtype_fluency/util/LanguagePackImpl;->access$3(Lcom/touchtype_fluency/util/LanguagePackImpl;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/touchtype_fluency/util/LanguagePackImpl$1;->this$0:Lcom/touchtype_fluency/util/LanguagePackImpl;

    #getter for: Lcom/touchtype_fluency/util/LanguagePackImpl;->mListener:Lcom/touchtype_fluency/util/LanguagePackManagerImpl$ProxyProgressListener;
    invoke-static {v13}, Lcom/touchtype_fluency/util/LanguagePackImpl;->access$1(Lcom/touchtype_fluency/util/LanguagePackImpl;)Lcom/touchtype_fluency/util/LanguagePackManagerImpl$ProxyProgressListener;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v10, v12, v13}, Lcom/touchtype_fluency/util/HttpDownload;->downloadZip(Ljava/net/URL;Ljava/io/File;Ljava/lang/String;Lcom/touchtype_fluency/util/ProgressListener;)Ljava/util/Vector;

    move-result-object v8

    .line 55
    .local v8, newFiles:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/DigestException; {:try_start_0 .. :try_end_0} :catch_2

    .line 56
    :try_start_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/touchtype_fluency/util/LanguagePackImpl$1;->this$0:Lcom/touchtype_fluency/util/LanguagePackImpl;

    #setter for: Lcom/touchtype_fluency/util/LanguagePackImpl;->files:Ljava/util/Vector;
    invoke-static {v11, v8}, Lcom/touchtype_fluency/util/LanguagePackImpl;->access$4(Lcom/touchtype_fluency/util/LanguagePackImpl;Ljava/util/Vector;)V

    .line 55
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    :try_start_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/touchtype_fluency/util/LanguagePackImpl$1;->this$0:Lcom/touchtype_fluency/util/LanguagePackImpl;

    invoke-virtual {v11}, Lcom/touchtype_fluency/util/LanguagePackImpl;->getDirectory()Ljava/io/File;

    move-result-object v3

    .line 59
    .local v3, directory:Ljava/io/File;
    invoke-static {v3}, Lorg/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    .line 60
    invoke-static {v10, v3}, Lorg/apache/commons/io/FileUtils;->moveDirectory(Ljava/io/File;Ljava/io/File;)V

    .line 62
    const/4 v9, 0x1

    .line 69
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    .line 70
    .local v7, lpFiles:[Ljava/io/File;
    if-eqz v7, :cond_5

    .line 71
    array-length v13, v7
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/DigestException; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v11, 0x0

    move v12, v11

    :goto_1
    if-lt v12, v13, :cond_1

    .line 110
    .end local v3           #directory:Ljava/io/File;
    .end local v7           #lpFiles:[Ljava/io/File;
    .end local v8           #newFiles:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    :goto_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/touchtype_fluency/util/LanguagePackImpl$1;->this$0:Lcom/touchtype_fluency/util/LanguagePackImpl;

    invoke-virtual/range {p1 .. p1}, Lcom/touchtype_fluency/util/HttpDownload;->isInterrupted()Z

    move-result v12

    #calls: Lcom/touchtype_fluency/util/LanguagePackImpl;->onComplete(ZZZ)V
    invoke-static {v11, v9, v12, v2}, Lcom/touchtype_fluency/util/LanguagePackImpl;->access$6(Lcom/touchtype_fluency/util/LanguagePackImpl;ZZZ)V

    .line 111
    return-void

    .line 53
    :cond_0
    const/4 v11, 0x0

    goto :goto_0

    .line 55
    .restart local v8       #newFiles:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    :catchall_0
    move-exception v11

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v11
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/security/DigestException; {:try_start_4 .. :try_end_4} :catch_2

    .line 87
    .end local v8           #newFiles:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    :catch_0
    move-exception v4

    .line 89
    .local v4, e:Ljava/lang/InterruptedException;
    const-string v11, "LanguagePack"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "download("

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/touchtype_fluency/util/LanguagePackImpl$1;->this$0:Lcom/touchtype_fluency/util/LanguagePackImpl;

    #getter for: Lcom/touchtype_fluency/util/LanguagePackImpl;->name:Ljava/lang/String;
    invoke-static {v13}, Lcom/touchtype_fluency/util/LanguagePackImpl;->access$5(Lcom/touchtype_fluency/util/LanguagePackImpl;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ") interrupted (tidying up)"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/touchtype_fluency/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-static {v10}, Lorg/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    goto :goto_2

    .line 71
    .end local v4           #e:Ljava/lang/InterruptedException;
    .restart local v3       #directory:Ljava/io/File;
    .restart local v7       #lpFiles:[Ljava/io/File;
    .restart local v8       #newFiles:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    :cond_1
    :try_start_5
    aget-object v5, v7, v12

    .line 72
    .local v5, file:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v11, v14, v16

    if-nez v11, :cond_3

    const/4 v6, 0x1

    .line 73
    .local v6, isEmptyFile:Z
    :goto_3
    if-eqz v6, :cond_2

    .line 74
    const-string v11, "LanguagePack"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "download("

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/touchtype_fluency/util/LanguagePackImpl$1;->this$0:Lcom/touchtype_fluency/util/LanguagePackImpl;

    #getter for: Lcom/touchtype_fluency/util/LanguagePackImpl;->name:Ljava/lang/String;
    invoke-static {v15}, Lcom/touchtype_fluency/util/LanguagePackImpl;->access$5(Lcom/touchtype_fluency/util/LanguagePackImpl;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ") empty file for: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Lcom/touchtype_fluency/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/security/DigestException; {:try_start_5 .. :try_end_5} :catch_2

    .line 77
    :cond_2
    if-eqz v6, :cond_4

    const/4 v11, 0x0

    :goto_4
    and-int/2addr v9, v11

    .line 71
    add-int/lit8 v11, v12, 0x1

    move v12, v11

    goto :goto_1

    .line 72
    .end local v6           #isEmptyFile:Z
    :cond_3
    const/4 v6, 0x0

    goto :goto_3

    .line 77
    .restart local v6       #isEmptyFile:Z
    :cond_4
    const/4 v11, 0x1

    goto :goto_4

    .line 84
    .end local v5           #file:Ljava/io/File;
    .end local v6           #isEmptyFile:Z
    :cond_5
    const/4 v9, 0x0

    goto :goto_2

    .line 92
    .end local v3           #directory:Ljava/io/File;
    .end local v7           #lpFiles:[Ljava/io/File;
    .end local v8           #newFiles:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    :catch_1
    move-exception v4

    .line 94
    .local v4, e:Ljava/io/IOException;
    const-string v11, "LanguagePack"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "download("

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/touchtype_fluency/util/LanguagePackImpl$1;->this$0:Lcom/touchtype_fluency/util/LanguagePackImpl;

    #getter for: Lcom/touchtype_fluency/util/LanguagePackImpl;->name:Ljava/lang/String;
    invoke-static {v13}, Lcom/touchtype_fluency/util/LanguagePackImpl;->access$5(Lcom/touchtype_fluency/util/LanguagePackImpl;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ") error (tidying up): "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/touchtype_fluency/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-static {v10}, Lorg/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    goto/16 :goto_2

    .line 100
    .end local v4           #e:Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 102
    .local v1, de:Ljava/security/DigestException;
    const-string v11, "LanguagePack"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "download("

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/touchtype_fluency/util/LanguagePackImpl$1;->this$0:Lcom/touchtype_fluency/util/LanguagePackImpl;

    #getter for: Lcom/touchtype_fluency/util/LanguagePackImpl;->name:Ljava/lang/String;
    invoke-static {v13}, Lcom/touchtype_fluency/util/LanguagePackImpl;->access$5(Lcom/touchtype_fluency/util/LanguagePackImpl;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ") invalid sha1 (tidying up): "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v1}, Ljava/security/DigestException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/touchtype_fluency/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-static {v10}, Lorg/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    .line 107
    const/4 v2, 0x0

    goto/16 :goto_2
.end method
