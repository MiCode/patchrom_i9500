.class Lcom/nuance/swype/connect/manager/ResearchManager$1;
.super Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;
.source "ResearchManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/connect/manager/ResearchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/connect/manager/ResearchManager;


# direct methods
.method constructor <init>(Lcom/nuance/swype/connect/manager/ResearchManager;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/nuance/swype/connect/manager/ResearchManager$1;->this$0:Lcom/nuance/swype/connect/manager/ResearchManager;

    invoke-direct {p0}, Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationIntChange(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uploadFrequencyChangeListener.setConfiguration("

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

    .line 107
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/ResearchManager$1;->this$0:Lcom/nuance/swype/connect/manager/ResearchManager;

    #setter for: Lcom/nuance/swype/connect/manager/ResearchManager;->uploadInterval:I
    invoke-static {v0, p1}, Lcom/nuance/swype/connect/manager/ResearchManager;->access$002(Lcom/nuance/swype/connect/manager/ResearchManager;I)I

    .line 108
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/ResearchManager$1;->this$0:Lcom/nuance/swype/connect/manager/ResearchManager;

    #calls: Lcom/nuance/swype/connect/manager/ResearchManager;->determineNextUpload()V
    invoke-static {v0}, Lcom/nuance/swype/connect/manager/ResearchManager;->access$100(Lcom/nuance/swype/connect/manager/ResearchManager;)V

    .line 109
    return-void
.end method
