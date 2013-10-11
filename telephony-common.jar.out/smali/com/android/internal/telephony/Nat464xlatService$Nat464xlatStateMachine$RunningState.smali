.class Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine$RunningState;
.super Lcom/android/internal/util/State;
.source "Nat464xlatService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RunningState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine$RunningState;->this$1:Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 217
    const-string v1, "Nat464xlatService"

    const-string v2, "transitioned to RunningState"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/android/internal/telephony/Nat464xlatConstants;->ACTION_NAT_464XLAT_STATE_CHANGED:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 219
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Lcom/android/internal/telephony/Nat464xlatConstants;->DATA_STATE:Ljava/lang/String;

    sget-object v2, Lcom/android/internal/telephony/Nat464xlatConstants;->STATE_RUNNING:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    sget-object v1, Lcom/android/internal/telephony/Nat464xlatConstants;->DATA_UPSTREAM_INTERFACE:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine$RunningState;->this$1:Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;

    iget-object v2, v2, Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;->this$0:Lcom/android/internal/telephony/Nat464xlatService;

    #getter for: Lcom/android/internal/telephony/Nat464xlatService;->mUpstreamInterface:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/internal/telephony/Nat464xlatService;->access$700(Lcom/android/internal/telephony/Nat464xlatService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    sget-object v1, Lcom/android/internal/telephony/Nat464xlatConstants;->DATA_CLAT_INTERFACE:Ljava/lang/String;

    const-string v2, "clat4"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    iget-object v1, p0, Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine$RunningState;->this$1:Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;

    iget-object v1, v1, Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;->this$0:Lcom/android/internal/telephony/Nat464xlatService;

    #getter for: Lcom/android/internal/telephony/Nat464xlatService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/telephony/Nat464xlatService;->access$1200(Lcom/android/internal/telephony/Nat464xlatService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 223
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .parameter "message"

    .prologue
    .line 226
    const-string v1, "Nat464xlatService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RunningState.processMessage what="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const/4 v0, 0x1

    .line 228
    .local v0, retValue:Z
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 241
    const/4 v0, 0x0

    .line 244
    :goto_0
    :pswitch_0
    return v0

    .line 230
    :pswitch_1
    const-string v1, "Nat464xlatService"

    const-string v2, "got upstream interface up while clat is running"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 233
    :pswitch_2
    iget-object v1, p0, Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine$RunningState;->this$1:Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;

    iget-object v2, p0, Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine$RunningState;->this$1:Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;

    #getter for: Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;->mStoppingState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;->access$800(Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    #calls: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;->access$1300(Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 238
    :pswitch_3
    iget-object v1, p0, Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine$RunningState;->this$1:Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;

    iget-object v2, p0, Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine$RunningState;->this$1:Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;

    #getter for: Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;->mStoppingState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;->access$800(Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    #calls: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;->access$1400(Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 228
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
