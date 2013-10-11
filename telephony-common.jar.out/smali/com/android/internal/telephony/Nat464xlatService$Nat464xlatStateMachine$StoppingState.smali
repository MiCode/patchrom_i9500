.class Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine$StoppingState;
.super Lcom/android/internal/util/State;
.source "Nat464xlatService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StoppingState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;)V
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine$StoppingState;->this$1:Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 5

    .prologue
    .line 251
    const-string v2, "Nat464xlatService"

    const-string v3, "StoppingState: stopping clat"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine$StoppingState;->this$1:Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;

    iget-object v2, v2, Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;->this$0:Lcom/android/internal/telephony/Nat464xlatService;

    #getter for: Lcom/android/internal/telephony/Nat464xlatService;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v2}, Lcom/android/internal/telephony/Nat464xlatService;->access$600(Lcom/android/internal/telephony/Nat464xlatService;)Landroid/os/INetworkManagementService;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/INetworkManagementService;->stopClatd()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :goto_0
    const-string v2, "Nat464xlatService"

    const-string v3, "StoppingState: clat stopped"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/android/internal/telephony/Nat464xlatConstants;->ACTION_NAT_464XLAT_STATE_CHANGED:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 260
    .local v1, intent:Landroid/content/Intent;
    sget-object v2, Lcom/android/internal/telephony/Nat464xlatConstants;->DATA_STATE:Ljava/lang/String;

    sget-object v3, Lcom/android/internal/telephony/Nat464xlatConstants;->STATE_STOPPING:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    sget-object v2, Lcom/android/internal/telephony/Nat464xlatConstants;->DATA_UPSTREAM_INTERFACE:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine$StoppingState;->this$1:Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;

    iget-object v3, v3, Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;->this$0:Lcom/android/internal/telephony/Nat464xlatService;

    #getter for: Lcom/android/internal/telephony/Nat464xlatService;->mUpstreamInterface:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/telephony/Nat464xlatService;->access$700(Lcom/android/internal/telephony/Nat464xlatService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 262
    sget-object v2, Lcom/android/internal/telephony/Nat464xlatConstants;->DATA_CLAT_INTERFACE:Ljava/lang/String;

    const-string v3, "clat4"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 263
    iget-object v2, p0, Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine$StoppingState;->this$1:Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;

    iget-object v2, v2, Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;->this$0:Lcom/android/internal/telephony/Nat464xlatService;

    #getter for: Lcom/android/internal/telephony/Nat464xlatService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/telephony/Nat464xlatService;->access$1200(Lcom/android/internal/telephony/Nat464xlatService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 265
    iget-object v2, p0, Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine$StoppingState;->this$1:Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;

    iget-object v2, v2, Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;->this$0:Lcom/android/internal/telephony/Nat464xlatService;

    const/4 v3, 0x0

    #setter for: Lcom/android/internal/telephony/Nat464xlatService;->mUpstreamInterface:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/Nat464xlatService;->access$702(Lcom/android/internal/telephony/Nat464xlatService;Ljava/lang/String;)Ljava/lang/String;

    .line 266
    iget-object v2, p0, Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine$StoppingState;->this$1:Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;

    iget-object v3, p0, Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine$StoppingState;->this$1:Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;

    #getter for: Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;->mStoppedState:Lcom/android/internal/util/State;
    invoke-static {v3}, Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;->access$300(Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;)Lcom/android/internal/util/State;

    move-result-object v3

    #calls: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;->access$1500(Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;Lcom/android/internal/util/IState;)V

    .line 267
    return-void

    .line 254
    .end local v1           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 255
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "Nat464xlatService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "StoppingState failed to stop clat: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .parameter "message"

    .prologue
    .line 270
    const-string v1, "Nat464xlatService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StoppingState.processMessage what="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    const/4 v0, 0x1

    .line 272
    .local v0, retValue:Z
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 283
    const/4 v0, 0x0

    .line 286
    :goto_0
    :pswitch_0
    return v0

    .line 274
    :pswitch_1
    const-string v1, "Nat464xlatService"

    const-string v2, "got upstream interface up while stopping clat"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 272
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
