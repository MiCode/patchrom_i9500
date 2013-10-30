.class public final Lcom/nuance/connect/language/KLLanguageService;
.super Lcom/nuance/connect/language/KLService;
.source "KLLanguageService.java"


# static fields
.field private static final ALM_INSTALLED:Ljava/lang/String; = "ALM_INSTALLED"

.field private static final LANGUAGE_DL:Ljava/lang/String; = "LANGUAGE_DL"

.field private static final LANGUAGE_ID:Ljava/lang/String; = "LANGUAGE_ID"

.field private static final PREINSTALLED:Ljava/lang/String; = "PREINSTALLED"

.field public static final REASON_FAILED_HTTP:I = 0x0

.field public static final REASON_FAILED_MAX_RETRY:I = 0x1

.field public static final REASON_NETWORK_TIMEOUT:I = 0x4

.field public static final REASON_USER_CANCELED:I = 0x3

.field private static final VERSION:Ljava/lang/String; = "VERSION"


# instance fields
.field private final canceledDownloads:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private clientHandleVersioning:Z

.field private final downloadingCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nuance/connect/language/KLLanguageDLCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final languageCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/nuance/connect/language/KLLanguageCallback;",
            ">;"
        }
    .end annotation
.end field

.field private languageHandler:Lcom/nuance/swype/connect/api/ConnectHandler;

.field private languageListNotified:Z

.field private final languageMetadata:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private managerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/nuance/connect/language/KLManager;",
            ">;"
        }
    .end annotation
.end field

.field private final redownload:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nuance/connect/language/KLLanguageDLCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final supportedLangs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/nuance/connect/language/KLManager;)V
    .locals 1
    .parameter "manager"

    .prologue
    .line 258
    invoke-direct {p0}, Lcom/nuance/connect/language/KLService;-><init>()V

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/language/KLLanguageService;->languageMetadata:Ljava/util/HashMap;

    .line 60
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/language/KLLanguageService;->canceledDownloads:Ljava/util/Set;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/language/KLLanguageService;->redownload:Ljava/util/Map;

    .line 62
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/language/KLLanguageService;->languageCallbacks:Ljava/util/Set;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/language/KLLanguageService;->downloadingCallbacks:Ljava/util/Map;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/language/KLLanguageService;->supportedLangs:Ljava/util/HashMap;

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/connect/language/KLLanguageService;->clientHandleVersioning:Z

    .line 73
    new-instance v0, Lcom/nuance/connect/language/KLLanguageService$1;

    invoke-direct {v0, p0}, Lcom/nuance/connect/language/KLLanguageService$1;-><init>(Lcom/nuance/connect/language/KLLanguageService;)V

    iput-object v0, p0, Lcom/nuance/connect/language/KLLanguageService;->languageHandler:Lcom/nuance/swype/connect/api/ConnectHandler;

    .line 259
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/nuance/connect/language/KLLanguageService;->managerRef:Ljava/lang/ref/WeakReference;

    .line 260
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/connect/language/KLLanguageService;)Ljava/lang/ref/WeakReference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/nuance/connect/language/KLLanguageService;->managerRef:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/connect/language/KLLanguageService;Ljava/util/Map;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/nuance/connect/language/KLLanguageService;->updateLanguagesData(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$200(Lcom/nuance/connect/language/KLLanguageService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/nuance/connect/language/KLLanguageService;->markLanguageInstalled(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/nuance/connect/language/KLLanguageService;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/nuance/connect/language/KLLanguageService;->downloadingCallbacks:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$400(Lcom/nuance/connect/language/KLLanguageService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/nuance/connect/language/KLLanguageService;->clientHandleVersioning:Z

    return v0
.end method

.method static synthetic access$500(Lcom/nuance/connect/language/KLLanguageService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/nuance/connect/language/KLLanguageService;->languageMetadata:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$600(Lcom/nuance/connect/language/KLLanguageService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/nuance/connect/language/KLLanguageService;->removeLanguage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/nuance/connect/language/KLLanguageService;)Ljava/util/Set;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/nuance/connect/language/KLLanguageService;->canceledDownloads:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$800(Lcom/nuance/connect/language/KLLanguageService;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/nuance/connect/language/KLLanguageService;->redownload:Ljava/util/Map;

    return-object v0
.end method

.method private addSupportedLanguage(Lcom/nuance/connect/language/KLLdbInfo;)V
    .locals 6
    .parameter "ldbInfo"

    .prologue
    const/4 v3, 0x1

    .line 438
    if-eqz p1, :cond_2

    .line 439
    invoke-virtual {p1}, Lcom/nuance/connect/language/KLLdbInfo;->getXT9LanguageId()I

    move-result v2

    invoke-static {v2}, Lcom/nuance/connect/language/KLLanguageList;->findLanguageById(I)Ljava/lang/String;

    move-result-object v1

    .line 442
    .local v1, languageName:Ljava/lang/String;
    iget-object v2, p0, Lcom/nuance/connect/language/KLLanguageService;->supportedLangs:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 443
    iget-object v2, p0, Lcom/nuance/connect/language/KLLanguageService;->supportedLangs:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v4, "LANGUAGE_DL"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    :cond_0
    iget-object v2, p0, Lcom/nuance/connect/language/KLLanguageService;->supportedLangs:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v1}, Lcom/nuance/connect/language/KLLanguageService;->isPreinstalled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 451
    :cond_1
    invoke-virtual {p1}, Lcom/nuance/connect/language/KLLdbInfo;->isALM()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/nuance/connect/language/KLLdbInfo;->isALM()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 452
    .local v0, isALM:Z
    :goto_0
    iget-object v2, p0, Lcom/nuance/connect/language/KLLanguageService;->supportedLangs:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/nuance/connect/language/KLLdbInfo;->getXT9LanguageId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1}, Lcom/nuance/connect/language/KLLdbInfo;->getVersion()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v3, v5, v0}, Lcom/nuance/connect/language/KLLanguageService;->generateSupportedHashMap(Ljava/lang/Integer;ZLjava/lang/String;Z)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    .end local v0           #isALM:Z
    .end local v1           #languageName:Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .restart local v1       #languageName:Ljava/lang/String;
    :cond_3
    move v0, v3

    .line 451
    goto :goto_0

    .line 468
    :cond_4
    iget-object v2, p0, Lcom/nuance/connect/language/KLLanguageService;->supportedLangs:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v4, "VERSION"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/nuance/connect/language/KLLdbInfo;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lcom/nuance/connect/language/KLLanguageService;->isAvailableVersionNewer(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 469
    invoke-virtual {p1}, Lcom/nuance/connect/language/KLLdbInfo;->isALM()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Lcom/nuance/connect/language/KLLdbInfo;->isALM()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 470
    .restart local v0       #isALM:Z
    :goto_2
    iget-object v2, p0, Lcom/nuance/connect/language/KLLanguageService;->supportedLangs:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/nuance/connect/language/KLLdbInfo;->getXT9LanguageId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1}, Lcom/nuance/connect/language/KLLdbInfo;->getVersion()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v3, v5, v0}, Lcom/nuance/connect/language/KLLanguageService;->generateSupportedHashMap(Ljava/lang/Integer;ZLjava/lang/String;Z)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .end local v0           #isALM:Z
    :cond_5
    move v0, v3

    .line 469
    goto :goto_2
.end method

.method private addSupportedLanguage(Ljava/lang/Integer;[Lcom/nuance/connect/language/KLLdbInfo;)V
    .locals 9
    .parameter "xt9LanguageId"
    .parameter "ldbInfoList"

    .prologue
    const/4 v7, 0x1

    .line 543
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Lcom/nuance/connect/language/KLLanguageList;->findLanguageById(I)Ljava/lang/String;

    move-result-object v3

    .line 545
    .local v3, languageName:Ljava/lang/String;
    iget-object v8, p0, Lcom/nuance/connect/language/KLLanguageService;->supportedLangs:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    if-eqz p2, :cond_3

    array-length v8, p2

    if-lez v8, :cond_3

    .line 547
    const-string v6, ""

    .line 548
    .local v6, version:Ljava/lang/String;
    const/4 v2, 0x0

    .line 549
    .local v2, isALM:Z
    move-object v0, p2

    .local v0, arr$:[Lcom/nuance/connect/language/KLLdbInfo;
    array-length v5, v0

    .local v5, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v5, :cond_2

    aget-object v4, v0, v1

    .line 552
    .local v4, ldbInfo:Lcom/nuance/connect/language/KLLdbInfo;
    invoke-virtual {v4}, Lcom/nuance/connect/language/KLLdbInfo;->isALM()Ljava/lang/Boolean;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual {v4}, Lcom/nuance/connect/language/KLLdbInfo;->isALM()Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 555
    :goto_1
    invoke-virtual {v4}, Lcom/nuance/connect/language/KLLdbInfo;->getVersion()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v8}, Lcom/nuance/connect/language/KLLanguageService;->isAvailableVersionNewer(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v4}, Lcom/nuance/connect/language/KLLdbInfo;->getVersion()Ljava/lang/String;

    move-result-object v6

    .line 549
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v2, v7

    .line 552
    goto :goto_1

    .line 563
    .end local v4           #ldbInfo:Lcom/nuance/connect/language/KLLdbInfo;
    :cond_2
    iget-object v8, p0, Lcom/nuance/connect/language/KLLanguageService;->supportedLangs:Ljava/util/HashMap;

    invoke-direct {p0, p1, v7, v6, v2}, Lcom/nuance/connect/language/KLLanguageService;->generateSupportedHashMap(Ljava/lang/Integer;ZLjava/lang/String;Z)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v8, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    .end local v0           #arr$:[Lcom/nuance/connect/language/KLLdbInfo;
    .end local v1           #i$:I
    .end local v2           #isALM:Z
    .end local v5           #len$:I
    .end local v6           #version:Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private cancelDownload(Ljava/lang/String;)V
    .locals 4
    .parameter "lang"

    .prologue
    const/4 v2, 0x0

    .line 305
    if-nez p1, :cond_1

    .line 306
    const-string v1, "Invalid language"

    invoke-static {v1}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 310
    :cond_1
    iget-object v1, p0, Lcom/nuance/connect/language/KLLanguageService;->redownload:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/nuance/connect/language/KLLanguageService;->canceledDownloads:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 312
    iget-object v1, p0, Lcom/nuance/connect/language/KLLanguageService;->redownload:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 316
    :cond_2
    iget-object v1, p0, Lcom/nuance/connect/language/KLLanguageService;->canceledDownloads:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 318
    iget-object v1, p0, Lcom/nuance/connect/language/KLLanguageService;->managerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/language/KLManager;

    .line 319
    .local v0, manager:Lcom/nuance/connect/language/KLManager;
    if-eqz v0, :cond_3

    .line 320
    const/16 v1, 0x111

    invoke-virtual {v0, v1, p1, v2, v2}, Lcom/nuance/connect/language/KLManager;->sendConnectMessage(ILjava/lang/Object;II)Z

    .line 323
    :cond_3
    iget-object v1, p0, Lcom/nuance/connect/language/KLLanguageService;->languageMetadata:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 324
    iget-object v1, p0, Lcom/nuance/connect/language/KLLanguageService;->languageMetadata:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "STEP"

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private generateSupportedHashMap(Ljava/lang/Integer;ZLjava/lang/String;Z)Ljava/util/HashMap;
    .locals 3
    .parameter "xt9LanguageId"
    .parameter "preinstalled"
    .parameter "version"
    .parameter "almInstalled"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Z",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 635
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 636
    .local v0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "LANGUAGE_ID"

    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    const-string v1, "PREINSTALLED"

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    const-string v1, "VERSION"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    const-string v1, "ALM_INSTALLED"

    invoke-static {p4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    return-object v0
.end method

.method private getVersionNumber(Ljava/lang/String;)[I
    .locals 7
    .parameter "version"

    .prologue
    .line 793
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    .line 794
    :cond_0
    const/4 v5, 0x0

    new-array v3, v5, [I

    .line 810
    :cond_1
    return-object v3

    .line 797
    :cond_2
    const-string v5, "\\."

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 799
    .local v4, versions:[Ljava/lang/String;
    array-length v5, v4

    const/4 v6, 0x3

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 800
    .local v0, accuracy:I
    new-array v3, v0, [I

    .line 802
    .local v3, returnValue:[I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 804
    :try_start_0
    aget-object v5, v4, v2

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v3, v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 802
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 805
    :catch_0
    move-exception v1

    .line 806
    .local v1, ex:Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "There was an issue parsing version number: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v4, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private installLanguage(Ljava/lang/String;)V
    .locals 3
    .parameter "lang"

    .prologue
    const/4 v2, 0x0

    .line 274
    iget-object v1, p0, Lcom/nuance/connect/language/KLLanguageService;->languageMetadata:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nuance/connect/language/KLLanguageService;->languageMetadata:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 275
    iget-object v1, p0, Lcom/nuance/connect/language/KLLanguageService;->managerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/language/KLManager;

    .line 276
    .local v0, manager:Lcom/nuance/connect/language/KLManager;
    if-eqz v0, :cond_0

    .line 277
    const/16 v1, 0xd7

    invoke-virtual {v0, v1, p1, v2, v2}, Lcom/nuance/connect/language/KLManager;->sendConnectMessage(ILjava/lang/Object;II)Z

    .line 283
    .end local v0           #manager:Lcom/nuance/connect/language/KLManager;
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    const-string v1, "Attempt to install a language that isn\'t available"

    invoke-static {v1}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isAvailableVersionNewer(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "current"
    .parameter "available"

    .prologue
    .line 755
    const/4 v4, 0x0

    .line 756
    .local v4, newer:Z
    invoke-direct {p0, p1}, Lcom/nuance/connect/language/KLLanguageService;->getVersionNumber(Ljava/lang/String;)[I

    move-result-object v1

    .line 757
    .local v1, currentVersion:[I
    invoke-direct {p0, p2}, Lcom/nuance/connect/language/KLLanguageService;->getVersionNumber(Ljava/lang/String;)[I

    move-result-object v0

    .line 759
    .local v0, availableVersion:[I
    array-length v5, v0

    array-length v6, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 761
    .local v3, max:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-gt v2, v3, :cond_0

    .line 762
    array-length v5, v0

    if-le v5, v2, :cond_2

    array-length v5, v1

    if-le v5, v2, :cond_2

    .line 763
    aget v5, v0, v2

    aget v6, v1, v2

    if-le v5, v6, :cond_1

    .line 765
    const/4 v4, 0x1

    .line 784
    :cond_0
    :goto_1
    return v4

    .line 767
    :cond_1
    aget v5, v0, v2

    aget v6, v1, v2

    if-ge v5, v6, :cond_3

    .line 769
    const/4 v4, 0x0

    .line 770
    goto :goto_1

    .line 772
    :cond_2
    array-length v5, v0

    array-length v6, v1

    if-ne v5, v6, :cond_4

    .line 774
    const/4 v4, 0x0

    .line 761
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 775
    :cond_4
    array-length v5, v0

    if-lt v5, v2, :cond_5

    .line 777
    const/4 v4, 0x1

    goto :goto_2

    .line 778
    :cond_5
    array-length v5, v1

    if-lt v5, v2, :cond_3

    .line 780
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private isDownloaded(Ljava/lang/String;)Z
    .locals 5
    .parameter "language"

    .prologue
    .line 684
    const/4 v0, 0x0

    .line 686
    .local v0, installed:Z
    iget-object v4, p0, Lcom/nuance/connect/language/KLLanguageService;->languageMetadata:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 688
    .local v2, props:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v2, :cond_0

    move v1, v0

    .line 698
    .end local v0           #installed:Z
    .local v1, installed:I
    :goto_0
    return v1

    .line 693
    .end local v1           #installed:I
    .restart local v0       #installed:Z
    :cond_0
    const-string v4, "STEP"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 694
    .local v3, step:I
    const/4 v4, 0x7

    if-ne v3, v4, :cond_1

    .line 695
    const/4 v0, 0x1

    :cond_1
    move v1, v0

    .line 698
    .restart local v1       #installed:I
    goto :goto_0
.end method

.method private isPreinstalled(Ljava/lang/String;)Z
    .locals 3
    .parameter "language"

    .prologue
    .line 666
    const/4 v0, 0x0

    .line 668
    .local v0, preinstalled:Z
    iget-object v1, p0, Lcom/nuance/connect/language/KLLanguageService;->supportedLangs:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 669
    iget-object v1, p0, Lcom/nuance/connect/language/KLLanguageService;->supportedLangs:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "PREINSTALLED"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 670
    const/4 v0, 0x1

    .line 674
    :cond_0
    return v0
.end method

.method private isSupported(Ljava/lang/String;)Z
    .locals 2
    .parameter "language"

    .prologue
    .line 651
    const/4 v0, 0x0

    .line 653
    .local v0, supported:Z
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/nuance/connect/language/KLLanguageService;->supportedLangs:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 654
    const/4 v0, 0x1

    .line 657
    :cond_0
    return v0
.end method

.method private isUpdateAvailable(Ljava/lang/String;)Z
    .locals 5
    .parameter "language"

    .prologue
    .line 710
    const/4 v2, 0x0

    .line 712
    .local v2, upgradeable:Z
    iget-object v3, p0, Lcom/nuance/connect/language/KLLanguageService;->supportedLangs:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 713
    iget-object v3, p0, Lcom/nuance/connect/language/KLLanguageService;->languageMetadata:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v4, "PROP_VERSION"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 714
    .local v0, availableVersion:Ljava/lang/String;
    iget-object v3, p0, Lcom/nuance/connect/language/KLLanguageService;->languageMetadata:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v4, "PROP_INSTALLEDVERSION"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 716
    .local v1, currentVersion:Ljava/lang/String;
    iget-object v3, p0, Lcom/nuance/connect/language/KLLanguageService;->supportedLangs:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v4, "LANGUAGE_DL"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/nuance/connect/language/KLLanguageService;->supportedLangs:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v4, "LANGUAGE_DL"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 718
    iget-object v3, p0, Lcom/nuance/connect/language/KLLanguageService;->supportedLangs:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v4, "LANGUAGE_DL"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #currentVersion:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 726
    .restart local v1       #currentVersion:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/nuance/connect/language/KLLanguageService;->isPreinstalled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 728
    invoke-direct {p0, p1}, Lcom/nuance/connect/language/KLLanguageService;->isDownloaded(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/nuance/connect/language/KLLanguageService;->supportedLangs:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v4, "ALM_INSTALLED"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 732
    const/4 v2, 0x1

    .line 745
    .end local v0           #availableVersion:Ljava/lang/String;
    .end local v1           #currentVersion:Ljava/lang/String;
    :cond_1
    :goto_1
    return v2

    .line 719
    .restart local v0       #availableVersion:Ljava/lang/String;
    .restart local v1       #currentVersion:Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/nuance/connect/language/KLLanguageService;->supportedLangs:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v4, "VERSION"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/nuance/connect/language/KLLanguageService;->supportedLangs:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v4, "VERSION"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 721
    iget-object v3, p0, Lcom/nuance/connect/language/KLLanguageService;->supportedLangs:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v4, "VERSION"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #currentVersion:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1       #currentVersion:Ljava/lang/String;
    goto :goto_0

    .line 734
    :cond_3
    invoke-direct {p0, v1, v0}, Lcom/nuance/connect/language/KLLanguageService;->isAvailableVersionNewer(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    goto :goto_1

    .line 736
    :cond_4
    invoke-direct {p0, p1}, Lcom/nuance/connect/language/KLLanguageService;->isDownloaded(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 738
    invoke-direct {p0, v1, v0}, Lcom/nuance/connect/language/KLLanguageService;->isAvailableVersionNewer(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    goto :goto_1

    .line 741
    :cond_5
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private markLanguageInstalled(Ljava/lang/String;)V
    .locals 4
    .parameter "lang"

    .prologue
    .line 244
    iget-object v1, p0, Lcom/nuance/connect/language/KLLanguageService;->languageMetadata:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 245
    iget-object v1, p0, Lcom/nuance/connect/language/KLLanguageService;->languageMetadata:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "STEP"

    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    iget-object v1, p0, Lcom/nuance/connect/language/KLLanguageService;->languageMetadata:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "PROP_VERSION"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 249
    .local v0, propVersion:Ljava/lang/String;
    iget-object v1, p0, Lcom/nuance/connect/language/KLLanguageService;->languageMetadata:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "PROP_INSTALLEDVERSION"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    iget-object v1, p0, Lcom/nuance/connect/language/KLLanguageService;->supportedLangs:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 253
    iget-object v1, p0, Lcom/nuance/connect/language/KLLanguageService;->supportedLangs:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "LANGUAGE_DL"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    .end local v0           #propVersion:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private notifyCallbacksOfDownload()V
    .locals 3

    .prologue
    .line 375
    iget-object v2, p0, Lcom/nuance/connect/language/KLLanguageService;->languageCallbacks:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/language/KLLanguageCallback;

    .line 376
    .local v0, callback:Lcom/nuance/connect/language/KLLanguageCallback;
    invoke-interface {v0}, Lcom/nuance/connect/language/KLLanguageCallback;->downloadListUpdated()V

    goto :goto_0

    .line 378
    .end local v0           #callback:Lcom/nuance/connect/language/KLLanguageCallback;
    :cond_0
    return-void
.end method

.method private removeLanguage(Ljava/lang/String;)V
    .locals 5
    .parameter "lang"

    .prologue
    const/4 v4, 0x0

    .line 286
    iget-object v1, p0, Lcom/nuance/connect/language/KLLanguageService;->managerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/language/KLManager;

    .line 287
    .local v0, manager:Lcom/nuance/connect/language/KLManager;
    if-nez v0, :cond_1

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 290
    :cond_1
    iget-object v1, p0, Lcom/nuance/connect/language/KLLanguageService;->languageMetadata:Ljava/util/HashMap;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/nuance/connect/language/KLLanguageService;->languageMetadata:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 291
    iget-object v1, p0, Lcom/nuance/connect/language/KLLanguageService;->languageMetadata:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "STEP"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    const/16 v1, 0xd9

    invoke-virtual {v0, v1, p1, v4, v4}, Lcom/nuance/connect/language/KLManager;->sendConnectMessage(ILjava/lang/Object;II)Z

    .line 299
    :goto_1
    iget-object v1, p0, Lcom/nuance/connect/language/KLLanguageService;->supportedLangs:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 300
    iget-object v1, p0, Lcom/nuance/connect/language/KLLanguageService;->supportedLangs:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "LANGUAGE_DL"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 296
    :cond_2
    const-string v1, "Attempt to uninstall a language that isn\'t available"

    invoke-static {v1}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updateLanguagesData(Ljava/util/Map;)V
    .locals 13
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p1, updatedMetadata:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v12, 0x7

    const/4 v11, 0x1

    .line 331
    if-nez p1, :cond_1

    .line 332
    const-string v9, "LanguageKeyboardSDK"

    const-string v10, "updateLanguagesData contains no metadata"

    invoke-static {v9, v10}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    :cond_0
    :goto_0
    return-void

    .line 336
    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 337
    .local v8, updatedDownloadList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 338
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 339
    .local v2, lang:Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    .line 340
    .local v6, props:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v9, p0, Lcom/nuance/connect/language/KLLanguageService;->canceledDownloads:Ljava/util/Set;

    invoke-interface {v9, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 341
    const-string v9, "STEP"

    const/16 v10, 0x8

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 342
    :cond_3
    const-string v9, "STEP"

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 343
    const-string v9, "STEP"

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 344
    .local v7, step:I
    if-lez v7, :cond_4

    if-ge v7, v12, :cond_4

    .line 345
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    :cond_4
    const/4 v9, 0x2

    if-lt v7, v9, :cond_2

    if-ge v7, v12, :cond_2

    .line 349
    iget-object v9, p0, Lcom/nuance/connect/language/KLLanguageService;->languageMetadata:Ljava/util/HashMap;

    invoke-virtual {v9, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/HashMap;

    const-string v10, "STEP"

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 350
    .local v3, lastStep:I
    iget-object v9, p0, Lcom/nuance/connect/language/KLLanguageService;->languageMetadata:Ljava/util/HashMap;

    invoke-virtual {v9, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/nuance/connect/language/KLLanguageService;->downloadingCallbacks:Ljava/util/Map;

    invoke-interface {v9, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    if-eqz v3, :cond_5

    if-ne v3, v11, :cond_6

    .line 352
    :cond_5
    iget-object v9, p0, Lcom/nuance/connect/language/KLLanguageService;->downloadingCallbacks:Ljava/util/Map;

    invoke-interface {v9, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/nuance/connect/language/KLLanguageDLCallback;

    invoke-interface {v9}, Lcom/nuance/connect/language/KLLanguageDLCallback;->downloadStarted()V

    .line 356
    :cond_6
    const-string v9, "PROP_DOWNLOAD_PERCENT"

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 357
    .local v4, progress:Ljava/lang/String;
    if-eqz v4, :cond_7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 359
    .local v5, progressValue:I
    :goto_2
    iget-object v9, p0, Lcom/nuance/connect/language/KLLanguageService;->downloadingCallbacks:Ljava/util/Map;

    invoke-interface {v9, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 360
    iget-object v9, p0, Lcom/nuance/connect/language/KLLanguageService;->downloadingCallbacks:Ljava/util/Map;

    invoke-interface {v9, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/nuance/connect/language/KLLanguageDLCallback;

    invoke-interface {v9, v5}, Lcom/nuance/connect/language/KLLanguageDLCallback;->downloadPercentage(I)V

    goto/16 :goto_1

    .line 357
    .end local v5           #progressValue:I
    :cond_7
    const/4 v5, 0x0

    goto :goto_2

    .line 366
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v2           #lang:Ljava/lang/String;
    .end local v3           #lastStep:I
    .end local v4           #progress:Ljava/lang/String;
    .end local v6           #props:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7           #step:I
    :cond_8
    iget-object v9, p0, Lcom/nuance/connect/language/KLLanguageService;->languageMetadata:Ljava/util/HashMap;

    invoke-virtual {v9, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 368
    iget-boolean v9, p0, Lcom/nuance/connect/language/KLLanguageService;->languageListNotified:Z

    if-nez v9, :cond_0

    .line 369
    invoke-direct {p0}, Lcom/nuance/connect/language/KLLanguageService;->notifyCallbacksOfDownload()V

    .line 370
    iput-boolean v11, p0, Lcom/nuance/connect/language/KLLanguageService;->languageListNotified:Z

    goto/16 :goto_0
.end method


# virtual methods
.method public addExistingLanguage(Ljava/lang/Integer;[Ljava/lang/String;)V
    .locals 4
    .parameter "xt9LanguageId"
    .parameter "pathList"

    .prologue
    .line 589
    if-eqz p2, :cond_1

    .line 590
    array-length v3, p2

    new-array v2, v3, [Lcom/nuance/connect/language/KLLdbInfo;

    .line 592
    .local v2, ldbInfoList:[Lcom/nuance/connect/language/KLLdbInfo;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, p2

    if-ge v0, v3, :cond_0

    .line 593
    aget-object v3, p2, v0

    invoke-static {v3}, Lcom/nuance/connect/language/KLLdbInfo;->load(Ljava/lang/String;)Lcom/nuance/connect/language/KLLdbInfo;

    move-result-object v1

    .line 594
    .local v1, info:Lcom/nuance/connect/language/KLLdbInfo;
    aput-object v1, v2, v0

    .line 592
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 597
    .end local v1           #info:Lcom/nuance/connect/language/KLLdbInfo;
    :cond_0
    invoke-direct {p0, p1, v2}, Lcom/nuance/connect/language/KLLanguageService;->addSupportedLanguage(Ljava/lang/Integer;[Lcom/nuance/connect/language/KLLdbInfo;)V

    .line 599
    .end local v0           #i:I
    .end local v2           #ldbInfoList:[Lcom/nuance/connect/language/KLLdbInfo;
    :cond_1
    return-void
.end method

.method public addExistingLanguage(Ljava/lang/String;)V
    .locals 1
    .parameter "filePath"

    .prologue
    .line 488
    invoke-static {p1}, Lcom/nuance/connect/language/KLLdbInfo;->load(Ljava/lang/String;)Lcom/nuance/connect/language/KLLdbInfo;

    move-result-object v0

    .line 489
    .local v0, info:Lcom/nuance/connect/language/KLLdbInfo;
    invoke-direct {p0, v0}, Lcom/nuance/connect/language/KLLanguageService;->addSupportedLanguage(Lcom/nuance/connect/language/KLLdbInfo;)V

    .line 490
    return-void
.end method

.method public addSupportedLanguage(Ljava/lang/Integer;)V
    .locals 4
    .parameter "xt9LanguageId"

    .prologue
    const/4 v3, 0x0

    .line 420
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/nuance/connect/language/KLLanguageList;->findLanguageById(I)Ljava/lang/String;

    move-result-object v0

    .line 422
    .local v0, languageName:Ljava/lang/String;
    iget-object v1, p0, Lcom/nuance/connect/language/KLLanguageService;->supportedLangs:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 423
    iget-object v1, p0, Lcom/nuance/connect/language/KLLanguageService;->supportedLangs:Ljava/util/HashMap;

    const-string v2, ""

    invoke-direct {p0, p1, v3, v2, v3}, Lcom/nuance/connect/language/KLLanguageService;->generateSupportedHashMap(Ljava/lang/Integer;ZLjava/lang/String;Z)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    :cond_0
    return-void
.end method

.method public addSupportedLanguage(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 4
    .parameter "xt9LanguageId"
    .parameter "version"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/connect/language/KLException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 504
    iget-boolean v1, p0, Lcom/nuance/connect/language/KLLanguageService;->clientHandleVersioning:Z

    if-nez v1, :cond_0

    .line 505
    new-instance v1, Lcom/nuance/connect/language/KLException;

    const/16 v2, 0x6d

    invoke-direct {v1, v2}, Lcom/nuance/connect/language/KLException;-><init>(I)V

    throw v1

    .line 508
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/nuance/connect/language/KLLanguageList;->findLanguageById(I)Ljava/lang/String;

    move-result-object v0

    .line 511
    .local v0, languageName:Ljava/lang/String;
    iget-object v1, p0, Lcom/nuance/connect/language/KLLanguageService;->supportedLangs:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 512
    iget-object v1, p0, Lcom/nuance/connect/language/KLLanguageService;->supportedLangs:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "LANGUAGE_DL"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    :cond_1
    iget-object v1, p0, Lcom/nuance/connect/language/KLLanguageService;->supportedLangs:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v0}, Lcom/nuance/connect/language/KLLanguageService;->isPreinstalled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 516
    :cond_2
    iget-object v1, p0, Lcom/nuance/connect/language/KLLanguageService;->supportedLangs:Ljava/util/HashMap;

    invoke-direct {p0, p1, v3, p2, v3}, Lcom/nuance/connect/language/KLLanguageService;->generateSupportedHashMap(Ljava/lang/Integer;ZLjava/lang/String;Z)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    :cond_3
    :goto_0
    return-void

    .line 523
    :cond_4
    iget-object v1, p0, Lcom/nuance/connect/language/KLLanguageService;->supportedLangs:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "VERSION"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1, p2}, Lcom/nuance/connect/language/KLLanguageService;->isAvailableVersionNewer(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 524
    iget-object v1, p0, Lcom/nuance/connect/language/KLLanguageService;->supportedLangs:Ljava/util/HashMap;

    invoke-direct {p0, p1, v3, p2, v3}, Lcom/nuance/connect/language/KLLanguageService;->generateSupportedHashMap(Ljava/lang/Integer;ZLjava/lang/String;Z)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public cancelDownload(I)V
    .locals 4
    .parameter "xt9LanguageId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/connect/language/KLException;
        }
    .end annotation

    .prologue
    .line 944
    invoke-static {p1}, Lcom/nuance/connect/language/KLLanguageList;->findLanguageById(I)Ljava/lang/String;

    move-result-object v1

    .line 946
    .local v1, language:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/nuance/connect/language/KLLanguageService;->isSupported(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 947
    new-instance v2, Lcom/nuance/connect/language/KLException;

    const/16 v3, 0x6f

    invoke-direct {v2, v3}, Lcom/nuance/connect/language/KLException;-><init>(I)V

    throw v2

    .line 950
    :cond_0
    invoke-static {p1}, Lcom/nuance/connect/language/KLLanguageList;->findLanguageById(I)Ljava/lang/String;

    move-result-object v0

    .line 951
    .local v0, lang:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 952
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not resolve language id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    .line 956
    :goto_0
    return-void

    .line 955
    :cond_1
    invoke-direct {p0, v0}, Lcom/nuance/connect/language/KLLanguageService;->cancelDownload(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public downloadLanguage(ILcom/nuance/connect/language/KLLanguageDLCallback;)V
    .locals 4
    .parameter "xt9LanguageId"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/connect/language/KLException;
        }
    .end annotation

    .prologue
    .line 886
    invoke-static {p1}, Lcom/nuance/connect/language/KLLanguageList;->findLanguageById(I)Ljava/lang/String;

    move-result-object v0

    .line 887
    .local v0, language:Ljava/lang/String;
    const-string v1, "LanguageKeyboardSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "downloadLanguage id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " lang="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " callback="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    invoke-direct {p0, v0}, Lcom/nuance/connect/language/KLLanguageService;->isSupported(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 890
    new-instance v1, Lcom/nuance/connect/language/KLException;

    const/16 v2, 0x6f

    invoke-direct {v1, v2}, Lcom/nuance/connect/language/KLException;-><init>(I)V

    throw v1

    .line 893
    :cond_0
    iget-object v1, p0, Lcom/nuance/connect/language/KLLanguageService;->languageMetadata:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 894
    new-instance v1, Lcom/nuance/connect/language/KLException;

    const/16 v2, 0x6e

    invoke-direct {v1, v2}, Lcom/nuance/connect/language/KLException;-><init>(I)V

    throw v1

    .line 897
    :cond_1
    iget-object v1, p0, Lcom/nuance/connect/language/KLLanguageService;->canceledDownloads:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 898
    const-string v1, "LanguageKeyboardSDK"

    const-string v2, "Language currently being canceled, putting into queue once verified."

    invoke-static {v1, v2}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    iget-object v1, p0, Lcom/nuance/connect/language/KLLanguageService;->redownload:Ljava/util/Map;

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 905
    :goto_0
    return-void

    .line 903
    :cond_2
    iget-object v1, p0, Lcom/nuance/connect/language/KLLanguageService;->downloadingCallbacks:Ljava/util/Map;

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 904
    invoke-direct {p0, v0}, Lcom/nuance/connect/language/KLLanguageService;->installLanguage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getAvailableLanguages()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 822
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 823
    .local v0, availableLanguages:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v4, p0, Lcom/nuance/connect/language/KLLanguageService;->languageMetadata:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 824
    .local v3, lang:Ljava/lang/String;
    invoke-static {v3}, Lcom/nuance/connect/language/KLLanguageList;->findLanguageIdByName(Ljava/lang/String;)I

    move-result v2

    .line 825
    .local v2, id:I
    if-lez v2, :cond_0

    .line 826
    invoke-direct {p0, v3}, Lcom/nuance/connect/language/KLLanguageService;->isSupported(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0, v3}, Lcom/nuance/connect/language/KLLanguageService;->isPreinstalled(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-direct {p0, v3}, Lcom/nuance/connect/language/KLLanguageService;->isDownloaded(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 827
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 831
    .end local v2           #id:I
    .end local v3           #lang:Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method public getDownloadedLanguages()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 863
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 864
    .local v0, availableLanguages:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v4, p0, Lcom/nuance/connect/language/KLLanguageService;->languageMetadata:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 865
    .local v3, lang:Ljava/lang/String;
    invoke-static {v3}, Lcom/nuance/connect/language/KLLanguageList;->findLanguageIdByName(Ljava/lang/String;)I

    move-result v2

    .line 866
    .local v2, id:I
    if-lez v2, :cond_0

    invoke-direct {p0, v3}, Lcom/nuance/connect/language/KLLanguageService;->isSupported(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0, v3}, Lcom/nuance/connect/language/KLLanguageService;->isDownloaded(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 867
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 870
    .end local v2           #id:I
    .end local v3           #lang:Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method protected getHandlers()[Lcom/nuance/swype/connect/api/ConnectHandler;
    .locals 3

    .prologue
    .line 263
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/nuance/swype/connect/api/ConnectHandler;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nuance/connect/language/KLLanguageService;->languageHandler:Lcom/nuance/swype/connect/api/ConnectHandler;

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    const-string v0, "LANGUAGE"

    return-object v0
.end method

.method public getUpdatableLanguages()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 842
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 843
    .local v3, updateableLanguages:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v4, p0, Lcom/nuance/connect/language/KLLanguageService;->languageMetadata:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 844
    .local v2, lang:Ljava/lang/String;
    invoke-static {v2}, Lcom/nuance/connect/language/KLLanguageList;->findLanguageIdByName(Ljava/lang/String;)I

    move-result v1

    .line 845
    .local v1, id:I
    if-lez v1, :cond_1

    .line 846
    invoke-direct {p0, v2}, Lcom/nuance/connect/language/KLLanguageService;->isSupported(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0, v2}, Lcom/nuance/connect/language/KLLanguageService;->isUpdateAvailable(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 848
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 851
    :cond_1
    const-string v4, "LanguageKeyboardSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Language not found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 854
    .end local v1           #id:I
    .end local v2           #lang:Ljava/lang/String;
    :cond_2
    return-object v3
.end method

.method public isLanguageListAvailable()Z
    .locals 1

    .prologue
    .line 965
    iget-boolean v0, p0, Lcom/nuance/connect/language/KLLanguageService;->languageListNotified:Z

    return v0
.end method

.method public languageUninstalled(I)V
    .locals 4
    .parameter "xt9LanguageId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/connect/language/KLException;
        }
    .end annotation

    .prologue
    .line 920
    invoke-static {p1}, Lcom/nuance/connect/language/KLLanguageList;->findLanguageById(I)Ljava/lang/String;

    move-result-object v1

    .line 922
    .local v1, language:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/nuance/connect/language/KLLanguageService;->isSupported(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 923
    new-instance v2, Lcom/nuance/connect/language/KLException;

    const/16 v3, 0x6f

    invoke-direct {v2, v3}, Lcom/nuance/connect/language/KLException;-><init>(I)V

    throw v2

    .line 926
    :cond_0
    invoke-direct {p0, v1}, Lcom/nuance/connect/language/KLLanguageService;->removeLanguage(Ljava/lang/String;)V

    .line 927
    iget-object v2, p0, Lcom/nuance/connect/language/KLLanguageService;->downloadingCallbacks:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 928
    iget-object v2, p0, Lcom/nuance/connect/language/KLLanguageService;->downloadingCallbacks:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/language/KLLanguageDLCallback;

    .line 929
    .local v0, callback:Lcom/nuance/connect/language/KLLanguageDLCallback;
    iget-object v2, p0, Lcom/nuance/connect/language/KLLanguageService;->downloadingCallbacks:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 930
    const/4 v2, 0x3

    invoke-interface {v0, v2}, Lcom/nuance/connect/language/KLLanguageDLCallback;->downloadStopped(I)V

    .line 932
    .end local v0           #callback:Lcom/nuance/connect/language/KLLanguageDLCallback;
    :cond_1
    return-void
.end method

.method public registerCallback(Lcom/nuance/connect/language/KLLanguageCallback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 976
    iget-object v0, p0, Lcom/nuance/connect/language/KLLanguageService;->languageCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 977
    return-void
.end method

.method public removeSupportedLanguage(Ljava/lang/Integer;)V
    .locals 2
    .parameter "xt9LanguageId"

    .prologue
    .line 614
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/nuance/connect/language/KLLanguageList;->findLanguageById(I)Ljava/lang/String;

    move-result-object v0

    .line 616
    .local v0, languageName:Ljava/lang/String;
    iget-object v1, p0, Lcom/nuance/connect/language/KLLanguageService;->supportedLangs:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 617
    iget-object v1, p0, Lcom/nuance/connect/language/KLLanguageService;->supportedLangs:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    iget-object v1, p0, Lcom/nuance/connect/language/KLLanguageService;->downloadingCallbacks:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 621
    invoke-direct {p0, v0}, Lcom/nuance/connect/language/KLLanguageService;->cancelDownload(Ljava/lang/String;)V

    .line 626
    :cond_0
    return-void
.end method

.method public serviceActive()Z
    .locals 1

    .prologue
    .line 387
    invoke-virtual {p0}, Lcom/nuance/connect/language/KLLanguageService;->isLanguageListAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/language/KLLanguageService;->downloadingCallbacks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public specialVersioningSupport(Z)V
    .locals 0
    .parameter "versioning"

    .prologue
    .line 398
    iput-boolean p1, p0, Lcom/nuance/connect/language/KLLanguageService;->clientHandleVersioning:Z

    .line 399
    return-void
.end method

.method public specialVersioningSupportEnabled()Z
    .locals 1

    .prologue
    .line 406
    iget-boolean v0, p0, Lcom/nuance/connect/language/KLLanguageService;->clientHandleVersioning:Z

    return v0
.end method

.method public unregisterCallback(Lcom/nuance/connect/language/KLLanguageCallback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 988
    iget-object v0, p0, Lcom/nuance/connect/language/KLLanguageService;->languageCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 989
    return-void
.end method

.method public unregisterCallbacks()V
    .locals 1

    .prologue
    .line 995
    iget-object v0, p0, Lcom/nuance/connect/language/KLLanguageService;->languageCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 996
    return-void
.end method
