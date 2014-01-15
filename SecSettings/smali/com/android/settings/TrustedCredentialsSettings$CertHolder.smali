.class Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;
.super Ljava/lang/Object;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/TrustedCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CertHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAdapter:Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapter;

.field private final mAlias:Ljava/lang/String;

.field private mDeleted:Z

.field private final mSslCert:Landroid/net/http/SslCertificate;

.field private final mStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

.field private final mSubjectPrimary:Ljava/lang/String;

.field private final mSubjectSecondary:Ljava/lang/String;

.field private final mTab:Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;

.field private final mX509Cert:Ljava/security/cert/X509Certificate;


# direct methods
.method private constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapter;Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;Ljava/lang/String;Ljava/security/cert/X509Certificate;)V
    .locals 6
    .parameter "store"
    .parameter "adapter"
    .parameter "tab"
    .parameter "alias"
    .parameter "x509Cert"

    .prologue
    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    iput-object p1, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->mStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    .line 294
    iput-object p2, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->mAdapter:Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapter;

    .line 295
    iput-object p3, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->mTab:Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;

    .line 296
    iput-object p4, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->mAlias:Ljava/lang/String;

    .line 297
    iput-object p5, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->mX509Cert:Ljava/security/cert/X509Certificate;

    .line 299
    new-instance v3, Landroid/net/http/SslCertificate;

    invoke-direct {v3, p5}, Landroid/net/http/SslCertificate;-><init>(Ljava/security/cert/X509Certificate;)V

    iput-object v3, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->mSslCert:Landroid/net/http/SslCertificate;

    .line 301
    iget-object v3, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->mSslCert:Landroid/net/http/SslCertificate;

    invoke-virtual {v3}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/http/SslCertificate$DName;->getCName()Ljava/lang/String;

    move-result-object v0

    .line 302
    .local v0, cn:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->mSslCert:Landroid/net/http/SslCertificate;

    invoke-virtual {v3}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/http/SslCertificate$DName;->getOName()Ljava/lang/String;

    move-result-object v1

    .line 303
    .local v1, o:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->mSslCert:Landroid/net/http/SslCertificate;

    invoke-virtual {v3}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/http/SslCertificate$DName;->getUName()Ljava/lang/String;

    move-result-object v2

    .line 307
    .local v2, ou:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 308
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 309
    iput-object v1, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->mSubjectPrimary:Ljava/lang/String;

    .line 310
    iput-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->mSubjectSecondary:Ljava/lang/String;

    .line 324
    :goto_0
    iget-object v3, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->mTab:Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;

    iget-object v4, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->mStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    iget-object v5, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->mAlias:Ljava/lang/String;

    #calls: Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;->deleted(Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;Ljava/lang/String;)Z
    invoke-static {v3, v4, v5}, Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;->access$2500(Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->mDeleted:Z

    .line 325
    return-void

    .line 312
    :cond_0
    iput-object v1, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->mSubjectPrimary:Ljava/lang/String;

    .line 313
    iput-object v2, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->mSubjectSecondary:Ljava/lang/String;

    goto :goto_0

    .line 316
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 317
    iput-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->mSubjectPrimary:Ljava/lang/String;

    .line 318
    const-string v3, ""

    iput-object v3, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->mSubjectSecondary:Ljava/lang/String;

    goto :goto_0

    .line 320
    :cond_2
    iget-object v3, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->mSslCert:Landroid/net/http/SslCertificate;

    invoke-virtual {v3}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/http/SslCertificate$DName;->getDName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->mSubjectPrimary:Ljava/lang/String;

    .line 321
    const-string v3, ""

    iput-object v3, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->mSubjectSecondary:Ljava/lang/String;

    goto :goto_0
.end method

.method synthetic constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapter;Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;Ljava/lang/String;Ljava/security/cert/X509Certificate;Lcom/android/settings_ex/TrustedCredentialsSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 276
    invoke-direct/range {p0 .. p5}, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;-><init>(Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapter;Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;Ljava/lang/String;Ljava/security/cert/X509Certificate;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 276
    iget-boolean v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->mDeleted:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 276
    iput-boolean p1, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->mDeleted:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;)Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;
    .locals 1
    .parameter "x0"

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->mTab:Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->mSubjectPrimary:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->mSubjectSecondary:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;)Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->mAdapter:Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapter;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;)Landroid/net/http/SslCertificate;
    .locals 1
    .parameter "x0"

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->mSslCert:Landroid/net/http/SslCertificate;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->mAlias:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;)Ljava/security/cert/X509Certificate;
    .locals 1
    .parameter "x0"

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->mX509Cert:Ljava/security/cert/X509Certificate;

    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;)I
    .locals 3
    .parameter "o"

    .prologue
    .line 327
    iget-object v1, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->mSubjectPrimary:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->mSubjectPrimary:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    .line 328
    .local v0, primary:I
    if-eqz v0, :cond_0

    .line 331
    .end local v0           #primary:I
    :goto_0
    return v0

    .restart local v0       #primary:I
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->mSubjectSecondary:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->mSubjectSecondary:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 276
    check-cast p1, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->compareTo(Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "o"

    .prologue
    .line 334
    instance-of v1, p1, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;

    if-nez v1, :cond_0

    .line 335
    const/4 v1, 0x0

    .line 338
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 337
    check-cast v0, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;

    .line 338
    .local v0, other:Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;
    iget-object v1, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->mAlias:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->mAlias:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->mAlias:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
