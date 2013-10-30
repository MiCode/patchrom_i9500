.class public Lcom/touchtype_fluency/service/util/UrlManager;
.super Ljava/lang/Object;
.source "UrlManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = null

.field private static final apiVersion:Ljava/lang/String; = "8"

.field private static final deleteApiVersion:Ljava/lang/String; = "1"


# instance fields
.field private mEstablishedUrl:Ljava/lang/String;

.field private final mInstallationId:Ljava/lang/String;

.field mKeyManager:Lcom/touchtype/personalizer/PersonalizationKeyManager;

.field private final mServicePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/touchtype_fluency/service/util/UrlManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/touchtype_fluency/service/util/UrlManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .parameter "installationId"
    .parameter "servicePath"
    .parameter "context"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/touchtype_fluency/service/util/UrlManager;->mEstablishedUrl:Ljava/lang/String;

    .line 44
    invoke-static {p3}, Lcom/touchtype/personalizer/PersonalizationKeyManager;->getInstance(Landroid/content/Context;)Lcom/touchtype/personalizer/PersonalizationKeyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/touchtype_fluency/service/util/UrlManager;->mKeyManager:Lcom/touchtype/personalizer/PersonalizationKeyManager;

    .line 51
    iput-object p1, p0, Lcom/touchtype_fluency/service/util/UrlManager;->mInstallationId:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lcom/touchtype_fluency/service/util/UrlManager;->mServicePath:Ljava/lang/String;

    .line 54
    return-void
.end method

.method private makeFullDeleteUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "baseUrl"

    .prologue
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/v/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/touchtype_fluency/service/util/UrlManager;->mKeyManager:Lcom/touchtype/personalizer/PersonalizationKeyManager;

    invoke-virtual {v1}, Lcom/touchtype/personalizer/PersonalizationKeyManager;->getPartnerTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/touchtype_fluency/service/util/UrlManager;->mInstallationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private makeFullUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "baseUrl"

    .prologue
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/v/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "8"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/touchtype_fluency/service/util/UrlManager;->mKeyManager:Lcom/touchtype/personalizer/PersonalizationKeyManager;

    invoke-virtual {v1}, Lcom/touchtype/personalizer/PersonalizationKeyManager;->getPartnerTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/touchtype_fluency/service/util/UrlManager;->mInstallationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/touchtype_fluency/service/util/UrlManager;->mServicePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDeleteUrlString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/touchtype_fluency/service/util/UrlManager;->mKeyManager:Lcom/touchtype/personalizer/PersonalizationKeyManager;

    invoke-virtual {v0}, Lcom/touchtype/personalizer/PersonalizationKeyManager;->getDeleteLoadBalanceUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/touchtype_fluency/service/util/UrlManager;->makeFullDeleteUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEstablishedUrl()Ljava/net/URL;
    .locals 6

    .prologue
    .line 81
    const/4 v1, 0x0

    .line 83
    .local v1, url:Ljava/net/URL;
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-virtual {p0}, Lcom/touchtype_fluency/service/util/UrlManager;->getEstablishedUrlString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #url:Ljava/net/URL;
    .local v2, url:Ljava/net/URL;
    move-object v1, v2

    .line 88
    .end local v2           #url:Ljava/net/URL;
    .restart local v1       #url:Ljava/net/URL;
    :goto_0
    return-object v1

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, e:Ljava/net/MalformedURLException;
    sget-object v3, Lcom/touchtype_fluency/service/util/UrlManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error formatting URL "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/touchtype_fluency/service/util/UrlManager;->getEstablishedUrlString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getEstablishedUrlString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 71
    iget-object v1, p0, Lcom/touchtype_fluency/service/util/UrlManager;->mEstablishedUrl:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/touchtype_fluency/service/util/UrlManager;->mEstablishedUrl:Ljava/lang/String;

    .line 73
    .local v0, baseUrl:Ljava/lang/String;
    :goto_0
    invoke-direct {p0, v0}, Lcom/touchtype_fluency/service/util/UrlManager;->makeFullUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 71
    .end local v0           #baseUrl:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/touchtype_fluency/service/util/UrlManager;->mKeyManager:Lcom/touchtype/personalizer/PersonalizationKeyManager;

    invoke-virtual {v1}, Lcom/touchtype/personalizer/PersonalizationKeyManager;->getLoadBalanceUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getGUID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/touchtype_fluency/service/util/UrlManager;->mKeyManager:Lcom/touchtype/personalizer/PersonalizationKeyManager;

    invoke-virtual {v1}, Lcom/touchtype/personalizer/PersonalizationKeyManager;->getPartnerTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/touchtype_fluency/service/util/UrlManager;->mInstallationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInitialUrl()Ljava/net/URL;
    .locals 6

    .prologue
    .line 100
    const/4 v1, 0x0

    .line 102
    .local v1, url:Ljava/net/URL;
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-virtual {p0}, Lcom/touchtype_fluency/service/util/UrlManager;->getInitialUrlString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #url:Ljava/net/URL;
    .local v2, url:Ljava/net/URL;
    move-object v1, v2

    .line 107
    .end local v2           #url:Ljava/net/URL;
    .restart local v1       #url:Ljava/net/URL;
    :goto_0
    return-object v1

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, e:Ljava/net/MalformedURLException;
    sget-object v3, Lcom/touchtype_fluency/service/util/UrlManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error formatting URL "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/touchtype_fluency/service/util/UrlManager;->getEstablishedUrlString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getInitialUrlString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/touchtype_fluency/service/util/UrlManager;->mKeyManager:Lcom/touchtype/personalizer/PersonalizationKeyManager;

    invoke-virtual {v0}, Lcom/touchtype/personalizer/PersonalizationKeyManager;->getLoadBalanceUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/touchtype_fluency/service/util/UrlManager;->makeFullUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setEstablishedUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/touchtype_fluency/service/util/UrlManager;->mEstablishedUrl:Ljava/lang/String;

    .line 58
    return-void
.end method
