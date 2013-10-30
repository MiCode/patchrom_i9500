.class Lcom/touchtype_fluency/util/LanguagePackManagerImpl$2;
.super Ljava/lang/Object;
.source "LanguagePackManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/touchtype_fluency/util/LanguagePackManagerImpl;->verify(Ljava/lang/String;Lcom/touchtype_fluency/util/CompletionListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/touchtype_fluency/util/LanguagePackManagerImpl;

.field private final synthetic val$listener:Lcom/touchtype_fluency/util/CompletionListener;

.field private final synthetic val$session:Lcom/touchtype_fluency/Session;


# direct methods
.method constructor <init>(Lcom/touchtype_fluency/util/LanguagePackManagerImpl;Lcom/touchtype_fluency/Session;Lcom/touchtype_fluency/util/CompletionListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/touchtype_fluency/util/LanguagePackManagerImpl$2;->this$0:Lcom/touchtype_fluency/util/LanguagePackManagerImpl;

    iput-object p2, p0, Lcom/touchtype_fluency/util/LanguagePackManagerImpl$2;->val$session:Lcom/touchtype_fluency/Session;

    iput-object p3, p0, Lcom/touchtype_fluency/util/LanguagePackManagerImpl$2;->val$listener:Lcom/touchtype_fluency/util/CompletionListener;

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 172
    iget-object v1, p0, Lcom/touchtype_fluency/util/LanguagePackManagerImpl$2;->this$0:Lcom/touchtype_fluency/util/LanguagePackManagerImpl;

    #calls: Lcom/touchtype_fluency/util/LanguagePackManagerImpl;->verifyConfiguration()V
    invoke-static {v1}, Lcom/touchtype_fluency/util/LanguagePackManagerImpl;->access$6(Lcom/touchtype_fluency/util/LanguagePackManagerImpl;)V

    .line 173
    iget-object v1, p0, Lcom/touchtype_fluency/util/LanguagePackManagerImpl$2;->this$0:Lcom/touchtype_fluency/util/LanguagePackManagerImpl;

    iget-object v2, p0, Lcom/touchtype_fluency/util/LanguagePackManagerImpl$2;->val$session:Lcom/touchtype_fluency/Session;

    #calls: Lcom/touchtype_fluency/util/LanguagePackManagerImpl;->verifyLanguages(Lcom/touchtype_fluency/Session;)Z
    invoke-static {v1, v2}, Lcom/touchtype_fluency/util/LanguagePackManagerImpl;->access$7(Lcom/touchtype_fluency/util/LanguagePackManagerImpl;Lcom/touchtype_fluency/Session;)Z

    move-result v0

    .line 174
    .local v0, ok:Z
    iget-object v1, p0, Lcom/touchtype_fluency/util/LanguagePackManagerImpl$2;->val$session:Lcom/touchtype_fluency/Session;

    invoke-interface {v1}, Lcom/touchtype_fluency/Session;->dispose()V

    .line 175
    iget-object v1, p0, Lcom/touchtype_fluency/util/LanguagePackManagerImpl$2;->val$listener:Lcom/touchtype_fluency/util/CompletionListener;

    invoke-virtual {v1, v0}, Lcom/touchtype_fluency/util/CompletionListener;->onComplete(Z)V

    .line 176
    return-void
.end method
