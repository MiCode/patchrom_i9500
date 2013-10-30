.class Lcom/touchtype/personalizer/PersonalizerActivity$WeiboWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "PersonalizerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/touchtype/personalizer/PersonalizerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WeiboWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/touchtype/personalizer/PersonalizerActivity;


# direct methods
.method public constructor <init>(Lcom/touchtype/personalizer/PersonalizerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 287
    iput-object p1, p0, Lcom/touchtype/personalizer/PersonalizerActivity$WeiboWebViewClient;->this$0:Lcom/touchtype/personalizer/PersonalizerActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 289
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 6
    .parameter "view"
    .parameter "urlstr"

    .prologue
    .line 308
    invoke-static {}, Lcom/touchtype/personalizer/PersonalizerActivity;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Page finished: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/touchtype_fluency/service/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    iget-object v3, p0, Lcom/touchtype/personalizer/PersonalizerActivity$WeiboWebViewClient;->this$0:Lcom/touchtype/personalizer/PersonalizerActivity;

    #getter for: Lcom/touchtype/personalizer/PersonalizerActivity;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v3}, Lcom/touchtype/personalizer/PersonalizerActivity;->access$800(Lcom/touchtype/personalizer/PersonalizerActivity;)Landroid/widget/ProgressBar;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 311
    if-eqz p2, :cond_0

    const-string v3, "http://touchtype-online.com/login_success.html"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 313
    :try_start_0
    invoke-static {p2}, Lcom/touchtype/personalizer/service/WeiboHelper;->getAccessTokenFromRedirectUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 315
    .local v0, accessToken:Ljava/lang/String;
    invoke-static {}, Lcom/touchtype/personalizer/service/WeiboHelper;->getTokenSecret()Ljava/lang/String;

    move-result-object v2

    .line 316
    .local v2, tokenSecret:Ljava/lang/String;
    invoke-static {}, Lcom/touchtype/personalizer/PersonalizerActivity;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPageFinished() urlstr: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/touchtype_fluency/service/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    invoke-static {}, Lcom/touchtype/personalizer/PersonalizerActivity;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPageFinished() access_token: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/touchtype_fluency/service/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 320
    iget-object v3, p0, Lcom/touchtype/personalizer/PersonalizerActivity$WeiboWebViewClient;->this$0:Lcom/touchtype/personalizer/PersonalizerActivity;

    invoke-static {v0, v2}, Lcom/touchtype/personalizer/service/WeiboPersonalizer;->createParams(Ljava/lang/String;Ljava/lang/String;)Lcom/touchtype_fluency/service/util/PostParams;

    move-result-object v4

    #calls: Lcom/touchtype/personalizer/PersonalizerActivity;->finishSuccess(Lcom/touchtype_fluency/service/util/PostParams;)V
    invoke-static {v3, v4}, Lcom/touchtype/personalizer/PersonalizerActivity;->access$700(Lcom/touchtype/personalizer/PersonalizerActivity;Lcom/touchtype_fluency/service/util/PostParams;)V

    .line 333
    .end local v0           #accessToken:Ljava/lang/String;
    .end local v2           #tokenSecret:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 323
    .restart local v0       #accessToken:Ljava/lang/String;
    .restart local v2       #tokenSecret:Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/touchtype/personalizer/PersonalizerActivity$WeiboWebViewClient;->this$0:Lcom/touchtype/personalizer/PersonalizerActivity;

    #calls: Lcom/touchtype/personalizer/PersonalizerActivity;->finishFail()V
    invoke-static {v3}, Lcom/touchtype/personalizer/PersonalizerActivity;->access$200(Lcom/touchtype/personalizer/PersonalizerActivity;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 325
    .end local v0           #accessToken:Ljava/lang/String;
    .end local v2           #tokenSecret:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 326
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    invoke-static {}, Lcom/touchtype/personalizer/PersonalizerActivity;->access$100()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/touchtype_fluency/service/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    iget-object v3, p0, Lcom/touchtype/personalizer/PersonalizerActivity$WeiboWebViewClient;->this$0:Lcom/touchtype/personalizer/PersonalizerActivity;

    #calls: Lcom/touchtype/personalizer/PersonalizerActivity;->finishFail()V
    invoke-static {v3}, Lcom/touchtype/personalizer/PersonalizerActivity;->access$200(Lcom/touchtype/personalizer/PersonalizerActivity;)V

    goto :goto_0

    .line 328
    .end local v1           #e:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v1

    .line 329
    .local v1, e:Ljava/net/MalformedURLException;
    invoke-static {}, Lcom/touchtype/personalizer/PersonalizerActivity;->access$100()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/touchtype_fluency/service/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    iget-object v3, p0, Lcom/touchtype/personalizer/PersonalizerActivity$WeiboWebViewClient;->this$0:Lcom/touchtype/personalizer/PersonalizerActivity;

    #calls: Lcom/touchtype/personalizer/PersonalizerActivity;->finishFail()V
    invoke-static {v3}, Lcom/touchtype/personalizer/PersonalizerActivity;->access$200(Lcom/touchtype/personalizer/PersonalizerActivity;)V

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4
    .parameter "view"
    .parameter "url"

    .prologue
    .line 293
    invoke-static {}, Lcom/touchtype/personalizer/PersonalizerActivity;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shouldOverrideUrlLoading() url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/touchtype_fluency/service/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    if-eqz p2, :cond_0

    const-string v1, "sms:"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 295
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 297
    .local v0, sendIntent:Landroid/content/Intent;
    const-string v1, "address"

    const-string v2, "sms:"

    const-string v3, ""

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 298
    const-string v1, "vnd.android-dir/mms-sms"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 299
    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizerActivity$WeiboWebViewClient;->this$0:Lcom/touchtype/personalizer/PersonalizerActivity;

    invoke-virtual {v1, v0}, Lcom/touchtype/personalizer/PersonalizerActivity;->startActivity(Landroid/content/Intent;)V

    .line 301
    const/4 v1, 0x1

    .line 303
    .end local v0           #sendIntent:Landroid/content/Intent;
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method
