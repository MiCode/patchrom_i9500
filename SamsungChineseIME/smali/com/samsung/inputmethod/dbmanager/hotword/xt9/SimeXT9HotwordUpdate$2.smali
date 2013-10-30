.class Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate$2;
.super Ljava/lang/Object;
.source "SimeXT9HotwordUpdate.java"

# interfaces
.implements Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManagerInterface$DownloadStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate;


# direct methods
.method constructor <init>(Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate;)V
    .locals 0
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate$2;->this$0:Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public completed(ILjava/io/File;)V
    .locals 3
    .parameter "id"
    .parameter "zipFile"

    .prologue
    .line 243
    const-string v0, "SimeXT9HotwordUpdate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DownloadListener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] completed zip="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    return-void
.end method

.method public completed(ILjava/io/File;Ljava/lang/String;)V
    .locals 8
    .parameter "id"
    .parameter "zipFile"
    .parameter "version"

    .prologue
    const/4 v7, 0x1

    .line 249
    const-string v4, "SimeXT9HotwordUpdate"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[DownloadListener "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] completed zip="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " version="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v4, p0, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate$2;->this$0:Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate;

    #calls: Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate;->convertSDKIdTodbId(I)I
    invoke-static {v4, p1}, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate;->access$400(Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate;I)I

    move-result v0

    .line 257
    .local v0, dbId:I
    const/4 v3, 0x0

    .line 259
    .local v3, fileNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v4, p0, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate$2;->this$0:Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate;

    #calls: Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate;->extractFiles(Ljava/io/File;)Ljava/util/List;
    invoke-static {v4, p2}, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate;->access$500(Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate;Ljava/io/File;)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 265
    :goto_0
    new-instance v1, Lcom/samsung/inputmethod/dbmanager/SimeDownloadInfo;

    invoke-direct {v1, v0}, Lcom/samsung/inputmethod/dbmanager/SimeDownloadInfo;-><init>(I)V

    .line 267
    .local v1, downloadInfo:Lcom/samsung/inputmethod/dbmanager/SimeDownloadInfo;
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_0

    .line 269
    iput v7, v1, Lcom/samsung/inputmethod/dbmanager/SimeDownloadInfo;->percent:I

    .line 270
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v1, Lcom/samsung/inputmethod/dbmanager/SimeDownloadInfo;->fileName:Ljava/lang/String;

    .line 271
    iput-object p3, v1, Lcom/samsung/inputmethod/dbmanager/SimeDownloadInfo;->version:Ljava/lang/String;

    .line 272
    iget-object v4, p0, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate$2;->this$0:Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate;

    #getter for: Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate;->mNotifier:Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateInterface$SimeDownloadNotifier;
    invoke-static {v4}, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate;->access$200(Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate;)Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateInterface$SimeDownloadNotifier;

    move-result-object v4

    invoke-interface {v4, v7, v1}, Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateInterface$SimeDownloadNotifier;->handleDownloadEvent(ILjava/lang/Object;)Z

    .line 281
    :cond_0
    return-void

    .line 260
    .end local v1           #downloadInfo:Lcom/samsung/inputmethod/dbmanager/SimeDownloadInfo;
    :catch_0
    move-exception v2

    .line 262
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public started(I)V
    .locals 3
    .parameter "id"

    .prologue
    .line 225
    const-string v0, "SimeXT9HotwordUpdate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DownloadListener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] started"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    return-void
.end method

.method public stopped(II)V
    .locals 4
    .parameter "id"
    .parameter "reasonCode"

    .prologue
    .line 285
    const-string v0, "SimeXT9HotwordUpdate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DownloadListener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] stopped reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate$2;->this$0:Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate;

    #getter for: Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate;->mNotifier:Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateInterface$SimeDownloadNotifier;
    invoke-static {v0}, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate;->access$200(Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate;)Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateInterface$SimeDownloadNotifier;

    move-result-object v0

    const/16 v1, 0x9

    new-instance v2, Lcom/samsung/inputmethod/dbmanager/SimeDownloadInfo;

    iget-object v3, p0, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate$2;->this$0:Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate;

    #calls: Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate;->convertSDKIdTodbId(I)I
    invoke-static {v3, p1}, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate;->access$400(Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate;I)I

    move-result v3

    invoke-direct {v2, v3}, Lcom/samsung/inputmethod/dbmanager/SimeDownloadInfo;-><init>(I)V

    invoke-interface {v0, v1, v2}, Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateInterface$SimeDownloadNotifier;->handleDownloadEvent(ILjava/lang/Object;)Z

    .line 294
    return-void
.end method

.method public updated(II)V
    .locals 4
    .parameter "id"
    .parameter "progress"

    .prologue
    .line 230
    const-string v1, "SimeXT9HotwordUpdate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[DownloadListener "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    new-instance v0, Lcom/samsung/inputmethod/dbmanager/SimeDownloadInfo;

    iget-object v1, p0, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate$2;->this$0:Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate;

    #calls: Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate;->convertSDKIdTodbId(I)I
    invoke-static {v1, p1}, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate;->access$400(Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate;I)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/inputmethod/dbmanager/SimeDownloadInfo;-><init>(I)V

    .line 234
    .local v0, downloadInfo:Lcom/samsung/inputmethod/dbmanager/SimeDownloadInfo;
    iput p2, v0, Lcom/samsung/inputmethod/dbmanager/SimeDownloadInfo;->percent:I

    .line 235
    iget-object v1, p0, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate$2;->this$0:Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate;

    #getter for: Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate;->mNotifier:Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateInterface$SimeDownloadNotifier;
    invoke-static {v1}, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate;->access$200(Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate;)Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateInterface$SimeDownloadNotifier;

    move-result-object v1

    const/16 v2, 0x8

    invoke-interface {v1, v2, v0}, Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateInterface$SimeDownloadNotifier;->handleDownloadEvent(ILjava/lang/Object;)Z

    .line 239
    return-void
.end method
