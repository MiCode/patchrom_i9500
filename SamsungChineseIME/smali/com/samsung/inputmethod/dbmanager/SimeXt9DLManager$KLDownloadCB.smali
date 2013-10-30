.class Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLDownloadCB;
.super Ljava/lang/Object;
.source "SimeXt9DLManager.java"

# interfaces
.implements Lcom/nuance/connect/language/KLLanguageDLCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KLDownloadCB"
.end annotation


# instance fields
.field private langId:I

.field public statusListener:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManagerInterface$DownloadStatusListener;

.field final synthetic this$0:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;


# direct methods
.method public constructor <init>(Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;I)V
    .locals 3
    .parameter
    .parameter "id"

    .prologue
    .line 345
    iput-object p1, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLDownloadCB;->this$0:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 346
    const-string v0, "SimeXt9DLManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[KLLanguageDLCallback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    #getter for: Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mState:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLState;
    invoke-static {p1}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->access$600(Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;)Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLState;->getStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] created"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iput p2, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLDownloadCB;->langId:I

    .line 348
    return-void
.end method


# virtual methods
.method public downloadComplete(Ljava/io/File;)V
    .locals 9
    .parameter "zipFile"

    .prologue
    const/4 v8, 0x1

    .line 380
    const-string v4, "SimeXt9DLManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[KLLanguageDLCallback "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLDownloadCB;->langId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLDownloadCB;->this$0:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;

    #getter for: Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mState:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLState;
    invoke-static {v6}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->access$600(Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;)Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLState;->getStr()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] downloadComplete1("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "):"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLDownloadCB;->statusListener:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManagerInterface$DownloadStatusListener;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    const/4 v2, 0x0

    .line 383
    .local v2, languagePath:Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLDownloadCB;->statusListener:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManagerInterface$DownloadStatusListener;

    if-eqz v4, :cond_0

    .line 384
    iget-object v4, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLDownloadCB;->statusListener:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManagerInterface$DownloadStatusListener;

    iget v5, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLDownloadCB;->langId:I

    invoke-interface {v4, v5, p1}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManagerInterface$DownloadStatusListener;->completed(ILjava/io/File;)V

    .line 387
    :cond_0
    iget-object v4, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLDownloadCB;->this$0:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;

    #getter for: Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mLanguageListener:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManagerInterface$LanguageListListener;
    invoke-static {v4}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->access$400(Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;)Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManagerInterface$LanguageListListener;

    move-result-object v4

    invoke-interface {v4}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManagerInterface$LanguageListListener;->complete()V

    .line 388
    iget-object v4, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLDownloadCB;->this$0:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;

    #getter for: Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mLangList:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLLangList;
    invoke-static {v4}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->access$300(Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;)Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLLangList;

    move-result-object v4

    iget v5, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLDownloadCB;->langId:I

    invoke-virtual {v4, v5, v8}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLLangList;->updateCompletedLang(IZ)V

    .line 389
    iget-object v4, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLDownloadCB;->this$0:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;

    #getter for: Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mLangList:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLLangList;
    invoke-static {v4}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->access$300(Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;)Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLLangList;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLDownloadCB;->this$0:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;

    #getter for: Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mLanguage:Lcom/nuance/connect/language/KLLanguageService;
    invoke-static {v5}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->access$200(Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;)Lcom/nuance/connect/language/KLLanguageService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/connect/language/KLLanguageService;->getAvailableLanguages()Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLDownloadCB;->this$0:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;

    #getter for: Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mLanguage:Lcom/nuance/connect/language/KLLanguageService;
    invoke-static {v6}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->access$200(Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;)Lcom/nuance/connect/language/KLLanguageService;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/connect/language/KLLanguageService;->getUpdatableLanguages()Ljava/util/List;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLDownloadCB;->this$0:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;

    #getter for: Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mLanguage:Lcom/nuance/connect/language/KLLanguageService;
    invoke-static {v7}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->access$200(Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;)Lcom/nuance/connect/language/KLLanguageService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/connect/language/KLLanguageService;->getDownloadedLanguages()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLLangList;->setLangLists(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 391
    iget-object v4, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLDownloadCB;->this$0:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;

    #calls: Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->checkStop()Z
    invoke-static {v4}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->access$100(Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;)Z

    .line 393
    :try_start_0
    iget-object v4, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLDownloadCB;->this$0:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;

    invoke-virtual {v4, p1}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->extractFiles(Ljava/io/File;)Ljava/util/List;

    move-result-object v3

    .line 394
    .local v3, unzipfileLst:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v5, "SimeXt9DLManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unzipfileLst.size() ="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "file1 name= "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_8

    .line 398
    iget v4, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLDownloadCB;->langId:I

    const/16 v5, 0xe0

    if-ne v4, v5, :cond_1

    .line 399
    const-string v2, "traditional_tw.ldb"

    .line 417
    :goto_1
    iget-object v5, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLDownloadCB;->this$0:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/data/data/com.samsung.inputmethod/ldb/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    #calls: Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->CopyFile(Ljava/lang/String;Ljava/lang/String;Z)Z
    invoke-static {v5, v4, v6, v7}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->access$1300(Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 397
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 400
    :cond_1
    iget v4, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLDownloadCB;->langId:I

    const/16 v5, 0xe2

    if-ne v4, v5, :cond_2

    .line 401
    const-string v2, "traditional_hk.ldb"

    goto :goto_1

    .line 402
    :cond_2
    iget v4, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLDownloadCB;->langId:I

    const/16 v5, 0xe1

    if-ne v4, v5, :cond_3

    .line 403
    const-string v2, "simplified_chinese.ldb"

    goto :goto_1

    .line 404
    :cond_3
    iget v4, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLDownloadCB;->langId:I

    const/16 v5, 0x112

    if-ne v4, v5, :cond_6

    .line 405
    if-ne v1, v8, :cond_4

    .line 406
    const-string v2, "korean_default.ldb"

    goto :goto_1

    .line 407
    :cond_4
    const/4 v4, 0x2

    if-ne v1, v4, :cond_5

    .line 408
    const-string v2, "korean_CJI.ldb"

    goto :goto_1

    .line 410
    :cond_5
    const-string v2, "korean_default.ldb"

    goto :goto_1

    .line 412
    :cond_6
    iget v4, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLDownloadCB;->langId:I

    const/16 v5, 0x109

    if-ne v4, v5, :cond_7

    .line 413
    const-string v2, "english.ldb"

    goto :goto_1

    .line 415
    :cond_7
    const-string v2, "DownloadedLanguage.ldb"
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 421
    .end local v1           #i:I
    .end local v3           #unzipfileLst:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 423
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 426
    .end local v0           #e:Ljava/io/IOException;
    :cond_8
    return-void
.end method

.method public downloadComplete(Ljava/io/File;Ljava/lang/String;)V
    .locals 4
    .parameter "zipFile"
    .parameter "version"

    .prologue
    .line 430
    const-string v0, "SimeXt9DLManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[KLLanguageDLCallback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLDownloadCB;->langId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLDownloadCB;->this$0:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;

    #getter for: Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mState:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLState;
    invoke-static {v2}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->access$600(Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;)Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLState;->getStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] downloadComplete2("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLDownloadCB;->statusListener:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManagerInterface$DownloadStatusListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLDownloadCB;->statusListener:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManagerInterface$DownloadStatusListener;

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLDownloadCB;->statusListener:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManagerInterface$DownloadStatusListener;

    iget v1, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLDownloadCB;->langId:I

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManagerInterface$DownloadStatusListener;->completed(ILjava/io/File;Ljava/lang/String;)V

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLDownloadCB;->this$0:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;

    #getter for: Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mLangList:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLLangList;
    invoke-static {v0}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->access$300(Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;)Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLLangList;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLDownloadCB;->this$0:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;

    #getter for: Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mLanguage:Lcom/nuance/connect/language/KLLanguageService;
    invoke-static {v1}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->access$200(Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;)Lcom/nuance/connect/language/KLLanguageService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/connect/language/KLLanguageService;->getAvailableLanguages()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLDownloadCB;->this$0:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;

    #getter for: Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mLanguage:Lcom/nuance/connect/language/KLLanguageService;
    invoke-static {v2}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->access$200(Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;)Lcom/nuance/connect/language/KLLanguageService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/connect/language/KLLanguageService;->getUpdatableLanguages()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLDownloadCB;->this$0:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;

    #getter for: Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mLanguage:Lcom/nuance/connect/language/KLLanguageService;
    invoke-static {v3}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->access$200(Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;)Lcom/nuance/connect/language/KLLanguageService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/connect/language/KLLanguageService;->getDownloadedLanguages()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLLangList;->setLangLists(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 436
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLDownloadCB;->this$0:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;

    #calls: Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->checkStop()Z
    invoke-static {v0}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->access$100(Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;)Z

    .line 437
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLDownloadCB;->this$0:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;

    #getter for: Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mLanguageListener:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManagerInterface$LanguageListListener;
    invoke-static {v0}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->access$400(Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;)Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManagerInterface$LanguageListListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManagerInterface$LanguageListListener;->complete()V

    .line 438
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLDownloadCB;->this$0:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;

    #getter for: Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mLangList:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLLangList;
    invoke-static {v0}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->access$300(Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;)Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLLangList;

    move-result-object v0

    iget v1, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLDownloadCB;->langId:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLLangList;->updateCompletedLang(IZ)V

    .line 439
    return-void
.end method

.method public downloadFailed(I)V
    .locals 3
    .parameter "reasonCode"

    .prologue
    .line 454
    const-string v0, "SimeXt9DLManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[KLLanguageDLCallback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLDownloadCB;->langId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLDownloadCB;->this$0:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;

    #getter for: Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mState:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLState;
    invoke-static {v2}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->access$600(Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;)Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLState;->getStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] downloadFailed("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLDownloadCB;->statusListener:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManagerInterface$DownloadStatusListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLDownloadCB;->statusListener:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManagerInterface$DownloadStatusListener;

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLDownloadCB;->statusListener:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManagerInterface$DownloadStatusListener;

    iget v1, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLDownloadCB;->langId:I

    invoke-interface {v0, v1, p1}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManagerInterface$DownloadStatusListener;->stopped(II)V

    .line 459
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLDownloadCB;->this$0:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;

    #getter for: Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mLangList:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLLangList;
    invoke-static {v0}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->access$300(Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;)Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLLangList;

    move-result-object v0

    iget v1, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLDownloadCB;->langId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLLangList;->updateCompletedLang(IZ)V

    .line 460
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLDownloadCB;->this$0:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;

    #calls: Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->checkStop()Z
    invoke-static {v0}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->access$100(Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;)Z

    .line 461
    return-void
.end method

.method public downloadPercentage(I)V
    .locals 3
    .parameter "percent"

    .prologue
    .line 372
    const-string v0, "SimeXt9DLManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downloadPercentage"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLDownloadCB;->statusListener:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManagerInterface$DownloadStatusListener;

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLDownloadCB;->statusListener:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManagerInterface$DownloadStatusListener;

    iget v1, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLDownloadCB;->langId:I

    invoke-interface {v0, v1, p1}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManagerInterface$DownloadStatusListener;->updated(II)V

    .line 376
    :cond_0
    return-void
.end method

.method public downloadStarted()V
    .locals 3

    .prologue
    .line 362
    const-string v0, "SimeXt9DLManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[KLLanguageDLCallback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLDownloadCB;->langId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLDownloadCB;->this$0:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;

    #getter for: Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mState:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLState;
    invoke-static {v2}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->access$600(Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;)Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLState;->getStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] downloadStarted:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLDownloadCB;->statusListener:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManagerInterface$DownloadStatusListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLDownloadCB;->this$0:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;

    #getter for: Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mLangList:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLLangList;
    invoke-static {v0}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->access$300(Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;)Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLLangList;

    move-result-object v0

    iget v1, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLDownloadCB;->langId:I

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLLangList;->setCurrentDL(I)V

    .line 364
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLDownloadCB;->statusListener:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManagerInterface$DownloadStatusListener;

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLDownloadCB;->statusListener:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManagerInterface$DownloadStatusListener;

    iget v1, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLDownloadCB;->langId:I

    invoke-interface {v0, v1}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManagerInterface$DownloadStatusListener;->started(I)V

    .line 367
    :cond_0
    return-void
.end method

.method public downloadStopped(I)V
    .locals 3
    .parameter "reasonCode"

    .prologue
    .line 443
    const-string v0, "SimeXt9DLManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[KLLanguageDLCallback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLDownloadCB;->langId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLDownloadCB;->this$0:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;

    #getter for: Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mState:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLState;
    invoke-static {v2}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->access$600(Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;)Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLState;->getStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] downloadStopped("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLDownloadCB;->statusListener:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManagerInterface$DownloadStatusListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLDownloadCB;->statusListener:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManagerInterface$DownloadStatusListener;

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLDownloadCB;->statusListener:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManagerInterface$DownloadStatusListener;

    iget v1, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLDownloadCB;->langId:I

    invoke-interface {v0, v1, p1}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManagerInterface$DownloadStatusListener;->stopped(II)V

    .line 448
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLDownloadCB;->this$0:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;

    #getter for: Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mLangList:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLLangList;
    invoke-static {v0}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->access$300(Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;)Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLLangList;

    move-result-object v0

    iget v1, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLDownloadCB;->langId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLLangList;->updateCompletedLang(IZ)V

    .line 449
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLDownloadCB;->this$0:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;

    #calls: Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->checkStop()Z
    invoke-static {v0}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->access$100(Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;)Z

    .line 450
    return-void
.end method

.method public register(Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManagerInterface$DownloadStatusListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 351
    const-string v0, "SimeXt9DLManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[KLLanguageDLCallback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLDownloadCB;->langId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLDownloadCB;->this$0:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;

    #getter for: Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mState:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLState;
    invoke-static {v2}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->access$600(Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;)Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLState;->getStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] register:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iput-object p1, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLDownloadCB;->statusListener:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManagerInterface$DownloadStatusListener;

    .line 353
    return-void
.end method

.method public unregister()V
    .locals 3

    .prologue
    .line 356
    const-string v0, "SimeXt9DLManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[KLLanguageDLCallback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLDownloadCB;->langId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLDownloadCB;->this$0:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;

    #getter for: Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mState:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLState;
    invoke-static {v2}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->access$600(Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;)Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLState;->getStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] unregister:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLDownloadCB;->statusListener:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManagerInterface$DownloadStatusListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLDownloadCB;->statusListener:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManagerInterface$DownloadStatusListener;

    .line 358
    return-void
.end method
