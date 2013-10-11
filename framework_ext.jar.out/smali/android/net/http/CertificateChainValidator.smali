.class public Landroid/net/http/CertificateChainValidator;
.super Ljava/lang/Object;
.source "CertificateChainValidator.java"


# static fields
.field private static final sInstance:Landroid/net/http/CertificateChainValidator;

.field private static final sVerifier:Ljavax/net/ssl/DefaultHostnameVerifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Landroid/net/http/CertificateChainValidator;

    invoke-direct {v0}, Landroid/net/http/CertificateChainValidator;-><init>()V

    sput-object v0, Landroid/net/http/CertificateChainValidator;->sInstance:Landroid/net/http/CertificateChainValidator;

    .line 53
    new-instance v0, Ljavax/net/ssl/DefaultHostnameVerifier;

    invoke-direct {v0}, Ljavax/net/ssl/DefaultHostnameVerifier;-><init>()V

    sput-object v0, Landroid/net/http/CertificateChainValidator;->sVerifier:Ljavax/net/ssl/DefaultHostnameVerifier;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private closeSocketThrowException(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V
    .locals 2
    .parameter "socket"
    .parameter "errorMessage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 230
    if-eqz p1, :cond_1

    .line 231
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    .line 232
    .local v0, session:Ljavax/net/ssl/SSLSession;
    if-eqz v0, :cond_0

    .line 233
    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->invalidate()V

    .line 236
    :cond_0
    invoke-virtual {p1}, Ljava/net/Socket;->close()V

    .line 239
    .end local v0           #session:Ljavax/net/ssl/SSLSession;
    :cond_1
    new-instance v1, Ljavax/net/ssl/SSLHandshakeException;

    invoke-direct {v1, p2}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private closeSocketThrowException(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "socket"
    .parameter "errorMessage"
    .parameter "defaultErrorMessage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 220
    if-eqz p2, :cond_0

    .end local p2
    :goto_0
    invoke-direct {p0, p1, p2}, Landroid/net/http/CertificateChainValidator;->closeSocketThrowException(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    .line 222
    return-void

    .restart local p2
    :cond_0
    move-object p2, p3

    .line 220
    goto :goto_0
.end method

.method public static getInstance()Landroid/net/http/CertificateChainValidator;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Landroid/net/http/CertificateChainValidator;->sInstance:Landroid/net/http/CertificateChainValidator;

    return-object v0
.end method

.method public static handleTrustStorageUpdate()V
    .locals 4

    .prologue
    .line 139
    :try_start_0
    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getDefaultTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v2

    .line 140
    .local v2, x509TrustManager:Ljavax/net/ssl/X509TrustManager;
    instance-of v3, v2, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;

    if-eqz v3, :cond_0

    .line 141
    move-object v0, v2

    check-cast v0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;

    move-object v1, v0

    .line 142
    .local v1, trustManager:Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;
    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->handleTrustStorageUpdate()V
    :try_end_0
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    .end local v1           #trustManager:Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;
    :cond_0
    :goto_0
    return-void

    .line 144
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static verifyServerCertificates([[BLjava/lang/String;Ljava/lang/String;)Landroid/net/http/SslError;
    .locals 4
    .parameter "certChain"
    .parameter "domain"
    .parameter "authType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    if-eqz p0, :cond_0

    array-length v2, p0

    if-nez v2, :cond_1

    .line 121
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "bad certificate chain"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 124
    :cond_1
    array-length v2, p0

    new-array v1, v2, [Ljava/security/cert/X509Certificate;

    .line 126
    .local v1, serverCertificates:[Ljava/security/cert/X509Certificate;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 127
    new-instance v2, Lorg/apache/harmony/security/provider/cert/X509CertImpl;

    aget-object v3, p0, v0

    invoke-direct {v2, v3}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;-><init>([B)V

    aput-object v2, v1, v0

    .line 126
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 130
    :cond_2
    invoke-static {v1, p1, p2}, Landroid/net/http/CertificateChainValidator;->verifyServerDomainAndCertificates([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Landroid/net/http/SslError;

    move-result-object v2

    return-object v2
.end method

.method private static verifyServerDomainAndCertificates([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Landroid/net/http/SslError;
    .locals 11
    .parameter "chain"
    .parameter "domain"
    .parameter "authType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 160
    aget-object v2, p0, v6

    .line 161
    .local v2, currCertificate:Ljava/security/cert/X509Certificate;
    if-nez v2, :cond_0

    .line 162
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "certificate for this site is null"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 165
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1

    sget-object v9, Landroid/net/http/CertificateChainValidator;->sVerifier:Ljavax/net/ssl/DefaultHostnameVerifier;

    invoke-virtual {v9, p1, v2}, Ljavax/net/ssl/DefaultHostnameVerifier;->verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v6, 0x1

    .line 168
    .local v6, valid:Z
    :cond_1
    if-nez v6, :cond_2

    .line 172
    new-instance v8, Landroid/net/http/SslError;

    const/4 v9, 0x2

    invoke-direct {v8, v9, v2}, Landroid/net/http/SslError;-><init>(ILjava/security/cert/X509Certificate;)V

    .line 212
    :goto_0
    return-object v8

    .line 176
    :cond_2
    :try_start_0
    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getDefaultTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v7

    .line 177
    .local v7, x509TrustManager:Ljavax/net/ssl/X509TrustManager;
    instance-of v9, v7, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;

    if-eqz v9, :cond_3

    .line 178
    move-object v0, v7

    check-cast v0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;

    move-object v5, v0

    .line 179
    .local v5, trustManager:Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;
    invoke-virtual {v5, p0, p2, p1}, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 184
    .end local v5           #trustManager:Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;
    .end local v7           #x509TrustManager:Ljavax/net/ssl/X509TrustManager;
    :catch_0
    move-exception v3

    .line 186
    .local v3, e:Ljava/security/GeneralSecurityException;
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getCertificatePolicy()Landroid/sec/enterprise/certificate/CertificatePolicy;

    move-result-object v1

    .line 188
    .local v1, certPolicy:Landroid/sec/enterprise/certificate/CertificatePolicy;
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 189
    .local v4, errorMessage:Ljava/lang/String;
    if-eqz v4, :cond_6

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/sec/enterprise/certificate/CertificatePolicy;->isRevocationCheckEnabled()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 190
    const-string v9, "Certificate revocation after"

    invoke-virtual {v4, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 191
    const/16 v9, -0xce

    new-instance v10, Landroid/net/http/SslCertificate;

    invoke-direct {v10, v2}, Landroid/net/http/SslCertificate;-><init>(Ljava/security/cert/X509Certificate;)V

    invoke-static {v9, v10, v8}, Landroid/net/http/SslError;->SslErrorFromChromiumErrorCode(ILandroid/net/http/SslCertificate;Ljava/lang/String;)Landroid/net/http/SslError;

    move-result-object v8

    goto :goto_0

    .line 181
    .end local v1           #certPolicy:Landroid/sec/enterprise/certificate/CertificatePolicy;
    .end local v3           #e:Ljava/security/GeneralSecurityException;
    .end local v4           #errorMessage:Ljava/lang/String;
    .restart local v7       #x509TrustManager:Ljavax/net/ssl/X509TrustManager;
    :cond_3
    :try_start_1
    invoke-interface {v7, p0, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 194
    .end local v7           #x509TrustManager:Ljavax/net/ssl/X509TrustManager;
    .restart local v1       #certPolicy:Landroid/sec/enterprise/certificate/CertificatePolicy;
    .restart local v3       #e:Ljava/security/GeneralSecurityException;
    .restart local v4       #errorMessage:Ljava/lang/String;
    :cond_4
    const-string v9, "OCSP check failed!"

    invoke-virtual {v4, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "Certificate status could not be determined."

    invoke-virtual {v4, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "CRL distribution point extension could not be read"

    invoke-virtual {v4, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "No additional CRL locations could be decoded from CRL distribution point extension."

    invoke-virtual {v4, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "Distribution points could not be read."

    invoke-virtual {v4, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "No valid CRL found."

    invoke-virtual {v4, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 202
    :cond_5
    const/16 v9, -0xcd

    new-instance v10, Landroid/net/http/SslCertificate;

    invoke-direct {v10, v2}, Landroid/net/http/SslCertificate;-><init>(Ljava/security/cert/X509Certificate;)V

    invoke-static {v9, v10, v8}, Landroid/net/http/SslError;->SslErrorFromChromiumErrorCode(ILandroid/net/http/SslCertificate;Ljava/lang/String;)Landroid/net/http/SslError;

    move-result-object v8

    goto :goto_0

    .line 212
    :cond_6
    new-instance v8, Landroid/net/http/SslError;

    const/4 v9, 0x3

    invoke-direct {v8, v9, v2}, Landroid/net/http/SslError;-><init>(ILjava/security/cert/X509Certificate;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public doHandshakeAndValidateServerCertificates(Landroid/net/http/HttpsConnection;Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)Landroid/net/http/SslError;
    .locals 5
    .parameter "connection"
    .parameter "sslSocket"
    .parameter "domain"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 83
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    .line 84
    .local v1, sslSession:Ljavax/net/ssl/SSLSession;
    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->isValid()Z

    move-result v2

    if-nez v2, :cond_0

    .line 85
    const-string v2, "failed to perform SSL handshake"

    invoke-direct {p0, p2, v2}, Landroid/net/http/CertificateChainValidator;->closeSocketThrowException(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    .line 89
    :cond_0
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v2

    invoke-interface {v2}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    .line 92
    .local v0, peerCertificates:[Ljava/security/cert/Certificate;
    if-eqz v0, :cond_1

    array-length v2, v0

    if-nez v2, :cond_3

    .line 93
    :cond_1
    const-string v2, "failed to retrieve peer certificates"

    invoke-direct {p0, p2, v2}, Landroid/net/http/CertificateChainValidator;->closeSocketThrowException(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    .line 105
    :cond_2
    :goto_0
    check-cast v0, [Ljava/security/cert/X509Certificate;

    .end local v0           #peerCertificates:[Ljava/security/cert/Certificate;
    check-cast v0, [Ljava/security/cert/X509Certificate;

    const-string v2, "RSA"

    invoke-static {v0, p3, v2}, Landroid/net/http/CertificateChainValidator;->verifyServerDomainAndCertificates([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Landroid/net/http/SslError;

    move-result-object v2

    return-object v2

    .line 97
    .restart local v0       #peerCertificates:[Ljava/security/cert/Certificate;
    :cond_3
    if-eqz p1, :cond_2

    .line 98
    aget-object v2, v0, v4

    if-eqz v2, :cond_2

    .line 99
    new-instance v3, Landroid/net/http/SslCertificate;

    aget-object v2, v0, v4

    check-cast v2, Ljava/security/cert/X509Certificate;

    invoke-direct {v3, v2}, Landroid/net/http/SslCertificate;-><init>(Ljava/security/cert/X509Certificate;)V

    invoke-virtual {p1, v3}, Landroid/net/http/HttpsConnection;->setCertificate(Landroid/net/http/SslCertificate;)V

    goto :goto_0
.end method
