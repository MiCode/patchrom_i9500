.class public Lorg/jivesoftware/smack/BOSHConfiguration;
.super Lorg/jivesoftware/smack/ConnectionConfiguration;


# instance fields
.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Lcom/xiaomi/network/Fallback;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLcom/xiaomi/network/Fallback;ILjava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/HttpRequestProxy;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p3, p5, p6}, Lorg/jivesoftware/smack/ConnectionConfiguration;-><init>(Ljava/util/Map;ILjava/lang/String;Lorg/jivesoftware/smack/HttpRequestProxy;)V

    iput-object v0, p0, Lorg/jivesoftware/smack/BOSHConfiguration;->d:Lcom/xiaomi/network/Fallback;

    const-string v0, "mibind.chat.gslb.mi-idc.com"

    iput-object v0, p0, Lorg/jivesoftware/smack/BOSHConfiguration;->e:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/BOSHConfiguration;->a(Z)V

    iput-object p2, p0, Lorg/jivesoftware/smack/BOSHConfiguration;->d:Lcom/xiaomi/network/Fallback;

    iput-boolean p1, p0, Lorg/jivesoftware/smack/BOSHConfiguration;->b:Z

    if-eqz p4, :cond_0

    :goto_0
    iput-object p4, p0, Lorg/jivesoftware/smack/BOSHConfiguration;->c:Ljava/lang/String;

    return-void

    :cond_0
    const-string p4, "/"

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/xiaomi/network/Fallback;)V
    .locals 2

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/jivesoftware/smack/BOSHConfiguration;->d:Lcom/xiaomi/network/Fallback;

    const-string v0, "mibind.chat.gslb.mi-idc.com"

    iput-object v0, p0, Lorg/jivesoftware/smack/BOSHConfiguration;->e:Ljava/lang/String;

    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConfiguration;->d:Lcom/xiaomi/network/Fallback;

    invoke-virtual {v0}, Lcom/xiaomi/network/Fallback;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConfiguration;->d:Lcom/xiaomi/network/Fallback;

    invoke-virtual {v0}, Lcom/xiaomi/network/Fallback;->c()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v0, p0, Lorg/jivesoftware/smack/BOSHConfiguration;->e:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 2

    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConfiguration;->a:Lorg/jivesoftware/smack/proxy/ProxyInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConfiguration;->a:Lorg/jivesoftware/smack/proxy/ProxyInfo;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/proxy/ProxyInfo;->b()Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;

    move-result-object v0

    sget-object v1, Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;->a:Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConfiguration;->a:Lorg/jivesoftware/smack/proxy/ProxyInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConfiguration;->a:Lorg/jivesoftware/smack/proxy/ProxyInfo;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/proxy/ProxyInfo;->c()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConfiguration;->a:Lorg/jivesoftware/smack/proxy/ProxyInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConfiguration;->a:Lorg/jivesoftware/smack/proxy/ProxyInfo;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/proxy/ProxyInfo;->d()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x1f90

    goto :goto_0
.end method

.method public d()Lcom/xiaomi/network/Fallback;
    .locals 1

    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConfiguration;->d:Lcom/xiaomi/network/Fallback;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConfiguration;->e:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/net/URI;
    .locals 3

    const/16 v2, 0x2f

    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConfiguration;->c:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jivesoftware/smack/BOSHConfiguration;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smack/BOSHConfiguration;->c:Ljava/lang/String;

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v0, p0, Lorg/jivesoftware/smack/BOSHConfiguration;->b:Z

    if-eqz v0, :cond_1

    const-string v0, "https://"

    :goto_0
    new-instance v2, Ljava/net/URI;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jivesoftware/smack/BOSHConfiguration;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jivesoftware/smack/BOSHConfiguration;->j()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jivesoftware/smack/BOSHConfiguration;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    return-object v2

    :cond_1
    const-string v0, "http://"

    goto :goto_0
.end method
