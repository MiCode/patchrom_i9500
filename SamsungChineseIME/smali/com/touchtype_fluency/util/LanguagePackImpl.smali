.class Lcom/touchtype_fluency/util/LanguagePackImpl;
.super Ljava/lang/Object;
.source "LanguagePackImpl.java"

# interfaces
.implements Lcom/touchtype_fluency/util/LanguagePack;


# static fields
.field public static final ConfigFilename:Ljava/lang/String; = ".config"

.field public static final ExtraDataFilename:Ljava/lang/String; = "extraData.json"

.field private static final TAG:Ljava/lang/String; = "LanguagePack"


# instance fields
.field private archive:Ljava/net/URL;

.field private beta:Z

.field private country:Ljava/lang/String;

.field private defaultLayout:Ljava/lang/String;

.field private downloader:Lcom/touchtype_fluency/util/Downloader;

.field private files:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private language:Ljava/lang/String;

.field private loadingFailed:Z

.field private mEnabled:Z

.field private mListener:Lcom/touchtype_fluency/util/LanguagePackManagerImpl$ProxyProgressListener;

.field private final mStorage:Lcom/touchtype_fluency/util/Storage;

.field private metadata:Lorg/json/JSONObject;

.field private name:Ljava/lang/String;

.field private sha1:Ljava/lang/String;

.field private updateAvailable:Z


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Lcom/touchtype_fluency/util/Storage;)V
    .locals 6
    .parameter "json"
    .parameter "storage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/touchtype_fluency/util/MalformedConfigurationException;
        }
    .end annotation

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v4, Lcom/touchtype_fluency/util/LanguagePackImpl$1;

    invoke-direct {v4, p0}, Lcom/touchtype_fluency/util/LanguagePackImpl$1;-><init>(Lcom/touchtype_fluency/util/LanguagePackImpl;)V

    iput-object v4, p0, Lcom/touchtype_fluency/util/LanguagePackImpl;->downloader:Lcom/touchtype_fluency/util/Downloader;

    .line 115
    iput-object p2, p0, Lcom/touchtype_fluency/util/LanguagePackImpl;->mStorage:Lcom/touchtype_fluency/util/Storage;

    .line 117
    :try_start_0
    const-string v4, "language"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/touchtype_fluency/util/LanguagePackImpl;->language:Ljava/lang/String;

    .line 118
    const-string v4, "country"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/touchtype_fluency/util/LanguagePackImpl;->country:Ljava/lang/String;

    .line 119
    const-string v4, "name"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/touchtype_fluency/util/LanguagePackImpl;->name:Ljava/lang/String;

    .line 120
    const-string v4, "default-layout"

    const-string v5, "qwerty"

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/touchtype_fluency/util/LanguagePackImpl;->defaultLayout:Ljava/lang/String;

    .line 122
    new-instance v4, Ljava/net/URL;

    const-string v5, "archive"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/touchtype_fluency/util/LanguagePackImpl;->archive:Ljava/net/URL;

    .line 123
    const-string v4, "sha1"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/touchtype_fluency/util/LanguagePackImpl;->sha1:Ljava/lang/String;

    .line 124
    const-string v4, "beta"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/touchtype_fluency/util/LanguagePackImpl;->beta:Z

    .line 125
    const-string v4, "updateAvailable"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/touchtype_fluency/util/LanguagePackImpl;->updateAvailable:Z

    .line 126
    const-string v4, "metadata"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    iput-object v4, p0, Lcom/touchtype_fluency/util/LanguagePackImpl;->metadata:Lorg/json/JSONObject;

    .line 127
    const-string v4, "enabled"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/touchtype_fluency/util/LanguagePackImpl;->mEnabled:Z

    .line 130
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/touchtype_fluency/util/LanguagePackImpl;->loadingFailed:Z

    .line 132
    const-string v4, "files"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 133
    .local v2, jsonFiles:Lorg/json/JSONArray;
    if-eqz v2, :cond_0

    .line 134
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 135
    .local v3, length:I
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4, v3}, Ljava/util/Vector;-><init>(I)V

    iput-object v4, p0, Lcom/touchtype_fluency/util/LanguagePackImpl;->files:Ljava/util/Vector;

    .line 136
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v3, :cond_1

    .line 143
    .end local v1           #i:I
    .end local v3           #length:I
    :cond_0
    return-void

    .line 137
    .restart local v1       #i:I
    .restart local v3       #length:I
    :cond_1
    iget-object v4, p0, Lcom/touchtype_fluency/util/LanguagePackImpl;->files:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 140
    .end local v1           #i:I
    .end local v2           #jsonFiles:Lorg/json/JSONArray;
    .end local v3           #length:I
    :catch_0
    move-exception v0

    .line 141
    .local v0, e:Ljava/lang/Exception;
    new-instance v4, Lcom/touchtype_fluency/util/MalformedConfigurationException;

    invoke-direct {v4, v0}, Lcom/touchtype_fluency/util/MalformedConfigurationException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method static synthetic access$0(Lcom/touchtype_fluency/util/LanguagePackImpl;)Lcom/touchtype_fluency/util/Storage;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/touchtype_fluency/util/LanguagePackImpl;->mStorage:Lcom/touchtype_fluency/util/Storage;

    return-object v0
.end method

.method static synthetic access$1(Lcom/touchtype_fluency/util/LanguagePackImpl;)Lcom/touchtype_fluency/util/LanguagePackManagerImpl$ProxyProgressListener;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/touchtype_fluency/util/LanguagePackImpl;->mListener:Lcom/touchtype_fluency/util/LanguagePackManagerImpl$ProxyProgressListener;

    return-object v0
.end method

.method static synthetic access$2(Lcom/touchtype_fluency/util/LanguagePackImpl;)Ljava/net/URL;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/touchtype_fluency/util/LanguagePackImpl;->archive:Ljava/net/URL;

    return-object v0
.end method

.method static synthetic access$3(Lcom/touchtype_fluency/util/LanguagePackImpl;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/touchtype_fluency/util/LanguagePackImpl;->sha1:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/touchtype_fluency/util/LanguagePackImpl;Ljava/util/Vector;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/touchtype_fluency/util/LanguagePackImpl;->files:Ljava/util/Vector;

    return-void
.end method

.method static synthetic access$5(Lcom/touchtype_fluency/util/LanguagePackImpl;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/touchtype_fluency/util/LanguagePackImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lcom/touchtype_fluency/util/LanguagePackImpl;ZZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 364
    invoke-direct {p0, p1, p2, p3}, Lcom/touchtype_fluency/util/LanguagePackImpl;->onComplete(ZZZ)V

    return-void
.end method

.method private declared-synchronized getFiles()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 439
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/LanguagePackImpl;->files:Ljava/util/Vector;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;
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

.method private isSupersededBy(Lcom/touchtype_fluency/util/LanguagePackImpl;)Z
    .locals 1
    .parameter "other"

    .prologue
    .line 416
    invoke-virtual {p0}, Lcom/touchtype_fluency/util/LanguagePackImpl;->isPreinstalled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/touchtype_fluency/util/LanguagePackImpl;->isPreinstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private onComplete(ZZZ)V
    .locals 5
    .parameter "success"
    .parameter "cancelled"
    .parameter "digestOk"

    .prologue
    const/4 v1, 0x0

    .line 365
    monitor-enter p0

    .line 366
    :try_start_0
    iget-object v2, p0, Lcom/touchtype_fluency/util/LanguagePackImpl;->mListener:Lcom/touchtype_fluency/util/LanguagePackManagerImpl$ProxyProgressListener;

    if-nez v2, :cond_0

    .line 367
    const-string v1, "LanguagePack"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "download("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/touchtype_fluency/util/LanguagePackImpl;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") complete - duplicate notification (ignored)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/touchtype_fluency/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    monitor-exit p0

    .line 386
    :goto_0
    return-void

    .line 371
    :cond_0
    const-string v2, "LanguagePack"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "download("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/touchtype_fluency/util/LanguagePackImpl;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") complete"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/touchtype_fluency/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, Lcom/touchtype_fluency/util/LanguagePackImpl;->loadingFailed:Z

    .line 373
    if-eqz p1, :cond_2

    .line 374
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/touchtype_fluency/util/LanguagePackImpl;->updateAvailable:Z

    .line 365
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 380
    iget-object v1, p0, Lcom/touchtype_fluency/util/LanguagePackImpl;->downloader:Lcom/touchtype_fluency/util/Downloader;

    invoke-virtual {v1}, Lcom/touchtype_fluency/util/Downloader;->setComplete()V

    .line 381
    iget-object v0, p0, Lcom/touchtype_fluency/util/LanguagePackImpl;->mListener:Lcom/touchtype_fluency/util/LanguagePackManagerImpl$ProxyProgressListener;

    .line 382
    .local v0, listener:Lcom/touchtype_fluency/util/LanguagePackManagerImpl$ProxyProgressListener;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/touchtype_fluency/util/LanguagePackImpl;->mListener:Lcom/touchtype_fluency/util/LanguagePackManagerImpl$ProxyProgressListener;

    .line 385
    invoke-virtual {v0, p1, p2, p3}, Lcom/touchtype_fluency/util/LanguagePackManagerImpl$ProxyProgressListener;->onComplete(ZZZ)V

    goto :goto_0

    .line 365
    .end local v0           #listener:Lcom/touchtype_fluency/util/LanguagePackManagerImpl$ProxyProgressListener;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static toISOLanguage(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "language"

    .prologue
    .line 212
    const-string v0, "iw"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    const-string p0, "he"

    .line 219
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 214
    .restart local p0
    :cond_1
    const-string v0, "in"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 215
    const-string p0, "id"

    goto :goto_0

    .line 216
    :cond_2
    const-string v0, "ji"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    const-string p0, "yi"

    goto :goto_0
.end method

.method static toJavaLanguage(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "language"

    .prologue
    .line 199
    const-string v0, "he"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    const-string p0, "iw"

    .line 206
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 201
    .restart local p0
    :cond_1
    const-string v0, "id"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 202
    const-string p0, "in"

    goto :goto_0

    .line 203
    :cond_2
    const-string v0, "yi"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    const-string p0, "ji"

    goto :goto_0
.end method


# virtual methods
.method public cancelDownload()V
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/touchtype_fluency/util/LanguagePackImpl;->downloader:Lcom/touchtype_fluency/util/Downloader;

    invoke-virtual {v0}, Lcom/touchtype_fluency/util/Downloader;->cancelDownload()V

    .line 353
    return-void
.end method

.method declared-synchronized delete()V
    .locals 4

    .prologue
    .line 254
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/touchtype_fluency/util/LanguagePackImpl;->getDirectory()Ljava/io/File;

    move-result-object v0

    .line 255
    .local v0, dir:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v3, ".config"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2}, Lorg/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    .line 256
    iget-object v2, p0, Lcom/touchtype_fluency/util/LanguagePackImpl;->files:Ljava/util/Vector;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/touchtype_fluency/util/LanguagePackImpl;->files:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 257
    :cond_0
    invoke-static {v0}, Lorg/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    :goto_0
    monitor-exit p0

    return-void

    .line 259
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/touchtype_fluency/util/LanguagePackImpl;->files:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 262
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 254
    .end local v0           #dir:Ljava/io/File;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 259
    .restart local v0       #dir:Ljava/io/File;
    :cond_2
    :try_start_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 260
    .local v1, filename:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3}, Lorg/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method download(Lcom/touchtype_fluency/util/LanguagePackManagerImpl$ProxyProgressListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 346
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 347
    iput-object p1, p0, Lcom/touchtype_fluency/util/LanguagePackImpl;->mListener:Lcom/touchtype_fluency/util/LanguagePackManagerImpl$ProxyProgressListener;

    .line 348
    iget-object v0, p0, Lcom/touchtype_fluency/util/LanguagePackImpl;->downloader:Lcom/touchtype_fluency/util/Downloader;

    invoke-virtual {v0}, Lcom/touchtype_fluency/util/Downloader;->download()V

    .line 349
    return-void

    .line 346
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "that_"

    .prologue
    const/4 v1, 0x0

    .line 421
    if-nez p1, :cond_1

    .line 425
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 424
    check-cast v0, Lcom/touchtype_fluency/util/LanguagePackImpl;

    .line 425
    .local v0, that:Lcom/touchtype_fluency/util/LanguagePackImpl;
    iget-object v2, p0, Lcom/touchtype_fluency/util/LanguagePackImpl;->language:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/touchtype_fluency/util/LanguagePackImpl;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 426
    iget-object v2, p0, Lcom/touchtype_fluency/util/LanguagePackImpl;->country:Ljava/lang/String;

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/touchtype_fluency/util/LanguagePackImpl;->getCountry()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 427
    :cond_2
    iget-object v2, p0, Lcom/touchtype_fluency/util/LanguagePackImpl;->country:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/touchtype_fluency/util/LanguagePackImpl;->getCountry()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/touchtype_fluency/util/LanguagePackImpl;->country:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/touchtype_fluency/util/LanguagePackImpl;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 428
    :cond_3
    iget-object v2, p0, Lcom/touchtype_fluency/util/LanguagePackImpl;->name:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/touchtype_fluency/util/LanguagePackImpl;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 429
    iget-object v2, p0, Lcom/touchtype_fluency/util/LanguagePackImpl;->archive:Ljava/net/URL;

    invoke-virtual {v0}, Lcom/touchtype_fluency/util/LanguagePackImpl;->getArchive()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/net/URL;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 430
    iget-object v2, p0, Lcom/touchtype_fluency/util/LanguagePackImpl;->sha1:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/touchtype_fluency/util/LanguagePackImpl;->getSHA1()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 431
    iget-boolean v2, p0, Lcom/touchtype_fluency/util/LanguagePackImpl;->beta:Z

    invoke-virtual {v0}, Lcom/touchtype_fluency/util/LanguagePackImpl;->isBeta()Z

    move-result v3

    if-ne v2, v3, :cond_0

    .line 432
    iget-object v2, p0, Lcom/touchtype_fluency/util/LanguagePackImpl;->files:Ljava/util/Vector;

    if-nez v2, :cond_4

    invoke-direct {v0}, Lcom/touchtype_fluency/util/LanguagePackImpl;->getFiles()Ljava/util/Collection;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 433
    :cond_4
    iget-object v2, p0, Lcom/touchtype_fluency/util/LanguagePackImpl;->files:Ljava/util/Vector;

    if-eqz v2, :cond_0

    invoke-direct {v0}, Lcom/touchtype_fluency/util/LanguagePackImpl;->getFiles()Ljava/util/Collection;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/touchtype_fluency/util/LanguagePackImpl;->files:Ljava/util/Vector;

    invoke-direct {v0}, Lcom/touchtype_fluency/util/LanguagePackImpl;->getFiles()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 434
    :cond_5
    iget-boolean v2, p0, Lcom/touchtype_fluency/util/LanguagePackImpl;->mEnabled:Z

    invoke-virtual {v0}, Lcom/touchtype_fluency/util/LanguagePackImpl;->isEnabled()Z

    move-result v3

    if-ne v2, v3, :cond_0

    .line 435
    invoke-virtual {p0}, Lcom/touchtype_fluency/util/LanguagePackImpl;->isDownloaded()Z

    move-result v2

    invoke-virtual {v0}, Lcom/touchtype_fluency/util/LanguagePackImpl;->isDownloaded()Z

    move-result v3

    if-ne v2, v3, :cond_0

    .line 425
    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method getArchive()Ljava/net/URL;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/touchtype_fluency/util/LanguagePackImpl;->archive:Ljava/net/URL;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/touchtype_fluency/util/LanguagePackImpl;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultLayout()Ljava/lang/String;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/touchtype_fluency/util/LanguagePackImpl;->defaultLayout:Ljava/lang/String;

    return-object v0
.end method

.method public getDirectory()Ljava/io/File;
    .locals 3

    .prologue
    .line 342
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/touchtype_fluency/util/LanguagePackImpl;->mStorage:Lcom/touchtype_fluency/util/Storage;

    invoke-interface {v1}, Lcom/touchtype_fluency/util/Storage;->getDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0}, Lcom/touchtype_fluency/util/LanguagePackImpl;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 335
    iget-object v0, p0, Lcom/touchtype_fluency/util/LanguagePackImpl;->country:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/touchtype_fluency/util/LanguagePackImpl;->language:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/touchtype_fluency/util/LanguagePackImpl;->country:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 338
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/LanguagePackImpl;->language:Ljava/lang/String;

    goto :goto_0
.end method

.method public getJavaLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/touchtype_fluency/util/LanguagePackImpl;->language:Ljava/lang/String;

    invoke-static {v0}, Lcom/touchtype_fluency/util/LanguagePackImpl;->toJavaLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/touchtype_fluency/util/LanguagePackImpl;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getMetadata()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/touchtype_fluency/util/LanguagePackImpl;->metadata:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/touchtype_fluency/util/LanguagePackImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPreinstallFile()Ljava/io/File;
    .locals 4

    .prologue
    .line 309
    iget-object v2, p0, Lcom/touchtype_fluency/util/LanguagePackImpl;->mStorage:Lcom/touchtype_fluency/util/Storage;

    invoke-interface {v2}, Lcom/touchtype_fluency/util/Storage;->getPreinstallDirectory()Ljava/io/File;

    move-result-object v0

    .line 310
    .local v0, dir:Ljava/io/File;
    if-eqz v0, :cond_0

    .line 311
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/touchtype_fluency/util/LanguagePackImpl;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".zip"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 312
    .local v1, zipFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 316
    .end local v1           #zipFile:Ljava/io/File;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getSHA1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/touchtype_fluency/util/LanguagePackImpl;->sha1:Ljava/lang/String;

    return-object v0
.end method

.method hasLanguagePacks(Ljava/io/File;)Z
    .locals 7
    .parameter "userModelDirectory"

    .prologue
    const/4 v2, 0x0

    .line 273
    invoke-virtual {p0}, Lcom/touchtype_fluency/util/LanguagePackImpl;->getDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 274
    .local v1, files:[Ljava/io/File;
    if-eqz v1, :cond_0

    .line 275
    array-length v4, v1

    move v3, v2

    :goto_0
    if-lt v3, v4, :cond_1

    .line 283
    :cond_0
    :goto_1
    return v2

    .line 275
    :cond_1
    aget-object v0, v1, v3

    .line 276
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 277
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 278
    new-instance v5, Ljava/io/File;

    const-string v6, ".config"

    invoke-direct {v5, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 279
    const/4 v2, 0x1

    goto :goto_1

    .line 275
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public isBeta()Z
    .locals 1

    .prologue
    .line 287
    iget-boolean v0, p0, Lcom/touchtype_fluency/util/LanguagePackImpl;->beta:Z

    return v0
.end method

.method public declared-synchronized isBroken()Z
    .locals 1

    .prologue
    .line 295
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/touchtype_fluency/util/LanguagePackImpl;->loadingFailed:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/touchtype_fluency/util/LanguagePackImpl;->mEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/touchtype_fluency/util/LanguagePackImpl;->isDownloaded()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isDownloadInProgress()Z
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/touchtype_fluency/util/LanguagePackImpl;->downloader:Lcom/touchtype_fluency/util/Downloader;

    invoke-virtual {v0}, Lcom/touchtype_fluency/util/Downloader;->isDownloadInProgress()Z

    move-result v0

    return v0
.end method

.method public isDownloaded()Z
    .locals 3

    .prologue
    .line 250
    iget-object v0, p0, Lcom/touchtype_fluency/util/LanguagePackImpl;->mStorage:Lcom/touchtype_fluency/util/Storage;

    invoke-interface {v0}, Lcom/touchtype_fluency/util/Storage;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/touchtype_fluency/util/LanguagePackImpl;->getDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, ".config"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 240
    iget-boolean v0, p0, Lcom/touchtype_fluency/util/LanguagePackImpl;->mEnabled:Z

    return v0
.end method

.method public isPreinstalled()Z
    .locals 2

    .prologue
    .line 304
    iget-object v0, p0, Lcom/touchtype_fluency/util/LanguagePackImpl;->archive:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/touchtype_fluency/util/LanguagePackImpl;->archive:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRightToLeft()Z
    .locals 3

    .prologue
    .line 186
    iget-object v0, p0, Lcom/touchtype_fluency/util/LanguagePackImpl;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/touchtype_fluency/util/LanguagePackImpl;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v0, v1, v2}, Ljava/text/Bidi;->requiresBidi([CII)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized isUpdateAvailable()Z
    .locals 1

    .prologue
    .line 291
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/touchtype_fluency/util/LanguagePackImpl;->updateAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized merge(Lcom/touchtype_fluency/util/LanguagePackImpl;)V
    .locals 3
    .parameter "from"

    .prologue
    const/4 v0, 0x1

    .line 393
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/touchtype_fluency/util/LanguagePackImpl;->getLanguage()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/touchtype_fluency/util/LanguagePackImpl;->language:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 394
    invoke-virtual {p1}, Lcom/touchtype_fluency/util/LanguagePackImpl;->getCountry()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/touchtype_fluency/util/LanguagePackImpl;->country:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 395
    :cond_0
    invoke-virtual {p1}, Lcom/touchtype_fluency/util/LanguagePackImpl;->getCountry()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/touchtype_fluency/util/LanguagePackImpl;->country:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 393
    :cond_1
    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 397
    invoke-virtual {p1}, Lcom/touchtype_fluency/util/LanguagePackImpl;->getSHA1()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/touchtype_fluency/util/LanguagePackImpl;->sha1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/touchtype_fluency/util/LanguagePackImpl;->isSupersededBy(Lcom/touchtype_fluency/util/LanguagePackImpl;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 398
    invoke-virtual {p1}, Lcom/touchtype_fluency/util/LanguagePackImpl;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/touchtype_fluency/util/LanguagePackImpl;->name:Ljava/lang/String;

    .line 399
    invoke-virtual {p1}, Lcom/touchtype_fluency/util/LanguagePackImpl;->getArchive()Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, Lcom/touchtype_fluency/util/LanguagePackImpl;->archive:Ljava/net/URL;

    .line 400
    invoke-virtual {p1}, Lcom/touchtype_fluency/util/LanguagePackImpl;->getSHA1()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/touchtype_fluency/util/LanguagePackImpl;->sha1:Ljava/lang/String;

    .line 401
    invoke-virtual {p1}, Lcom/touchtype_fluency/util/LanguagePackImpl;->isBeta()Z

    move-result v0

    iput-boolean v0, p0, Lcom/touchtype_fluency/util/LanguagePackImpl;->beta:Z

    .line 404
    iget-object v0, p1, Lcom/touchtype_fluency/util/LanguagePackImpl;->defaultLayout:Ljava/lang/String;

    iput-object v0, p0, Lcom/touchtype_fluency/util/LanguagePackImpl;->defaultLayout:Ljava/lang/String;

    .line 405
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/touchtype_fluency/util/LanguagePackImpl;->updateAvailable:Z

    .line 406
    invoke-virtual {p1}, Lcom/touchtype_fluency/util/LanguagePackImpl;->isDownloaded()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/touchtype_fluency/util/LanguagePackImpl;->isEnabled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 411
    :cond_2
    monitor-exit p0

    return-void

    .line 395
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 393
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public resetDownloadListener(Lcom/touchtype_fluency/util/ProgressListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 356
    iget-object v0, p0, Lcom/touchtype_fluency/util/LanguagePackImpl;->mListener:Lcom/touchtype_fluency/util/LanguagePackManagerImpl$ProxyProgressListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 357
    iget-object v0, p0, Lcom/touchtype_fluency/util/LanguagePackImpl;->mListener:Lcom/touchtype_fluency/util/LanguagePackManagerImpl$ProxyProgressListener;

    invoke-virtual {v0, p1}, Lcom/touchtype_fluency/util/LanguagePackManagerImpl$ProxyProgressListener;->resetListener(Lcom/touchtype_fluency/util/ProgressListener;)V

    .line 358
    return-void

    .line 356
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resetToPreinstalled()Z
    .locals 3

    .prologue
    .line 320
    invoke-virtual {p0}, Lcom/touchtype_fluency/util/LanguagePackImpl;->getPreinstallFile()Ljava/io/File;

    move-result-object v1

    .line 321
    .local v1, zip:Ljava/io/File;
    if-eqz v1, :cond_0

    .line 323
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v2

    iput-object v2, p0, Lcom/touchtype_fluency/util/LanguagePackImpl;->archive:Ljava/net/URL;

    .line 324
    invoke-static {v1}, Lcom/touchtype_fluency/util/HttpDownload;->createDigest(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/touchtype_fluency/util/LanguagePackImpl;->sha1:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    const/4 v2, 0x1

    .line 331
    :goto_0
    return v2

    .line 326
    :catch_0
    move-exception v0

    .line 328
    .local v0, e:Ljava/io/IOException;
    invoke-static {}, Ljunit/framework/Assert;->fail()V

    .line 331
    .end local v0           #e:Ljava/io/IOException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method declared-synchronized setBroken()V
    .locals 1

    .prologue
    .line 300
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/touchtype_fluency/util/LanguagePackImpl;->loadingFailed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    monitor-exit p0

    return-void

    .line 300
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 244
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/touchtype_fluency/util/LanguagePackImpl;->mEnabled:Z

    .line 245
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/touchtype_fluency/util/LanguagePackImpl;->loadingFailed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    monitor-exit p0

    return-void

    .line 244
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setMetadata(Lorg/json/JSONObject;)V
    .locals 0
    .parameter "m"

    .prologue
    .line 174
    iput-object p1, p0, Lcom/touchtype_fluency/util/LanguagePackImpl;->metadata:Lorg/json/JSONObject;

    .line 175
    return-void
.end method

.method public declared-synchronized toJSON()Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 146
    monitor-enter p0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    .local v1, json:Lorg/json/JSONObject;
    :try_start_1
    const-string v2, "language"

    iget-object v3, p0, Lcom/touchtype_fluency/util/LanguagePackImpl;->language:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 150
    const-string v2, "country"

    iget-object v3, p0, Lcom/touchtype_fluency/util/LanguagePackImpl;->country:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 151
    const-string v2, "name"

    iget-object v3, p0, Lcom/touchtype_fluency/util/LanguagePackImpl;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 152
    const-string v2, "default-layout"

    iget-object v3, p0, Lcom/touchtype_fluency/util/LanguagePackImpl;->defaultLayout:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 153
    const-string v2, "archive"

    iget-object v3, p0, Lcom/touchtype_fluency/util/LanguagePackImpl;->archive:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 154
    const-string v2, "sha1"

    iget-object v3, p0, Lcom/touchtype_fluency/util/LanguagePackImpl;->sha1:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 155
    const-string v2, "beta"

    iget-boolean v3, p0, Lcom/touchtype_fluency/util/LanguagePackImpl;->beta:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 156
    const-string v2, "updateAvailable"

    iget-boolean v3, p0, Lcom/touchtype_fluency/util/LanguagePackImpl;->updateAvailable:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 157
    const-string v2, "metadata"

    iget-object v3, p0, Lcom/touchtype_fluency/util/LanguagePackImpl;->metadata:Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 158
    const-string v2, "enabled"

    iget-boolean v3, p0, Lcom/touchtype_fluency/util/LanguagePackImpl;->mEnabled:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 160
    iget-object v2, p0, Lcom/touchtype_fluency/util/LanguagePackImpl;->files:Ljava/util/Vector;

    if-eqz v2, :cond_0

    .line 161
    const-string v2, "files"

    new-instance v3, Lorg/json/JSONArray;

    iget-object v4, p0, Lcom/touchtype_fluency/util/LanguagePackImpl;->files:Ljava/util/Vector;

    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 166
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v1

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, e:Lorg/json/JSONException;
    :try_start_2
    invoke-static {}, Ljunit/framework/Assert;->fail()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 146
    .end local v0           #e:Lorg/json/JSONException;
    .end local v1           #json:Lorg/json/JSONObject;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/touchtype_fluency/util/LanguagePackImpl;->language:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/touchtype_fluency/util/LanguagePackImpl;->country:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/touchtype_fluency/util/LanguagePackImpl;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/touchtype_fluency/util/LanguagePackImpl;->archive:Ljava/net/URL;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/touchtype_fluency/util/LanguagePackImpl;->sha1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/touchtype_fluency/util/LanguagePackImpl;->files:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
