.class public Lorg/jivesoftware/smack/proxy/ProxyInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jivesoftware/smack/proxy/ProxyInfo;->e:Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;

    iput-object p2, p0, Lorg/jivesoftware/smack/proxy/ProxyInfo;->a:Ljava/lang/String;

    iput p3, p0, Lorg/jivesoftware/smack/proxy/ProxyInfo;->b:I

    iput-object p4, p0, Lorg/jivesoftware/smack/proxy/ProxyInfo;->c:Ljava/lang/String;

    iput-object p5, p0, Lorg/jivesoftware/smack/proxy/ProxyInfo;->d:Ljava/lang/String;

    return-void
.end method

.method public static a()Lorg/jivesoftware/smack/proxy/ProxyInfo;
    .locals 6

    const/4 v2, 0x0

    new-instance v0, Lorg/jivesoftware/smack/proxy/ProxyInfo;

    sget-object v1, Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;->a:Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;

    const/4 v3, 0x0

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lorg/jivesoftware/smack/proxy/ProxyInfo;-><init>(Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public b()Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;
    .locals 1

    iget-object v0, p0, Lorg/jivesoftware/smack/proxy/ProxyInfo;->e:Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jivesoftware/smack/proxy/ProxyInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lorg/jivesoftware/smack/proxy/ProxyInfo;->b:I

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jivesoftware/smack/proxy/ProxyInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jivesoftware/smack/proxy/ProxyInfo;->d:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljavax/net/SocketFactory;
    .locals 2

    iget-object v0, p0, Lorg/jivesoftware/smack/proxy/ProxyInfo;->e:Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;

    sget-object v1, Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;->a:Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;

    if-ne v0, v1, :cond_0

    new-instance v0, Lorg/jivesoftware/smack/proxy/a;

    invoke-direct {v0}, Lorg/jivesoftware/smack/proxy/a;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/proxy/ProxyInfo;->e:Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;

    sget-object v1, Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;->b:Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;

    if-ne v0, v1, :cond_1

    new-instance v0, Lorg/jivesoftware/smack/proxy/HTTPProxySocketFactory;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/proxy/HTTPProxySocketFactory;-><init>(Lorg/jivesoftware/smack/proxy/ProxyInfo;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/jivesoftware/smack/proxy/ProxyInfo;->e:Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;

    sget-object v1, Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;->c:Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;

    if-ne v0, v1, :cond_2

    new-instance v0, Lorg/jivesoftware/smack/proxy/Socks4ProxySocketFactory;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/proxy/Socks4ProxySocketFactory;-><init>(Lorg/jivesoftware/smack/proxy/ProxyInfo;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/jivesoftware/smack/proxy/ProxyInfo;->e:Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;

    sget-object v1, Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;->d:Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;

    if-ne v0, v1, :cond_3

    new-instance v0, Lorg/jivesoftware/smack/proxy/Socks5ProxySocketFactory;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/proxy/Socks5ProxySocketFactory;-><init>(Lorg/jivesoftware/smack/proxy/ProxyInfo;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
