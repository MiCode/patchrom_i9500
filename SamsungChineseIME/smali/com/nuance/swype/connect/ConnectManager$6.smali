.class Lcom/nuance/swype/connect/ConnectManager$6;
.super Ljava/lang/Object;
.source "ConnectManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/connect/ConnectManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/connect/ConnectManager;


# direct methods
.method constructor <init>(Lcom/nuance/swype/connect/ConnectManager;)V
    .locals 0
    .parameter

    .prologue
    .line 219
    iput-object p1, p0, Lcom/nuance/swype/connect/ConnectManager$6;->this$0:Lcom/nuance/swype/connect/ConnectManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConnectManager() NetworkTimeout runnable hit..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/connect/ConnectManager$6;->this$0:Lcom/nuance/swype/connect/ConnectManager;

    #getter for: Lcom/nuance/swype/connect/ConnectManager;->networkTimeout:I
    invoke-static {v1}, Lcom/nuance/swype/connect/ConnectManager;->access$900(Lcom/nuance/swype/connect/ConnectManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectManager$6;->this$0:Lcom/nuance/swype/connect/ConnectManager;

    const/4 v1, 0x1

    #setter for: Lcom/nuance/swype/connect/ConnectManager;->networkTimeoutOccured:Z
    invoke-static {v0, v1}, Lcom/nuance/swype/connect/ConnectManager;->access$1002(Lcom/nuance/swype/connect/ConnectManager;Z)Z

    .line 223
    return-void
.end method
