.class Lcom/nuance/swype/connect/manager/CategoryManager$1;
.super Ljava/lang/Object;
.source "CategoryManager.java"

# interfaces
.implements Lcom/nuance/swype/connect/manager/interfaces/LanguageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/connect/manager/CategoryManager;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/connect/manager/CategoryManager;


# direct methods
.method constructor <init>(Lcom/nuance/swype/connect/manager/CategoryManager;)V
    .locals 0
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/nuance/swype/connect/manager/CategoryManager$1;->this$0:Lcom/nuance/swype/connect/manager/CategoryManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLanguageUpdate(Ljava/lang/String;II)V
    .locals 2
    .parameter "language"
    .parameter "code"
    .parameter "coreId"

    .prologue
    .line 153
    if-eqz p3, :cond_0

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CategoryManager.onLanguageUpdate("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/CategoryManager$1;->this$0:Lcom/nuance/swype/connect/manager/CategoryManager;

    #setter for: Lcom/nuance/swype/connect/manager/CategoryManager;->currentLanguageCode:I
    invoke-static {v0, p2}, Lcom/nuance/swype/connect/manager/CategoryManager;->access$002(Lcom/nuance/swype/connect/manager/CategoryManager;I)I

    .line 157
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/CategoryManager$1;->this$0:Lcom/nuance/swype/connect/manager/CategoryManager;

    #setter for: Lcom/nuance/swype/connect/manager/CategoryManager;->currentCore:I
    invoke-static {v0, p3}, Lcom/nuance/swype/connect/manager/CategoryManager;->access$102(Lcom/nuance/swype/connect/manager/CategoryManager;I)I

    .line 158
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/CategoryManager$1;->this$0:Lcom/nuance/swype/connect/manager/CategoryManager;

    iget-object v0, v0, Lcom/nuance/swype/connect/manager/CategoryManager;->managerStartState:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    sget-object v1, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;->STARTED:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    if-ne v0, v1, :cond_0

    .line 159
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/CategoryManager$1;->this$0:Lcom/nuance/swype/connect/manager/CategoryManager;

    #calls: Lcom/nuance/swype/connect/manager/CategoryManager;->processNextCategory()V
    invoke-static {v0}, Lcom/nuance/swype/connect/manager/CategoryManager;->access$200(Lcom/nuance/swype/connect/manager/CategoryManager;)V

    .line 162
    :cond_0
    return-void
.end method

.method public onLocaleUpdate(Ljava/lang/String;)V
    .locals 2
    .parameter "locale"

    .prologue
    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CategoryManager.onLocaleUpdate("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/CategoryManager$1;->this$0:Lcom/nuance/swype/connect/manager/CategoryManager;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/manager/CategoryManager;->status()V

    .line 167
    return-void
.end method
