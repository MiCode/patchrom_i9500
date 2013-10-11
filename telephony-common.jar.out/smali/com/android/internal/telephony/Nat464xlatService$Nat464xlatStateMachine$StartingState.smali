.class Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine$StartingState;
.super Lcom/android/internal/util/State;
.source "Nat464xlatService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StartingState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine$StartingState;->this$1:Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 7

    .prologue
    .line 167
    const/4 v2, 0x0

    .line 168
    .local v2, linkProperties:Landroid/net/LinkProperties;
    const/4 v1, 0x0

    .line 172
    .local v1, iface:Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine$StartingState;->this$1:Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;

    iget-object v4, v4, Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;->this$0:Lcom/android/internal/telephony/Nat464xlatService;

    #getter for: Lcom/android/internal/telephony/Nat464xlatService;->mConnService:Landroid/net/IConnectivityManager;
    invoke-static {v4}, Lcom/android/internal/telephony/Nat464xlatService;->access$100(Lcom/android/internal/telephony/Nat464xlatService;)Landroid/net/IConnectivityManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/net/IConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 174
    :goto_0
    if-nez v2, :cond_0

    .line 175
    const-string v4, "Nat464xlatService"

    const-string v5, "StartingState: link properties for TYPE_MOBILE returned null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v4, p0, Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine$StartingState;->this$1:Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;

    iget-object v5, p0, Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine$StartingState;->this$1:Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;

    #getter for: Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;->mStoppedState:Lcom/android/internal/util/State;
    invoke-static {v5}, Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;->access$300(Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;)Lcom/android/internal/util/State;

    move-result-object v5

    #calls: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;->access$400(Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;Lcom/android/internal/util/IState;)V

    .line 194
    :goto_1
    return-void

    .line 179
    :cond_0
    invoke-virtual {v2}, Landroid/net/LinkProperties;->getProtocolType()Ljava/lang/String;

    move-result-object v3

    .line 180
    .local v3, protocolType:Ljava/lang/String;
    if-eqz v3, :cond_1

    const-string v4, "IPV6"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 181
    :cond_1
    const-string v4, "Nat464xlatService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "StartingState: link is protocol type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", skipping"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v4, p0, Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine$StartingState;->this$1:Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;

    iget-object v5, p0, Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine$StartingState;->this$1:Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;

    #getter for: Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;->mStoppedState:Lcom/android/internal/util/State;
    invoke-static {v5}, Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;->access$300(Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;)Lcom/android/internal/util/State;

    move-result-object v5

    #calls: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;->access$500(Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 185
    :cond_2
    invoke-virtual {v2}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    .line 186
    const-string v4, "Nat464xlatService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "StartingState starting clat, iface="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine$StartingState;->this$1:Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;

    iget-object v4, v4, Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;->this$0:Lcom/android/internal/telephony/Nat464xlatService;

    #getter for: Lcom/android/internal/telephony/Nat464xlatService;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v4}, Lcom/android/internal/telephony/Nat464xlatService;->access$600(Lcom/android/internal/telephony/Nat464xlatService;)Landroid/os/INetworkManagementService;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/os/INetworkManagementService;->startClatd(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 193
    :goto_2
    iget-object v4, p0, Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine$StartingState;->this$1:Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;

    iget-object v4, v4, Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;->this$0:Lcom/android/internal/telephony/Nat464xlatService;

    #setter for: Lcom/android/internal/telephony/Nat464xlatService;->mUpstreamInterface:Ljava/lang/String;
    invoke-static {v4, v1}, Lcom/android/internal/telephony/Nat464xlatService;->access$702(Lcom/android/internal/telephony/Nat464xlatService;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "Nat464xlatService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "StartingState failed to start clat: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 173
    .end local v0           #e:Ljava/lang/Exception;
    .end local v3           #protocolType:Ljava/lang/String;
    :catch_1
    move-exception v4

    goto/16 :goto_0
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .parameter "message"

    .prologue
    .line 197
    const-string v1, "Nat464xlatService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StartingState.processMessage what="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const/4 v0, 0x1

    .line 199
    .local v0, retValue:Z
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 207
    :pswitch_0
    const/4 v0, 0x0

    .line 210
    :goto_0
    return v0

    .line 201
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine$StartingState;->this$1:Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;

    iget-object v2, p0, Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine$StartingState;->this$1:Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;

    #getter for: Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;->mStoppingState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;->access$800(Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    #calls: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;->access$900(Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 204
    :pswitch_2
    iget-object v1, p0, Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine$StartingState;->this$1:Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;

    iget-object v2, p0, Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine$StartingState;->this$1:Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;

    #getter for: Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;->mRunningState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;->access$1000(Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    #calls: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;->access$1100(Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 199
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
