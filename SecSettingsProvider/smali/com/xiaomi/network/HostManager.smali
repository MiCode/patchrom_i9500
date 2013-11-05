.class public Lcom/xiaomi/network/HostManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/network/HostManager$HostManagerFactory;,
        Lcom/xiaomi/network/HostManager$HttpGet;
    }
.end annotation


# static fields
.field private static factory:Lcom/xiaomi/network/HostManager$HostManagerFactory;

.field private static hostLoaded:Z

.field private static mReservedHosts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/xiaomi/network/HostManager;


# instance fields
.field private final MAX_REQUEST_FAILURE_CNT:J

.field private currentISP:Ljava/lang/String;

.field private lastRemoteRequestTimestamp:J

.field protected mHostsMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/xiaomi/network/Fallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private remoteRequestFailureCount:J

.field private sAppContext:Landroid/content/Context;

.field private sHostFilter:Lcom/xiaomi/network/HostFilter;

.field private sHttpGetter:Lcom/xiaomi/network/HostManager$HttpGet;

.field private sUserId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaomi/network/HostManager;->mReservedHosts:Ljava/util/Map;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaomi/network/HostManager;->hostLoaded:Z

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/xiaomi/network/HostFilter;Lcom/xiaomi/network/HostManager$HttpGet;Ljava/lang/String;)V
    .locals 4

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/network/HostManager;->mHostsMapping:Ljava/util/Map;

    const-string v0, "0"

    iput-object v0, p0, Lcom/xiaomi/network/HostManager;->sUserId:Ljava/lang/String;

    iput-wide v2, p0, Lcom/xiaomi/network/HostManager;->remoteRequestFailureCount:J

    const-wide/16 v0, 0xf

    iput-wide v0, p0, Lcom/xiaomi/network/HostManager;->MAX_REQUEST_FAILURE_CNT:J

    iput-wide v2, p0, Lcom/xiaomi/network/HostManager;->lastRemoteRequestTimestamp:J

    const-string v0, "isp_prov_city_country_ip"

    iput-object v0, p0, Lcom/xiaomi/network/HostManager;->currentISP:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/network/HostManager;->sAppContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/xiaomi/network/HostManager;->sHttpGetter:Lcom/xiaomi/network/HostManager$HttpGet;

    if-nez p2, :cond_0

    new-instance v0, Lcom/xiaomi/network/b;

    invoke-direct {v0, p0}, Lcom/xiaomi/network/b;-><init>(Lcom/xiaomi/network/HostManager;)V

    iput-object v0, p0, Lcom/xiaomi/network/HostManager;->sHostFilter:Lcom/xiaomi/network/HostFilter;

    :goto_0
    iput-object p4, p0, Lcom/xiaomi/network/HostManager;->sUserId:Ljava/lang/String;

    return-void

    :cond_0
    iput-object p2, p0, Lcom/xiaomi/network/HostManager;->sHostFilter:Lcom/xiaomi/network/HostFilter;

    goto :goto_0
.end method

.method static synthetic access$000()Lcom/xiaomi/network/HostManager;
    .locals 1

    sget-object v0, Lcom/xiaomi/network/HostManager;->sInstance:Lcom/xiaomi/network/HostManager;

    return-object v0
.end method

.method public static addReservedHost(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/xiaomi/network/HostManager;->mReservedHosts:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/xiaomi/network/HostManager;->mReservedHosts:Ljava/util/Map;

    monitor-enter v1

    if-nez v0, :cond_1

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/xiaomi/network/HostManager;->mReservedHosts:Ljava/util/Map;

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private fromJSON(Ljava/lang/String;)V
    .locals 6

    iget-object v1, p0, Lcom/xiaomi/network/HostManager;->mHostsMapping:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/network/HostManager;->mHostsMapping:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    new-instance v3, Lcom/xiaomi/network/Fallbacks;

    invoke-direct {v3}, Lcom/xiaomi/network/Fallbacks;-><init>()V

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaomi/network/Fallbacks;->fromJSON(Lorg/json/JSONObject;)Lcom/xiaomi/network/Fallbacks;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaomi/network/HostManager;->mHostsMapping:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/xiaomi/network/Fallbacks;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getInstance()Lcom/xiaomi/network/HostManager;
    .locals 2

    const-class v0, Lcom/xiaomi/network/HostManager;

    monitor-enter v0

    :try_start_0
    sget-object v0, Lcom/xiaomi/network/HostManager;->sInstance:Lcom/xiaomi/network/HostManager;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "the host manager is not initialized yet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    const-class v1, Lcom/xiaomi/network/HostManager;

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/xiaomi/network/HostManager;->sInstance:Lcom/xiaomi/network/HostManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-class v1, Lcom/xiaomi/network/HostManager;

    monitor-exit v1

    return-object v0
.end method

.method private getLocalFallback(Ljava/lang/String;)Lcom/xiaomi/network/Fallback;
    .locals 2

    iget-object v1, p0, Lcom/xiaomi/network/HostManager;->mHostsMapping:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/network/HostManager;->checkHostMapping()Z

    iget-object v0, p0, Lcom/xiaomi/network/HostManager;->mHostsMapping:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/network/Fallbacks;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/network/Fallbacks;->getFallback()Lcom/xiaomi/network/Fallback;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPackageName()Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/network/HostManager;->sAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/network/HostManager;->sAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x4000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method private getRemoteFallbackJSON(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "type"

    invoke-direct {v2, v3, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "uuid"

    iget-object v4, p0, Lcom/xiaomi/network/HostManager;->sUserId:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "list"

    const-string v4, ","

    invoke-static {p1, v4}, Lcom/xiaomi/network/HostManager;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "resolver.gslb.mi-idc.com"

    invoke-direct {p0, v2}, Lcom/xiaomi/network/HostManager;->getLocalFallback(Ljava/lang/String;)Lcom/xiaomi/network/Fallback;

    move-result-object v2

    const-string v3, "http://%1$s/gslb/gslb/getbucket.asp?ver=3.0"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "resolver.gslb.mi-idc.com"

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_1

    :cond_0
    invoke-virtual {v2, v3}, Lcom/xiaomi/network/Fallback;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/network/HostManager;->sHttpGetter:Lcom/xiaomi/network/HostManager$HttpGet;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/network/HostManager;->sAppContext:Landroid/content/Context;

    new-instance v1, Ljava/net/URL;

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/xiaomi/network/Network;->a(Landroid/content/Context;Ljava/net/URL;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/network/HostManager;->sHttpGetter:Lcom/xiaomi/network/HostManager$HttpGet;

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xiaomi/network/HostManager$HttpGet;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public static init(Landroid/content/Context;Lcom/xiaomi/network/HostFilter;Lcom/xiaomi/network/HostManager$HttpGet;Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/xiaomi/network/HostManager;

    monitor-enter v0

    :try_start_0
    sget-object v0, Lcom/xiaomi/network/HostManager;->sInstance:Lcom/xiaomi/network/HostManager;

    if-nez v0, :cond_1

    sget-object v0, Lcom/xiaomi/network/HostManager;->factory:Lcom/xiaomi/network/HostManager$HostManagerFactory;

    if-nez v0, :cond_2

    new-instance v0, Lcom/xiaomi/network/HostManager;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/xiaomi/network/HostManager;-><init>(Landroid/content/Context;Lcom/xiaomi/network/HostFilter;Lcom/xiaomi/network/HostManager$HttpGet;Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/network/HostManager;->sInstance:Lcom/xiaomi/network/HostManager;

    :goto_0
    sget-object v0, Lcom/xiaomi/network/HostManager;->sInstance:Lcom/xiaomi/network/HostManager;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/xiaomi/network/UploadHostStatHelper;->a()Lcom/xiaomi/network/UploadHostStatHelper;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/xiaomi/network/UploadHostStatHelper;->a(Landroid/content/Context;)V

    :cond_0
    invoke-static {}, Lcom/xiaomi/network/UploadHostStatHelper;->a()Lcom/xiaomi/network/UploadHostStatHelper;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/network/a;

    invoke-direct {v1}, Lcom/xiaomi/network/a;-><init>()V

    invoke-virtual {v0, v1}, Lcom/xiaomi/network/UploadHostStatHelper;->a(Lcom/xiaomi/network/UploadHostStatHelper$HttpRecordCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    const-class v0, Lcom/xiaomi/network/HostManager;

    monitor-exit v0

    return-void

    :cond_2
    :try_start_1
    sget-object v0, Lcom/xiaomi/network/HostManager;->factory:Lcom/xiaomi/network/HostManager$HostManagerFactory;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/xiaomi/network/HostManager$HostManagerFactory;->a(Landroid/content/Context;Lcom/xiaomi/network/HostFilter;Lcom/xiaomi/network/HostManager$HttpGet;Ljava/lang/String;)Lcom/xiaomi/network/HostManager;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/network/HostManager;->sInstance:Lcom/xiaomi/network/HostManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-class v1, Lcom/xiaomi/network/HostManager;

    monitor-exit v1

    throw v0
.end method

.method public static join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static join([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    aget-object v0, p0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private processNetwork(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "unknown"

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    const-string v0, "WIFI"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "WIFI"

    goto :goto_0
.end method

.method private requestRemoteFallback(Ljava/lang/String;)Lcom/xiaomi/network/Fallback;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v0}, Lcom/xiaomi/network/HostManager;->requestRemoteFallbacks(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/network/Fallback;

    return-object v0
.end method

.method private requestRemoteFallbacks(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xiaomi/network/Fallback;",
            ">;"
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/network/HostManager;->purge()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xiaomi/network/HostManager;->mHostsMapping:Ljava/util/Map;

    monitor-enter v3

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/network/HostManager;->checkHostMapping()Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xiaomi/network/HostManager;->mHostsMapping:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object v3, Lcom/xiaomi/network/HostManager;->mReservedHosts:Ljava/util/Map;

    monitor-enter v3

    :try_start_2
    sget-object v2, Lcom/xiaomi/network/HostManager;->mReservedHosts:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    :cond_3
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const-string v2, "resolver.gslb.mi-idc.com"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "resolver.gslb.mi-idc.com"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    const/4 v3, 0x0

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/network/HostManager;->isWIFIConnected()Z
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-result v2

    if-eqz v2, :cond_e

    const-string v2, "wifi"

    :goto_3
    :try_start_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/network/HostManager;->getRemoteFallbackJSON(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "OK"

    const-string v6, "S"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v3, "R"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v3, "province"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "city"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v3, "isp"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v3, "ip"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v3, "country"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    const/4 v2, 0x0

    move v3, v2

    :goto_4
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_b

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    new-instance v13, Lcom/xiaomi/network/Fallback;

    invoke-direct {v13, v2}, Lcom/xiaomi/network/Fallback;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_5
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v2, v14, :cond_7

    invoke-virtual {v12, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_6

    new-instance v15, Lcom/xiaomi/network/WeightedHost;

    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v16

    sub-int v16, v16, v2

    move/from16 v0, v16

    invoke-direct {v15, v14, v0}, Lcom/xiaomi/network/WeightedHost;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v13, v15}, Lcom/xiaomi/network/Fallback;->a(Lcom/xiaomi/network/WeightedHost;)V

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_7
    invoke-virtual {v5, v3, v13}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iput-object v10, v13, Lcom/xiaomi/network/Fallback;->g:Ljava/lang/String;

    iput-object v6, v13, Lcom/xiaomi/network/Fallback;->c:Ljava/lang/String;

    iput-object v8, v13, Lcom/xiaomi/network/Fallback;->e:Ljava/lang/String;

    iput-object v9, v13, Lcom/xiaomi/network/Fallback;->f:Ljava/lang/String;

    iput-object v7, v13, Lcom/xiaomi/network/Fallback;->d:Ljava/lang/String;

    const-string v2, "stat-percent"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "stat-percent"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Lcom/xiaomi/network/Fallback;->a(D)V

    :cond_8
    const-string v2, "stat-domain"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "stat-domain"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/xiaomi/network/Fallback;->c(Ljava/lang/String;)V

    :cond_9
    const-string v2, "ttl"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-wide/16 v14, 0x3e8

    const-string v2, "ttl"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v0, v2

    move-wide/from16 v16, v0

    mul-long v14, v14, v16

    invoke-virtual {v13, v14, v15}, Lcom/xiaomi/network/Fallback;->a(J)V

    :cond_a
    invoke-virtual {v13}, Lcom/xiaomi/network/Fallback;->d()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/xiaomi/network/HostManager;->setCurrentISP(Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto/16 :goto_4

    :catch_0
    move-exception v2

    const-string v3, "com.xiaomi.network"

    const-string v4, "failed to get bucket"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_b
    :goto_6
    const/4 v2, 0x0

    move v4, v2

    :goto_7
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v4, v2, :cond_d

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/network/Fallback;

    if-eqz v2, :cond_c

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/xiaomi/network/HostManager;->updateFallbacks(Ljava/lang/String;Lcom/xiaomi/network/Fallback;)V

    :cond_c
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_7

    :catch_1
    move-exception v2

    const-string v3, "com.xiaomi.network"

    const-string v4, "failed to get bucket"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/network/HostManager;->persist()V

    return-object v5

    :cond_e
    const-string v2, "wap"

    goto/16 :goto_3
.end method

.method private toJSON()Lorg/json/JSONArray;
    .locals 4

    iget-object v1, p0, Lcom/xiaomi/network/HostManager;->mHostsMapping:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    iget-object v0, p0, Lcom/xiaomi/network/HostManager;->mHostsMapping:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/network/Fallbacks;

    invoke-virtual {v0}, Lcom/xiaomi/network/Fallbacks;->toJSON()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v2
.end method


# virtual methods
.method protected checkHostMapping()Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/xiaomi/network/HostManager;->mHostsMapping:Ljava/util/Map;

    monitor-enter v3

    :try_start_0
    sget-boolean v2, Lcom/xiaomi/network/HostManager;->hostLoaded:Z

    if-nez v2, :cond_6

    const/4 v2, 0x1

    sput-boolean v2, Lcom/xiaomi/network/HostManager;->hostLoaded:Z

    iget-object v2, p0, Lcom/xiaomi/network/HostManager;->mHostsMapping:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v4, Ljava/io/File;

    iget-object v2, p0, Lcom/xiaomi/network/HostManager;->sAppContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaomi/network/HostManager;->getProcessName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_8

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v1, :cond_0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    :cond_0
    :goto_2
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_1
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-direct {p0, v1}, Lcom/xiaomi/network/HostManager;->fromJSON(Ljava/lang/String;)V

    const-string v1, "HostManager"

    const-string v4, "loading the new hosts succeed"

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    if-eqz v2, :cond_2

    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    :cond_2
    :goto_4
    :try_start_8
    monitor-exit v3

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v0

    :cond_3
    move-object v2, v1

    :cond_4
    if-eqz v2, :cond_0

    :try_start_9
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v1, v2

    :goto_5
    :try_start_a
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    if-eqz v1, :cond_0

    :try_start_b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v1, v2

    :goto_6
    if-eqz v1, :cond_5

    :try_start_c
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    :cond_5
    :goto_7
    :try_start_d
    throw v0

    :cond_6
    monitor-exit v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_4

    :catch_5
    move-exception v0

    goto :goto_2

    :catch_6
    move-exception v1

    goto :goto_7

    :catch_7
    move-exception v0

    goto :goto_1

    :catchall_2
    move-exception v0

    goto :goto_6

    :catchall_3
    move-exception v0

    goto :goto_6

    :catch_8
    move-exception v0

    goto :goto_5
.end method

.method public generateHostStats()Ljava/util/ArrayList;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xiaomi/a/a/a/a/b;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/xiaomi/network/HostManager;->mHostsMapping:Ljava/util/Map;

    monitor-enter v9

    :try_start_0
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xiaomi/network/HostManager;->mHostsMapping:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xiaomi/network/HostManager;->mHostsMapping:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/network/Fallbacks;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/xiaomi/network/Fallbacks;->getFallbacks()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_1
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/network/Fallback;

    invoke-virtual {v2}, Lcom/xiaomi/network/Fallback;->d()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v10, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaomi/a/a/a/a/b;

    if-nez v3, :cond_a

    new-instance v3, Lcom/xiaomi/a/a/a/a/b;

    invoke-direct {v3}, Lcom/xiaomi/a/a/a/a/b;-><init>()V

    const-string v4, "httpapi"

    invoke-virtual {v3, v4}, Lcom/xiaomi/a/a/a/a/b;->a(Ljava/lang/String;)Lcom/xiaomi/a/a/a/a/b;

    iget-object v4, v2, Lcom/xiaomi/network/Fallback;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/xiaomi/a/a/a/a/b;->e(Ljava/lang/String;)Lcom/xiaomi/a/a/a/a/b;

    iget-object v4, v2, Lcom/xiaomi/network/Fallback;->a:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/xiaomi/network/HostManager;->processNetwork(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaomi/a/a/a/a/b;->d(Ljava/lang/String;)Lcom/xiaomi/a/a/a/a/b;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xiaomi/network/HostManager;->sUserId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/xiaomi/a/a/a/a/b;->b(Ljava/lang/String;)Lcom/xiaomi/a/a/a/a/b;

    invoke-direct/range {p0 .. p0}, Lcom/xiaomi/network/HostManager;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaomi/a/a/a/a/b;->c(Ljava/lang/String;)Lcom/xiaomi/a/a/a/a/b;

    new-instance v4, Lcom/xiaomi/a/a/a/a/e;

    invoke-direct {v4}, Lcom/xiaomi/a/a/a/a/e;-><init>()V

    iget-object v5, v2, Lcom/xiaomi/network/Fallback;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/xiaomi/a/a/a/a/e;->c(Ljava/lang/String;)Lcom/xiaomi/a/a/a/a/e;

    iget-object v5, v2, Lcom/xiaomi/network/Fallback;->g:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/xiaomi/a/a/a/a/e;->a(Ljava/lang/String;)Lcom/xiaomi/a/a/a/a/e;

    iget-object v5, v2, Lcom/xiaomi/network/Fallback;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/xiaomi/a/a/a/a/e;->b(Ljava/lang/String;)Lcom/xiaomi/a/a/a/a/e;

    iget-object v5, v2, Lcom/xiaomi/network/Fallback;->e:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/xiaomi/a/a/a/a/e;->d(Ljava/lang/String;)Lcom/xiaomi/a/a/a/a/e;

    invoke-virtual {v3, v4}, Lcom/xiaomi/a/a/a/a/b;->a(Lcom/xiaomi/a/a/a/a/e;)Lcom/xiaomi/a/a/a/a/b;

    invoke-virtual {v2}, Lcom/xiaomi/network/Fallback;->d()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v10, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v8, v3

    :goto_1
    new-instance v13, Lcom/xiaomi/a/a/a/a/a;

    invoke-direct {v13}, Lcom/xiaomi/a/a/a/a/a;-><init>()V

    iget-object v3, v2, Lcom/xiaomi/network/Fallback;->b:Ljava/lang/String;

    invoke-virtual {v13, v3}, Lcom/xiaomi/a/a/a/a/a;->a(Ljava/lang/String;)Lcom/xiaomi/a/a/a/a/a;

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Lcom/xiaomi/network/Fallback;->e()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_2
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/network/WeightedHost;

    invoke-virtual {v2}, Lcom/xiaomi/network/WeightedHost;->a()Ljava/util/ArrayList;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v17, Lcom/xiaomi/a/a/a/a/d;

    invoke-direct/range {v17 .. v17}, Lcom/xiaomi/a/a/a/a/d;-><init>()V

    iget-object v2, v2, Lcom/xiaomi/network/WeightedHost;->a:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/xiaomi/a/a/a/a/d;->a(Ljava/lang/String;)Lcom/xiaomi/a/a/a/a/d;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/network/AccessHistory;

    invoke-virtual {v2}, Lcom/xiaomi/network/AccessHistory;->a()I

    move-result v19

    if-lez v19, :cond_3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2}, Lcom/xiaomi/network/AccessHistory;->b()J

    move-result-wide v19

    add-long v5, v5, v19

    int-to-long v0, v7

    move-wide/from16 v19, v0

    invoke-virtual {v2}, Lcom/xiaomi/network/AccessHistory;->d()J

    move-result-wide v21

    add-long v19, v19, v21

    move-wide/from16 v0, v19

    long-to-int v2, v0

    move/from16 v23, v3

    move v3, v4

    move-wide/from16 v24, v5

    move-wide/from16 v4, v24

    move v6, v2

    move/from16 v2, v23

    :goto_4
    move v7, v6

    move-wide/from16 v23, v4

    move-wide/from16 v5, v23

    move v4, v3

    move v3, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Lcom/xiaomi/network/AccessHistory;->e()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-interface/range {v18 .. v19}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface/range {v18 .. v19}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    :goto_5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v2, v4, 0x1

    move/from16 v23, v3

    move v3, v2

    move/from16 v2, v23

    move-wide/from16 v24, v5

    move-wide/from16 v4, v24

    move v6, v7

    goto :goto_4

    :cond_5
    invoke-virtual/range {v17 .. v18}, Lcom/xiaomi/a/a/a/a/d;->a(Ljava/util/Map;)Lcom/xiaomi/a/a/a/a/d;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/xiaomi/a/a/a/a/d;->b(I)Lcom/xiaomi/a/a/a/a/d;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/xiaomi/a/a/a/a/d;->a(I)Lcom/xiaomi/a/a/a/a/d;

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v6}, Lcom/xiaomi/a/a/a/a/d;->a(J)Lcom/xiaomi/a/a/a/a/d;

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lcom/xiaomi/a/a/a/a/d;->c(I)Lcom/xiaomi/a/a/a/a/d;

    move-object/from16 v0, v17

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :catchall_0
    move-exception v2

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_6
    :try_start_1
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v13, v14}, Lcom/xiaomi/a/a/a/a/a;->a(Ljava/util/List;)Lcom/xiaomi/a/a/a/a/a;

    invoke-virtual {v8, v13}, Lcom/xiaomi/a/a/a/a/b;->a(Lcom/xiaomi/a/a/a/a/a;)V

    goto/16 :goto_0

    :cond_7
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/a/a/a/a/b;

    invoke-virtual {v2}, Lcom/xiaomi/a/a/a/a/b;->g()I

    move-result v5

    if-lez v5, :cond_8

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_9
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v3

    :cond_a
    move-object v8, v3

    goto/16 :goto_1

    :cond_b
    const/4 v2, 0x1

    goto :goto_5
.end method

.method public getActiveNetworkLabel()Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/xiaomi/network/HostManager;->sAppContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget-object v0, p0, Lcom/xiaomi/network/HostManager;->sAppContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WIFI-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public getFallbacksByHost(Ljava/lang/String;)Lcom/xiaomi/network/Fallback;
    .locals 10

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the host is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/network/HostManager;->sHostFilter:Lcom/xiaomi/network/HostFilter;

    invoke-interface {v0, p1}, Lcom/xiaomi/network/HostFilter;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v1

    :cond_1
    move-object v1, v0

    :goto_0
    return-object v1

    :cond_2
    invoke-direct {p0, p1}, Lcom/xiaomi/network/HostManager;->getLocalFallback(Ljava/lang/String;)Lcom/xiaomi/network/Fallback;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/xiaomi/network/HostManager;->lastRemoteRequestTimestamp:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    const-wide/16 v6, 0x3c

    iget-wide v8, p0, Lcom/xiaomi/network/HostManager;->remoteRequestFailureCount:J

    mul-long/2addr v6, v8

    mul-long/2addr v4, v6

    cmp-long v0, v2, v4

    if-lez v0, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xiaomi/network/HostManager;->lastRemoteRequestTimestamp:J

    invoke-direct {p0, p1}, Lcom/xiaomi/network/HostManager;->requestRemoteFallback(Ljava/lang/String;)Lcom/xiaomi/network/Fallback;

    move-result-object v0

    if-eqz v0, :cond_3

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/xiaomi/network/HostManager;->remoteRequestFailureCount:J

    move-object v1, v0

    goto :goto_0

    :cond_3
    iget-wide v2, p0, Lcom/xiaomi/network/HostManager;->remoteRequestFailureCount:J

    const-wide/16 v4, 0xf

    cmp-long v0, v2, v4

    if-gez v0, :cond_4

    const-wide/16 v2, 0x1

    iget-wide v4, p0, Lcom/xiaomi/network/HostManager;->remoteRequestFailureCount:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/xiaomi/network/HostManager;->remoteRequestFailureCount:J

    :cond_4
    sget-object v0, Lcom/xiaomi/network/HostManager;->mReservedHosts:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    sget-object v2, Lcom/xiaomi/network/HostManager;->mReservedHosts:Ljava/util/Map;

    monitor-enter v2

    if-eqz v0, :cond_6

    :try_start_0
    new-instance v1, Lcom/xiaomi/network/Fallback;

    invoke-direct {v1, p1}, Lcom/xiaomi/network/Fallback;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/xiaomi/network/Fallback;->b(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_5
    :try_start_1
    monitor-exit v2

    goto :goto_0

    :cond_6
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method protected getProcessName()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/network/HostManager;->sAppContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v2, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    if-ne v2, v3, :cond_0

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_1
    const-string v0, "com.xiaomi"

    goto :goto_0
.end method

.method public isWIFIConnected()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/xiaomi/network/HostManager;->sAppContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v1, v0, :cond_2

    move v0, v1

    :goto_1
    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public persist()V
    .locals 6

    invoke-virtual {p0}, Lcom/xiaomi/network/HostManager;->purge()V

    iget-object v1, p0, Lcom/xiaomi/network/HostManager;->mHostsMapping:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    iget-object v3, p0, Lcom/xiaomi/network/HostManager;->sAppContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/xiaomi/network/HostManager;->getProcessName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-direct {p0}, Lcom/xiaomi/network/HostManager;->toJSON()Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_1
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public purge()V
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/xiaomi/network/HostManager;->mHostsMapping:Ljava/util/Map;

    monitor-enter v3

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/network/HostManager;->mHostsMapping:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/network/Fallbacks;

    invoke-virtual {v0}, Lcom/xiaomi/network/Fallbacks;->purge()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    move v0, v2

    :goto_1
    if-nez v0, :cond_2

    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/network/HostManager;->mHostsMapping:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/network/HostManager;->mHostsMapping:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/network/Fallbacks;

    invoke-virtual {v1}, Lcom/xiaomi/network/Fallbacks;->getFallbacks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/xiaomi/network/HostManager;->mHostsMapping:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v2

    goto :goto_1

    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public setCurrentISP(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/network/HostManager;->currentISP:Ljava/lang/String;

    return-void
.end method

.method public updateFallbacks(Ljava/lang/String;Lcom/xiaomi/network/Fallback;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the argument is invalid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/network/HostManager;->sHostFilter:Lcom/xiaomi/network/HostFilter;

    invoke-interface {v0, p1}, Lcom/xiaomi/network/HostFilter;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/xiaomi/network/HostManager;->mHostsMapping:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/network/HostManager;->checkHostMapping()Z

    iget-object v0, p0, Lcom/xiaomi/network/HostManager;->mHostsMapping:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaomi/network/HostManager;->mHostsMapping:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/network/Fallbacks;

    invoke-virtual {v0, p2}, Lcom/xiaomi/network/Fallbacks;->addFallback(Lcom/xiaomi/network/Fallback;)V

    :goto_0
    monitor-exit v1

    :cond_2
    return-void

    :cond_3
    new-instance v0, Lcom/xiaomi/network/Fallbacks;

    invoke-direct {v0, p1}, Lcom/xiaomi/network/Fallbacks;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/xiaomi/network/Fallbacks;->addFallback(Lcom/xiaomi/network/Fallback;)V

    iget-object v2, p0, Lcom/xiaomi/network/HostManager;->mHostsMapping:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
