.class Lcom/nuance/swype/connect/ConnectManager$5;
.super Ljava/lang/Object;
.source "ConnectManager.java"

# interfaces
.implements Lcom/nuance/swype/connect/system/NetworkListener;


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
    .line 183
    iput-object p1, p0, Lcom/nuance/swype/connect/ConnectManager$5;->this$0:Lcom/nuance/swype/connect/ConnectManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNetworkAvailable()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 187
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectManager$5;->this$0:Lcom/nuance/swype/connect/ConnectManager;

    #setter for: Lcom/nuance/swype/connect/ConnectManager;->hasConnectivity:Z
    invoke-static {v0, v2}, Lcom/nuance/swype/connect/ConnectManager;->access$402(Lcom/nuance/swype/connect/ConnectManager;Z)Z

    .line 188
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectManager$5;->this$0:Lcom/nuance/swype/connect/ConnectManager;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectManager;->flushAnalytics()V

    .line 192
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectManager$5;->this$0:Lcom/nuance/swype/connect/ConnectManager;

    const/4 v1, 0x0

    #setter for: Lcom/nuance/swype/connect/ConnectManager;->delayQueueProcessing:Z
    invoke-static {v0, v1}, Lcom/nuance/swype/connect/ConnectManager;->access$502(Lcom/nuance/swype/connect/ConnectManager;Z)Z

    .line 193
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectManager$5;->this$0:Lcom/nuance/swype/connect/ConnectManager;

    #getter for: Lcom/nuance/swype/connect/ConnectManager;->mHandler:Lcom/nuance/swype/connect/ConnectManager$MessageHandler;
    invoke-static {v0}, Lcom/nuance/swype/connect/ConnectManager;->access$600(Lcom/nuance/swype/connect/ConnectManager;)Lcom/nuance/swype/connect/ConnectManager$MessageHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectManager$5;->this$0:Lcom/nuance/swype/connect/ConnectManager;

    #getter for: Lcom/nuance/swype/connect/ConnectManager;->mHandler:Lcom/nuance/swype/connect/ConnectManager$MessageHandler;
    invoke-static {v0}, Lcom/nuance/swype/connect/ConnectManager;->access$600(Lcom/nuance/swype/connect/ConnectManager;)Lcom/nuance/swype/connect/ConnectManager$MessageHandler;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/nuance/swype/connect/ConnectManager$MessageHandler;->removeMessages(I)V

    .line 195
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectManager$5;->this$0:Lcom/nuance/swype/connect/ConnectManager;

    const/4 v1, 0x2

    #setter for: Lcom/nuance/swype/connect/ConnectManager;->backdownCounter:I
    invoke-static {v0, v1}, Lcom/nuance/swype/connect/ConnectManager;->access$702(Lcom/nuance/swype/connect/ConnectManager;I)I

    .line 197
    :cond_0
    return-void
.end method

.method public onNetworkDisconnect()V
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectManager$5;->this$0:Lcom/nuance/swype/connect/ConnectManager;

    const/4 v1, 0x0

    #setter for: Lcom/nuance/swype/connect/ConnectManager;->hasConnectivity:Z
    invoke-static {v0, v1}, Lcom/nuance/swype/connect/ConnectManager;->access$402(Lcom/nuance/swype/connect/ConnectManager;Z)Z

    .line 202
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectManager$5;->this$0:Lcom/nuance/swype/connect/ConnectManager;

    const/4 v1, 0x0

    #setter for: Lcom/nuance/swype/connect/ConnectManager;->processingCommand:Lcom/nuance/swype/connect/util/Command;
    invoke-static {v0, v1}, Lcom/nuance/swype/connect/ConnectManager;->access$802(Lcom/nuance/swype/connect/ConnectManager;Lcom/nuance/swype/connect/util/Command;)Lcom/nuance/swype/connect/util/Command;

    .line 203
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectManager$5;->this$0:Lcom/nuance/swype/connect/ConnectManager;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectManager;->flushAnalytics()V

    .line 204
    return-void
.end method

.method public onNetworkStable()V
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectManager$5;->this$0:Lcom/nuance/swype/connect/ConnectManager;

    const/4 v1, 0x1

    #setter for: Lcom/nuance/swype/connect/ConnectManager;->hasConnectivity:Z
    invoke-static {v0, v1}, Lcom/nuance/swype/connect/ConnectManager;->access$402(Lcom/nuance/swype/connect/ConnectManager;Z)Z

    .line 216
    return-void
.end method

.method public onNetworkUnavailable()V
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectManager$5;->this$0:Lcom/nuance/swype/connect/ConnectManager;

    const/4 v1, 0x0

    #setter for: Lcom/nuance/swype/connect/ConnectManager;->hasConnectivity:Z
    invoke-static {v0, v1}, Lcom/nuance/swype/connect/ConnectManager;->access$402(Lcom/nuance/swype/connect/ConnectManager;Z)Z

    .line 209
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectManager$5;->this$0:Lcom/nuance/swype/connect/ConnectManager;

    const/4 v1, 0x0

    #setter for: Lcom/nuance/swype/connect/ConnectManager;->processingCommand:Lcom/nuance/swype/connect/util/Command;
    invoke-static {v0, v1}, Lcom/nuance/swype/connect/ConnectManager;->access$802(Lcom/nuance/swype/connect/ConnectManager;Lcom/nuance/swype/connect/util/Command;)Lcom/nuance/swype/connect/util/Command;

    .line 210
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectManager$5;->this$0:Lcom/nuance/swype/connect/ConnectManager;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectManager;->flushAnalytics()V

    .line 211
    return-void
.end method
