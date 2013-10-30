.class Lcom/touchtype_fluency/util/LanguagePackManagerImpl$1;
.super Lcom/touchtype_fluency/util/Downloader;
.source "LanguagePackManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/touchtype_fluency/util/LanguagePackManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/touchtype_fluency/util/LanguagePackManagerImpl;


# direct methods
.method constructor <init>(Lcom/touchtype_fluency/util/LanguagePackManagerImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/touchtype_fluency/util/LanguagePackManagerImpl$1;->this$0:Lcom/touchtype_fluency/util/LanguagePackManagerImpl;

    .line 51
    invoke-direct {p0}, Lcom/touchtype_fluency/util/Downloader;-><init>()V

    return-void
.end method


# virtual methods
.method protected onDownload(Lcom/touchtype_fluency/util/HttpDownload;)V
    .locals 7
    .parameter "httpDownload"

    .prologue
    .line 54
    const/4 v3, 0x0

    .line 56
    .local v3, success:Z
    :try_start_0
    new-instance v4, Ljava/net/URL;

    iget-object v5, p0, Lcom/touchtype_fluency/util/LanguagePackManagerImpl$1;->this$0:Lcom/touchtype_fluency/util/LanguagePackManagerImpl;

    #getter for: Lcom/touchtype_fluency/util/LanguagePackManagerImpl;->mConfigurationURL:Ljava/lang/String;
    invoke-static {v5}, Lcom/touchtype_fluency/util/LanguagePackManagerImpl;->access$0(Lcom/touchtype_fluency/util/LanguagePackManagerImpl;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Lcom/touchtype_fluency/util/HttpDownload;->download(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, json:Ljava/lang/String;
    new-instance v2, Lcom/touchtype_fluency/util/LanguagePacks;

    iget-object v4, p0, Lcom/touchtype_fluency/util/LanguagePackManagerImpl$1;->this$0:Lcom/touchtype_fluency/util/LanguagePackManagerImpl;

    #getter for: Lcom/touchtype_fluency/util/LanguagePackManagerImpl;->mStorage:Lcom/touchtype_fluency/util/Storage;
    invoke-static {v4}, Lcom/touchtype_fluency/util/LanguagePackManagerImpl;->access$1(Lcom/touchtype_fluency/util/LanguagePackManagerImpl;)Lcom/touchtype_fluency/util/Storage;

    move-result-object v4

    invoke-direct {v2, v1, v4}, Lcom/touchtype_fluency/util/LanguagePacks;-><init>(Ljava/lang/String;Lcom/touchtype_fluency/util/Storage;)V

    .line 58
    .local v2, newConfig:Lcom/touchtype_fluency/util/LanguagePacks;
    invoke-virtual {v2}, Lcom/touchtype_fluency/util/LanguagePacks;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 59
    const-string v4, "LanguagePackManager"

    const-string v5, "languagePacks.json downloaded"

    invoke-static {v4, v5}, Lcom/touchtype_fluency/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v4, p0, Lcom/touchtype_fluency/util/LanguagePackManagerImpl$1;->this$0:Lcom/touchtype_fluency/util/LanguagePackManagerImpl;

    #calls: Lcom/touchtype_fluency/util/LanguagePackManagerImpl;->merge(Lcom/touchtype_fluency/util/LanguagePacks;)V
    invoke-static {v4, v2}, Lcom/touchtype_fluency/util/LanguagePackManagerImpl;->access$2(Lcom/touchtype_fluency/util/LanguagePackManagerImpl;Lcom/touchtype_fluency/util/LanguagePacks;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    const/4 v3, 0x1

    .line 68
    .end local v1           #json:Ljava/lang/String;
    .end local v2           #newConfig:Lcom/touchtype_fluency/util/LanguagePacks;
    :goto_0
    iget-object v4, p0, Lcom/touchtype_fluency/util/LanguagePackManagerImpl$1;->this$0:Lcom/touchtype_fluency/util/LanguagePackManagerImpl;

    #getter for: Lcom/touchtype_fluency/util/LanguagePackManagerImpl;->mConfigurationListener:Lcom/touchtype_fluency/util/CompletionListener;
    invoke-static {v4}, Lcom/touchtype_fluency/util/LanguagePackManagerImpl;->access$3(Lcom/touchtype_fluency/util/LanguagePackManagerImpl;)Lcom/touchtype_fluency/util/CompletionListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 69
    iget-object v4, p0, Lcom/touchtype_fluency/util/LanguagePackManagerImpl$1;->this$0:Lcom/touchtype_fluency/util/LanguagePackManagerImpl;

    #getter for: Lcom/touchtype_fluency/util/LanguagePackManagerImpl;->mConfigurationListener:Lcom/touchtype_fluency/util/CompletionListener;
    invoke-static {v4}, Lcom/touchtype_fluency/util/LanguagePackManagerImpl;->access$3(Lcom/touchtype_fluency/util/LanguagePackManagerImpl;)Lcom/touchtype_fluency/util/CompletionListener;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/touchtype_fluency/util/CompletionListener;->onComplete(Z)V

    .line 71
    :cond_0
    return-void

    .line 63
    .restart local v1       #json:Ljava/lang/String;
    .restart local v2       #newConfig:Lcom/touchtype_fluency/util/LanguagePacks;
    :cond_1
    :try_start_1
    const-string v4, "LanguagePackManager"

    const-string v5, "downloaded languagePacks.json was empty or invalid (keeping old version)"

    invoke-static {v4, v5}, Lcom/touchtype_fluency/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 65
    .end local v1           #json:Ljava/lang/String;
    .end local v2           #newConfig:Lcom/touchtype_fluency/util/LanguagePacks;
    :catch_0
    move-exception v0

    .line 66
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "LanguagePackManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "failed to download languagePacks.json (keeping old version): "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/touchtype_fluency/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
