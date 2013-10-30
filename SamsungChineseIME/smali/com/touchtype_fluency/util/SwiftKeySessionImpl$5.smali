.class Lcom/touchtype_fluency/util/SwiftKeySessionImpl$5;
.super Ljava/lang/Object;
.source "SwiftKeySessionImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->replaceLanguages(Ljava/util/List;Ljava/util/List;Lcom/touchtype_fluency/util/LanguagePackManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/touchtype_fluency/util/SwiftKeySessionImpl;

.field private final synthetic val$lpm:Lcom/touchtype_fluency/util/LanguagePackManager;

.field private final synthetic val$toAdd:Ljava/util/List;

.field private final synthetic val$toRemove:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/touchtype_fluency/util/SwiftKeySessionImpl;Ljava/util/List;Ljava/util/List;Lcom/touchtype_fluency/util/LanguagePackManager;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/touchtype_fluency/util/SwiftKeySessionImpl$5;->this$0:Lcom/touchtype_fluency/util/SwiftKeySessionImpl;

    iput-object p2, p0, Lcom/touchtype_fluency/util/SwiftKeySessionImpl$5;->val$toRemove:Ljava/util/List;

    iput-object p3, p0, Lcom/touchtype_fluency/util/SwiftKeySessionImpl$5;->val$toAdd:Ljava/util/List;

    iput-object p4, p0, Lcom/touchtype_fluency/util/SwiftKeySessionImpl$5;->val$lpm:Lcom/touchtype_fluency/util/LanguagePackManager;

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 175
    iget-object v2, p0, Lcom/touchtype_fluency/util/SwiftKeySessionImpl$5;->val$toRemove:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 176
    iget-object v2, p0, Lcom/touchtype_fluency/util/SwiftKeySessionImpl$5;->val$toRemove:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 191
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/touchtype_fluency/util/SwiftKeySessionImpl$5;->val$toAdd:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 192
    iget-object v2, p0, Lcom/touchtype_fluency/util/SwiftKeySessionImpl$5;->val$toAdd:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_5

    .line 202
    :cond_2
    :goto_3
    return-void

    .line 176
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/touchtype_fluency/util/LanguagePack;

    .line 177
    .local v1, language:Lcom/touchtype_fluency/util/LanguagePack;
    iget-object v3, p0, Lcom/touchtype_fluency/util/SwiftKeySessionImpl$5;->this$0:Lcom/touchtype_fluency/util/SwiftKeySessionImpl;

    #calls: Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->isPreempted(Ljava/lang/Runnable;)Z
    invoke-static {v3, v6}, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->access$0(Lcom/touchtype_fluency/util/SwiftKeySessionImpl;Ljava/lang/Runnable;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 178
    const-string v2, "SwiftKeySession"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "preempted before removing "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/touchtype_fluency/util/LanguagePack;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/touchtype_fluency/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 182
    :cond_4
    :try_start_0
    iget-object v3, p0, Lcom/touchtype_fluency/util/SwiftKeySessionImpl$5;->this$0:Lcom/touchtype_fluency/util/SwiftKeySessionImpl;

    #getter for: Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->mSession:Lcom/touchtype_fluency/Session;
    invoke-static {v3}, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->access$6(Lcom/touchtype_fluency/util/SwiftKeySessionImpl;)Lcom/touchtype_fluency/Session;

    move-result-object v3

    .line 183
    invoke-interface {v1}, Lcom/touchtype_fluency/util/LanguagePack;->getDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    .line 182
    invoke-static {v4}, Lcom/touchtype_fluency/ModelSetDescription;->fromFile(Ljava/lang/String;)Lcom/touchtype_fluency/ModelSetDescription;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/touchtype_fluency/Session;->unload(Lcom/touchtype_fluency/ModelSetDescription;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 185
    :catch_0
    move-exception v0

    .line 187
    .local v0, e:Ljava/io/IOException;
    const-string v3, "SwiftKeySession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/touchtype_fluency/util/LanguagePack;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " not unloaded"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/touchtype_fluency/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 192
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #language:Lcom/touchtype_fluency/util/LanguagePack;
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/touchtype_fluency/util/LanguagePack;

    .line 193
    .restart local v1       #language:Lcom/touchtype_fluency/util/LanguagePack;
    iget-object v3, p0, Lcom/touchtype_fluency/util/SwiftKeySessionImpl$5;->this$0:Lcom/touchtype_fluency/util/SwiftKeySessionImpl;

    #calls: Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->isPreempted(Ljava/lang/Runnable;)Z
    invoke-static {v3, v6}, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->access$0(Lcom/touchtype_fluency/util/SwiftKeySessionImpl;Ljava/lang/Runnable;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 194
    const-string v2, "SwiftKeySession"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "preempted before adding "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/touchtype_fluency/util/LanguagePack;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/touchtype_fluency/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 197
    :cond_6
    iget-object v3, p0, Lcom/touchtype_fluency/util/SwiftKeySessionImpl$5;->this$0:Lcom/touchtype_fluency/util/SwiftKeySessionImpl;

    #calls: Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->loadStaticModel(Lcom/touchtype_fluency/util/LanguagePack;Ljava/lang/Runnable;)Z
    invoke-static {v3, v1, p0}, Lcom/touchtype_fluency/util/SwiftKeySessionImpl;->access$4(Lcom/touchtype_fluency/util/SwiftKeySessionImpl;Lcom/touchtype_fluency/util/LanguagePack;Ljava/lang/Runnable;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 198
    iget-object v3, p0, Lcom/touchtype_fluency/util/SwiftKeySessionImpl$5;->val$lpm:Lcom/touchtype_fluency/util/LanguagePackManager;

    invoke-virtual {v3, v1}, Lcom/touchtype_fluency/util/LanguagePackManager;->setLanguageBroken(Lcom/touchtype_fluency/util/LanguagePack;)V

    goto/16 :goto_2
.end method
