.class Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate$1;
.super Ljava/lang/Object;
.source "SimeXT9HotwordUpdate.java"

# interfaces
.implements Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManagerInterface$LanguageListListener;


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
    .line 189
    iput-object p1, p0, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate$1;->this$0:Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete()V
    .locals 2

    .prologue
    .line 214
    const-string v0, "SimeXT9HotwordUpdate"

    const-string v1, "[languageListener.updated] complete "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    return-void
.end method

.method public updated()V
    .locals 6

    .prologue
    .line 192
    iget-object v2, p0, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate$1;->this$0:Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate;

    #getter for: Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate;->mKLmanagerWrapper:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;
    invoke-static {v2}, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate;->access$000(Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate;)Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->getAvailableLanguages()Ljava/util/List;

    move-result-object v1

    .line 193
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate$1;->this$0:Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate;

    #getter for: Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate;->mKLmanagerWrapper:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;
    invoke-static {v2}, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate;->access$000(Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate;)Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->getUpdatableLanguages()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 195
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 197
    iget-object v2, p0, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate$1;->this$0:Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate;

    #getter for: Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate;->mNotifier:Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateInterface$SimeDownloadNotifier;
    invoke-static {v2}, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate;->access$200(Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate;)Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateInterface$SimeDownloadNotifier;

    move-result-object v2

    const/4 v3, 0x7

    new-instance v4, Lcom/samsung/inputmethod/dbmanager/SimeDownloadInfo;

    iget-object v5, p0, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate$1;->this$0:Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate;

    #getter for: Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate;->mDbId:I
    invoke-static {v5}, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate;->access$100(Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate;)I

    move-result v5

    invoke-direct {v4, v5}, Lcom/samsung/inputmethod/dbmanager/SimeDownloadInfo;-><init>(I)V

    invoke-interface {v2, v3, v4}, Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateInterface$SimeDownloadNotifier;->handleDownloadEvent(ILjava/lang/Object;)Z

    .line 209
    :cond_0
    return-void

    .line 203
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 204
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 205
    .local v0, lang:I
    const-string v2, "SimeXT9HotwordUpdate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[languageListener.updated] Getting first language from list: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v2, p0, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate$1;->this$0:Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate;

    #getter for: Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate;->mKLmanagerWrapper:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;
    invoke-static {v2}, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate;->access$000(Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate;)Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate$1;->this$0:Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate;

    #getter for: Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate;->mDownloadCallBack:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManagerInterface$DownloadStatusListener;
    invoke-static {v3}, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate;->access$300(Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate;)Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManagerInterface$DownloadStatusListener;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->download(ILcom/samsung/inputmethod/dbmanager/SimeXt9DLManagerInterface$DownloadStatusListener;)V

    goto :goto_0
.end method
