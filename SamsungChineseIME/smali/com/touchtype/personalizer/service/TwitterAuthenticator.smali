.class public Lcom/touchtype/personalizer/service/TwitterAuthenticator;
.super Ljava/lang/Object;
.source "TwitterAuthenticator.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mConsumer:Loauth/signpost/OAuthConsumer;

.field private mProvider:Loauth/signpost/OAuthProvider;

.field private mResources:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/touchtype/personalizer/service/TwitterAuthenticator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/touchtype/personalizer/service/TwitterAuthenticator;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "parentContext"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/touchtype/personalizer/service/TwitterAuthenticator;->mResources:Landroid/content/res/Resources;

    .line 25
    new-instance v0, Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

    const-string v1, "sExBYop0l1l0zIEzeoG5yg"

    const-string v2, "7esApxOGmsASVKF1ctOG76HfXs3DwzfXiOyL8GBzA"

    invoke-direct {v0, v1, v2}, Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/touchtype/personalizer/service/TwitterAuthenticator;->mConsumer:Loauth/signpost/OAuthConsumer;

    .line 28
    new-instance v0, Loauth/signpost/commonshttp/CommonsHttpOAuthProvider;

    iget-object v1, p0, Lcom/touchtype/personalizer/service/TwitterAuthenticator;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0b0004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/touchtype/personalizer/service/TwitterAuthenticator;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0b0005

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/touchtype/personalizer/service/TwitterAuthenticator;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0b0006

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Loauth/signpost/commonshttp/CommonsHttpOAuthProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/touchtype/personalizer/service/TwitterAuthenticator;->mProvider:Loauth/signpost/OAuthProvider;

    .line 33
    sget-object v0, Lcom/touchtype/personalizer/service/TwitterAuthenticator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Twitter Authenticator: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/touchtype/personalizer/service/TwitterAuthenticator;->mProvider:Loauth/signpost/OAuthProvider;

    invoke-interface {v2}, Loauth/signpost/OAuthProvider;->getAccessTokenEndpointUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/touchtype/personalizer/service/TwitterAuthenticator;->mProvider:Loauth/signpost/OAuthProvider;

    invoke-interface {v2}, Loauth/signpost/OAuthProvider;->getRequestTokenEndpointUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/touchtype/personalizer/service/TwitterAuthenticator;->mProvider:Loauth/signpost/OAuthProvider;

    invoke-interface {v2}, Loauth/signpost/OAuthProvider;->getAuthorizationWebsiteUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/touchtype_fluency/service/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-void
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
    .line 47
    const-string v0, "TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Twitter verification code \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/touchtype_fluency/service/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/touchtype/personalizer/service/TwitterAuthenticator;->mProvider:Loauth/signpost/OAuthProvider;

    iget-object v1, p0, Lcom/touchtype/personalizer/service/TwitterAuthenticator;->mConsumer:Loauth/signpost/OAuthConsumer;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v1, p1, v2}, Loauth/signpost/OAuthProvider;->retrieveAccessToken(Loauth/signpost/OAuthConsumer;Ljava/lang/String;[Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/touchtype/personalizer/service/TwitterAuthenticator;->mConsumer:Loauth/signpost/OAuthConsumer;

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
    .line 42
    iget-object v0, p0, Lcom/touchtype/personalizer/service/TwitterAuthenticator;->mProvider:Loauth/signpost/OAuthProvider;

    iget-object v1, p0, Lcom/touchtype/personalizer/service/TwitterAuthenticator;->mConsumer:Loauth/signpost/OAuthConsumer;

    iget-object v2, p0, Lcom/touchtype/personalizer/service/TwitterAuthenticator;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0b0003

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Loauth/signpost/OAuthProvider;->retrieveRequestToken(Loauth/signpost/OAuthConsumer;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTokenSecret()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Loauth/signpost/exception/OAuthException;
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/touchtype/personalizer/service/TwitterAuthenticator;->mConsumer:Loauth/signpost/OAuthConsumer;

    invoke-interface {v0}, Loauth/signpost/OAuthConsumer;->getTokenSecret()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
