.class Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService$7;
.super Ljava/lang/Object;
.source "SimeSwiftKeyService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->enableModelsInTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;


# direct methods
.method constructor <init>(Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;)V
    .locals 0
    .parameter

    .prologue
    .line 1758
    iput-object p1, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService$7;->this$0:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1763
    iget-object v0, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService$7;->this$0:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;

    #getter for: Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mCurrentSession:Lcom/touchtype_fluency/util/SwiftKeySession;
    invoke-static {v0}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->access$800(Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;)Lcom/touchtype_fluency/util/SwiftKeySession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/touchtype_fluency/util/SwiftKeySession;->getSession()Lcom/touchtype_fluency/Session;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService$7;->this$0:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;

    #getter for: Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mEnabledModels:Ljava/util/List;
    invoke-static {v1}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->access$1600(Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/touchtype_fluency/TagSelectors;->taggedWith(Ljava/util/Collection;)Lcom/touchtype_fluency/TagSelector;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/touchtype_fluency/Session;->enableModels(Lcom/touchtype_fluency/TagSelector;)V

    .line 1764
    const-string v0, "SimeSwiftKeyService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setInputLanguage in task"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService$7;->this$0:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;

    #getter for: Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->mEnabledModels:Ljava/util/List;
    invoke-static {v2}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->access$1600(Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1765
    return-void
.end method
