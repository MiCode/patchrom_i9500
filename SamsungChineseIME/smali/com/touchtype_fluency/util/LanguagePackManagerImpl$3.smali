.class Lcom/touchtype_fluency/util/LanguagePackManagerImpl$3;
.super Lcom/touchtype_fluency/util/ProgressListener;
.source "LanguagePackManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/touchtype_fluency/util/LanguagePackManagerImpl;->enableDefaultLanguage(Lcom/touchtype_fluency/util/ProgressListener;)Lcom/touchtype_fluency/util/LanguagePack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/touchtype_fluency/util/LanguagePackManagerImpl;

.field private final synthetic val$language:Lcom/touchtype_fluency/util/LanguagePack;

.field private final synthetic val$listener:Lcom/touchtype_fluency/util/ProgressListener;


# direct methods
.method constructor <init>(Lcom/touchtype_fluency/util/LanguagePackManagerImpl;Lcom/touchtype_fluency/util/ProgressListener;Lcom/touchtype_fluency/util/LanguagePack;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/touchtype_fluency/util/LanguagePackManagerImpl$3;->this$0:Lcom/touchtype_fluency/util/LanguagePackManagerImpl;

    iput-object p2, p0, Lcom/touchtype_fluency/util/LanguagePackManagerImpl$3;->val$listener:Lcom/touchtype_fluency/util/ProgressListener;

    iput-object p3, p0, Lcom/touchtype_fluency/util/LanguagePackManagerImpl$3;->val$language:Lcom/touchtype_fluency/util/LanguagePack;

    .line 339
    invoke-direct {p0}, Lcom/touchtype_fluency/util/ProgressListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(ZZZ)V
    .locals 3
    .parameter "success"
    .parameter "cancelled"
    .parameter "digestOK"

    .prologue
    .line 348
    iget-object v0, p0, Lcom/touchtype_fluency/util/LanguagePackManagerImpl$3;->this$0:Lcom/touchtype_fluency/util/LanguagePackManagerImpl;

    iget-object v1, p0, Lcom/touchtype_fluency/util/LanguagePackManagerImpl$3;->val$language:Lcom/touchtype_fluency/util/LanguagePack;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/touchtype_fluency/util/LanguagePackManagerImpl;->enableLanguage(Lcom/touchtype_fluency/util/LanguagePack;Z)Z

    move-result v0

    and-int/2addr p1, v0

    .line 349
    iget-object v0, p0, Lcom/touchtype_fluency/util/LanguagePackManagerImpl$3;->val$listener:Lcom/touchtype_fluency/util/ProgressListener;

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/touchtype_fluency/util/LanguagePackManagerImpl$3;->val$listener:Lcom/touchtype_fluency/util/ProgressListener;

    invoke-virtual {v0, p1, p2, p3}, Lcom/touchtype_fluency/util/ProgressListener;->onComplete(ZZZ)V

    .line 352
    :cond_0
    return-void
.end method

.method public onProgress(II)V
    .locals 1
    .parameter "current"
    .parameter "maximum"

    .prologue
    .line 342
    iget-object v0, p0, Lcom/touchtype_fluency/util/LanguagePackManagerImpl$3;->val$listener:Lcom/touchtype_fluency/util/ProgressListener;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/touchtype_fluency/util/LanguagePackManagerImpl$3;->val$listener:Lcom/touchtype_fluency/util/ProgressListener;

    invoke-virtual {v0, p1, p2}, Lcom/touchtype_fluency/util/ProgressListener;->onProgress(II)V

    .line 345
    :cond_0
    return-void
.end method
