.class Lcom/touchtype/personalizer/PersonalizerActivity$TwitterWebViewClient$1;
.super Ljava/lang/Thread;
.source "PersonalizerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/touchtype/personalizer/PersonalizerActivity$TwitterWebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/touchtype/personalizer/PersonalizerActivity$TwitterWebViewClient;

.field final synthetic val$oauthVerifier:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/touchtype/personalizer/PersonalizerActivity$TwitterWebViewClient;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 351
    iput-object p1, p0, Lcom/touchtype/personalizer/PersonalizerActivity$TwitterWebViewClient$1;->this$1:Lcom/touchtype/personalizer/PersonalizerActivity$TwitterWebViewClient;

    iput-object p2, p0, Lcom/touchtype/personalizer/PersonalizerActivity$TwitterWebViewClient$1;->val$oauthVerifier:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 355
    :try_start_0
    iget-object v3, p0, Lcom/touchtype/personalizer/PersonalizerActivity$TwitterWebViewClient$1;->this$1:Lcom/touchtype/personalizer/PersonalizerActivity$TwitterWebViewClient;

    iget-object v3, v3, Lcom/touchtype/personalizer/PersonalizerActivity$TwitterWebViewClient;->this$0:Lcom/touchtype/personalizer/PersonalizerActivity;

    #getter for: Lcom/touchtype/personalizer/PersonalizerActivity;->mTwitterAuthenticator:Lcom/touchtype/personalizer/service/TwitterAuthenticator;
    invoke-static {v3}, Lcom/touchtype/personalizer/PersonalizerActivity;->access$300(Lcom/touchtype/personalizer/PersonalizerActivity;)Lcom/touchtype/personalizer/service/TwitterAuthenticator;

    move-result-object v3

    iget-object v4, p0, Lcom/touchtype/personalizer/PersonalizerActivity$TwitterWebViewClient$1;->val$oauthVerifier:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/touchtype/personalizer/service/TwitterAuthenticator;->getAccessToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 357
    .local v0, accessToken:Ljava/lang/String;
    iget-object v3, p0, Lcom/touchtype/personalizer/PersonalizerActivity$TwitterWebViewClient$1;->this$1:Lcom/touchtype/personalizer/PersonalizerActivity$TwitterWebViewClient;

    iget-object v3, v3, Lcom/touchtype/personalizer/PersonalizerActivity$TwitterWebViewClient;->this$0:Lcom/touchtype/personalizer/PersonalizerActivity;

    #getter for: Lcom/touchtype/personalizer/PersonalizerActivity;->mTwitterAuthenticator:Lcom/touchtype/personalizer/service/TwitterAuthenticator;
    invoke-static {v3}, Lcom/touchtype/personalizer/PersonalizerActivity;->access$300(Lcom/touchtype/personalizer/PersonalizerActivity;)Lcom/touchtype/personalizer/service/TwitterAuthenticator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/touchtype/personalizer/service/TwitterAuthenticator;->getTokenSecret()Ljava/lang/String;

    move-result-object v2

    .line 359
    .local v2, tokenSecret:Ljava/lang/String;
    iget-object v3, p0, Lcom/touchtype/personalizer/PersonalizerActivity$TwitterWebViewClient$1;->this$1:Lcom/touchtype/personalizer/PersonalizerActivity$TwitterWebViewClient;

    iget-object v3, v3, Lcom/touchtype/personalizer/PersonalizerActivity$TwitterWebViewClient;->this$0:Lcom/touchtype/personalizer/PersonalizerActivity;

    invoke-static {v0, v2}, Lcom/touchtype/personalizer/service/TwitterPersonalizer;->createParams(Ljava/lang/String;Ljava/lang/String;)Lcom/touchtype_fluency/service/util/PostParams;

    move-result-object v4

    #calls: Lcom/touchtype/personalizer/PersonalizerActivity;->finishSuccess(Lcom/touchtype_fluency/service/util/PostParams;)V
    invoke-static {v3, v4}, Lcom/touchtype/personalizer/PersonalizerActivity;->access$700(Lcom/touchtype/personalizer/PersonalizerActivity;Lcom/touchtype_fluency/service/util/PostParams;)V
    :try_end_0
    .catch Loauth/signpost/exception/OAuthException; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    .end local v0           #accessToken:Ljava/lang/String;
    .end local v2           #tokenSecret:Ljava/lang/String;
    :goto_0
    return-void

    .line 361
    :catch_0
    move-exception v1

    .line 362
    .local v1, e:Loauth/signpost/exception/OAuthException;
    invoke-static {}, Lcom/touchtype/personalizer/PersonalizerActivity;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Twitter OAuth exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/touchtype_fluency/service/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
