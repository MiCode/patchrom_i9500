.class Lcom/touchtype/personalizer/PersonalizerActivity$2;
.super Ljava/lang/Thread;
.source "PersonalizerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/touchtype/personalizer/PersonalizerActivity;->startTwitter(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/touchtype/personalizer/PersonalizerActivity;


# direct methods
.method constructor <init>(Lcom/touchtype/personalizer/PersonalizerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/touchtype/personalizer/PersonalizerActivity$2;->this$0:Lcom/touchtype/personalizer/PersonalizerActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 114
    :try_start_0
    iget-object v2, p0, Lcom/touchtype/personalizer/PersonalizerActivity$2;->this$0:Lcom/touchtype/personalizer/PersonalizerActivity;

    #getter for: Lcom/touchtype/personalizer/PersonalizerActivity;->mWebView:Landroid/webkit/WebView;
    invoke-static {v2}, Lcom/touchtype/personalizer/PersonalizerActivity;->access$000(Lcom/touchtype/personalizer/PersonalizerActivity;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebView;->stopLoading()V

    .line 115
    iget-object v2, p0, Lcom/touchtype/personalizer/PersonalizerActivity$2;->this$0:Lcom/touchtype/personalizer/PersonalizerActivity;

    #getter for: Lcom/touchtype/personalizer/PersonalizerActivity;->mTwitterAuthenticator:Lcom/touchtype/personalizer/service/TwitterAuthenticator;
    invoke-static {v2}, Lcom/touchtype/personalizer/PersonalizerActivity;->access$300(Lcom/touchtype/personalizer/PersonalizerActivity;)Lcom/touchtype/personalizer/service/TwitterAuthenticator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/touchtype/personalizer/service/TwitterAuthenticator;->getAuthUrl()Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, authUrl:Ljava/lang/String;
    iget-object v2, p0, Lcom/touchtype/personalizer/PersonalizerActivity$2;->this$0:Lcom/touchtype/personalizer/PersonalizerActivity;

    #getter for: Lcom/touchtype/personalizer/PersonalizerActivity;->mWebView:Landroid/webkit/WebView;
    invoke-static {v2}, Lcom/touchtype/personalizer/PersonalizerActivity;->access$000(Lcom/touchtype/personalizer/PersonalizerActivity;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Loauth/signpost/exception/OAuthException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .end local v0           #authUrl:Ljava/lang/String;
    :goto_0
    return-void

    .line 117
    :catch_0
    move-exception v1

    .line 118
    .local v1, e:Loauth/signpost/exception/OAuthException;
    invoke-static {}, Lcom/touchtype/personalizer/PersonalizerActivity;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OAuth error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Loauth/signpost/exception/OAuthException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/touchtype_fluency/service/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v2, p0, Lcom/touchtype/personalizer/PersonalizerActivity$2;->this$0:Lcom/touchtype/personalizer/PersonalizerActivity;

    #calls: Lcom/touchtype/personalizer/PersonalizerActivity;->finishFail()V
    invoke-static {v2}, Lcom/touchtype/personalizer/PersonalizerActivity;->access$200(Lcom/touchtype/personalizer/PersonalizerActivity;)V

    goto :goto_0
.end method
