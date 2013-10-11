.class Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "Nat464xlatService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/Nat464xlatService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Nat464xlatStateMachine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine$StoppedState;,
        Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine$StoppingState;,
        Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine$RunningState;,
        Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine$StartingState;
    }
.end annotation


# static fields
.field static final CMD_CLAT_INTERFACE_DOWN:I = 0x2

.field static final CMD_CLAT_INTERFACE_UP:I = 0x1

.field static final CMD_UPSTREAM_INTERFACE_DOWN:I = 0x4

.field static final CMD_UPSTREAM_INTERFACE_UP:I = 0x3


# instance fields
.field private mRunningState:Lcom/android/internal/util/State;

.field private mStartingState:Lcom/android/internal/util/State;

.field private mStoppedState:Lcom/android/internal/util/State;

.field private mStoppingState:Lcom/android/internal/util/State;

.field final synthetic this$0:Lcom/android/internal/telephony/Nat464xlatService;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Nat464xlatService;Ljava/lang/String;Landroid/os/Looper;)V
    .locals 1
    .parameter
    .parameter "name"
    .parameter "looper"

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;->this$0:Lcom/android/internal/telephony/Nat464xlatService;

    .line 140
    invoke-direct {p0, p2, p3}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 142
    new-instance v0, Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine$StartingState;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine$StartingState;-><init>(Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;)V

    iput-object v0, p0, Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;->mStartingState:Lcom/android/internal/util/State;

    .line 143
    iget-object v0, p0, Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;->mStartingState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 144
    new-instance v0, Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine$RunningState;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine$RunningState;-><init>(Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;)V

    iput-object v0, p0, Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;->mRunningState:Lcom/android/internal/util/State;

    .line 145
    iget-object v0, p0, Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;->mRunningState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 146
    new-instance v0, Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine$StoppingState;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine$StoppingState;-><init>(Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;)V

    iput-object v0, p0, Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;->mStoppingState:Lcom/android/internal/util/State;

    .line 147
    iget-object v0, p0, Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;->mStoppingState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 148
    new-instance v0, Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine$StoppedState;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine$StoppedState;-><init>(Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;)V

    iput-object v0, p0, Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;->mStoppedState:Lcom/android/internal/util/State;

    .line 149
    iget-object v0, p0, Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;->mStoppedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 151
    iget-object v0, p0, Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;->mStoppedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 152
    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;->mRunningState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;->mStartingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;->mStoppedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;->mStoppingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 155
    const-string v1, "???"

    .line 156
    .local v1, res:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    .line 157
    .local v0, current:Lcom/android/internal/util/IState;
    iget-object v2, p0, Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;->mStartingState:Lcom/android/internal/util/State;

    if-ne v0, v2, :cond_0

    const-string v1, "StartingState"

    .line 158
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;->mRunningState:Lcom/android/internal/util/State;

    if-ne v0, v2, :cond_1

    const-string v1, "RunningState"

    .line 159
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;->mStoppingState:Lcom/android/internal/util/State;

    if-ne v0, v2, :cond_2

    const-string v1, "StoppingState"

    .line 160
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;->mStoppedState:Lcom/android/internal/util/State;

    if-ne v0, v2, :cond_3

    const-string v1, "StoppedState"

    .line 161
    :cond_3
    return-object v1
.end method
