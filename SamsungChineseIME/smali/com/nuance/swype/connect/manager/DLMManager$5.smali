.class Lcom/nuance/swype/connect/manager/DLMManager$5;
.super Ljava/lang/Object;
.source "DLMManager.java"

# interfaces
.implements Lcom/nuance/swype/connect/manager/interfaces/LanguageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/connect/manager/DLMManager;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/connect/manager/DLMManager;


# direct methods
.method constructor <init>(Lcom/nuance/swype/connect/manager/DLMManager;)V
    .locals 0
    .parameter

    .prologue
    .line 605
    iput-object p1, p0, Lcom/nuance/swype/connect/manager/DLMManager$5;->this$0:Lcom/nuance/swype/connect/manager/DLMManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLanguageUpdate(Ljava/lang/String;II)V
    .locals 4
    .parameter "language"
    .parameter "code"
    .parameter "category"

    .prologue
    .line 608
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DLMManager.onLanguageUpdate ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/connect/util/Logger;->v(Ljava/lang/String;)V

    .line 611
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/DLMManager$5;->this$0:Lcom/nuance/swype/connect/manager/DLMManager;

    #getter for: Lcom/nuance/swype/connect/manager/DLMManager;->currentCategory:I
    invoke-static {v2}, Lcom/nuance/swype/connect/manager/DLMManager;->access$100(Lcom/nuance/swype/connect/manager/DLMManager;)I

    move-result v2

    if-eq v2, p3, :cond_0

    .line 612
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/DLMManager$5;->this$0:Lcom/nuance/swype/connect/manager/DLMManager;

    #getter for: Lcom/nuance/swype/connect/manager/DLMManager;->categoryState:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/nuance/swype/connect/manager/DLMManager;->access$600(Lcom/nuance/swype/connect/manager/DLMManager;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 613
    .local v1, state:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/nuance/swype/connect/manager/DLMManager$DlmState;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;

    invoke-virtual {v2}, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;->pause()V

    goto :goto_0

    .line 617
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #state:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/nuance/swype/connect/manager/DLMManager$DlmState;>;"
    :cond_0
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/DLMManager$5;->this$0:Lcom/nuance/swype/connect/manager/DLMManager;

    #setter for: Lcom/nuance/swype/connect/manager/DLMManager;->currentCategory:I
    invoke-static {v2, p3}, Lcom/nuance/swype/connect/manager/DLMManager;->access$102(Lcom/nuance/swype/connect/manager/DLMManager;I)I

    .line 618
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/DLMManager$5;->this$0:Lcom/nuance/swype/connect/manager/DLMManager;

    iget-object v2, v2, Lcom/nuance/swype/connect/manager/DLMManager;->managerStartState:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    sget-object v3, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;->STARTING:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    if-ne v2, v3, :cond_1

    .line 619
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/DLMManager$5;->this$0:Lcom/nuance/swype/connect/manager/DLMManager;

    invoke-virtual {v2}, Lcom/nuance/swype/connect/manager/DLMManager;->managerStartComplete()V

    .line 621
    :cond_1
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/DLMManager$5;->this$0:Lcom/nuance/swype/connect/manager/DLMManager;

    iget-object v2, v2, Lcom/nuance/swype/connect/manager/DLMManager;->managerStartState:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    sget-object v3, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;->STARTED:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    if-ne v2, v3, :cond_2

    .line 622
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/DLMManager$5;->this$0:Lcom/nuance/swype/connect/manager/DLMManager;

    #calls: Lcom/nuance/swype/connect/manager/DLMManager;->checkDlmSync()V
    invoke-static {v2}, Lcom/nuance/swype/connect/manager/DLMManager;->access$700(Lcom/nuance/swype/connect/manager/DLMManager;)V

    .line 624
    :cond_2
    return-void
.end method

.method public onLocaleUpdate(Ljava/lang/String;)V
    .locals 0
    .parameter "locale"

    .prologue
    .line 627
    return-void
.end method
