.class public Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotwordConvert;
.super Ljava/lang/Object;
.source "SimeHotwordConvert.java"

# interfaces
.implements Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotwordEditInterface;


# instance fields
.field private mAssetMgr:Landroid/content/res/AssetManager;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotwordConvert;->mContext:Landroid/content/Context;

    .line 26
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotwordConvert;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotwordConvert;->mAssetMgr:Landroid/content/res/AssetManager;

    .line 27
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->LoadJNILibrary()V

    .line 28
    return-void
.end method

.method private native xt9HotwordAddMdbPhrase(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native xt9HotwordDeletePhrase(Ljava/lang/String;)I
.end method

.method private native xt9HotwordExit()V
.end method

.method private native xt9HotwordExport(Ljava/lang/String;)I
.end method

.method private native xt9HotwordImport(Ljava/lang/String;)I
.end method

.method private native xt9HotwordInit(Landroid/content/res/AssetManager;)I
.end method

.method private native xt9HotwordReset()I
.end method

.method private native xt9HotwordSetLanguage(Ljava/lang/String;)I
.end method


# virtual methods
.method public addHotWordToEngin(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "phrase"
    .parameter "spell"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotwordConvert;->xt9HotwordAddMdbPhrase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public deleteHotwordFromEngin(Ljava/lang/String;)I
    .locals 1
    .parameter "phrase"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotwordConvert;->xt9HotwordDeletePhrase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public exit()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotwordConvert;->xt9HotwordExit()V

    .line 75
    return-void
.end method

.method public exportHotwords(Ljava/lang/String;)I
    .locals 1
    .parameter "fileName"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotwordConvert;->xt9HotwordExport(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public importHotwords(Ljava/lang/String;)I
    .locals 1
    .parameter "fileName"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotwordConvert;->xt9HotwordImport(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public init()I
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotwordConvert;->mAssetMgr:Landroid/content/res/AssetManager;

    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotwordConvert;->xt9HotwordInit(Landroid/content/res/AssetManager;)I

    move-result v0

    return v0
.end method

.method public resetHotwordsInEngin()I
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotwordConvert;->xt9HotwordReset()I

    move-result v0

    return v0
.end method

.method public setLanguage(Ljava/lang/String;)I
    .locals 1
    .parameter "lanStr"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotwordConvert;->xt9HotwordSetLanguage(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
