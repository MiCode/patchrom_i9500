.class public Lcom/touchtype/personalizer/PersonalizationRequest;
.super Ljava/lang/Object;
.source "PersonalizationRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/touchtype/personalizer/PersonalizationRequest$PollRunnable;,
        Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DELAYS:[I = null

.field private static final DELETE_REQUEST_TIMEOUT:I = 0x2710

.field private static final LOOPER_TRY_COUNT:I = 0x5

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDownloadPath:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mKeyManager:Lcom/touchtype/personalizer/PersonalizationKeyManager;

.field private mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

.field private mListener:Lcom/touchtype/personalizer/PersonalizationListener;

.field private mMergeResult:Z

.field private mParams:Ljava/lang/String;

.field private mPollCount:I

.field private mPoller:Ljava/lang/Thread;

.field private mUrlManager:Lcom/touchtype_fluency/service/util/UrlManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/touchtype/personalizer/PersonalizationRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/touchtype/personalizer/PersonalizationRequest;->TAG:Ljava/lang/String;

    .line 53
    const/16 v0, 0x14

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/touchtype/personalizer/PersonalizationRequest;->DELAYS:[I

    return-void

    :array_0
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/touchtype_fluency/util/LanguagePackManager;)V
    .locals 1
    .parameter "installationId"
    .parameter "servicePath"
    .parameter "context"
    .parameter "languagePackManager"

    .prologue
    const/4 v0, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput v0, p0, Lcom/touchtype/personalizer/PersonalizationRequest;->mPollCount:I

    .line 57
    iput-boolean v0, p0, Lcom/touchtype/personalizer/PersonalizationRequest;->mMergeResult:Z

    .line 84
    new-instance v0, Lcom/touchtype_fluency/service/util/UrlManager;

    invoke-direct {v0, p1, p2, p3}, Lcom/touchtype_fluency/service/util/UrlManager;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/touchtype/personalizer/PersonalizationRequest;->mUrlManager:Lcom/touchtype_fluency/service/util/UrlManager;

    .line 85
    iput-object p4, p0, Lcom/touchtype/personalizer/PersonalizationRequest;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    .line 86
    iput-object p3, p0, Lcom/touchtype/personalizer/PersonalizationRequest;->mContext:Landroid/content/Context;

    .line 87
    invoke-static {p3}, Lcom/touchtype/personalizer/PersonalizationKeyManager;->getInstance(Landroid/content/Context;)Lcom/touchtype/personalizer/PersonalizationKeyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/touchtype/personalizer/PersonalizationRequest;->mKeyManager:Lcom/touchtype/personalizer/PersonalizationKeyManager;

    .line 88
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/touchtype/personalizer/PersonalizationListener;Landroid/content/Context;Lcom/touchtype_fluency/util/LanguagePackManager;)V
    .locals 1
    .parameter "installationId"
    .parameter "servicePath"
    .parameter "params"
    .parameter "downloadPath"
    .parameter "listener"
    .parameter "context"
    .parameter "languagePackManager"

    .prologue
    const/4 v0, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput v0, p0, Lcom/touchtype/personalizer/PersonalizationRequest;->mPollCount:I

    .line 57
    iput-boolean v0, p0, Lcom/touchtype/personalizer/PersonalizationRequest;->mMergeResult:Z

    .line 73
    new-instance v0, Lcom/touchtype_fluency/service/util/UrlManager;

    invoke-direct {v0, p1, p2, p6}, Lcom/touchtype_fluency/service/util/UrlManager;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/touchtype/personalizer/PersonalizationRequest;->mUrlManager:Lcom/touchtype_fluency/service/util/UrlManager;

    .line 74
    iput-object p3, p0, Lcom/touchtype/personalizer/PersonalizationRequest;->mParams:Ljava/lang/String;

    .line 75
    iput-object p5, p0, Lcom/touchtype/personalizer/PersonalizationRequest;->mListener:Lcom/touchtype/personalizer/PersonalizationListener;

    .line 76
    iput-object p4, p0, Lcom/touchtype/personalizer/PersonalizationRequest;->mDownloadPath:Ljava/lang/String;

    .line 77
    iput-object p6, p0, Lcom/touchtype/personalizer/PersonalizationRequest;->mContext:Landroid/content/Context;

    .line 78
    iput-object p7, p0, Lcom/touchtype/personalizer/PersonalizationRequest;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    .line 79
    invoke-static {p6}, Lcom/touchtype/personalizer/PersonalizationKeyManager;->getInstance(Landroid/content/Context;)Lcom/touchtype/personalizer/PersonalizationKeyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/touchtype/personalizer/PersonalizationRequest;->mKeyManager:Lcom/touchtype/personalizer/PersonalizationKeyManager;

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/touchtype/personalizer/PersonalizationRequest;)Lcom/touchtype/personalizer/PersonalizationListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizationRequest;->mListener:Lcom/touchtype/personalizer/PersonalizationListener;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/touchtype/personalizer/PersonalizationRequest;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Ljava/net/URL;)Ljava/net/URL;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    invoke-static {p0}, Lcom/touchtype/personalizer/PersonalizationRequest;->addRandToUrl(Ljava/net/URL;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/touchtype/personalizer/PersonalizationRequest;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/touchtype/personalizer/PersonalizationRequest;->mPollCount:I

    return v0
.end method

.method static synthetic access$1108(Lcom/touchtype/personalizer/PersonalizationRequest;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/touchtype/personalizer/PersonalizationRequest;->mPollCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/touchtype/personalizer/PersonalizationRequest;->mPollCount:I

    return v0
.end method

.method static synthetic access$1200(Lcom/touchtype/personalizer/PersonalizationRequest;)V
    .locals 0
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/touchtype_fluency/service/util/ServerBusyException;,
            Lcom/touchtype_fluency/service/util/ServerApiException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/touchtype/personalizer/PersonalizationRequest;->makeInitialRequest()V

    return-void
.end method

.method static synthetic access$200(Lcom/touchtype/personalizer/PersonalizationRequest;)Lcom/touchtype_fluency/util/LanguagePackManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizationRequest;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/touchtype/personalizer/PersonalizationRequest;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/touchtype/personalizer/PersonalizationRequest;->mMergeResult:Z

    return v0
.end method

.method static synthetic access$302(Lcom/touchtype/personalizer/PersonalizationRequest;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/touchtype/personalizer/PersonalizationRequest;->mMergeResult:Z

    return p1
.end method

.method static synthetic access$400(Lcom/touchtype/personalizer/PersonalizationRequest;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizationRequest;->mDownloadPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/touchtype/personalizer/PersonalizationRequest;)Lcom/touchtype_fluency/service/util/UrlManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizationRequest;->mUrlManager:Lcom/touchtype_fluency/service/util/UrlManager;

    return-object v0
.end method

.method static synthetic access$700()[I
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/touchtype/personalizer/PersonalizationRequest;->DELAYS:[I

    return-object v0
.end method

.method static synthetic access$800(Lcom/touchtype/personalizer/PersonalizationRequest;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizationRequest;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$802(Lcom/touchtype/personalizer/PersonalizationRequest;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/touchtype/personalizer/PersonalizationRequest;->mHandler:Landroid/os/Handler;

    return-object p1
.end method

.method private addAuthToParams(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "params"

    .prologue
    .line 479
    :try_start_0
    const-string v6, "SHA-1"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 480
    .local v1, digester:Ljava/security/MessageDigest;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/touchtype/personalizer/PersonalizationRequest;->mKeyManager:Lcom/touchtype/personalizer/PersonalizationKeyManager;

    invoke-virtual {v7}, Lcom/touchtype/personalizer/PersonalizationKeyManager;->getApiKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/touchtype/personalizer/PersonalizationRequest;->mUrlManager:Lcom/touchtype_fluency/service/util/UrlManager;

    invoke-virtual {v7}, Lcom/touchtype_fluency/service/util/UrlManager;->getGUID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 488
    .local v0, authValue:[B
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 489
    .local v4, hexString:Ljava/lang/StringBuffer;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    array-length v6, v0

    if-ge v5, v6, :cond_1

    .line 490
    aget-byte v6, v0, v5

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 491
    .local v3, hex:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 492
    const/16 v6, 0x30

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 494
    :cond_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 489
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 483
    .end local v0           #authValue:[B
    .end local v1           #digester:Ljava/security/MessageDigest;
    .end local v3           #hex:Ljava/lang/String;
    .end local v4           #hexString:Ljava/lang/StringBuffer;
    .end local v5           #i:I
    :catch_0
    move-exception v2

    .line 484
    .local v2, e:Ljava/security/NoSuchAlgorithmException;
    sget-object v6, Lcom/touchtype/personalizer/PersonalizationRequest;->TAG:Ljava/lang/String;

    const-string v7, "No SHA-1 algorithm found"

    invoke-static {v6, v7}, Lcom/touchtype_fluency/service/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    .end local v2           #e:Ljava/security/NoSuchAlgorithmException;
    .end local p1
    :goto_1
    return-object p1

    .restart local v0       #authValue:[B
    .restart local v1       #digester:Ljava/security/MessageDigest;
    .restart local v4       #hexString:Ljava/lang/StringBuffer;
    .restart local v5       #i:I
    .restart local p1
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz p1, :cond_2

    const-string v6, ""

    if-eq p1, v6, :cond_2

    const-string v6, "&"

    :goto_2
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "auth="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    const-string v6, "?"

    goto :goto_2
.end method

.method private addLocaleLanguageInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "params"

    .prologue
    .line 522
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    .line 524
    .local v4, locale:Ljava/util/Locale;
    if-eqz v4, :cond_1

    .line 525
    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    .line 526
    .local v5, localeCountry:Ljava/lang/String;
    if-eqz v5, :cond_0

    const-string v7, ""

    if-eq v5, v7, :cond_0

    .line 527
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz p1, :cond_2

    const-string v7, ""

    if-eq p1, v7, :cond_2

    const-string v7, "&"

    :goto_0
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "locale_country="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 530
    :cond_0
    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    .line 531
    .local v6, localeLanguage:Ljava/lang/String;
    if-eqz v6, :cond_1

    const-string v7, ""

    if-eq v6, v7, :cond_1

    .line 532
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz p1, :cond_3

    const-string v7, ""

    if-eq p1, v7, :cond_3

    const-string v7, "&"

    :goto_1
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "locale_language="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 541
    .end local v5           #localeCountry:Ljava/lang/String;
    .end local v6           #localeLanguage:Ljava/lang/String;
    :cond_1
    iget-object v7, p0, Lcom/touchtype/personalizer/PersonalizationRequest;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    invoke-virtual {v7}, Lcom/touchtype_fluency/util/LanguagePackManager;->getEnabledLanguages()Ljava/util/List;

    move-result-object v3

    .line 545
    .local v3, langs:Ljava/util/List;,"Ljava/util/List<Lcom/touchtype_fluency/util/LanguagePack;>;"
    if-eqz v3, :cond_5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_5

    .line 547
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 550
    .local v1, jarray:Lorg/json/JSONArray;
    monitor-enter v3

    .line 551
    :try_start_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/touchtype_fluency/util/LanguagePack;

    .line 552
    .local v2, lang:Lcom/touchtype_fluency/util/LanguagePack;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v2}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    .line 554
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #lang:Lcom/touchtype_fluency/util/LanguagePack;
    :catchall_0
    move-exception v7

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 527
    .end local v1           #jarray:Lorg/json/JSONArray;
    .end local v3           #langs:Ljava/util/List;,"Ljava/util/List<Lcom/touchtype_fluency/util/LanguagePack;>;"
    .restart local v5       #localeCountry:Ljava/lang/String;
    :cond_2
    const-string v7, "?"

    goto/16 :goto_0

    .line 532
    .restart local v6       #localeLanguage:Ljava/lang/String;
    :cond_3
    const-string v7, "?"

    goto :goto_1

    .line 554
    .end local v5           #localeCountry:Ljava/lang/String;
    .end local v6           #localeLanguage:Ljava/lang/String;
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v1       #jarray:Lorg/json/JSONArray;
    .restart local v3       #langs:Ljava/util/List;,"Ljava/util/List<Lcom/touchtype_fluency/util/LanguagePack;>;"
    :cond_4
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 561
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lez v7, :cond_5

    .line 564
    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz p1, :cond_6

    const-string v7, ""

    if-eq p1, v7, :cond_6

    const-string v7, "&"

    :goto_3
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "languages_enabled="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-static {v8, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 573
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #jarray:Lorg/json/JSONArray;
    :cond_5
    :goto_4
    return-object p1

    .line 564
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v1       #jarray:Lorg/json/JSONArray;
    :cond_6
    const-string v7, "?"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 567
    :catch_0
    move-exception v7

    goto :goto_4
.end method

.method private static addRandToUrl(Ljava/net/URL;)Ljava/net/URL;
    .locals 8
    .parameter "url"

    .prologue
    .line 616
    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "?"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 617
    .local v1, hasParams:Z
    if-eqz v1, :cond_0

    const-string v4, "&"

    .line 619
    .local v4, separator:Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 620
    .local v2, r:Ljava/util/Random;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rand="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x98967f

    invoke-virtual {v2, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 623
    .local v3, randomPart:Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/net/URL;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 628
    :goto_1
    return-object v5

    .line 617
    .end local v2           #r:Ljava/util/Random;
    .end local v3           #randomPart:Ljava/lang/String;
    .end local v4           #separator:Ljava/lang/String;
    :cond_0
    const-string v4, "?"

    goto :goto_0

    .line 624
    .restart local v2       #r:Ljava/util/Random;
    .restart local v3       #randomPart:Ljava/lang/String;
    .restart local v4       #separator:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 625
    .local v0, e:Ljava/net/MalformedURLException;
    :try_start_1
    sget-object v5, Lcom/touchtype/personalizer/PersonalizationRequest;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/touchtype_fluency/service/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 628
    const/4 v5, 0x0

    goto :goto_1

    .line 626
    .end local v0           #e:Ljava/net/MalformedURLException;
    :catchall_0
    move-exception v5

    throw v5
.end method

.method private addTextRetentionToParams(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "params"

    .prologue
    .line 507
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&retain_text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizationRequest;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private backUpLmFile(Lcom/touchtype_fluency/util/Storage;Ljava/io/File;)V
    .locals 11
    .parameter "store"
    .parameter "tempFile"

    .prologue
    .line 577
    new-instance v2, Ljava/io/File;

    invoke-interface {p1}, Lcom/touchtype_fluency/util/Storage;->getDirectory()Ljava/io/File;

    move-result-object v8

    const-string v9, "backup.lm"

    invoke-direct {v2, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 578
    .local v2, ff:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 579
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 583
    :cond_0
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 588
    :goto_0
    const/4 v3, 0x0

    .line 589
    .local v3, fis:Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .line 591
    .local v5, fos:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 592
    .end local v3           #fis:Ljava/io/FileInputStream;
    .local v4, fis:Ljava/io/FileInputStream;
    :try_start_2
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 593
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .local v6, fos:Ljava/io/FileOutputStream;
    const/4 v7, -0x1

    .line 594
    .local v7, oneByte:I
    :goto_1
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->read()I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    .line 595
    invoke-virtual {v6, v7}, Ljava/io/FileOutputStream;->write(I)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_1

    .line 603
    :catch_0
    move-exception v0

    move-object v5, v6

    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    move-object v3, v4

    .line 604
    .end local v4           #fis:Ljava/io/FileInputStream;
    .end local v7           #oneByte:I
    .local v0, e:Ljava/io/FileNotFoundException;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :goto_2
    sget-object v8, Lcom/touchtype/personalizer/PersonalizationRequest;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onComplete() "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/touchtype_fluency/service/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 610
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :goto_3
    return-void

    .line 584
    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v5           #fos:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v1

    .line 585
    .local v1, e1:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 597
    .end local v1           #e1:Ljava/io/IOException;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    .restart local v7       #oneByte:I
    :cond_1
    if-eqz v4, :cond_2

    .line 598
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 600
    :cond_2
    if-eqz v6, :cond_3

    .line 601
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :cond_3
    move-object v5, v6

    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    move-object v3, v4

    .line 609
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_3

    .line 606
    .end local v7           #oneByte:I
    :catch_2
    move-exception v0

    .line 607
    .local v0, e:Ljava/io/IOException;
    :goto_4
    sget-object v8, Lcom/touchtype/personalizer/PersonalizationRequest;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onComplete() "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/touchtype_fluency/service/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 606
    .end local v0           #e:Ljava/io/IOException;
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catch_3
    move-exception v0

    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_4

    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    .restart local v7       #oneByte:I
    :catch_4
    move-exception v0

    move-object v5, v6

    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_4

    .line 603
    .end local v7           #oneByte:I
    :catch_5
    move-exception v0

    goto :goto_2

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catch_6
    move-exception v0

    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method private makeInitialRequest()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/touchtype_fluency/service/util/ServerBusyException;,
            Lcom/touchtype_fluency/service/util/ServerApiException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 362
    iget-object v4, p0, Lcom/touchtype/personalizer/PersonalizationRequest;->mUrlManager:Lcom/touchtype_fluency/service/util/UrlManager;

    invoke-virtual {v4}, Lcom/touchtype_fluency/service/util/UrlManager;->getInitialUrl()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    .line 367
    .local v1, httpsConn:Ljavax/net/ssl/HttpsURLConnection;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljavax/net/ssl/HttpsURLConnection;->setInstanceFollowRedirects(Z)V

    .line 368
    const-string v4, "POST"

    invoke-virtual {v1, v4}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 369
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 371
    iget-object v4, p0, Lcom/touchtype/personalizer/PersonalizationRequest;->mParams:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/touchtype/personalizer/PersonalizationRequest;->addTextRetentionToParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/touchtype/personalizer/PersonalizationRequest;->mParams:Ljava/lang/String;

    .line 372
    iget-object v4, p0, Lcom/touchtype/personalizer/PersonalizationRequest;->mParams:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/touchtype/personalizer/PersonalizationRequest;->addAuthToParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/touchtype/personalizer/PersonalizationRequest;->mParams:Ljava/lang/String;

    .line 373
    iget-object v4, p0, Lcom/touchtype/personalizer/PersonalizationRequest;->mParams:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/touchtype/personalizer/PersonalizationRequest;->addLocaleLanguageInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/touchtype/personalizer/PersonalizationRequest;->mParams:Ljava/lang/String;

    .line 375
    sget-object v4, Lcom/touchtype/personalizer/PersonalizationRequest;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Querying URL "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/touchtype/personalizer/PersonalizationRequest;->mUrlManager:Lcom/touchtype_fluency/service/util/UrlManager;

    invoke-virtual {v6}, Lcom/touchtype_fluency/service/util/UrlManager;->getInitialUrl()Ljava/net/URL;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with params "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/touchtype/personalizer/PersonalizationRequest;->mParams:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/touchtype_fluency/service/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 381
    .local v3, wr:Ljava/io/OutputStreamWriter;
    iget-object v4, p0, Lcom/touchtype/personalizer/PersonalizationRequest;->mParams:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 382
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V

    .line 384
    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v2

    .line 385
    .local v2, response:I
    sget-object v4, Lcom/touchtype/personalizer/PersonalizationRequest;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "makeInitialRequest: got response "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/touchtype_fluency/service/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    sparse-switch v2, :sswitch_data_0

    .line 405
    sget-object v4, Lcom/touchtype/personalizer/PersonalizationRequest;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Servers returned invalid HTTP result "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/touchtype_fluency/service/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    new-instance v4, Lcom/touchtype_fluency/service/util/ServerApiException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Initial request, expected 301 or 503, got "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/touchtype_fluency/service/util/ServerApiException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 389
    :sswitch_0
    const-string v4, "Location"

    invoke-virtual {v1, v4}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 391
    .local v0, establishedUrl:Ljava/lang/String;
    const-string v4, "http://"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 392
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "https://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 395
    :cond_0
    iget-object v4, p0, Lcom/touchtype/personalizer/PersonalizationRequest;->mUrlManager:Lcom/touchtype_fluency/service/util/UrlManager;

    invoke-virtual {v4, v0}, Lcom/touchtype_fluency/service/util/UrlManager;->setEstablishedUrl(Ljava/lang/String;)V

    .line 396
    sget-object v4, Lcom/touchtype/personalizer/PersonalizationRequest;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "makeInitialRequest: got server address "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/touchtype/personalizer/PersonalizationRequest;->mUrlManager:Lcom/touchtype_fluency/service/util/UrlManager;

    invoke-virtual {v6}, Lcom/touchtype_fluency/service/util/UrlManager;->getEstablishedUrlString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/touchtype_fluency/service/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    return-void

    .line 401
    .end local v0           #establishedUrl:Ljava/lang/String;
    :sswitch_1
    sget-object v4, Lcom/touchtype/personalizer/PersonalizationRequest;->TAG:Ljava/lang/String;

    const-string v5, "Servers are returning busy"

    invoke-static {v4, v5}, Lcom/touchtype_fluency/service/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    new-instance v4, Lcom/touchtype_fluency/service/util/ServerBusyException;

    const-string v5, "Servers returned busy"

    invoke-direct {v4, v5}, Lcom/touchtype_fluency/service/util/ServerBusyException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 387
    nop

    :sswitch_data_0
    .sparse-switch
        0x12d -> :sswitch_0
        0x1f7 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public deleteRemoteData(Lcom/touchtype/personalizer/PersonalizationListener;)V
    .locals 4
    .parameter "pzListener"

    .prologue
    .line 419
    const-string v2, ""

    invoke-direct {p0, v2}, Lcom/touchtype/personalizer/PersonalizationRequest;->addAuthToParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 420
    .local v1, params:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/touchtype/personalizer/PersonalizationRequest;->mUrlManager:Lcom/touchtype_fluency/service/util/UrlManager;

    invoke-virtual {v3}, Lcom/touchtype_fluency/service/util/UrlManager;->getDeleteUrlString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 422
    .local v0, deleteUrl:Ljava/lang/String;
    new-instance v2, Lcom/touchtype/personalizer/PersonalizationRequest$2;

    invoke-direct {v2, p0, v0, p1}, Lcom/touchtype/personalizer/PersonalizationRequest$2;-><init>(Lcom/touchtype/personalizer/PersonalizationRequest;Ljava/lang/String;Lcom/touchtype/personalizer/PersonalizationListener;)V

    invoke-virtual {v2}, Lcom/touchtype/personalizer/PersonalizationRequest$2;->start()V

    .line 473
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 309
    new-instance v0, Lcom/touchtype/personalizer/PersonalizationRequest$1;

    invoke-direct {v0, p0}, Lcom/touchtype/personalizer/PersonalizationRequest$1;-><init>(Lcom/touchtype/personalizer/PersonalizationRequest;)V

    iput-object v0, p0, Lcom/touchtype/personalizer/PersonalizationRequest;->mPoller:Ljava/lang/Thread;

    .line 353
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizationRequest;->mPoller:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 354
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizationRequest;->mPoller:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 358
    return-void
.end method
