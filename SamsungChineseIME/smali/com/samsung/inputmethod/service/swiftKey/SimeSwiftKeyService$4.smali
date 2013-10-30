.class Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService$4;
.super Lcom/touchtype_fluency/util/CompletionListener;
.source "SimeSwiftKeyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->installPreloadLanguagePack()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;


# direct methods
.method constructor <init>(Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;)V
    .locals 0
    .parameter

    .prologue
    .line 330
    iput-object p1, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService$4;->this$0:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;

    invoke-direct {p0}, Lcom/touchtype_fluency/util/CompletionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Z)V
    .locals 5
    .parameter "success"

    .prologue
    const/4 v4, 0x1

    .line 334
    iget-object v2, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService$4;->this$0:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;

    const/4 v3, 0x0

    #setter for: Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->downloadingLPCount:I
    invoke-static {v2, v3}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->access$102(Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;I)I

    .line 335
    invoke-static {}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->access$300()Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/touchtype_fluency/util/LanguagePackManager;->getAllLanguages()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/touchtype_fluency/util/LanguagePack;

    .line 336
    .local v1, language:Lcom/touchtype_fluency/util/LanguagePack;
    invoke-interface {v1}, Lcom/touchtype_fluency/util/LanguagePack;->isBroken()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 337
    invoke-interface {v1}, Lcom/touchtype_fluency/util/LanguagePack;->isPreinstalled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 338
    iget-object v2, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService$4;->this$0:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;

    #calls: Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->countDownloadingLanguagePack(Z)V
    invoke-static {v2, v4}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->access$000(Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;Z)V

    .line 339
    invoke-static {}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->access$300()Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v2

    new-instance v3, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService$4$1;

    invoke-direct {v3, p0}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService$4$1;-><init>(Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService$4;)V

    invoke-virtual {v2, v1, v3}, Lcom/touchtype_fluency/util/LanguagePackManager;->downloadLanguage(Lcom/touchtype_fluency/util/LanguagePack;Lcom/touchtype_fluency/util/ProgressListener;)Z

    goto :goto_0

    .line 355
    :cond_1
    invoke-interface {v1}, Lcom/touchtype_fluency/util/LanguagePack;->isPreinstalled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lcom/touchtype_fluency/util/LanguagePack;->isDownloaded()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Lcom/touchtype_fluency/util/LanguagePack;->isUpdateAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 357
    :cond_2
    iget-object v2, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService$4;->this$0:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;

    #calls: Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->countDownloadingLanguagePack(Z)V
    invoke-static {v2, v4}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->access$000(Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;Z)V

    .line 358
    invoke-static {}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->access$300()Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v2

    new-instance v3, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService$4$2;

    invoke-direct {v3, p0, v1}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService$4$2;-><init>(Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService$4;Lcom/touchtype_fluency/util/LanguagePack;)V

    invoke-virtual {v2, v1, v3}, Lcom/touchtype_fluency/util/LanguagePackManager;->downloadLanguage(Lcom/touchtype_fluency/util/LanguagePack;Lcom/touchtype_fluency/util/ProgressListener;)Z

    goto :goto_0

    .line 376
    .end local v1           #language:Lcom/touchtype_fluency/util/LanguagePack;
    :cond_3
    return-void
.end method
