.class public Lcom/touchtype/personalizer/service/TwitterPersonalizer;
.super Lcom/touchtype/personalizer/Personalizer;
.source "TwitterPersonalizer.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/touchtype/personalizer/Personalizer;-><init>(Landroid/content/Context;)V

    .line 16
    return-void
.end method

.method public static createParams(Ljava/lang/String;Ljava/lang/String;)Lcom/touchtype_fluency/service/util/PostParams;
    .locals 2
    .parameter "oauthToken"
    .parameter "tokenSecret"

    .prologue
    .line 19
    new-instance v0, Lcom/touchtype_fluency/service/util/PostParams;

    invoke-direct {v0}, Lcom/touchtype_fluency/service/util/PostParams;-><init>()V

    .line 20
    .local v0, params:Lcom/touchtype_fluency/service/util/PostParams;
    const-string v1, "oauth_token"

    invoke-virtual {v0, v1, p0}, Lcom/touchtype_fluency/service/util/PostParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    const-string v1, "token_secret"

    invoke-virtual {v0, v1, p1}, Lcom/touchtype_fluency/service/util/PostParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    return-object v0
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    const-string v0, "pref_personalize_twitter"

    return-object v0
.end method

.method public getServiceId()I
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x3

    return v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    const-string v0, "Twitter"

    return-object v0
.end method

.method public getServicePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    const-string v0, "twitter"

    return-object v0
.end method

.method public startPersonalization(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 28
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/touchtype/personalizer/service/TwitterPersonalizer;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/touchtype/personalizer/PersonalizerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 30
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "service"

    invoke-virtual {p0}, Lcom/touchtype/personalizer/service/TwitterPersonalizer;->getServiceId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 31
    invoke-virtual {p0}, Lcom/touchtype/personalizer/service/TwitterPersonalizer;->getServiceId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 32
    return-void
.end method
