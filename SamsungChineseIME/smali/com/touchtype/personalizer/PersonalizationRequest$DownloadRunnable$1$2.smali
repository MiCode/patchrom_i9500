.class Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable$1$2;
.super Lcom/touchtype_fluency/util/ProgressListener;
.source "PersonalizationRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable$1;->onDownload(Lcom/touchtype_fluency/util/HttpDownload;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable$1;

.field final synthetic val$store:Lcom/touchtype_fluency/util/Storage;

.field final synthetic val$tempFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable$1;Ljava/io/File;Lcom/touchtype_fluency/util/Storage;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable$1$2;->this$2:Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable$1;

    iput-object p2, p0, Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable$1$2;->val$tempFile:Ljava/io/File;

    iput-object p3, p0, Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable$1$2;->val$store:Lcom/touchtype_fluency/util/Storage;

    invoke-direct {p0}, Lcom/touchtype_fluency/util/ProgressListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(ZZZ)V
    .locals 7
    .parameter "success"
    .parameter "cancelled"
    .parameter "digestOK"

    .prologue
    .line 179
    invoke-static {}, Lcom/touchtype/personalizer/PersonalizationRequest;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onComplete() download success: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", digestOK: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable$1$2;->val$tempFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x400

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/touchtype_fluency/service/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 187
    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable$1$2;->this$2:Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable$1;

    iget-object v1, v1, Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable$1;->this$1:Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable;

    iget-object v1, v1, Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable;->this$0:Lcom/touchtype/personalizer/PersonalizationRequest;

    #getter for: Lcom/touchtype/personalizer/PersonalizationRequest;->mListener:Lcom/touchtype/personalizer/PersonalizationListener;
    invoke-static {v1}, Lcom/touchtype/personalizer/PersonalizationRequest;->access$000(Lcom/touchtype/personalizer/PersonalizationRequest;)Lcom/touchtype/personalizer/PersonalizationListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/touchtype/personalizer/PersonalizationListener;->merging()V

    .line 189
    :try_start_0
    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable$1$2;->this$2:Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable$1;

    iget-object v2, p0, Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable$1$2;->val$tempFile:Ljava/io/File;

    #calls: Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable$1;->mergeModels(Ljava/io/File;)Z
    invoke-static {v1, v2}, Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable$1;->access$600(Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable$1;Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :goto_0
    return-void

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, e:Ljava/lang/InterruptedException;
    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable$1$2;->this$2:Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable$1;

    iget-object v1, v1, Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable$1;->this$1:Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable;

    iget-object v1, v1, Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable;->this$0:Lcom/touchtype/personalizer/PersonalizationRequest;

    #getter for: Lcom/touchtype/personalizer/PersonalizationRequest;->mListener:Lcom/touchtype/personalizer/PersonalizationListener;
    invoke-static {v1}, Lcom/touchtype/personalizer/PersonalizationRequest;->access$000(Lcom/touchtype/personalizer/PersonalizationRequest;)Lcom/touchtype/personalizer/PersonalizationListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/touchtype/personalizer/PersonalizationListener;->failed()V

    goto :goto_0

    .line 197
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_0
    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable$1$2;->this$2:Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable$1;

    iget-object v1, v1, Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable$1;->this$1:Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable;

    iget-object v1, v1, Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable;->this$0:Lcom/touchtype/personalizer/PersonalizationRequest;

    #getter for: Lcom/touchtype/personalizer/PersonalizationRequest;->mListener:Lcom/touchtype/personalizer/PersonalizationListener;
    invoke-static {v1}, Lcom/touchtype/personalizer/PersonalizationRequest;->access$000(Lcom/touchtype/personalizer/PersonalizationRequest;)Lcom/touchtype/personalizer/PersonalizationListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/touchtype/personalizer/PersonalizationListener;->failed()V

    goto :goto_0
.end method

.method public onProgress(II)V
    .locals 6
    .parameter "current"
    .parameter "maximum"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable$1$2;->this$2:Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable$1;

    iget-object v0, v0, Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable$1;->this$1:Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable;

    iget-object v0, v0, Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable;->this$0:Lcom/touchtype/personalizer/PersonalizationRequest;

    #getter for: Lcom/touchtype/personalizer/PersonalizationRequest;->mListener:Lcom/touchtype/personalizer/PersonalizationListener;
    invoke-static {v0}, Lcom/touchtype/personalizer/PersonalizationRequest;->access$000(Lcom/touchtype/personalizer/PersonalizationRequest;)Lcom/touchtype/personalizer/PersonalizationListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/touchtype/personalizer/PersonalizationListener;->downloadProgress(II)V

    .line 172
    invoke-static {}, Lcom/touchtype/personalizer/PersonalizationRequest;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Download progress "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable$1$2;->val$tempFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/touchtype_fluency/service/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    return-void
.end method
