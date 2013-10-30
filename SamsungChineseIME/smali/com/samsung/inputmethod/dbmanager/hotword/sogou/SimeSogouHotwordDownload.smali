.class public Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload;
.super Ljava/lang/Object;
.source "SimeSogouHotwordDownload.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload$DownloadThread;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SimeSogouHotwordDownload"


# instance fields
.field private mDownloadThread:Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload$DownloadThread;

.field private mFileName:Ljava/lang/String;

.field private mNotifier:Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateInterface$SimeDownloadNotifier;

.field private mbUpdating:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "fileName"

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload;->mFileName:Ljava/lang/String;

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload;)Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateInterface$SimeDownloadNotifier;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload;->mNotifier:Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateInterface$SimeDownloadNotifier;

    return-object v0
.end method

.method static synthetic access$002(Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload;Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateInterface$SimeDownloadNotifier;)Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateInterface$SimeDownloadNotifier;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload;->mNotifier:Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateInterface$SimeDownloadNotifier;

    return-object p1
.end method

.method static synthetic access$100(Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload;->mbUpdating:Z

    return v0
.end method

.method static synthetic access$102(Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload;->mbUpdating:Z

    return p1
.end method

.method static synthetic access$200(Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload;->mFileName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public download(Ljava/lang/String;Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateInterface$SimeDownloadNotifier;)V
    .locals 1
    .parameter "url"
    .parameter "notifier"

    .prologue
    .line 56
    new-instance v0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload$DownloadThread;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload$DownloadThread;-><init>(Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload;Ljava/lang/String;Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateInterface$SimeDownloadNotifier;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload;->mDownloadThread:Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload$DownloadThread;

    .line 57
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload;->mDownloadThread:Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload$DownloadThread;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload$DownloadThread;->start()V

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload;->mbUpdating:Z

    .line 59
    return-void
.end method

.method public stopDownload()V
    .locals 4

    .prologue
    .line 63
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload;->mDownloadThread:Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload$DownloadThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload;->mDownloadThread:Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload$DownloadThread;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload$DownloadThread;->isDownloading()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload;->mDownloadThread:Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload$DownloadThread;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload$DownloadThread;->stopDownload()V

    .line 66
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordDownload;->mNotifier:Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateInterface$SimeDownloadNotifier;

    const/16 v1, 0x9

    new-instance v2, Lcom/samsung/inputmethod/dbmanager/SimeDownloadInfo;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Lcom/samsung/inputmethod/dbmanager/SimeDownloadInfo;-><init>(I)V

    invoke-interface {v0, v1, v2}, Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateInterface$SimeDownloadNotifier;->handleDownloadEvent(ILjava/lang/Object;)Z

    .line 69
    :cond_0
    return-void
.end method
