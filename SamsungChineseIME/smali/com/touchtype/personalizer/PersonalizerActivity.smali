.class public Lcom/touchtype/personalizer/PersonalizerActivity;
.super Landroid/app/Activity;
.source "PersonalizerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/touchtype/personalizer/PersonalizerActivity$TwitterWebViewClient;,
        Lcom/touchtype/personalizer/PersonalizerActivity$WeiboWebViewClient;,
        Lcom/touchtype/personalizer/PersonalizerActivity$FacebookWebViewClient;,
        Lcom/touchtype/personalizer/PersonalizerActivity$GmailWebViewClient;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGmailAuthenticator:Lcom/touchtype/personalizer/service/GmailAuthenticator;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mTwitterAuthenticator:Lcom/touchtype/personalizer/service/TwitterAuthenticator;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/touchtype/personalizer/PersonalizerActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/touchtype/personalizer/PersonalizerActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 336
    return-void
.end method

.method static synthetic access$000(Lcom/touchtype/personalizer/PersonalizerActivity;)Landroid/webkit/WebView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/touchtype/personalizer/PersonalizerActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/touchtype/personalizer/PersonalizerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/touchtype/personalizer/PersonalizerActivity;->finishFail()V

    return-void
.end method

.method static synthetic access$300(Lcom/touchtype/personalizer/PersonalizerActivity;)Lcom/touchtype/personalizer/service/TwitterAuthenticator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->mTwitterAuthenticator:Lcom/touchtype/personalizer/service/TwitterAuthenticator;

    return-object v0
.end method

.method static synthetic access$500(Lcom/touchtype/personalizer/PersonalizerActivity;)Lcom/touchtype/personalizer/service/GmailAuthenticator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->mGmailAuthenticator:Lcom/touchtype/personalizer/service/GmailAuthenticator;

    return-object v0
.end method

.method static synthetic access$600(Lcom/touchtype/personalizer/PersonalizerActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/touchtype/personalizer/PersonalizerActivity;->getVerifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/touchtype/personalizer/PersonalizerActivity;Lcom/touchtype_fluency/service/util/PostParams;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/touchtype/personalizer/PersonalizerActivity;->finishSuccess(Lcom/touchtype_fluency/service/util/PostParams;)V

    return-void
.end method

.method static synthetic access$800(Lcom/touchtype/personalizer/PersonalizerActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private finishFail()V
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/touchtype/personalizer/PersonalizerActivity;->setResult(I)V

    .line 195
    invoke-virtual {p0}, Lcom/touchtype/personalizer/PersonalizerActivity;->finish()V

    .line 196
    return-void
.end method

.method private finishSuccess(Lcom/touchtype_fluency/service/util/PostParams;)V
    .locals 3
    .parameter "params"

    .prologue
    .line 187
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 188
    .local v0, i:Landroid/content/Intent;
    const-string v1, "params"

    invoke-virtual {p1}, Lcom/touchtype_fluency/service/util/PostParams;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/touchtype/personalizer/PersonalizerActivity;->setResult(ILandroid/content/Intent;)V

    .line 190
    invoke-virtual {p0}, Lcom/touchtype/personalizer/PersonalizerActivity;->finish()V

    .line 191
    return-void
.end method

.method private getVerifier(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "url"

    .prologue
    .line 199
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 200
    .local v0, uri:Landroid/net/Uri;
    const-string v1, "oauth_verifier"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private start(Landroid/content/Intent;)V
    .locals 7
    .parameter "i"

    .prologue
    const/4 v6, -0x1

    .line 150
    const-string v4, "service"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 152
    .local v3, serviceId:I
    packed-switch v3, :pswitch_data_0

    .line 184
    :goto_0
    :pswitch_0
    return-void

    .line 154
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/touchtype/personalizer/PersonalizerActivity;->startFacebook(Landroid/content/Intent;)V

    goto :goto_0

    .line 157
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/touchtype/personalizer/PersonalizerActivity;->startWeibo(Landroid/content/Intent;)V

    goto :goto_0

    .line 160
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/touchtype/personalizer/PersonalizerActivity;->startGmail(Landroid/content/Intent;)V

    goto :goto_0

    .line 163
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/touchtype/personalizer/PersonalizerActivity;->startTwitter(Landroid/content/Intent;)V

    goto :goto_0

    .line 166
    :pswitch_5
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 167
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v6, v0}, Lcom/touchtype/personalizer/PersonalizerActivity;->setResult(ILandroid/content/Intent;)V

    .line 168
    invoke-virtual {p0}, Lcom/touchtype/personalizer/PersonalizerActivity;->finish()V

    goto :goto_0

    .line 171
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_6
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 172
    .local v1, intent2:Landroid/content/Intent;
    invoke-virtual {p0, v6, v1}, Lcom/touchtype/personalizer/PersonalizerActivity;->setResult(ILandroid/content/Intent;)V

    .line 173
    invoke-virtual {p0}, Lcom/touchtype/personalizer/PersonalizerActivity;->finish()V

    goto :goto_0

    .line 176
    .end local v1           #intent2:Landroid/content/Intent;
    :pswitch_7
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 177
    .local v2, intent3:Landroid/content/Intent;
    invoke-virtual {p0, v6, v2}, Lcom/touchtype/personalizer/PersonalizerActivity;->setResult(ILandroid/content/Intent;)V

    .line 178
    invoke-virtual {p0}, Lcom/touchtype/personalizer/PersonalizerActivity;->finish()V

    goto :goto_0

    .line 152
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_2
    .end packed-switch
.end method

.method private startFacebook(Landroid/content/Intent;)V
    .locals 4
    .parameter "i"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/touchtype/personalizer/PersonalizerActivity$FacebookWebViewClient;

    invoke-direct {v1, p0}, Lcom/touchtype/personalizer/PersonalizerActivity$FacebookWebViewClient;-><init>(Lcom/touchtype/personalizer/PersonalizerActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 70
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 71
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 72
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/touchtype/personalizer/PersonalizerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "340440709365233"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&display=touch&redirect_uri=http%3A%2F%2Fwww.touchtype-online.com%2Flogin_success.html&scope=offline_access,user_about_me,user_notes,user_status,read_mailbox"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method private startGmail(Landroid/content/Intent;)V
    .locals 3
    .parameter "i"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/touchtype/personalizer/PersonalizerActivity$GmailWebViewClient;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/touchtype/personalizer/PersonalizerActivity$GmailWebViewClient;-><init>(Lcom/touchtype/personalizer/PersonalizerActivity;Lcom/touchtype/personalizer/PersonalizerActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 128
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 129
    new-instance v0, Lcom/touchtype/personalizer/service/GmailAuthenticator;

    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/touchtype/personalizer/service/GmailAuthenticator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->mGmailAuthenticator:Lcom/touchtype/personalizer/service/GmailAuthenticator;

    .line 131
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocus()Z

    .line 132
    new-instance v0, Lcom/touchtype/personalizer/PersonalizerActivity$3;

    invoke-direct {v0, p0}, Lcom/touchtype/personalizer/PersonalizerActivity$3;-><init>(Lcom/touchtype/personalizer/PersonalizerActivity;)V

    invoke-virtual {v0}, Lcom/touchtype/personalizer/PersonalizerActivity$3;->start()V

    .line 146
    return-void
.end method

.method private startTwitter(Landroid/content/Intent;)V
    .locals 2
    .parameter "i"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/touchtype/personalizer/PersonalizerActivity$TwitterWebViewClient;

    invoke-direct {v1, p0}, Lcom/touchtype/personalizer/PersonalizerActivity$TwitterWebViewClient;-><init>(Lcom/touchtype/personalizer/PersonalizerActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 107
    new-instance v0, Lcom/touchtype/personalizer/service/TwitterAuthenticator;

    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/touchtype/personalizer/service/TwitterAuthenticator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->mTwitterAuthenticator:Lcom/touchtype/personalizer/service/TwitterAuthenticator;

    .line 109
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocus()Z

    .line 110
    new-instance v0, Lcom/touchtype/personalizer/PersonalizerActivity$2;

    invoke-direct {v0, p0}, Lcom/touchtype/personalizer/PersonalizerActivity$2;-><init>(Lcom/touchtype/personalizer/PersonalizerActivity;)V

    invoke-virtual {v0}, Lcom/touchtype/personalizer/PersonalizerActivity$2;->start()V

    .line 123
    return-void
.end method

.method private startWeibo(Landroid/content/Intent;)V
    .locals 2
    .parameter "i"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/touchtype/personalizer/PersonalizerActivity$WeiboWebViewClient;

    invoke-direct {v1, p0}, Lcom/touchtype/personalizer/PersonalizerActivity$WeiboWebViewClient;-><init>(Lcom/touchtype/personalizer/PersonalizerActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 85
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 87
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocus()Z

    .line 89
    new-instance v0, Lcom/touchtype/personalizer/PersonalizerActivity$1;

    invoke-direct {v0, p0}, Lcom/touchtype/personalizer/PersonalizerActivity$1;-><init>(Lcom/touchtype/personalizer/PersonalizerActivity;)V

    invoke-virtual {v0}, Lcom/touchtype/personalizer/PersonalizerActivity$1;->start()V

    .line 103
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v0, 0x7f030013

    invoke-virtual {p0, v0}, Lcom/touchtype/personalizer/PersonalizerActivity;->setContentView(I)V

    .line 47
    const v0, 0x7f0c0048

    invoke-virtual {p0, v0}, Lcom/touchtype/personalizer/PersonalizerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->mWebView:Landroid/webkit/WebView;

    .line 48
    const v0, 0x7f0b0234

    invoke-virtual {p0, v0}, Lcom/touchtype/personalizer/PersonalizerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/touchtype/personalizer/PersonalizerActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 50
    const v0, 0x7f0c0049

    invoke-virtual {p0, v0}, Lcom/touchtype/personalizer/PersonalizerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 51
    invoke-virtual {p0}, Lcom/touchtype/personalizer/PersonalizerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/touchtype/personalizer/PersonalizerActivity;->mContext:Landroid/content/Context;

    .line 52
    invoke-virtual {p0}, Lcom/touchtype/personalizer/PersonalizerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/touchtype/personalizer/PersonalizerActivity;->start(Landroid/content/Intent;)V

    .line 53
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 58
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 60
    :try_start_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieManager;->removeAllCookie()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, e:Ljava/lang/IllegalStateException;
    sget-object v1, Lcom/touchtype/personalizer/PersonalizerActivity;->TAG:Ljava/lang/String;

    const-string v2, "CookieManager not initialised. onDestroy called before onCreate?"

    invoke-static {v1, v2}, Lcom/touchtype_fluency/service/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
