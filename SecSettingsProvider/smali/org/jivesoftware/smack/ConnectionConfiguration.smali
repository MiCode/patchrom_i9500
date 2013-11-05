.class public Lorg/jivesoftware/smack/ConnectionConfiguration;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;
    }
.end annotation


# instance fields
.field private A:Lorg/jivesoftware/smack/HttpRequestProxy;

.field protected a:Lorg/jivesoftware/smack/proxy/ProxyInfo;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Ljava/lang/String;

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Ljavax/net/SocketFactory;

.field private w:Ljava/lang/String;

.field private x:Z

.field private y:Z

.field private z:Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;


# direct methods
.method public constructor <init>(Ljava/util/Map;ILjava/lang/String;Lorg/jivesoftware/smack/HttpRequestProxy;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;I",
            "Ljava/lang/String;",
            "Lorg/jivesoftware/smack/HttpRequestProxy;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->k:Z

    iput-boolean v1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->l:Z

    iput-boolean v1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->m:Z

    iput-boolean v1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->n:Z

    iput-boolean v1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->o:Z

    iput-boolean v1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->p:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->q:Ljava/lang/String;

    iput-boolean v1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->r:Z

    iput-boolean v2, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->s:Z

    sget-boolean v0, Lorg/jivesoftware/smack/Connection;->c:Z

    iput-boolean v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->t:Z

    iput-boolean v2, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->u:Z

    iput-boolean v2, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->x:Z

    iput-boolean v2, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->y:Z

    sget-object v0, Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;->b:Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;

    iput-object v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->z:Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;

    invoke-static {}, Lorg/jivesoftware/smack/proxy/ProxyInfo;->a()Lorg/jivesoftware/smack/proxy/ProxyInfo;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/jivesoftware/smack/ConnectionConfiguration;->a(Ljava/util/Map;ILjava/lang/String;Lorg/jivesoftware/smack/proxy/ProxyInfo;Lorg/jivesoftware/smack/HttpRequestProxy;)V

    return-void
.end method

.method private a(Ljava/util/Map;ILjava/lang/String;Lorg/jivesoftware/smack/proxy/ProxyInfo;Lorg/jivesoftware/smack/HttpRequestProxy;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;I",
            "Ljava/lang/String;",
            "Lorg/jivesoftware/smack/proxy/ProxyInfo;",
            "Lorg/jivesoftware/smack/HttpRequestProxy;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lorg/jivesoftware/smack/ConnectionConfiguration;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->c:Ljava/lang/String;

    iput p2, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->d:I

    iput-object p3, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->b:Ljava/lang/String;

    iput-object p4, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->a:Lorg/jivesoftware/smack/proxy/ProxyInfo;

    iput-object p5, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->A:Lorg/jivesoftware/smack/HttpRequestProxy;

    const-string v0, "java.home"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "lib"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "security"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "cacerts"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->e:Ljava/lang/String;

    const-string v0, "jks"

    iput-object v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->f:Ljava/lang/String;

    const-string v0, "changeit"

    iput-object v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->g:Ljava/lang/String;

    const-string v0, "javax.net.ssl.keyStore"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->h:Ljava/lang/String;

    const-string v0, "jks"

    iput-object v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->i:Ljava/lang/String;

    const-string v0, "pkcs11.config"

    iput-object v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->j:Ljava/lang/String;

    invoke-virtual {p4}, Lorg/jivesoftware/smack/proxy/ProxyInfo;->g()Ljavax/net/SocketFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->v:Ljavax/net/SocketFactory;

    return-void
.end method

.method public static final g()Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcom/xiaomi/channel/commonutils/a/a;->e:Z

    if-eqz v0, :cond_0

    const-string v0, "10.237.12.2"

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/xiaomi/channel/commonutils/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "sandbox.xmpush.xiaomi.com"

    goto :goto_0

    :cond_1
    sget-boolean v0, Lcom/xiaomi/channel/commonutils/a/a;->b:Z

    if-eqz v0, :cond_2

    const-string v0, "58.68.235.106"

    goto :goto_0

    :cond_2
    const-string v0, "app.chat.xiaomi.net"

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->b:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;JLjava/lang/Exception;)V
    .locals 8

    invoke-virtual {p0}, Lorg/jivesoftware/smack/ConnectionConfiguration;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/network/HostManager;->getInstance()Lcom/xiaomi/network/HostManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/network/HostManager;->getFallbacksByHost(Ljava/lang/String;)Lcom/xiaomi/network/Fallback;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, -0x2

    const-wide/16 v5, 0x0

    move-object v1, p1

    move-wide v3, p2

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/xiaomi/network/Fallback;->a(Ljava/lang/String;IJJLjava/lang/Exception;)V

    invoke-static {}, Lcom/xiaomi/network/HostManager;->getInstance()Lcom/xiaomi/network/HostManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/network/HostManager;->persist()V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->s:Z

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->w:Ljava/lang/String;

    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->t:Z

    return-void
.end method

.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->y:Z

    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->b:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->w:Ljava/lang/String;

    return-object v0
.end method

.method public j()I
    .locals 1

    iget v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->d:I

    return v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->c:Ljava/lang/String;

    return-object v0
.end method

.method public l()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration;->t:Z

    return v0
.end method
