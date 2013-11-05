.class Lcom/xiaomi/miui/pushads/sdk/trace/AdsSaltUtil;
.super Ljava/lang/Object;
.source "AdsSaltUtil.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getBytes(Ljava/lang/String;)[B
    .locals 2
    .parameter "s"

    .prologue
    .line 53
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 55
    :goto_0
    return-object v1

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    goto :goto_0
.end method

.method public static getKeyFromParams(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter
    .parameter "publishId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v6, Lcom/xiaomi/miui/pushads/sdk/trace/AdsSaltUtil$1;

    invoke-direct {v6}, Lcom/xiaomi/miui/pushads/sdk/trace/AdsSaltUtil$1;-><init>()V

    invoke-static {p0, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 34
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .local v3, keyBuilder:Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 36
    .local v1, isFirst:Z
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/http/NameValuePair;

    .line 37
    .local v5, nvp:Lorg/apache/http/NameValuePair;
    if-nez v1, :cond_0

    .line 38
    const-string v6, "&"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    :cond_0
    invoke-interface {v5}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v5}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    const/4 v1, 0x0

    goto :goto_0

    .line 44
    .end local v5           #nvp:Lorg/apache/http/NameValuePair;
    :cond_1
    const-string v6, "&"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 47
    .local v2, key:Ljava/lang/String;
    invoke-static {v2}, Lcom/xiaomi/miui/pushads/sdk/trace/AdsSaltUtil;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 48
    .local v4, keyBytes:[B
    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x2

    invoke-static {v4, v7}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    invoke-static {v6}, Lcom/xiaomi/miui/pushads/sdk/trace/AdsSaltUtil;->getMd5Digest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static getMd5Digest(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "pInput"

    .prologue
    .line 60
    if-nez p0, :cond_0

    const-string v3, ""

    .line 66
    :goto_0
    return-object v3

    .line 63
    :cond_0
    :try_start_0
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 64
    .local v0, lDigest:Ljava/security/MessageDigest;
    invoke-static {p0}, Lcom/xiaomi/miui/pushads/sdk/trace/AdsSaltUtil;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 65
    new-instance v2, Ljava/math/BigInteger;

    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 66
    .local v2, lHashInt:Ljava/math/BigInteger;
    const-string v3, "%1$032X"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 67
    .end local v0           #lDigest:Ljava/security/MessageDigest;
    .end local v2           #lHashInt:Ljava/math/BigInteger;
    :catch_0
    move-exception v1

    .line 68
    .local v1, lException:Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static show(Ljava/lang/String;)V
    .locals 0
    .parameter "info"

    .prologue
    .line 75
    return-void
.end method
