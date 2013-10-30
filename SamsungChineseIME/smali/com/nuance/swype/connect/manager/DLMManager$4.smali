.class Lcom/nuance/swype/connect/manager/DLMManager$4;
.super Ljava/lang/Object;
.source "DLMManager.java"

# interfaces
.implements Lcom/nuance/swype/connect/manager/interfaces/AccountListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/connect/manager/DLMManager;
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
    .line 273
    iput-object p1, p0, Lcom/nuance/swype/connect/manager/DLMManager$4;->this$0:Lcom/nuance/swype/connect/manager/DLMManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInvalidated()V
    .locals 1

    .prologue
    .line 275
    const-string v0, "DLMManager.onInvalidated"

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/DLMManager$4;->this$0:Lcom/nuance/swype/connect/manager/DLMManager;

    #calls: Lcom/nuance/swype/connect/manager/DLMManager;->disableDlmSync()V
    invoke-static {v0}, Lcom/nuance/swype/connect/manager/DLMManager;->access$300(Lcom/nuance/swype/connect/manager/DLMManager;)V

    .line 277
    return-void
.end method

.method public onLinked()V
    .locals 1

    .prologue
    .line 280
    const-string v0, "DLMManager.onLinked"

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/DLMManager$4;->this$0:Lcom/nuance/swype/connect/manager/DLMManager;

    #getter for: Lcom/nuance/swype/connect/manager/DLMManager;->userDlmEnabled:Z
    invoke-static {v0}, Lcom/nuance/swype/connect/manager/DLMManager;->access$400(Lcom/nuance/swype/connect/manager/DLMManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/DLMManager$4;->this$0:Lcom/nuance/swype/connect/manager/DLMManager;

    #calls: Lcom/nuance/swype/connect/manager/DLMManager;->enableDlmSync()V
    invoke-static {v0}, Lcom/nuance/swype/connect/manager/DLMManager;->access$500(Lcom/nuance/swype/connect/manager/DLMManager;)V

    .line 284
    :cond_0
    return-void
.end method
