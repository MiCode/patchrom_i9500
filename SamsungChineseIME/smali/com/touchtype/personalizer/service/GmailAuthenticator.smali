.class public Lcom/touchtype/personalizer/service/GmailAuthenticator;
.super Ljava/lang/Object;
.source "GmailAuthenticator.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private consumer:Loauth/signpost/OAuthConsumer;

.field private mResources:Landroid/content/res/Resources;

.field private provider:Loauth/signpost/OAuthProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/touchtype/personalizer/service/GmailAuthenticator;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/touchtype/personalizer/service/GmailAuthenticator;->$assertionsDisabled:Z

    .line 20
    const-class v0, Lcom/touchtype/personalizer/service/GmailAuthenticator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/touchtype/personalizer/service/GmailAuthenticator;->TAG:Ljava/lang/String;

    return-void

    .line 18
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/touchtype/personalizer/service/GmailAuthenticator;->mResources:Landroid/content/res/Resources;

    .line 26
    new-instance v1, Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

    const-string v2, "samsung-keyboard.touchtype-fluency.com"

    const-string v3, "O10aBp4Hy1uZ3jMrMqr0TgpW"

    invoke-direct {v1, v2, v3}, Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/touchtype/personalizer/service/GmailAuthenticator;->consumer:Loauth/signpost/OAuthConsumer;

    .line 30
    :try_start_0
    new-instance v1, Loauth/signpost/commonshttp/CommonsHttpOAuthProvider;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/touchtype/personalizer/service/GmailAuthenticator;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0b0007

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/touchtype/personalizer/service/GmailAuthenticator;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0b000a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "utf-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/touchtype/personalizer/service/GmailAuthenticator;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0b0008

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/touchtype/personalizer/service/GmailAuthenticator;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0b0009

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Loauth/signpost/commonshttp/CommonsHttpOAuthProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/touchtype/personalizer/service/GmailAuthenticator;->provider:Loauth/signpost/OAuthProvider;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :cond_0
    sget-object v1, Lcom/touchtype/personalizer/service/GmailAuthenticator;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Gmail Authenticator: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/touchtype/personalizer/service/GmailAuthenticator;->provider:Loauth/signpost/OAuthProvider;

    invoke-interface {v3}, Loauth/signpost/OAuthProvider;->getAccessTokenEndpointUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/touchtype/personalizer/service/GmailAuthenticator;->provider:Loauth/signpost/OAuthProvider;

    invoke-interface {v3}, Loauth/signpost/OAuthProvider;->getRequestTokenEndpointUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/touchtype/personalizer/service/GmailAuthenticator;->provider:Loauth/signpost/OAuthProvider;

    invoke-interface {v3}, Loauth/signpost/OAuthProvider;->getAuthorizationWebsiteUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/touchtype_fluency/service/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-void

    .line 38
    :catch_0
    move-exception v0

    .line 39
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    sget-boolean v1, Lcom/touchtype/personalizer/service/GmailAuthenticator;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method


# virtual methods
.method public getAccessToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "verificationCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Loauth/signpost/exception/OAuthException;
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/touchtype/personalizer/service/GmailAuthenticator;->provider:Loauth/signpost/OAuthProvider;

    iget-object v1, p0, Lcom/touchtype/personalizer/service/GmailAuthenticator;->consumer:Loauth/signpost/OAuthConsumer;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v1, p1, v2}, Loauth/signpost/OAuthProvider;->retrieveAccessToken(Loauth/signpost/OAuthConsumer;Ljava/lang/String;[Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/touchtype/personalizer/service/GmailAuthenticator;->consumer:Loauth/signpost/OAuthConsumer;

    invoke-interface {v0}, Loauth/signpost/OAuthConsumer;->getToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAuthUrl()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Loauth/signpost/exception/OAuthException;
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/touchtype/personalizer/service/GmailAuthenticator;->provider:Loauth/signpost/OAuthProvider;

    iget-object v1, p0, Lcom/touchtype/personalizer/service/GmailAuthenticator;->consumer:Loauth/signpost/OAuthConsumer;

    const-string v2, "touchtype://test.com"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Loauth/signpost/OAuthProvider;->retrieveRequestToken(Loauth/signpost/OAuthConsumer;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTokenSecret(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "verificationCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Loauth/signpost/exception/OAuthException;
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lcom/touchtype/personalizer/service/GmailAuthenticator;->consumer:Loauth/signpost/OAuthConsumer;

    invoke-interface {v0}, Loauth/signpost/OAuthConsumer;->getTokenSecret()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
