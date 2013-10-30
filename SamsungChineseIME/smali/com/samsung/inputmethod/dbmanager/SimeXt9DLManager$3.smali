.class Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$3;
.super Ljava/lang/Object;
.source "SimeXt9DLManager.java"

# interfaces
.implements Lcom/nuance/connect/language/KLLanguageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;


# direct methods
.method constructor <init>(Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;)V
    .locals 0
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$3;->this$0:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public downloadListUpdated()V
    .locals 4

    .prologue
    .line 141
    const-string v0, "SimeXt9DLManager"

    const-string v1, "KLLanguageCallback.downloadListUpdated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$3;->this$0:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;

    #calls: Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->checkStop()Z
    invoke-static {v0}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->access$100(Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    :goto_0
    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$3;->this$0:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;

    #getter for: Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mLangList:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLLangList;
    invoke-static {v0}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->access$300(Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;)Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLLangList;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$3;->this$0:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;

    #getter for: Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mLanguage:Lcom/nuance/connect/language/KLLanguageService;
    invoke-static {v1}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->access$200(Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;)Lcom/nuance/connect/language/KLLanguageService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/connect/language/KLLanguageService;->getAvailableLanguages()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$3;->this$0:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;

    #getter for: Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mLanguage:Lcom/nuance/connect/language/KLLanguageService;
    invoke-static {v2}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->access$200(Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;)Lcom/nuance/connect/language/KLLanguageService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/connect/language/KLLanguageService;->getUpdatableLanguages()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$3;->this$0:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;

    #getter for: Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mLanguage:Lcom/nuance/connect/language/KLLanguageService;
    invoke-static {v3}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->access$200(Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;)Lcom/nuance/connect/language/KLLanguageService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/connect/language/KLLanguageService;->getDownloadedLanguages()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLLangList;->setLangLists(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 148
    const-string v0, "SimeXt9DLManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KL getAvailableLanguages: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$3;->this$0:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;

    #getter for: Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mLanguage:Lcom/nuance/connect/language/KLLanguageService;
    invoke-static {v2}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->access$200(Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;)Lcom/nuance/connect/language/KLLanguageService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/connect/language/KLLanguageService;->getAvailableLanguages()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const-string v0, "SimeXt9DLManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KL getUpdatableLanguages: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$3;->this$0:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;

    #getter for: Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mLanguage:Lcom/nuance/connect/language/KLLanguageService;
    invoke-static {v2}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->access$200(Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;)Lcom/nuance/connect/language/KLLanguageService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/connect/language/KLLanguageService;->getUpdatableLanguages()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const-string v0, "SimeXt9DLManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KL Downloaded Languages: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$3;->this$0:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;

    #getter for: Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mLanguage:Lcom/nuance/connect/language/KLLanguageService;
    invoke-static {v2}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->access$200(Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;)Lcom/nuance/connect/language/KLLanguageService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/connect/language/KLLanguageService;->getDownloadedLanguages()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$3;->this$0:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;

    #getter for: Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mLanguageListener:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManagerInterface$LanguageListListener;
    invoke-static {v0}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->access$400(Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;)Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManagerInterface$LanguageListListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManagerInterface$LanguageListListener;->updated()V

    goto/16 :goto_0
.end method
