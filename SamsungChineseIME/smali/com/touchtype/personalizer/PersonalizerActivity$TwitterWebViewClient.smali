.class Lcom/touchtype/personalizer/PersonalizerActivity$TwitterWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "PersonalizerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/touchtype/personalizer/PersonalizerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TwitterWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/touchtype/personalizer/PersonalizerActivity;


# direct methods
.method public constructor <init>(Lcom/touchtype/personalizer/PersonalizerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 338
    iput-object p1, p0, Lcom/touchtype/personalizer/PersonalizerActivity$TwitterWebViewClient;->this$0:Lcom/touchtype/personalizer/PersonalizerActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 340
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 7
    .parameter "view"
    .parameter "urlstr"

    .prologue
    .line 344
    invoke-static {}, Lcom/touchtype/personalizer/PersonalizerActivity;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Page finished: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/touchtype_fluency/service/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    iget-object v4, p0, Lcom/touchtype/personalizer/PersonalizerActivity$TwitterWebViewClient;->this$0:Lcom/touchtype/personalizer/PersonalizerActivity;

    #getter for: Lcom/touchtype/personalizer/PersonalizerActivity;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v4}, Lcom/touchtype/personalizer/PersonalizerActivity;->access$800(Lcom/touchtype/personalizer/PersonalizerActivity;)Landroid/widget/ProgressBar;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 347
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 348
    .local v3, uri:Landroid/net/Uri;
    const-string v4, "oauth_verifier"

    invoke-virtual {v3, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 350
    .local v1, oauthVerifier:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 351
    new-instance v4, Lcom/touchtype/personalizer/PersonalizerActivity$TwitterWebViewClient$1;

    invoke-direct {v4, p0, v1}, Lcom/touchtype/personalizer/PersonalizerActivity$TwitterWebViewClient$1;-><init>(Lcom/touchtype/personalizer/PersonalizerActivity$TwitterWebViewClient;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/touchtype/personalizer/PersonalizerActivity$TwitterWebViewClient$1;->start()V

    .line 385
    :cond_0
    :goto_0
    return-void

    .line 367
    :cond_1
    const-string v4, "api.twitter.com/oauth"

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 370
    const-string v4, "denied"

    invoke-virtual {v3, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 371
    .local v0, denied:Ljava/lang/String;
    const-string v4, "redirect_after_login"

    invoke-virtual {v3, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 374
    .local v2, settings:Ljava/lang/String;
    if-nez v0, :cond_2

    if-eqz v2, :cond_0

    const-string v4, "settings"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 381
    :cond_2
    iget-object v4, p0, Lcom/touchtype/personalizer/PersonalizerActivity$TwitterWebViewClient;->this$0:Lcom/touchtype/personalizer/PersonalizerActivity;

    invoke-virtual {v4}, Lcom/touchtype/personalizer/PersonalizerActivity;->finish()V

    goto :goto_0
.end method
