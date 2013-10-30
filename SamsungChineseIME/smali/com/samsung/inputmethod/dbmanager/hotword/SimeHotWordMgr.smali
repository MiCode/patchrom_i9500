.class public Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotWordMgr;
.super Ljava/lang/Object;
.source "SimeHotWordMgr.java"


# static fields
.field public static final HOT_WORD_PATH:Ljava/lang/String; = "/hotword"


# instance fields
.field private mHotwordEditor:Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotwordEditInterface;

.field private mPath:Ljava/lang/String;

.field private mSogouHotwordMgr:Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;

.field private mXT9HotwordMgr:Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordMgr;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, root:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/hotword"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotWordMgr;->mPath:Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotWordMgr;->mPath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 56
    .local v0, hotWordDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 57
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 60
    :cond_0
    iget-object v2, p0, Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotWordMgr;->mPath:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotWordMgr;->mSogouHotwordMgr:Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;

    .line 61
    iget-object v2, p0, Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotWordMgr;->mPath:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordMgr;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordMgr;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotWordMgr;->mXT9HotwordMgr:Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordMgr;

    .line 63
    return-void
.end method

.method private isFileExist(Ljava/lang/String;)Z
    .locals 2
    .parameter "fileName"

    .prologue
    .line 123
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 124
    .local v0, file:Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getHotWordUpdate(I)Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateInterface;
    .locals 2
    .parameter "dbId"

    .prologue
    .line 67
    const/4 v0, 0x0

    .line 69
    .local v0, dbUpdateObj:Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateInterface;
    invoke-static {p1}, Lcom/samsung/inputmethod/dbmanager/SimeDbID;->isXT9Hotword(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 70
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotWordMgr;->mXT9HotwordMgr:Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordMgr;

    .line 74
    :cond_0
    :goto_0
    return-object v0

    .line 71
    :cond_1
    invoke-static {p1}, Lcom/samsung/inputmethod/dbmanager/SimeDbID;->isSogouHotword(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotWordMgr;->mSogouHotwordMgr:Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;

    goto :goto_0
.end method

.method public loadHotWord(Ljava/lang/String;)Z
    .locals 5
    .parameter "langStr"

    .prologue
    .line 85
    const/4 v0, 0x1

    .line 87
    .local v0, bRet:Z
    if-eqz p1, :cond_2

    .line 91
    iget-object v3, p0, Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotWordMgr;->mHotwordEditor:Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotwordEditInterface;

    invoke-interface {v3}, Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotwordEditInterface;->resetHotwordsInEngin()I

    .line 93
    const/4 v2, 0x0

    .line 94
    .local v2, xt9HotWordFileName:Ljava/lang/String;
    const/4 v1, 0x0

    .line 96
    .local v1, sogouHotwordFileName:Ljava/lang/String;
    const-string v3, "zh_CN"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 97
    iget-object v3, p0, Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotWordMgr;->mXT9HotwordMgr:Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordMgr;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordMgr;->getHotwordFileName(I)Ljava/lang/String;

    move-result-object v2

    .line 98
    iget-object v3, p0, Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotWordMgr;->mSogouHotwordMgr:Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->getHotwordEnginFileName(I)Ljava/lang/String;

    move-result-object v1

    .line 110
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 111
    iget-object v3, p0, Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotWordMgr;->mHotwordEditor:Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotwordEditInterface;

    invoke-interface {v3, v2}, Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotwordEditInterface;->importHotwords(Ljava/lang/String;)I

    .line 114
    :cond_1
    if-eqz v1, :cond_2

    invoke-direct {p0, v1}, Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotWordMgr;->isFileExist(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 115
    iget-object v3, p0, Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotWordMgr;->mHotwordEditor:Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotwordEditInterface;

    invoke-interface {v3, v1}, Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotwordEditInterface;->importHotwords(Ljava/lang/String;)I

    .line 118
    .end local v1           #sogouHotwordFileName:Ljava/lang/String;
    .end local v2           #xt9HotWordFileName:Ljava/lang/String;
    :cond_2
    return v0

    .line 100
    .restart local v1       #sogouHotwordFileName:Ljava/lang/String;
    .restart local v2       #xt9HotWordFileName:Ljava/lang/String;
    :cond_3
    const-string v3, "zh_HK"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 101
    iget-object v3, p0, Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotWordMgr;->mXT9HotwordMgr:Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordMgr;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordMgr;->getHotwordFileName(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 103
    :cond_4
    const-string v3, "zh_TW"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 104
    iget-object v3, p0, Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotWordMgr;->mXT9HotwordMgr:Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordMgr;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordMgr;->getHotwordFileName(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public setHotWordEditor(Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotwordEditInterface;)V
    .locals 0
    .parameter "hotWordEditor"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotWordMgr;->mHotwordEditor:Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotwordEditInterface;

    .line 81
    return-void
.end method
