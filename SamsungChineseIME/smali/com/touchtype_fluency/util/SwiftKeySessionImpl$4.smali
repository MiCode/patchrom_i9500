.class Lcom/touchtype_fluency/util/SwiftKeySessionImpl$4;
.super Ljava/lang/Object;
.source "SwiftKeySessionImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->loadLanguages(Ljava/util/List;Lcom/touchtype_fluency/util/LanguagePackManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/touchtype_fluency/util/SwiftKeySessionImpl;

.field private final synthetic val$languages:Ljava/util/List;

.field private final synthetic val$lpm:Lcom/touchtype_fluency/util/LanguagePackManager;


# direct methods
.method constructor <init>(Lcom/touchtype_fluency/util/SwiftKeySessionImpl;Lcom/touchtype_fluency/util/LanguagePackManager;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/touchtype_fluency/util/SwiftKeySessionImpl$4;->this$0:Lcom/touchtype_fluency/util/SwiftKeySessionImpl;

    iput-object p2, p0, Lcom/touchtype_fluency/util/SwiftKeySessionImpl$4;->val$lpm:Lcom/touchtype_fluency/util/LanguagePackManager;

    iput-object p3, p0, Lcom/touchtype_fluency/util/SwiftKeySessionImpl$4;->val$languages:Ljava/util/List;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 122
    iget-object v1, p0, Lcom/touchtype_fluency/util/SwiftKeySessionImpl$4;->this$0:Lcom/touchtype_fluency/util/SwiftKeySessionImpl;

    #calls: Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->isPreempted(Ljava/lang/Runnable;)Z
    invoke-static {v1, p0}, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->access$0(Lcom/touchtype_fluency/util/SwiftKeySessionImpl;Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 123
    iget-object v1, p0, Lcom/touchtype_fluency/util/SwiftKeySessionImpl$4;->this$0:Lcom/touchtype_fluency/util/SwiftKeySessionImpl;

    #calls: Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->unloadAllModels()V
    invoke-static {v1}, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->access$1(Lcom/touchtype_fluency/util/SwiftKeySessionImpl;)V

    .line 126
    :cond_0
    iget-object v1, p0, Lcom/touchtype_fluency/util/SwiftKeySessionImpl$4;->this$0:Lcom/touchtype_fluency/util/SwiftKeySessionImpl;

    #calls: Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->isPreempted(Ljava/lang/Runnable;)Z
    invoke-static {v1, p0}, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->access$0(Lcom/touchtype_fluency/util/SwiftKeySessionImpl;Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/touchtype_fluency/util/SwiftKeySessionImpl$4;->this$0:Lcom/touchtype_fluency/util/SwiftKeySessionImpl;

    #getter for: Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->mDynamicModelsEnabled:Z
    invoke-static {v1}, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->access$2(Lcom/touchtype_fluency/util/SwiftKeySessionImpl;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 127
    iget-object v1, p0, Lcom/touchtype_fluency/util/SwiftKeySessionImpl$4;->this$0:Lcom/touchtype_fluency/util/SwiftKeySessionImpl;

    iget-object v2, p0, Lcom/touchtype_fluency/util/SwiftKeySessionImpl$4;->val$lpm:Lcom/touchtype_fluency/util/LanguagePackManager;

    invoke-virtual {v2}, Lcom/touchtype_fluency/util/LanguagePackManager;->getDynamicModel()Ljava/io/File;

    move-result-object v2

    #calls: Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->loadDynamicModels(Ljava/io/File;)V
    invoke-static {v1, v2}, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->access$3(Lcom/touchtype_fluency/util/SwiftKeySessionImpl;Ljava/io/File;)V

    .line 130
    :cond_1
    iget-object v1, p0, Lcom/touchtype_fluency/util/SwiftKeySessionImpl$4;->val$languages:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 131
    iget-object v1, p0, Lcom/touchtype_fluency/util/SwiftKeySessionImpl$4;->val$languages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_4

    .line 142
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/touchtype_fluency/util/SwiftKeySessionImpl$4;->this$0:Lcom/touchtype_fluency/util/SwiftKeySessionImpl;

    #calls: Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->clearPreemptingTask()V
    invoke-static {v1}, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->access$5(Lcom/touchtype_fluency/util/SwiftKeySessionImpl;)V

    .line 143
    return-void

    .line 131
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/touchtype_fluency/util/LanguagePack;

    .line 132
    .local v0, language:Lcom/touchtype_fluency/util/LanguagePack;
    iget-object v2, p0, Lcom/touchtype_fluency/util/SwiftKeySessionImpl$4;->this$0:Lcom/touchtype_fluency/util/SwiftKeySessionImpl;

    #calls: Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->isPreempted(Ljava/lang/Runnable;)Z
    invoke-static {v2, p0}, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->access$0(Lcom/touchtype_fluency/util/SwiftKeySessionImpl;Ljava/lang/Runnable;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 133
    const-string v1, "SwiftKeySession"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "preempted before loading "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/touchtype_fluency/util/LanguagePack;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/touchtype_fluency/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 136
    :cond_5
    iget-object v2, p0, Lcom/touchtype_fluency/util/SwiftKeySessionImpl$4;->this$0:Lcom/touchtype_fluency/util/SwiftKeySessionImpl;

    #calls: Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->loadStaticModel(Lcom/touchtype_fluency/util/LanguagePack;Ljava/lang/Runnable;)Z
    invoke-static {v2, v0, p0}, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->access$4(Lcom/touchtype_fluency/util/SwiftKeySessionImpl;Lcom/touchtype_fluency/util/LanguagePack;Ljava/lang/Runnable;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 137
    iget-object v2, p0, Lcom/touchtype_fluency/util/SwiftKeySessionImpl$4;->val$lpm:Lcom/touchtype_fluency/util/LanguagePackManager;

    invoke-virtual {v2, v0}, Lcom/touchtype_fluency/util/LanguagePackManager;->setLanguageBroken(Lcom/touchtype_fluency/util/LanguagePack;)V

    goto :goto_0
.end method
