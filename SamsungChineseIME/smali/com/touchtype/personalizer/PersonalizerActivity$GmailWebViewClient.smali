.class Lcom/touchtype/personalizer/PersonalizerActivity$GmailWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "PersonalizerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/touchtype/personalizer/PersonalizerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GmailWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/touchtype/personalizer/PersonalizerActivity;


# direct methods
.method private constructor <init>(Lcom/touchtype/personalizer/PersonalizerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 203
    iput-object p1, p0, Lcom/touchtype/personalizer/PersonalizerActivity$GmailWebViewClient;->this$0:Lcom/touchtype/personalizer/PersonalizerActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/touchtype/personalizer/PersonalizerActivity;Lcom/touchtype/personalizer/PersonalizerActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 203
    invoke-direct {p0, p1}, Lcom/touchtype/personalizer/PersonalizerActivity$GmailWebViewClient;-><init>(Lcom/touchtype/personalizer/PersonalizerActivity;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "url"

    .prologue
    .line 246
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerActivity$GmailWebViewClient;->this$0:Lcom/touchtype/personalizer/PersonalizerActivity;

    #getter for: Lcom/touchtype/personalizer/PersonalizerActivity;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/touchtype/personalizer/PersonalizerActivity;->access$800(Lcom/touchtype/personalizer/PersonalizerActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 249
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4
    .parameter "view"
    .parameter "url"

    .prologue
    .line 206
    invoke-static {}, Lcom/touchtype/personalizer/PersonalizerActivity;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loading URL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/touchtype_fluency/service/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string v1, "touchtype"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 208
    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizerActivity$GmailWebViewClient;->this$0:Lcom/touchtype/personalizer/PersonalizerActivity;

    #calls: Lcom/touchtype/personalizer/PersonalizerActivity;->getVerifier(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, p2}, Lcom/touchtype/personalizer/PersonalizerActivity;->access$600(Lcom/touchtype/personalizer/PersonalizerActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, verifier:Ljava/lang/String;
    invoke-static {}, Lcom/touchtype/personalizer/PersonalizerActivity;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got verifier "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/touchtype_fluency/service/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    if-nez v0, :cond_0

    .line 212
    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizerActivity$GmailWebViewClient;->this$0:Lcom/touchtype/personalizer/PersonalizerActivity;

    #calls: Lcom/touchtype/personalizer/PersonalizerActivity;->finishFail()V
    invoke-static {v1}, Lcom/touchtype/personalizer/PersonalizerActivity;->access$200(Lcom/touchtype/personalizer/PersonalizerActivity;)V

    .line 215
    :cond_0
    new-instance v1, Lcom/touchtype/personalizer/PersonalizerActivity$GmailWebViewClient$1;

    invoke-direct {v1, p0, v0}, Lcom/touchtype/personalizer/PersonalizerActivity$GmailWebViewClient$1;-><init>(Lcom/touchtype/personalizer/PersonalizerActivity$GmailWebViewClient;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/touchtype/personalizer/PersonalizerActivity$GmailWebViewClient$1;->start()V

    .line 241
    .end local v0           #verifier:Ljava/lang/String;
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 239
    :cond_1
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method
