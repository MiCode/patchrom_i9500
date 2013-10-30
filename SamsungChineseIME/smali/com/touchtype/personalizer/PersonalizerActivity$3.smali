.class Lcom/touchtype/personalizer/PersonalizerActivity$3;
.super Ljava/lang/Thread;
.source "PersonalizerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/touchtype/personalizer/PersonalizerActivity;->startGmail(Landroid/content/Intent;)V
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
    .line 132
    iput-object p1, p0, Lcom/touchtype/personalizer/PersonalizerActivity$3;->this$0:Lcom/touchtype/personalizer/PersonalizerActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 136
    :try_start_0
    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizerActivity$3;->this$0:Lcom/touchtype/personalizer/PersonalizerActivity;

    #getter for: Lcom/touchtype/personalizer/PersonalizerActivity;->mWebView:Landroid/webkit/WebView;
    invoke-static {v1}, Lcom/touchtype/personalizer/PersonalizerActivity;->access$000(Lcom/touchtype/personalizer/PersonalizerActivity;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->stopLoading()V

    .line 137
    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizerActivity$3;->this$0:Lcom/touchtype/personalizer/PersonalizerActivity;

    #getter for: Lcom/touchtype/personalizer/PersonalizerActivity;->mWebView:Landroid/webkit/WebView;
    invoke-static {v1}, Lcom/touchtype/personalizer/PersonalizerActivity;->access$000(Lcom/touchtype/personalizer/PersonalizerActivity;)Landroid/webkit/WebView;

    move-result-object v1

    iget-object v2, p0, Lcom/touchtype/personalizer/PersonalizerActivity$3;->this$0:Lcom/touchtype/personalizer/PersonalizerActivity;

    #getter for: Lcom/touchtype/personalizer/PersonalizerActivity;->mGmailAuthenticator:Lcom/touchtype/personalizer/service/GmailAuthenticator;
    invoke-static {v2}, Lcom/touchtype/personalizer/PersonalizerActivity;->access$500(Lcom/touchtype/personalizer/PersonalizerActivity;)Lcom/touchtype/personalizer/service/GmailAuthenticator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/touchtype/personalizer/service/GmailAuthenticator;->getAuthUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Loauth/signpost/exception/OAuthException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :goto_0
    return-void

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, e:Loauth/signpost/exception/OAuthException;
    invoke-static {}, Lcom/touchtype/personalizer/PersonalizerActivity;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OAuth error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Loauth/signpost/exception/OAuthException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/touchtype_fluency/service/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-static {}, Lcom/touchtype/personalizer/PersonalizerActivity;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Loauth/signpost/exception/OAuthException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/touchtype_fluency/service/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-virtual {v0}, Loauth/signpost/exception/OAuthException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 142
    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizerActivity$3;->this$0:Lcom/touchtype/personalizer/PersonalizerActivity;

    #calls: Lcom/touchtype/personalizer/PersonalizerActivity;->finishFail()V
    invoke-static {v1}, Lcom/touchtype/personalizer/PersonalizerActivity;->access$200(Lcom/touchtype/personalizer/PersonalizerActivity;)V

    goto :goto_0
.end method
