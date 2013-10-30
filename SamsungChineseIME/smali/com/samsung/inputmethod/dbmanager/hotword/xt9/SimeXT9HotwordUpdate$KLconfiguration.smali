.class Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate$KLconfiguration;
.super Ljava/lang/Object;
.source "SimeXT9HotwordUpdate.java"

# interfaces
.implements Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManagerInterface$KLDLMConfiguration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KLconfiguration"
.end annotation


# instance fields
.field private mCurrentVersion:Ljava/lang/String;

.field private mDBID:I

.field final synthetic this$0:Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate;


# direct methods
.method public constructor <init>(Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter "dbId"
    .parameter "currentVersion"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate$KLconfiguration;->this$0:Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput p2, p0, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate$KLconfiguration;->mDBID:I

    .line 117
    iput-object p3, p0, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate$KLconfiguration;->mCurrentVersion:Ljava/lang/String;

    .line 118
    return-void
.end method


# virtual methods
.method public registerLanguages(Lcom/nuance/connect/language/KLLanguageService;)V
    .locals 3
    .parameter "langSvc"

    .prologue
    .line 146
    :try_start_0
    iget v1, p0, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate$KLconfiguration;->mDBID:I

    if-nez v1, :cond_2

    .line 148
    iget-object v1, p0, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate$KLconfiguration;->mCurrentVersion:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 150
    const/16 v1, 0x10e1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate$KLconfiguration;->mCurrentVersion:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/nuance/connect/language/KLLanguageService;->addSupportedLanguage(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    const/16 v1, 0x10e1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/nuance/connect/language/KLLanguageService;->addSupportedLanguage(Ljava/lang/Integer;)V
    :try_end_0
    .catch Lcom/nuance/connect/language/KLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 178
    :catch_0
    move-exception v0

    .line 180
    .local v0, e:Lcom/nuance/connect/language/KLException;
    invoke-virtual {v0}, Lcom/nuance/connect/language/KLException;->printStackTrace()V

    goto :goto_0

    .line 157
    .end local v0           #e:Lcom/nuance/connect/language/KLException;
    :cond_2
    :try_start_1
    iget v1, p0, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate$KLconfiguration;->mDBID:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 159
    iget-object v1, p0, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate$KLconfiguration;->mCurrentVersion:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 161
    const/16 v1, 0x10e0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate$KLconfiguration;->mCurrentVersion:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/nuance/connect/language/KLLanguageService;->addSupportedLanguage(Ljava/lang/Integer;Ljava/lang/String;)V

    goto :goto_0

    .line 165
    :cond_3
    const/16 v1, 0x10e0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/nuance/connect/language/KLLanguageService;->addSupportedLanguage(Ljava/lang/Integer;)V

    goto :goto_0

    .line 167
    :cond_4
    iget v1, p0, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate$KLconfiguration;->mDBID:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 169
    iget-object v1, p0, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate$KLconfiguration;->mCurrentVersion:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 171
    const/16 v1, 0x10e2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate$KLconfiguration;->mCurrentVersion:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/nuance/connect/language/KLLanguageService;->addSupportedLanguage(Ljava/lang/Integer;Ljava/lang/String;)V

    goto :goto_0

    .line 175
    :cond_5
    const/16 v1, 0x10e2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/nuance/connect/language/KLLanguageService;->addSupportedLanguage(Ljava/lang/Integer;)V
    :try_end_1
    .catch Lcom/nuance/connect/language/KLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public setConfigurations(Lcom/nuance/connect/language/KLConfiguration;)V
    .locals 4
    .parameter "KLConfig"

    .prologue
    const/4 v3, 0x1

    .line 123
    invoke-virtual {p1}, Lcom/nuance/connect/language/KLConfiguration;->isTOSAccepted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    const-string v1, "SimeXT9HotwordUpdate"

    const-string v2, "Terms Of Service already accepted!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :goto_0
    invoke-virtual {p1, v3}, Lcom/nuance/connect/language/KLConfiguration;->enableCellular(Z)V

    .line 129
    invoke-virtual {p1, v3}, Lcom/nuance/connect/language/KLConfiguration;->enableWiFi(Z)V

    .line 130
    invoke-virtual {p1, v3}, Lcom/nuance/connect/language/KLConfiguration;->enableRoaming(Z)V

    .line 131
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/nuance/connect/language/KLConfiguration;->setRefreshInterval(I)V

    .line 133
    const/16 v1, 0xa

    :try_start_0
    invoke-virtual {p1, v1}, Lcom/nuance/connect/language/KLConfiguration;->setDownloadIdleTimeout(I)V
    :try_end_0
    .catch Lcom/nuance/connect/language/KLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :goto_1
    return-void

    .line 126
    :cond_0
    invoke-virtual {p1}, Lcom/nuance/connect/language/KLConfiguration;->userHasAcceptedTOS()V

    goto :goto_0

    .line 134
    :catch_0
    move-exception v0

    .line 136
    .local v0, e:Lcom/nuance/connect/language/KLException;
    invoke-virtual {v0}, Lcom/nuance/connect/language/KLException;->printStackTrace()V

    goto :goto_1
.end method
