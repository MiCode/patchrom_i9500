.class Lcom/touchtype_fluency/util/LanguagePackManagerImpl;
.super Lcom/touchtype_fluency/util/LanguagePackManager;
.source "LanguagePackManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/touchtype_fluency/util/LanguagePackManagerImpl$ProxyProgressListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LanguagePackManager"

.field private static volatile theLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

.field static theLogger:Lcom/touchtype_fluency/LoggingListener;


# instance fields
.field private final configFilename:Ljava/lang/String;

.field private configurationDownloader:Lcom/touchtype_fluency/util/Downloader;

.field private mConfigurationListener:Lcom/touchtype_fluency/util/CompletionListener;

.field private final mConfigurationURL:Ljava/lang/String;

.field private mLanguagePacks:Lcom/touchtype_fluency/util/LanguagePacks;

.field private mMaxDownloads:I

.field private final mMaxLanguagePacks:I

.field private final mStorage:Lcom/touchtype_fluency/util/Storage;

.field private mVerifier:Ljava/lang/Thread;

.field private nDownloads:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 26
    sput-object v0, Lcom/touchtype_fluency/util/LanguagePackManagerImpl;->theLogger:Lcom/touchtype_fluency/LoggingListener;

    .line 27
    sput-object v0, Lcom/touchtype_fluency/util/LanguagePackManagerImpl;->theLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    return-void
.end method

.method private constructor <init>(Lcom/touchtype_fluency/util/Storage;Ljava/lang/String;ILcom/touchtype_fluency/LoggingListener;)V
    .locals 5
    .parameter "storage"
    .parameter "configurationURL"
    .parameter "maxLanguagePacks"
    .parameter "logger"

    .prologue
    const/4 v3, 0x0

    .line 116
    invoke-direct {p0}, Lcom/touchtype_fluency/util/LanguagePackManager;-><init>()V

    .line 23
    const-string v2, "languagePacks.json"

    iput-object v2, p0, Lcom/touchtype_fluency/util/LanguagePackManagerImpl;->configFilename:Ljava/lang/String;

    .line 36
    iput v3, p0, Lcom/touchtype_fluency/util/LanguagePackManagerImpl;->mMaxDownloads:I

    .line 37
    iput v3, p0, Lcom/touchtype_fluency/util/LanguagePackManagerImpl;->nDownloads:I

    .line 51
    new-instance v2, Lcom/touchtype_fluency/util/LanguagePackManagerImpl$1;

    invoke-direct {v2, p0}, Lcom/touchtype_fluency/util/LanguagePackManagerImpl$1;-><init>(Lcom/touchtype_fluency/util/LanguagePackManagerImpl;)V

    iput-object v2, p0, Lcom/touchtype_fluency/util/LanguagePackManagerImpl;->configurationDownloader:Lcom/touchtype_fluency/util/Downloader;

    .line 120
    iput-object p1, p0, Lcom/touchtype_fluency/util/LanguagePackManagerImpl;->mStorage:Lcom/touchtype_fluency/util/Storage;

    .line 121
    iput-object p2, p0, Lcom/touchtype_fluency/util/LanguagePackManagerImpl;->mConfigurationURL:Ljava/lang/String;

    .line 122
    iput p3, p0, Lcom/touchtype_fluency/util/LanguagePackManagerImpl;->mMaxLanguagePacks:I

    .line 123
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/touchtype_fluency/util/LanguagePackManagerImpl;->mVerifier:Ljava/lang/Thread;

    .line 124
    sput-object p4, Lcom/touchtype_fluency/util/LanguagePackManagerImpl;->theLogger:Lcom/touchtype_fluency/LoggingListener;

    .line 126
    :try_start_0
    invoke-interface {p1}, Lcom/touchtype_fluency/util/Storage;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 127
    const-string v2, "languagePacks.json"

    invoke-interface {p1, v2}, Lcom/touchtype_fluency/util/Storage;->loadConfiguration(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, json:Ljava/lang/String;
    new-instance v2, Lcom/touchtype_fluency/util/LanguagePacks;

    invoke-direct {v2, v1, p1}, Lcom/touchtype_fluency/util/LanguagePacks;-><init>(Ljava/lang/String;Lcom/touchtype_fluency/util/Storage;)V

    iput-object v2, p0, Lcom/touchtype_fluency/util/LanguagePackManagerImpl;->mLanguagePacks:Lcom/touchtype_fluency/util/LanguagePacks;

    .line 142
    .end local v1           #json:Ljava/lang/String;
    :goto_0
    return-void

    .line 130
    :cond_0
    const-string v2, "LanguagePackManager"

    const-string v3, "Unable to read or save configuration: storage not available - will use empty languagePacks.json"

    invoke-static {v2, v3}, Lcom/touchtype_fluency/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    new-instance v2, Lcom/touchtype_fluency/util/LanguagePacks;

    const-string v3, "[]"

    invoke-direct {v2, v3, p1}, Lcom/touchtype_fluency/util/LanguagePacks;-><init>(Ljava/lang/String;Lcom/touchtype_fluency/util/Storage;)V

    iput-object v2, p0, Lcom/touchtype_fluency/util/LanguagePackManagerImpl;->mLanguagePacks:Lcom/touchtype_fluency/util/LanguagePacks;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, e:Ljava/io/IOException;
    const-string v2, "LanguagePackManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to read configuration: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 137
    const-string v4, " - will create empty "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "languagePacks.json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 138
    const-string v4, ". Call verify() to check for preinstalled language packs."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 136
    invoke-static {v2, v3}, Lcom/touchtype_fluency/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    new-instance v2, Lcom/touchtype_fluency/util/LanguagePacks;

    const-string v3, "[]"

    invoke-direct {v2, v3, p1}, Lcom/touchtype_fluency/util/LanguagePacks;-><init>(Ljava/lang/String;Lcom/touchtype_fluency/util/Storage;)V

    iput-object v2, p0, Lcom/touchtype_fluency/util/LanguagePackManagerImpl;->mLanguagePacks:Lcom/touchtype_fluency/util/LanguagePacks;

    .line 140
    invoke-direct {p0}, Lcom/touchtype_fluency/util/LanguagePackManagerImpl;->save()V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/touchtype_fluency/util/LanguagePackManagerImpl;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/touchtype_fluency/util/LanguagePackManagerImpl;->mConfigurationURL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/touchtype_fluency/util/LanguagePackManagerImpl;)Lcom/touchtype_fluency/util/Storage;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/touchtype_fluency/util/LanguagePackManagerImpl;->mStorage:Lcom/touchtype_fluency/util/Storage;

    return-object v0
.end method

.method static synthetic access$2(Lcom/touchtype_fluency/util/LanguagePackManagerImpl;Lcom/touchtype_fluency/util/LanguagePacks;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lcom/touchtype_fluency/util/LanguagePackManagerImpl;->merge(Lcom/touchtype_fluency/util/LanguagePacks;)V

    return-void
.end method

.method static synthetic access$3(Lcom/touchtype_fluency/util/LanguagePackManagerImpl;)Lcom/touchtype_fluency/util/CompletionListener;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/touchtype_fluency/util/LanguagePackManagerImpl;->mConfigurationListener:Lcom/touchtype_fluency/util/CompletionListener;

    return-object v0
.end method

.method static synthetic access$4(Lcom/touchtype_fluency/util/LanguagePackManagerImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/touchtype_fluency/util/LanguagePackManagerImpl;->save()V

    return-void
.end method

.method static synthetic access$5(Lcom/touchtype_fluency/util/LanguagePackManagerImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/touchtype_fluency/util/LanguagePackManagerImpl;->endDownload()V

    return-void
.end method

.method static synthetic access$6(Lcom/touchtype_fluency/util/LanguagePackManagerImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 182
    invoke-direct {p0}, Lcom/touchtype_fluency/util/LanguagePackManagerImpl;->verifyConfiguration()V

    return-void
.end method

.method static synthetic access$7(Lcom/touchtype_fluency/util/LanguagePackManagerImpl;Lcom/touchtype_fluency/Session;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 198
    invoke-direct {p0, p1}, Lcom/touchtype_fluency/util/LanguagePackManagerImpl;->verifyLanguages(Lcom/touchtype_fluency/Session;)Z

    move-result v0

    return v0
.end method

.method private declared-synchronized beginDownload()Z
    .locals 2

    .prologue
    .line 39
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/touchtype_fluency/util/LanguagePackManagerImpl;->mMaxDownloads:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/touchtype_fluency/util/LanguagePackManagerImpl;->nDownloads:I

    iget v1, p0, Lcom/touchtype_fluency/util/LanguagePackManagerImpl;->mMaxDownloads:I

    if-ge v0, v1, :cond_1

    .line 41
    :cond_0
    iget v0, p0, Lcom/touchtype_fluency/util/LanguagePackManagerImpl;->nDownloads:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/touchtype_fluency/util/LanguagePackManagerImpl;->nDownloads:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    const/4 v0, 0x1

    .line 44
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized endDownload()V
    .locals 1

    .prologue
    .line 48
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/touchtype_fluency/util/LanguagePackManagerImpl;->nDownloads:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/touchtype_fluency/util/LanguagePackManagerImpl;->nDownloads:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    monitor-exit p0

    return-void

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static getInstance(Lcom/touchtype_fluency/util/Storage;Ljava/lang/String;ILcom/touchtype_fluency/LoggingListener;)Lcom/touchtype_fluency/util/LanguagePackManager;
    .locals 1
    .parameter "storage"
    .parameter "configurationURL"
    .parameter "maxLanguagePacks"
    .parameter "logger"

    .prologue
    .line 108
    sget-object v0, Lcom/touchtype_fluency/util/LanguagePackManagerImpl;->theLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Lcom/touchtype_fluency/util/LanguagePackManagerImpl;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/touchtype_fluency/util/LanguagePackManagerImpl;-><init>(Lcom/touchtype_fluency/util/Storage;Ljava/lang/String;ILcom/touchtype_fluency/LoggingListener;)V

    sput-object v0, Lcom/touchtype_fluency/util/LanguagePackManagerImpl;->theLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    .line 113
    :cond_0
    sget-object v0, Lcom/touchtype_fluency/util/LanguagePackManagerImpl;->theLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    return-object v0
.end method

.method private declared-synchronized merge(Lcom/touchtype_fluency/util/LanguagePacks;)V
    .locals 1
    .parameter "newPacks"

    .prologue
    .line 159
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/LanguagePackManagerImpl;->mLanguagePacks:Lcom/touchtype_fluency/util/LanguagePacks;

    invoke-virtual {v0, p1}, Lcom/touchtype_fluency/util/LanguagePacks;->merge(Lcom/touchtype_fluency/util/LanguagePacks;)V

    .line 160
    invoke-direct {p0}, Lcom/touchtype_fluency/util/LanguagePackManagerImpl;->save()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    monitor-exit p0

    return-void

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized save()V
    .locals 4

    .prologue
    .line 146
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/touchtype_fluency/util/LanguagePackManagerImpl;->mStorage:Lcom/touchtype_fluency/util/Storage;

    invoke-interface {v1}, Lcom/touchtype_fluency/util/Storage;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/touchtype_fluency/util/LanguagePackManagerImpl;->mStorage:Lcom/touchtype_fluency/util/Storage;

    iget-object v2, p0, Lcom/touchtype_fluency/util/LanguagePackManagerImpl;->mLanguagePacks:Lcom/touchtype_fluency/util/LanguagePacks;

    invoke-virtual {v2}, Lcom/touchtype_fluency/util/LanguagePacks;->toJSON()Ljava/lang/String;

    move-result-object v2

    const-string v3, "languagePacks.json"

    invoke-interface {v1, v2, v3}, Lcom/touchtype_fluency/util/Storage;->saveConfiguration(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :goto_0
    monitor-exit p0

    return-void

    .line 150
    :cond_0
    :try_start_1
    const-string v1, "LanguagePackManager"

    const-string v2, "Unable to save configuration: storage not available"

    invoke-static {v1, v2}, Lcom/touchtype_fluency/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 152
    :catch_0
    move-exception v0

    .line 154
    .local v0, e:Ljava/io/IOException;
    :try_start_2
    const-string v1, "LanguagePackManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to save configuration: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/touchtype_fluency/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 146
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private verifyConfiguration()V
    .locals 3

    .prologue
    .line 185
    iget-object v2, p0, Lcom/touchtype_fluency/util/LanguagePackManagerImpl;->mStorage:Lcom/touchtype_fluency/util/Storage;

    invoke-static {v2}, Lcom/touchtype_fluency/util/HttpDownload;->createPreinstalledConfiguration(Lcom/touchtype_fluency/util/Storage;)Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, preinstalled:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 187
    new-instance v1, Lcom/touchtype_fluency/util/LanguagePacks;

    iget-object v2, p0, Lcom/touchtype_fluency/util/LanguagePackManagerImpl;->mStorage:Lcom/touchtype_fluency/util/Storage;

    invoke-direct {v1, v0, v2}, Lcom/touchtype_fluency/util/LanguagePacks;-><init>(Ljava/lang/String;Lcom/touchtype_fluency/util/Storage;)V

    .line 188
    .local v1, preinstalledConfig:Lcom/touchtype_fluency/util/LanguagePacks;
    invoke-virtual {v1}, Lcom/touchtype_fluency/util/LanguagePacks;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 189
    invoke-direct {p0, v1}, Lcom/touchtype_fluency/util/LanguagePackManagerImpl;->merge(Lcom/touchtype_fluency/util/LanguagePacks;)V

    .line 196
    .end local v1           #preinstalledConfig:Lcom/touchtype_fluency/util/LanguagePacks;
    :cond_0
    return-void
.end method

.method private verifyLanguages(Lcom/touchtype_fluency/Session;)Z
    .locals 8
    .parameter "session"

    .prologue
    .line 199
    const/4 v3, 0x1

    .line 200
    .local v3, ok:Z
    invoke-virtual {p0}, Lcom/touchtype_fluency/util/LanguagePackManagerImpl;->getAllLanguages()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 220
    return v3

    .line 200
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/touchtype_fluency/util/LanguagePack;

    .line 201
    .local v2, language:Lcom/touchtype_fluency/util/LanguagePack;
    invoke-interface {v2}, Lcom/touchtype_fluency/util/LanguagePack;->isDownloaded()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 204
    :try_start_0
    invoke-interface {v2}, Lcom/touchtype_fluency/util/LanguagePack;->getDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    .line 203
    invoke-static {v4}, Lcom/touchtype_fluency/ModelSetDescription;->fromFile(Ljava/lang/String;)Lcom/touchtype_fluency/ModelSetDescription;

    move-result-object v0

    .line 205
    .local v0, descr:Lcom/touchtype_fluency/ModelSetDescription;
    invoke-interface {p1, v0}, Lcom/touchtype_fluency/Session;->load(Lcom/touchtype_fluency/ModelSetDescription;)V

    .line 206
    invoke-interface {p1, v0}, Lcom/touchtype_fluency/Session;->unload(Lcom/touchtype_fluency/ModelSetDescription;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 208
    .end local v0           #descr:Lcom/touchtype_fluency/ModelSetDescription;
    :catch_0
    move-exception v1

    .line 209
    .local v1, e:Ljava/io/IOException;
    instance-of v4, v2, Lcom/touchtype_fluency/util/LanguagePackImpl;

    invoke-static {v4}, Ljunit/framework/Assert;->assertTrue(Z)V

    move-object v4, v2

    .line 210
    check-cast v4, Lcom/touchtype_fluency/util/LanguagePackImpl;

    invoke-virtual {v4}, Lcom/touchtype_fluency/util/LanguagePackImpl;->resetToPreinstalled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 211
    const-string v4, "LanguagePackManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lcom/touchtype_fluency/util/LanguagePack;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " broken: re-install preinstalled version"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/touchtype_fluency/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    :goto_1
    invoke-virtual {p0, v2}, Lcom/touchtype_fluency/util/LanguagePackManagerImpl;->setLanguageBroken(Lcom/touchtype_fluency/util/LanguagePack;)V

    .line 216
    const/4 v3, 0x0

    goto :goto_0

    .line 213
    :cond_2
    const-string v4, "LanguagePackManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lcom/touchtype_fluency/util/LanguagePack;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " broken: re-download it"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/touchtype_fluency/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public deleteLanguage(Lcom/touchtype_fluency/util/LanguagePack;)V
    .locals 2
    .parameter "language"

    .prologue
    .line 301
    invoke-interface {p1}, Lcom/touchtype_fluency/util/LanguagePack;->isDownloaded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 302
    instance-of v1, p1, Lcom/touchtype_fluency/util/LanguagePackImpl;

    invoke-static {v1}, Ljunit/framework/Assert;->assertTrue(Z)V

    move-object v0, p1

    .line 303
    check-cast v0, Lcom/touchtype_fluency/util/LanguagePackImpl;

    .line 304
    .local v0, lp:Lcom/touchtype_fluency/util/LanguagePackImpl;
    invoke-virtual {v0}, Lcom/touchtype_fluency/util/LanguagePackImpl;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 305
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/touchtype_fluency/util/LanguagePackImpl;->setEnabled(Z)V

    .line 307
    :cond_0
    invoke-direct {p0}, Lcom/touchtype_fluency/util/LanguagePackManagerImpl;->save()V

    .line 308
    invoke-virtual {v0}, Lcom/touchtype_fluency/util/LanguagePackImpl;->delete()V

    .line 310
    .end local v0           #lp:Lcom/touchtype_fluency/util/LanguagePackImpl;
    :cond_1
    return-void
.end method

.method public downloadLanguage(Lcom/touchtype_fluency/util/LanguagePack;Lcom/touchtype_fluency/util/ProgressListener;)Z
    .locals 3
    .parameter "language"
    .parameter "listener"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 259
    invoke-direct {p0}, Lcom/touchtype_fluency/util/LanguagePackManagerImpl;->beginDownload()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 260
    instance-of v1, p1, Lcom/touchtype_fluency/util/LanguagePackImpl;

    invoke-static {v1}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 261
    check-cast p1, Lcom/touchtype_fluency/util/LanguagePackImpl;

    .end local p1
    new-instance v1, Lcom/touchtype_fluency/util/LanguagePackManagerImpl$ProxyProgressListener;

    invoke-direct {v1, p0, p2}, Lcom/touchtype_fluency/util/LanguagePackManagerImpl$ProxyProgressListener;-><init>(Lcom/touchtype_fluency/util/LanguagePackManagerImpl;Lcom/touchtype_fluency/util/ProgressListener;)V

    invoke-virtual {p1, v1}, Lcom/touchtype_fluency/util/LanguagePackImpl;->download(Lcom/touchtype_fluency/util/LanguagePackManagerImpl$ProxyProgressListener;)V

    .line 267
    :goto_0
    return v0

    .line 264
    .restart local p1
    :cond_0
    if-eqz p2, :cond_1

    .line 265
    invoke-virtual {p2, v1, v1, v0}, Lcom/touchtype_fluency/util/ProgressListener;->onComplete(ZZZ)V

    :cond_1
    move v0, v1

    .line 267
    goto :goto_0
.end method

.method public enableDefaultLanguage(Lcom/touchtype_fluency/util/ProgressListener;)Lcom/touchtype_fluency/util/LanguagePack;
    .locals 9
    .parameter "listener"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 323
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 326
    .local v2, l:Ljava/util/Locale;
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/touchtype_fluency/util/LanguagePackImpl;->toISOLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 328
    .local v1, javaLanguage:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v1, v6}, Lcom/touchtype_fluency/util/LanguagePackManagerImpl;->findLanguage(Ljava/lang/String;Ljava/lang/String;)Lcom/touchtype_fluency/util/LanguagePack;

    move-result-object v3

    .line 329
    .local v3, language:Lcom/touchtype_fluency/util/LanguagePack;
    if-eqz v3, :cond_2

    .line 330
    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->isDownloaded()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 331
    invoke-virtual {p0, v3, v8}, Lcom/touchtype_fluency/util/LanguagePackManagerImpl;->enableLanguage(Lcom/touchtype_fluency/util/LanguagePack;Z)Z

    move-result v0

    .line 332
    .local v0, enabled:Z
    if-eqz p1, :cond_0

    .line 333
    invoke-virtual {p1, v0, v7, v8}, Lcom/touchtype_fluency/util/ProgressListener;->onComplete(ZZZ)V

    .line 359
    .end local v0           #enabled:Z
    .end local v3           #language:Lcom/touchtype_fluency/util/LanguagePack;
    :cond_0
    :goto_0
    return-object v3

    .line 337
    .restart local v3       #language:Lcom/touchtype_fluency/util/LanguagePack;
    :cond_1
    iget v4, p0, Lcom/touchtype_fluency/util/LanguagePackManagerImpl;->mMaxDownloads:I

    .line 338
    .local v4, maxDownloads:I
    iput v7, p0, Lcom/touchtype_fluency/util/LanguagePackManagerImpl;->mMaxDownloads:I

    .line 339
    new-instance v6, Lcom/touchtype_fluency/util/LanguagePackManagerImpl$3;

    invoke-direct {v6, p0, p1, v3}, Lcom/touchtype_fluency/util/LanguagePackManagerImpl$3;-><init>(Lcom/touchtype_fluency/util/LanguagePackManagerImpl;Lcom/touchtype_fluency/util/ProgressListener;Lcom/touchtype_fluency/util/LanguagePack;)V

    invoke-virtual {p0, v3, v6}, Lcom/touchtype_fluency/util/LanguagePackManagerImpl;->downloadLanguage(Lcom/touchtype_fluency/util/LanguagePack;Lcom/touchtype_fluency/util/ProgressListener;)Z

    move-result v5

    .line 354
    .local v5, started:Z
    invoke-static {v5}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 355
    iput v4, p0, Lcom/touchtype_fluency/util/LanguagePackManagerImpl;->mMaxDownloads:I

    goto :goto_0

    .line 359
    .end local v4           #maxDownloads:I
    .end local v5           #started:Z
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public enableLanguage(Lcom/touchtype_fluency/util/LanguagePack;Z)Z
    .locals 4
    .parameter "language"
    .parameter "enable"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 276
    invoke-interface {p1}, Lcom/touchtype_fluency/util/LanguagePack;->isEnabled()Z

    move-result v2

    if-ne p2, v2, :cond_0

    .line 296
    .end local p1
    :goto_0
    return v0

    .line 278
    .restart local p1
    :cond_0
    if-eqz p2, :cond_3

    .line 279
    invoke-interface {p1}, Lcom/touchtype_fluency/util/LanguagePack;->isDownloaded()Z

    move-result v2

    if-nez v2, :cond_1

    .line 280
    const-string v0, "LanguagePackManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "download "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/touchtype_fluency/util/LanguagePack;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " before trying to enable it"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/touchtype_fluency/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 281
    goto :goto_0

    .line 282
    :cond_1
    invoke-virtual {p0}, Lcom/touchtype_fluency/util/LanguagePackManagerImpl;->getEnabledLanguages()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Lcom/touchtype_fluency/util/LanguagePackManagerImpl;->mMaxLanguagePacks:I

    if-ge v2, v3, :cond_2

    .line 283
    instance-of v1, p1, Lcom/touchtype_fluency/util/LanguagePackImpl;

    invoke-static {v1}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 284
    check-cast p1, Lcom/touchtype_fluency/util/LanguagePackImpl;

    .end local p1
    invoke-virtual {p1, p2}, Lcom/touchtype_fluency/util/LanguagePackImpl;->setEnabled(Z)V

    .line 285
    invoke-direct {p0}, Lcom/touchtype_fluency/util/LanguagePackManagerImpl;->save()V

    goto :goto_0

    .line 288
    .restart local p1
    :cond_2
    const-string v0, "LanguagePackManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "can\'t enable "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/touchtype_fluency/util/LanguagePack;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - too many other languages already enabled"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/touchtype_fluency/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 289
    goto :goto_0

    .line 293
    :cond_3
    instance-of v1, p1, Lcom/touchtype_fluency/util/LanguagePackImpl;

    invoke-static {v1}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 294
    check-cast p1, Lcom/touchtype_fluency/util/LanguagePackImpl;

    .end local p1
    invoke-virtual {p1, p2}, Lcom/touchtype_fluency/util/LanguagePackImpl;->setEnabled(Z)V

    .line 295
    invoke-direct {p0}, Lcom/touchtype_fluency/util/LanguagePackManagerImpl;->save()V

    goto :goto_0
.end method

.method public declared-synchronized findLanguage(Ljava/lang/String;Ljava/lang/String;)Lcom/touchtype_fluency/util/LanguagePack;
    .locals 4
    .parameter "language"
    .parameter "country"

    .prologue
    .line 244
    monitor-enter p0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 245
    :cond_0
    iget-object v1, p0, Lcom/touchtype_fluency/util/LanguagePackManagerImpl;->mLanguagePacks:Lcom/touchtype_fluency/util/LanguagePacks;

    invoke-virtual {v1, p1}, Lcom/touchtype_fluency/util/LanguagePacks;->findByID(Ljava/lang/String;)Lcom/touchtype_fluency/util/LanguagePackImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 249
    :cond_1
    :goto_0
    monitor-exit p0

    return-object v0

    .line 248
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/touchtype_fluency/util/LanguagePackManagerImpl;->mLanguagePacks:Lcom/touchtype_fluency/util/LanguagePacks;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/touchtype_fluency/util/LanguagePacks;->findByID(Ljava/lang/String;)Lcom/touchtype_fluency/util/LanguagePackImpl;

    move-result-object v0

    .line 249
    .local v0, exact:Lcom/touchtype_fluency/util/LanguagePackImpl;
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/touchtype_fluency/util/LanguagePackManagerImpl;->mLanguagePacks:Lcom/touchtype_fluency/util/LanguagePacks;

    invoke-virtual {v1, p1}, Lcom/touchtype_fluency/util/LanguagePacks;->findByID(Ljava/lang/String;)Lcom/touchtype_fluency/util/LanguagePackImpl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 244
    .end local v0           #exact:Lcom/touchtype_fluency/util/LanguagePackImpl;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getAllLanguages()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            ">;"
        }
    .end annotation

    .prologue
    .line 236
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/LanguagePackManagerImpl;->mLanguagePacks:Lcom/touchtype_fluency/util/LanguagePacks;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/touchtype_fluency/util/LanguagePacks;->getLanguagePacks(Z)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDynamicModel()Ljava/io/File;
    .locals 3

    .prologue
    .line 255
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/touchtype_fluency/util/LanguagePackManagerImpl;->mStorage:Lcom/touchtype_fluency/util/Storage;

    invoke-interface {v1}, Lcom/touchtype_fluency/util/Storage;->getDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "user"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public declared-synchronized getEnabledLanguages()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            ">;"
        }
    .end annotation

    .prologue
    .line 240
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/LanguagePackManagerImpl;->mLanguagePacks:Lcom/touchtype_fluency/util/LanguagePacks;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/touchtype_fluency/util/LanguagePacks;->getLanguagePacks(Z)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getStorage()Lcom/touchtype_fluency/util/Storage;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/touchtype_fluency/util/LanguagePackManagerImpl;->mStorage:Lcom/touchtype_fluency/util/Storage;

    return-object v0
.end method

.method public refresh(Lcom/touchtype_fluency/util/CompletionListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 224
    iget-object v0, p0, Lcom/touchtype_fluency/util/LanguagePackManagerImpl;->mStorage:Lcom/touchtype_fluency/util/Storage;

    invoke-interface {v0}, Lcom/touchtype_fluency/util/Storage;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    iput-object p1, p0, Lcom/touchtype_fluency/util/LanguagePackManagerImpl;->mConfigurationListener:Lcom/touchtype_fluency/util/CompletionListener;

    .line 226
    iget-object v0, p0, Lcom/touchtype_fluency/util/LanguagePackManagerImpl;->configurationDownloader:Lcom/touchtype_fluency/util/Downloader;

    invoke-virtual {v0}, Lcom/touchtype_fluency/util/Downloader;->download()V

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    const-string v0, "LanguagePackManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "refresh(): no storage available: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/touchtype_fluency/util/LanguagePackManagerImpl;->mStorage:Lcom/touchtype_fluency/util/Storage;

    invoke-interface {v2}, Lcom/touchtype_fluency/util/Storage;->getDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/touchtype_fluency/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    if-eqz p1, :cond_0

    .line 230
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/touchtype_fluency/util/CompletionListener;->onComplete(Z)V

    goto :goto_0
.end method

.method public setLanguageBroken(Lcom/touchtype_fluency/util/LanguagePack;)V
    .locals 1
    .parameter "language"

    .prologue
    .line 313
    iget-object v0, p0, Lcom/touchtype_fluency/util/LanguagePackManagerImpl;->mStorage:Lcom/touchtype_fluency/util/Storage;

    invoke-interface {v0}, Lcom/touchtype_fluency/util/Storage;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    instance-of v0, p1, Lcom/touchtype_fluency/util/LanguagePackImpl;

    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 315
    check-cast p1, Lcom/touchtype_fluency/util/LanguagePackImpl;

    .end local p1
    invoke-virtual {p1}, Lcom/touchtype_fluency/util/LanguagePackImpl;->setBroken()V

    .line 320
    :cond_0
    return-void
.end method

.method public setMaxDownloads(I)V
    .locals 0
    .parameter "max"

    .prologue
    .line 272
    iput p1, p0, Lcom/touchtype_fluency/util/LanguagePackManagerImpl;->mMaxDownloads:I

    .line 273
    return-void
.end method

.method public declared-synchronized verify(Ljava/lang/String;Lcom/touchtype_fluency/util/CompletionListener;)Z
    .locals 3
    .parameter "license"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/touchtype_fluency/LicenseException;
        }
    .end annotation

    .prologue
    .line 165
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/touchtype_fluency/util/LanguagePackManagerImpl;->mVerifier:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/touchtype_fluency/util/LanguagePackManagerImpl;->mVerifier:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    const/4 v1, 0x0

    .line 179
    :goto_0
    monitor-exit p0

    return v1

    .line 169
    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/touchtype_fluency/SwiftKeySDK;->createSession(Ljava/lang/String;)Lcom/touchtype_fluency/Session;

    move-result-object v0

    .line 170
    .local v0, session:Lcom/touchtype_fluency/Session;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/touchtype_fluency/util/LanguagePackManagerImpl$2;

    invoke-direct {v2, p0, v0, p2}, Lcom/touchtype_fluency/util/LanguagePackManagerImpl$2;-><init>(Lcom/touchtype_fluency/util/LanguagePackManagerImpl;Lcom/touchtype_fluency/Session;Lcom/touchtype_fluency/util/CompletionListener;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/touchtype_fluency/util/LanguagePackManagerImpl;->mVerifier:Ljava/lang/Thread;

    .line 178
    iget-object v1, p0, Lcom/touchtype_fluency/util/LanguagePackManagerImpl;->mVerifier:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 179
    const/4 v1, 0x1

    goto :goto_0

    .line 165
    .end local v0           #session:Lcom/touchtype_fluency/Session;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
