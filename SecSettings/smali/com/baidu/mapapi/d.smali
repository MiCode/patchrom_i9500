.class public Lcom/baidu/mapapi/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mapapi/d$a;
    }
.end annotation


# static fields
.field static a:Landroid/content/Context;

.field static b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/baidu/mapapi/u;",
            ">;>;"
        }
    .end annotation
.end field

.field public static c:Z

.field public static d:I

.field public static e:Z

.field public static f:B

.field public static g:Ljava/lang/String;

.field public static h:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/baidu/mapapi/d;->b:Ljava/util/HashMap;

    sput-boolean v1, Lcom/baidu/mapapi/d;->c:Z

    const/4 v0, 0x4

    sput v0, Lcom/baidu/mapapi/d;->d:I

    sput-boolean v1, Lcom/baidu/mapapi/d;->e:Z

    sput-byte v1, Lcom/baidu/mapapi/d;->f:B

    const-string v0, "10.0.0.200"

    sput-object v0, Lcom/baidu/mapapi/d;->g:Ljava/lang/String;

    const/16 v0, 0x50

    sput v0, Lcom/baidu/mapapi/d;->h:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-boolean v0, Lcom/baidu/mapapi/d;->c:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/baidu/mapapi/d;->a()V

    sget-boolean v0, Lcom/baidu/mapapi/d;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-boolean v0, Lcom/baidu/mapapi/d;->e:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x7

    const/16 v1, 0x2f

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-gez v2, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v0, ""

    :goto_1
    sget-byte v2, Lcom/baidu/mapapi/d;->f:B

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    new-instance v0, Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v2, Ljava/net/InetSocketAddress;

    sget-object v3, Lcom/baidu/mapapi/d;->g:Ljava/lang/String;

    const/16 v4, 0x50

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/baidu/mapapi/d;->g:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const-string v2, "X-Online-Host"

    invoke-virtual {v0, v2, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    goto :goto_0
.end method

.method public static a()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    sget-object v1, Lcom/baidu/mapapi/d;->a:Landroid/content/Context;

    if-eqz v1, :cond_0

    sget-object v0, Lcom/baidu/mapapi/d;->a:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    :cond_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/baidu/mapapi/d;->a(Landroid/net/NetworkInfo;Z)V

    :goto_0
    return-void

    :cond_1
    sput-boolean v2, Lcom/baidu/mapapi/d;->c:Z

    goto :goto_0

    :cond_2
    sput-boolean v2, Lcom/baidu/mapapi/d;->c:Z

    goto :goto_0
.end method

.method public static a(IILjava/lang/String;Lcom/baidu/mapapi/d$a;)V
    .locals 1

    if-eqz p2, :cond_0

    const-string v0, "http://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/baidu/mapapi/d$1;

    invoke-direct {v0, p2, p3, p0, p1}, Lcom/baidu/mapapi/d$1;-><init>(Ljava/lang/String;Lcom/baidu/mapapi/d$a;II)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method static a(Landroid/content/Context;)V
    .locals 0

    sput-object p0, Lcom/baidu/mapapi/d;->a:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/net/NetworkInfo;Z)V
    .locals 2

    const/4 v1, 0x1

    sput-boolean p1, Lcom/baidu/mapapi/d;->c:Z

    :try_start_0
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v1, :cond_1

    const/4 v0, 0x4

    sput v0, Lcom/baidu/mapapi/d;->d:I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/mapapi/d;->e:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    sput v0, Lcom/baidu/mapapi/d;->d:I

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/mapapi/d;->g:Ljava/lang/String;

    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v0

    sput v0, Lcom/baidu/mapapi/d;->h:I

    sget-object v0, Lcom/baidu/mapapi/d;->g:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v0, ""

    sget-object v1, Lcom/baidu/mapapi/d;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x2

    sput v0, Lcom/baidu/mapapi/d;->d:I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/baidu/mapapi/d;->e:Z

    const-string v0, "10.0.0.200"

    sget-object v1, Lcom/baidu/mapapi/d;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    sput-byte v0, Lcom/baidu/mapapi/d;->f:B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :try_start_1
    sput-byte v0, Lcom/baidu/mapapi/d;->f:B

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    sput v0, Lcom/baidu/mapapi/d;->d:I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/mapapi/d;->e:Z

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cmwap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "uniwap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "3gwap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    const/4 v0, 0x2

    sput v0, Lcom/baidu/mapapi/d;->d:I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/baidu/mapapi/d;->e:Z

    const/4 v0, 0x0

    sput-byte v0, Lcom/baidu/mapapi/d;->f:B

    const-string v0, "10.0.0.172"

    sput-object v0, Lcom/baidu/mapapi/d;->g:Ljava/lang/String;

    goto :goto_0

    :cond_6
    const-string v1, "ctwap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v0, 0x2

    sput v0, Lcom/baidu/mapapi/d;->d:I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/baidu/mapapi/d;->e:Z

    const/4 v0, 0x1

    sput-byte v0, Lcom/baidu/mapapi/d;->f:B

    const-string v0, "10.0.0.200"

    sput-object v0, Lcom/baidu/mapapi/d;->g:Ljava/lang/String;

    goto/16 :goto_0

    :cond_7
    const-string v1, "cmnet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "uninet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "ctnet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "3gnet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_8
    const/4 v0, 0x1

    sput v0, Lcom/baidu/mapapi/d;->d:I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/mapapi/d;->e:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
