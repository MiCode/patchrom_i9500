.class Lcom/touchtype/personalizer/PersonalizerActivity$GmailWebViewClient$1;
.super Ljava/lang/Thread;
.source "PersonalizerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/touchtype/personalizer/PersonalizerActivity$GmailWebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/touchtype/personalizer/PersonalizerActivity$GmailWebViewClient;

.field final synthetic val$verifier:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/touchtype/personalizer/PersonalizerActivity$GmailWebViewClient;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 215
    iput-object p1, p0, Lcom/touchtype/personalizer/PersonalizerActivity$GmailWebViewClient$1;->this$1:Lcom/touchtype/personalizer/PersonalizerActivity$GmailWebViewClient;

    iput-object p2, p0, Lcom/touchtype/personalizer/PersonalizerActivity$GmailWebViewClient$1;->val$verifier:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 219
    :try_start_0
    invoke-static {}, Lcom/touchtype/personalizer/PersonalizerActivity;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Getting access token secret"

    invoke-static {v3, v4}, Lcom/touchtype_fluency/service/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-object v3, p0, Lcom/touchtype/personalizer/PersonalizerActivity$GmailWebViewClient$1;->this$1:Lcom/touchtype/personalizer/PersonalizerActivity$GmailWebViewClient;

    iget-object v3, v3, Lcom/touchtype/personalizer/PersonalizerActivity$GmailWebViewClient;->this$0:Lcom/touchtype/personalizer/PersonalizerActivity;

    #getter for: Lcom/touchtype/personalizer/PersonalizerActivity;->mGmailAuthenticator:Lcom/touchtype/personalizer/service/GmailAuthenticator;
    invoke-static {v3}, Lcom/touchtype/personalizer/PersonalizerActivity;->access$500(Lcom/touchtype/personalizer/PersonalizerActivity;)Lcom/touchtype/personalizer/service/GmailAuthenticator;

    move-result-object v3

    iget-object v4, p0, Lcom/touchtype/personalizer/PersonalizerActivity$GmailWebViewClient$1;->val$verifier:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/touchtype/personalizer/service/GmailAuthenticator;->getAccessToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, accessToken:Ljava/lang/String;
    iget-object v3, p0, Lcom/touchtype/personalizer/PersonalizerActivity$GmailWebViewClient$1;->this$1:Lcom/touchtype/personalizer/PersonalizerActivity$GmailWebViewClient;

    iget-object v3, v3, Lcom/touchtype/personalizer/PersonalizerActivity$GmailWebViewClient;->this$0:Lcom/touchtype/personalizer/PersonalizerActivity;

    #getter for: Lcom/touchtype/personalizer/PersonalizerActivity;->mGmailAuthenticator:Lcom/touchtype/personalizer/service/GmailAuthenticator;
    invoke-static {v3}, Lcom/touchtype/personalizer/PersonalizerActivity;->access$500(Lcom/touchtype/personalizer/PersonalizerActivity;)Lcom/touchtype/personalizer/service/GmailAuthenticator;

    move-result-object v3

    iget-object v4, p0, Lcom/touchtype/personalizer/PersonalizerActivity$GmailWebViewClient$1;->val$verifier:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/touchtype/personalizer/service/GmailAuthenticator;->getTokenSecret(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 224
    .local v2, tokenSecret:Ljava/lang/String;
    invoke-static {}, Lcom/touchtype/personalizer/PersonalizerActivity;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Making initial gmail request, email: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " secret: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/touchtype_fluency/service/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v3, p0, Lcom/touchtype/personalizer/PersonalizerActivity$GmailWebViewClient$1;->this$1:Lcom/touchtype/personalizer/PersonalizerActivity$GmailWebViewClient;

    iget-object v3, v3, Lcom/touchtype/personalizer/PersonalizerActivity$GmailWebViewClient;->this$0:Lcom/touchtype/personalizer/PersonalizerActivity;

    invoke-static {v0, v2}, Lcom/touchtype/personalizer/service/GmailPersonalizer;->createParams(Ljava/lang/String;Ljava/lang/String;)Lcom/touchtype_fluency/service/util/PostParams;

    move-result-object v4

    #calls: Lcom/touchtype/personalizer/PersonalizerActivity;->finishSuccess(Lcom/touchtype_fluency/service/util/PostParams;)V
    invoke-static {v3, v4}, Lcom/touchtype/personalizer/PersonalizerActivity;->access$700(Lcom/touchtype/personalizer/PersonalizerActivity;Lcom/touchtype_fluency/service/util/PostParams;)V
    :try_end_0
    .catch Loauth/signpost/exception/OAuthException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    .end local v0           #accessToken:Ljava/lang/String;
    .end local v2           #tokenSecret:Ljava/lang/String;
    :goto_0
    return-void

    .line 231
    :catch_0
    move-exception v1

    .line 232
    .local v1, e:Loauth/signpost/exception/OAuthException;
    invoke-virtual {v1}, Loauth/signpost/exception/OAuthException;->printStackTrace()V

    .line 233
    invoke-virtual {v1}, Loauth/signpost/exception/OAuthException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 234
    iget-object v3, p0, Lcom/touchtype/personalizer/PersonalizerActivity$GmailWebViewClient$1;->this$1:Lcom/touchtype/personalizer/PersonalizerActivity$GmailWebViewClient;

    iget-object v3, v3, Lcom/touchtype/personalizer/PersonalizerActivity$GmailWebViewClient;->this$0:Lcom/touchtype/personalizer/PersonalizerActivity;

    #calls: Lcom/touchtype/personalizer/PersonalizerActivity;->finishFail()V
    invoke-static {v3}, Lcom/touchtype/personalizer/PersonalizerActivity;->access$200(Lcom/touchtype/personalizer/PersonalizerActivity;)V

    goto :goto_0
.end method
