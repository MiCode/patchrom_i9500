.class Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine$StoppedState;
.super Lcom/android/internal/util/State;
.source "Nat464xlatService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StoppedState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;)V
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine$StoppedState;->this$1:Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 293
    const-string v0, "Nat464xlatService"

    const-string v1, "transitioned to StoppedState"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .parameter "message"

    .prologue
    .line 297
    const-string v1, "Nat464xlatService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StoppedState.processMessage what="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    const/4 v0, 0x1

    .line 299
    .local v0, retValue:Z
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 311
    const/4 v0, 0x0

    .line 314
    :goto_0
    :pswitch_0
    return v0

    .line 301
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine$StoppedState;->this$1:Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;

    iget-object v2, p0, Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine$StoppedState;->this$1:Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;

    #getter for: Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;->mStartingState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;->access$1600(Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    #calls: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;->access$1700(Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 306
    :pswitch_2
    const-string v1, "Nat464xlatService"

    const-string v2, "StoppedState, clat interface up?"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 299
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
