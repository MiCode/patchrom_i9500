.class public Lcom/touchtype_fluency/util/FileStorage;
.super Ljava/lang/Object;
.source "FileStorage.java"

# interfaces
.implements Lcom/touchtype_fluency/util/Storage;


# instance fields
.field private final mDirectory:Ljava/io/File;

.field private final mPreinstallDirectory:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "directory"
    .parameter "preinstallDirectory"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/touchtype_fluency/util/FileStorage;->mDirectory:Ljava/io/File;

    .line 24
    iget-object v0, p0, Lcom/touchtype_fluency/util/FileStorage;->mDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/touchtype_fluency/util/FileStorage;->mDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 28
    :cond_0
    if-nez p2, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/touchtype_fluency/util/FileStorage;->mPreinstallDirectory:Ljava/io/File;

    .line 29
    return-void

    .line 28
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/touchtype_fluency/util/FileStorage;->mDirectory:Ljava/io/File;

    return-object v0
.end method

.method public getPreinstallDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/touchtype_fluency/util/FileStorage;->mPreinstallDirectory:Ljava/io/File;

    return-object v0
.end method

.method public getTempDirectory()Ljava/io/File;
    .locals 3

    .prologue
    .line 38
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/touchtype_fluency/util/FileStorage;->getDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "tmp"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 39
    .local v0, tmp:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    .line 40
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 42
    :cond_0
    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized loadConfiguration(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "configFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/touchtype_fluency/util/FileStorage;->getDirectory()Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 56
    .local v0, file:Ljava/io/File;
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-static {v0}, Lorg/apache/commons/io/FileUtils;->openInputStream(Ljava/io/File;)Ljava/io/FileInputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 58
    .local v1, reader:Ljava/io/InputStreamReader;
    :try_start_1
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->toString(Ljava/io/Reader;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 60
    :try_start_2
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 58
    monitor-exit p0

    return-object v2

    .line 59
    :catchall_0
    move-exception v2

    .line 60
    :try_start_3
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Reader;)V

    .line 61
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 55
    .end local v0           #file:Ljava/io/File;
    .end local v1           #reader:Ljava/io/InputStreamReader;
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized saveConfiguration(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "json"
    .parameter "configFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/touchtype_fluency/util/FileStorage;->getDirectory()Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 67
    .local v0, file:Ljava/io/File;
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-static {v0}, Lorg/apache/commons/io/FileUtils;->openOutputStream(Ljava/io/File;)Ljava/io/FileOutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 69
    .local v1, writer:Ljava/io/OutputStreamWriter;
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    :try_start_2
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Writer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 73
    monitor-exit p0

    return-void

    .line 70
    :catchall_0
    move-exception v2

    .line 71
    :try_start_3
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Writer;)V

    .line 72
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 66
    .end local v0           #file:Ljava/io/File;
    .end local v1           #writer:Ljava/io/OutputStreamWriter;
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2
.end method
