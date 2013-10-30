.class Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable$1;
.super Lcom/touchtype_fluency/util/Downloader;
.source "PersonalizationRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable;


# direct methods
.method constructor <init>(Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable$1;->this$1:Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable;

    invoke-direct {p0}, Lcom/touchtype_fluency/util/Downloader;-><init>()V

    return-void
.end method

.method static synthetic access$600(Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable$1;Ljava/io/File;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable$1;->mergeModels(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method private mergeModels(Ljava/io/File;)Z
    .locals 6
    .parameter "tempFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 100
    const/4 v1, 0x0

    .line 102
    .local v1, skSession:Lcom/touchtype_fluency/util/SwiftKeySession;
    :try_start_0
    const-string v2, "Samsung_nolimit_flow_f2498e18"

    invoke-static {v2}, Lcom/touchtype_fluency/util/SwiftKeySession;->create(Ljava/lang/String;)Lcom/touchtype_fluency/util/SwiftKeySession;
    :try_end_0
    .catch Lcom/touchtype_fluency/LicenseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 108
    invoke-static {}, Lcom/touchtype/personalizer/PersonalizationRequest;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mergeModels() tempFile: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/touchtype_fluency/service/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    if-eqz p1, :cond_0

    .line 110
    invoke-static {}, Lcom/touchtype/personalizer/PersonalizationRequest;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mergeModels() tempFile length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/touchtype_fluency/service/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :cond_0
    iget-object v2, p0, Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable$1;->this$1:Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable;

    iget-object v2, v2, Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable;->this$0:Lcom/touchtype/personalizer/PersonalizationRequest;

    #getter for: Lcom/touchtype/personalizer/PersonalizationRequest;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;
    invoke-static {v2}, Lcom/touchtype/personalizer/PersonalizationRequest;->access$200(Lcom/touchtype/personalizer/PersonalizationRequest;)Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v2

    new-instance v3, Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable$1$1;

    invoke-direct {v3, p0, p1}, Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable$1$1;-><init>(Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable$1;Ljava/io/File;)V

    invoke-virtual {v1, p1, v2, v3}, Lcom/touchtype_fluency/util/SwiftKeySession;->mergeLanguageModels(Ljava/io/File;Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/CompletionListener;)V

    .line 136
    invoke-static {}, Lcom/touchtype/personalizer/PersonalizationRequest;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mergeModels() mMergeResult: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable$1;->this$1:Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable;

    iget-object v4, v4, Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable;->this$0:Lcom/touchtype/personalizer/PersonalizationRequest;

    #getter for: Lcom/touchtype/personalizer/PersonalizationRequest;->mMergeResult:Z
    invoke-static {v4}, Lcom/touchtype/personalizer/PersonalizationRequest;->access$300(Lcom/touchtype/personalizer/PersonalizationRequest;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/touchtype_fluency/service/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v2, p0, Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable$1;->this$1:Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable;

    iget-object v2, v2, Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable;->this$0:Lcom/touchtype/personalizer/PersonalizationRequest;

    #getter for: Lcom/touchtype/personalizer/PersonalizationRequest;->mMergeResult:Z
    invoke-static {v2}, Lcom/touchtype/personalizer/PersonalizationRequest;->access$300(Lcom/touchtype/personalizer/PersonalizationRequest;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 139
    iget-object v2, p0, Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable$1;->this$1:Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable;

    iget-object v2, v2, Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable;->this$0:Lcom/touchtype/personalizer/PersonalizationRequest;

    #getter for: Lcom/touchtype/personalizer/PersonalizationRequest;->mListener:Lcom/touchtype/personalizer/PersonalizationListener;
    invoke-static {v2}, Lcom/touchtype/personalizer/PersonalizationRequest;->access$000(Lcom/touchtype/personalizer/PersonalizationRequest;)Lcom/touchtype/personalizer/PersonalizationListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/touchtype/personalizer/PersonalizationListener;->succeeded()V

    .line 147
    :goto_0
    invoke-static {}, Lcom/touchtype/personalizer/PersonalizationRequest;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Merging complete"

    invoke-static {v2, v3}, Lcom/touchtype_fluency/service/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v2, p0, Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable$1;->this$1:Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable;

    iget-object v2, v2, Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable;->this$0:Lcom/touchtype/personalizer/PersonalizationRequest;

    #getter for: Lcom/touchtype/personalizer/PersonalizationRequest;->mMergeResult:Z
    invoke-static {v2}, Lcom/touchtype/personalizer/PersonalizationRequest;->access$300(Lcom/touchtype/personalizer/PersonalizationRequest;)Z

    move-result v2

    :goto_1
    return v2

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, e:Lcom/touchtype_fluency/LicenseException;
    iget-object v2, p0, Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable$1;->this$1:Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable;

    iget-object v2, v2, Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable;->this$0:Lcom/touchtype/personalizer/PersonalizationRequest;

    #getter for: Lcom/touchtype/personalizer/PersonalizationRequest;->mListener:Lcom/touchtype/personalizer/PersonalizationListener;
    invoke-static {v2}, Lcom/touchtype/personalizer/PersonalizationRequest;->access$000(Lcom/touchtype/personalizer/PersonalizationRequest;)Lcom/touchtype/personalizer/PersonalizationListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/touchtype/personalizer/PersonalizationListener;->failed()V

    .line 106
    const/4 v2, 0x0

    goto :goto_1

    .line 145
    .end local v0           #e:Lcom/touchtype_fluency/LicenseException;
    :cond_1
    iget-object v2, p0, Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable$1;->this$1:Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable;

    iget-object v2, v2, Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable;->this$0:Lcom/touchtype/personalizer/PersonalizationRequest;

    #getter for: Lcom/touchtype/personalizer/PersonalizationRequest;->mListener:Lcom/touchtype/personalizer/PersonalizationListener;
    invoke-static {v2}, Lcom/touchtype/personalizer/PersonalizationRequest;->access$000(Lcom/touchtype/personalizer/PersonalizationRequest;)Lcom/touchtype/personalizer/PersonalizationListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/touchtype/personalizer/PersonalizationListener;->failed()V

    goto :goto_0
.end method


# virtual methods
.method protected onDownload(Lcom/touchtype_fluency/util/HttpDownload;)V
    .locals 8
    .parameter "httpDownload"

    .prologue
    .line 154
    iget-object v5, p0, Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable$1;->this$1:Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable;

    iget-object v5, v5, Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable;->this$0:Lcom/touchtype/personalizer/PersonalizationRequest;

    #getter for: Lcom/touchtype/personalizer/PersonalizationRequest;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;
    invoke-static {v5}, Lcom/touchtype/personalizer/PersonalizationRequest;->access$200(Lcom/touchtype/personalizer/PersonalizationRequest;)Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v5

    if-nez v5, :cond_0

    .line 214
    :goto_0
    return-void

    .line 158
    :cond_0
    iget-object v5, p0, Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable$1;->this$1:Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable;

    iget-object v5, v5, Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable;->this$0:Lcom/touchtype/personalizer/PersonalizationRequest;

    #getter for: Lcom/touchtype/personalizer/PersonalizationRequest;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;
    invoke-static {v5}, Lcom/touchtype/personalizer/PersonalizationRequest;->access$200(Lcom/touchtype/personalizer/PersonalizationRequest;)Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/touchtype_fluency/util/LanguagePackManager;->getStorage()Lcom/touchtype_fluency/util/Storage;

    move-result-object v3

    .line 159
    .local v3, store:Lcom/touchtype_fluency/util/Storage;
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Lcom/touchtype_fluency/util/Storage;->getTempDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable$1;->this$1:Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable;

    iget-object v6, v6, Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable;->this$0:Lcom/touchtype/personalizer/PersonalizationRequest;

    #getter for: Lcom/touchtype/personalizer/PersonalizationRequest;->mDownloadPath:Ljava/lang/String;
    invoke-static {v6}, Lcom/touchtype/personalizer/PersonalizationRequest;->access$400(Lcom/touchtype/personalizer/PersonalizationRequest;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 161
    .local v4, tempFile:Ljava/io/File;
    invoke-static {}, Lcom/touchtype/personalizer/PersonalizationRequest;->access$100()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Downloading "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable$1;->this$1:Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable;

    iget-object v7, v7, Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable;->this$0:Lcom/touchtype/personalizer/PersonalizationRequest;

    #getter for: Lcom/touchtype/personalizer/PersonalizationRequest;->mUrlManager:Lcom/touchtype_fluency/service/util/UrlManager;
    invoke-static {v7}, Lcom/touchtype/personalizer/PersonalizationRequest;->access$500(Lcom/touchtype/personalizer/PersonalizationRequest;)Lcom/touchtype_fluency/service/util/UrlManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/touchtype_fluency/service/util/UrlManager;->getEstablishedUrlString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/touchtype_fluency/service/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    new-instance v0, Lcom/touchtype_fluency/util/HttpDownload;

    invoke-direct {v0}, Lcom/touchtype_fluency/util/HttpDownload;-><init>()V

    .line 167
    .local v0, downloader:Lcom/touchtype_fluency/util/HttpDownload;
    new-instance v2, Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable$1$2;

    invoke-direct {v2, p0, v4, v3}, Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable$1$2;-><init>(Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable$1;Ljava/io/File;Lcom/touchtype_fluency/util/Storage;)V

    .line 203
    .local v2, listener:Lcom/touchtype_fluency/util/ProgressListener;
    :try_start_0
    iget-object v5, p0, Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable$1;->this$1:Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable;

    iget-object v5, v5, Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable;->this$0:Lcom/touchtype/personalizer/PersonalizationRequest;

    #getter for: Lcom/touchtype/personalizer/PersonalizationRequest;->mUrlManager:Lcom/touchtype_fluency/service/util/UrlManager;
    invoke-static {v5}, Lcom/touchtype/personalizer/PersonalizationRequest;->access$500(Lcom/touchtype/personalizer/PersonalizationRequest;)Lcom/touchtype_fluency/service/util/UrlManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/touchtype_fluency/service/util/UrlManager;->getEstablishedUrl()Ljava/net/URL;

    move-result-object v5

    invoke-virtual {v0, v5, v4, v2}, Lcom/touchtype_fluency/util/HttpDownload;->downloadGzip(Ljava/net/URL;Ljava/io/File;Lcom/touchtype_fluency/util/ProgressListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 212
    invoke-static {v4}, Lorg/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    goto :goto_0

    .line 206
    :catch_0
    move-exception v1

    .line 207
    .local v1, e:Ljava/io/IOException;
    :try_start_1
    iget-object v5, p0, Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable$1;->this$1:Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable;

    iget-object v5, v5, Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable;->this$0:Lcom/touchtype/personalizer/PersonalizationRequest;

    #getter for: Lcom/touchtype/personalizer/PersonalizationRequest;->mListener:Lcom/touchtype/personalizer/PersonalizationListener;
    invoke-static {v5}, Lcom/touchtype/personalizer/PersonalizationRequest;->access$000(Lcom/touchtype/personalizer/PersonalizationRequest;)Lcom/touchtype/personalizer/PersonalizationListener;

    move-result-object v5

    invoke-interface {v5}, Lcom/touchtype/personalizer/PersonalizationListener;->failed()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 212
    invoke-static {v4}, Lorg/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    goto/16 :goto_0

    .line 208
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 209
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_2
    iget-object v5, p0, Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable$1;->this$1:Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable;

    iget-object v5, v5, Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable;->this$0:Lcom/touchtype/personalizer/PersonalizationRequest;

    #getter for: Lcom/touchtype/personalizer/PersonalizationRequest;->mListener:Lcom/touchtype/personalizer/PersonalizationListener;
    invoke-static {v5}, Lcom/touchtype/personalizer/PersonalizationRequest;->access$000(Lcom/touchtype/personalizer/PersonalizationRequest;)Lcom/touchtype/personalizer/PersonalizationListener;

    move-result-object v5

    invoke-interface {v5}, Lcom/touchtype/personalizer/PersonalizationListener;->failed()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 212
    invoke-static {v4}, Lorg/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    goto/16 :goto_0

    .end local v1           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v5

    invoke-static {v4}, Lorg/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    throw v5
.end method
