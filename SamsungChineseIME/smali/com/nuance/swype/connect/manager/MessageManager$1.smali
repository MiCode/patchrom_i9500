.class Lcom/nuance/swype/connect/manager/MessageManager$1;
.super Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;
.source "MessageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/connect/manager/MessageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/connect/manager/MessageManager;


# direct methods
.method constructor <init>(Lcom/nuance/swype/connect/manager/MessageManager;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/nuance/swype/connect/manager/MessageManager$1;->this$0:Lcom/nuance/swype/connect/manager/MessageManager;

    invoke-direct {p0}, Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationIntChange(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "messageExperationListener.setConfiguration("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/MessageManager$1;->this$0:Lcom/nuance/swype/connect/manager/MessageManager;

    #setter for: Lcom/nuance/swype/connect/manager/MessageManager;->messageExperationSeconds:I
    invoke-static {v0, p1}, Lcom/nuance/swype/connect/manager/MessageManager;->access$002(Lcom/nuance/swype/connect/manager/MessageManager;I)I

    .line 82
    return-void
.end method
