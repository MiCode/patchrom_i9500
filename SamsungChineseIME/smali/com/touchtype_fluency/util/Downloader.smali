.class public abstract Lcom/touchtype_fluency/util/Downloader;
.super Ljava/lang/Object;
.source "Downloader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Downloader"


# instance fields
.field private downloader:Ljava/lang/Thread;

.field private httpDownload:Lcom/touchtype_fluency/util/HttpDownload;

.field private mSuccess:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/touchtype_fluency/util/Downloader;->mSuccess:Z

    .line 6
    return-void
.end method

.method static synthetic access$0(Lcom/touchtype_fluency/util/Downloader;)Lcom/touchtype_fluency/util/HttpDownload;
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/touchtype_fluency/util/Downloader;->httpDownload:Lcom/touchtype_fluency/util/HttpDownload;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized blockUntilComplete()V
    .locals 2

    .prologue
    .line 43
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/touchtype_fluency/util/Downloader;->isDownloadInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    const-string v0, "Downloader"

    const-string v1, "Blocking until download complete"

    invoke-static {v0, v1}, Lcom/touchtype_fluency/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/touchtype_fluency/util/Downloader;->downloader:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 48
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized cancelDownload()V
    .locals 2

    .prologue
    .line 33
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/touchtype_fluency/util/Downloader;->isDownloadInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    const-string v0, "Downloader"

    const-string v1, "Canceling download"

    invoke-static {v0, v1}, Lcom/touchtype_fluency/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/touchtype_fluency/util/Downloader;->downloader:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 37
    iget-object v0, p0, Lcom/touchtype_fluency/util/Downloader;->httpDownload:Lcom/touchtype_fluency/util/HttpDownload;

    invoke-virtual {v0}, Lcom/touchtype_fluency/util/HttpDownload;->interrupt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    :cond_0
    monitor-exit p0

    return-void

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized download()V
    .locals 2

    .prologue
    .line 12
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/touchtype_fluency/util/Downloader;->isDownloadInProgress()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    :goto_0
    monitor-exit p0

    return-void

    .line 18
    :cond_0
    :try_start_1
    new-instance v0, Lcom/touchtype_fluency/util/HttpDownload;

    invoke-direct {v0}, Lcom/touchtype_fluency/util/HttpDownload;-><init>()V

    iput-object v0, p0, Lcom/touchtype_fluency/util/Downloader;->httpDownload:Lcom/touchtype_fluency/util/HttpDownload;

    .line 19
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/touchtype_fluency/util/Downloader$1;

    invoke-direct {v1, p0}, Lcom/touchtype_fluency/util/Downloader$1;-><init>(Lcom/touchtype_fluency/util/Downloader;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/touchtype_fluency/util/Downloader;->downloader:Ljava/lang/Thread;

    .line 25
    iget-object v0, p0, Lcom/touchtype_fluency/util/Downloader;->downloader:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 12
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSuccess()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/touchtype_fluency/util/Downloader;->mSuccess:Z

    return v0
.end method

.method public declared-synchronized isDownloadInProgress()Z
    .locals 1

    .prologue
    .line 29
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/Downloader;->downloader:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/touchtype_fluency/util/Downloader;->downloader:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/touchtype_fluency/util/Downloader;->httpDownload:Lcom/touchtype_fluency/util/HttpDownload;

    invoke-virtual {v0}, Lcom/touchtype_fluency/util/HttpDownload;->isInterrupted()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract onDownload(Lcom/touchtype_fluency/util/HttpDownload;)V
.end method

.method public declared-synchronized setComplete()V
    .locals 1

    .prologue
    .line 57
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/touchtype_fluency/util/Downloader;->downloader:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    monitor-exit p0

    return-void

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSuccess(Z)V
    .locals 0
    .parameter "state"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/touchtype_fluency/util/Downloader;->mSuccess:Z

    .line 68
    return-void
.end method
