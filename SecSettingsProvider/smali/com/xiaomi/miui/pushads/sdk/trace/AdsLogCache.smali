.class Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogCache;
.super Ljava/lang/Object;
.source "AdsLogCache.java"


# instance fields
.field private mBuilder:Ljava/lang/StringBuilder;

.field private mCacheFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "savepath"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogCache;->mBuilder:Ljava/lang/StringBuilder;

    .line 29
    invoke-direct {p0, p1}, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogCache;->createOutFolderIfNeeded(Ljava/lang/String;)V

    .line 30
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogCache;->mCacheFile:Ljava/io/File;

    .line 31
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogCache;->mCacheFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 33
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogCache;->mCacheFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 34
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogCache;->mCacheFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    .line 43
    :cond_0
    :goto_0
    return-void

    .line 38
    :catch_0
    move-exception v0

    .line 40
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private createOutFolderIfNeeded(Ljava/lang/String;)V
    .locals 4
    .parameter "outputPath"

    .prologue
    .line 101
    const-string v3, "/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 102
    .local v0, index:I
    const/4 v2, 0x0

    .line 103
    .local v2, pFolderPath:Ljava/lang/String;
    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 104
    move-object v2, p1

    .line 109
    :goto_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 110
    .local v1, pFolder:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 111
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 113
    :cond_0
    return-void

    .line 106
    .end local v1           #pFolder:Ljava/io/File;
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public appendInfo(Lcom/xiaomi/miui/pushads/sdk/trace/AdsCacheCell;)V
    .locals 3
    .parameter "cell"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogCache;->mBuilder:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p1, Lcom/xiaomi/miui/pushads/sdk/trace/AdsCacheCell;->mShowType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogCache;->mBuilder:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/xiaomi/miui/pushads/sdk/trace/AdsCacheCell;->mBase64:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/xiaomi/miui/pushads/sdk/trace/AdsCacheCell;->mMd5:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogCache;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    return-void
.end method

.method public flushFile()V
    .locals 5

    .prologue
    .line 55
    :try_start_0
    new-instance v1, Ljava/io/FileWriter;

    iget-object v2, p0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogCache;->mCacheFile:Ljava/io/File;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 56
    .local v1, writer:Ljava/io/FileWriter;
    iget-object v2, p0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogCache;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v1}, Ljava/io/FileWriter;->flush()V

    .line 58
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V

    .line 59
    iget-object v2, p0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogCache;->mBuilder:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogCache;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .end local v1           #writer:Ljava/io/FileWriter;
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public getAdsCacheCellFromCacheFile()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xiaomi/miui/pushads/sdk/trace/AdsCacheCell;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/xiaomi/miui/pushads/sdk/trace/AdsCacheCell;>;"
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    new-instance v7, Ljava/io/FileInputStream;

    iget-object v8, p0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogCache;->mCacheFile:Ljava/io/File;

    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string v8, "utf-8"

    invoke-direct {v6, v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v3, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 69
    .local v3, reader:Ljava/io/BufferedReader;
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, str:Ljava/lang/String;
    :goto_0
    if-eqz v5, :cond_2

    .line 70
    const-string v6, "\t"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 71
    .local v4, splits:[Ljava/lang/String;
    new-instance v0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsCacheCell;

    invoke-direct {v0}, Lcom/xiaomi/miui/pushads/sdk/trace/AdsCacheCell;-><init>()V

    .line 73
    .local v0, cell:Lcom/xiaomi/miui/pushads/sdk/trace/AdsCacheCell;
    if-eqz v4, :cond_0

    array-length v6, v4

    const/4 v7, 0x3

    if-eq v6, v7, :cond_1

    .line 69
    :cond_0
    :goto_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    goto :goto_0

    .line 77
    :cond_1
    const/4 v6, 0x0

    :try_start_1
    aget-object v6, v4, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsCacheCell;->mShowType:I

    .line 78
    const/4 v6, 0x1

    aget-object v6, v4, v6

    iput-object v6, v0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsCacheCell;->mBase64:Ljava/lang/String;

    .line 79
    const/4 v6, 0x2

    aget-object v6, v4, v6

    iput-object v6, v0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsCacheCell;->mMd5:Ljava/lang/String;

    .line 80
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 81
    :catch_0
    move-exception v1

    .line 82
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    const-string v6, "NotifyAdsCache"

    const-string v7, "\u8bfb\u53d6log cache \u5931\u8d25"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 90
    .end local v0           #cell:Lcom/xiaomi/miui/pushads/sdk/trace/AdsCacheCell;
    .end local v1           #e:Ljava/lang/Exception;
    .end local v3           #reader:Ljava/io/BufferedReader;
    .end local v4           #splits:[Ljava/lang/String;
    .end local v5           #str:Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 92
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 96
    .end local v1           #e:Ljava/io/IOException;
    :goto_2
    return-object v2

    .line 86
    .restart local v3       #reader:Ljava/io/BufferedReader;
    .restart local v5       #str:Ljava/lang/String;
    :cond_2
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 88
    iget-object v6, p0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogCache;->mCacheFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 89
    iget-object v6, p0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsLogCache;->mCacheFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2
.end method
