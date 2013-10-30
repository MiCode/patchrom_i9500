.class public Lcom/touchtype/personalizer/service/WeiboHelper;
.super Ljava/lang/Object;
.source "WeiboHelper.java"


# static fields
.field private static final ACCESS_TOKEN_KEY:Ljava/lang/String; = "access_token"

.field private static final APP_KEY:Ljava/lang/String; = "115126578"

.field private static final AUTH_URL:Ljava/lang/String; = "https://api.weibo.com/oauth2/authorize"

.field private static final CLIENT_ID_KEY:Ljava/lang/String; = "client_id"

.field private static final DISPLAY_KEY:Ljava/lang/String; = "display"

.field private static final DISPLAY_VALUE:Ljava/lang/String; = "mobile"

.field private static final REDIRECT_URI_KEY:Ljava/lang/String; = "redirect_uri"

.field public static final REDIRECT_URL:Ljava/lang/String; = "http://touchtype-online.com/login_success.html"

.field private static final RESPONSE_TYPE_KEY:Ljava/lang/String; = "response_type"

.field private static final RESPONSE_TYPE_VALUE:Ljava/lang/String; = "token"

.field private static final SECRET_TOKEN:Ljava/lang/String; = "d9547a1af24c7330dcf4b3c22626d1d0"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/touchtype/personalizer/service/WeiboHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/touchtype/personalizer/service/WeiboHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static decodeUrl(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 10
    .parameter "str"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 141
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 142
    .local v5, params:Landroid/os/Bundle;
    if-eqz p0, :cond_0

    .line 143
    const-string v7, "&"

    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 144
    .local v1, array:[Ljava/lang/String;
    move-object v0, v1

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 145
    .local v4, parameter:Ljava/lang/String;
    const-string v7, "="

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 146
    .local v6, v:[Ljava/lang/String;
    const/4 v7, 0x0

    aget-object v7, v6, v7

    const-string v8, "UTF-8"

    invoke-static {v7, v8}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v8, v6, v8

    const-string v9, "UTF-8"

    invoke-static {v8, v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 150
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #array:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #parameter:Ljava/lang/String;
    .end local v6           #v:[Ljava/lang/String;
    :cond_0
    return-object v5
.end method

.method private static encodeUrl(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 8
    .parameter "bundle"

    .prologue
    .line 100
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 101
    :cond_0
    const-string v5, ""

    .line 124
    :goto_0
    return-object v5

    .line 104
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .local v4, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 108
    .local v1, first:Z
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 109
    .local v3, key:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 110
    const/4 v1, 0x0

    .line 117
    :goto_2
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UTF-8"

    invoke-static {v3, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    .line 112
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :cond_2
    const-string v5, "&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 124
    .end local v3           #key:Ljava/lang/String;
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static getAccessToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "verificationCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Loauth/signpost/exception/OAuthException;
        }
    .end annotation

    .prologue
    .line 91
    const-string v0, ""

    return-object v0
.end method

.method public static getAccessTokenFromRedirectUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "redirectUrl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 60
    const/4 v3, 0x0

    .line 62
    .local v3, values:Landroid/os/Bundle;
    invoke-static {p0}, Lcom/touchtype/personalizer/service/WeiboHelper;->parseUrl(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 64
    sget-object v4, Lcom/touchtype/personalizer/service/WeiboHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAccessTokenFromRedirectUrl() values: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/touchtype_fluency/service/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    if-eqz v3, :cond_1

    .line 67
    const-string v4, "error"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, error:Ljava/lang/String;
    const-string v4, "error_code"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, error_code:Ljava/lang/String;
    if-nez v1, :cond_0

    if-nez v2, :cond_0

    .line 71
    if-eqz v3, :cond_1

    const-string v4, "access_token"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 72
    const-string v4, "access_token"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, accessToken:Ljava/lang/String;
    sget-object v4, Lcom/touchtype/personalizer/service/WeiboHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleRedirectUrl() access token: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/touchtype_fluency/service/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .end local v0           #accessToken:Ljava/lang/String;
    .end local v1           #error:Ljava/lang/String;
    .end local v2           #error_code:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 77
    .restart local v1       #error:Ljava/lang/String;
    .restart local v2       #error_code:Ljava/lang/String;
    :cond_0
    const-string v4, "access_denied"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 78
    sget-object v4, Lcom/touchtype/personalizer/service/WeiboHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAccessTokenFromRedirectUrl() error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/touchtype_fluency/service/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .end local v1           #error:Ljava/lang/String;
    .end local v2           #error_code:Ljava/lang/String;
    :cond_1
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 81
    .restart local v1       #error:Ljava/lang/String;
    .restart local v2       #error_code:Ljava/lang/String;
    :cond_2
    if-nez v2, :cond_1

    goto :goto_1
.end method

.method public static getAuthUrl()Ljava/lang/String;
    .locals 5

    .prologue
    .line 42
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 44
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "client_id"

    const-string v3, "115126578"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string v2, "response_type"

    const-string v3, "token"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string v2, "redirect_uri"

    const-string v3, "http://touchtype-online.com/login_success.html"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v2, "display"

    const-string v3, "mobile"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://api.weibo.com/oauth2/authorize?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/touchtype/personalizer/service/WeiboHelper;->encodeUrl(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 51
    .local v1, uri:Landroid/net/Uri;
    sget-object v2, Lcom/touchtype/personalizer/service/WeiboHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAuthUrl() uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/touchtype_fluency/service/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getTokenSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    const-string v0, "d9547a1af24c7330dcf4b3c22626d1d0"

    return-object v0
.end method

.method private static parseUrl(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .parameter "urlStr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 130
    const/4 v0, 0x0

    .line 131
    .local v0, bundle:Landroid/os/Bundle;
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 132
    .local v1, url:Ljava/net/URL;
    invoke-virtual {v1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/touchtype/personalizer/service/WeiboHelper;->decodeUrl(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 133
    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v1}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/touchtype/personalizer/service/WeiboHelper;->decodeUrl(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 136
    :cond_0
    return-object v0
.end method
