.class Lcom/android/internal/telephony/Nat464xlatService$InterfaceObserver;
.super Landroid/net/INetworkManagementEventObserver$Stub;
.source "Nat464xlatService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/Nat464xlatService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InterfaceObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/Nat464xlatService;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Nat464xlatService;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/internal/telephony/Nat464xlatService$InterfaceObserver;->this$0:Lcom/android/internal/telephony/Nat464xlatService;

    invoke-direct {p0}, Landroid/net/INetworkManagementEventObserver$Stub;-><init>()V

    .line 103
    return-void
.end method


# virtual methods
.method public interfaceAdded(Ljava/lang/String;)V
    .locals 2
    .parameter "iface"

    .prologue
    .line 110
    const-string v0, "clat4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/internal/telephony/Nat464xlatService$InterfaceObserver;->this$0:Lcom/android/internal/telephony/Nat464xlatService;

    #getter for: Lcom/android/internal/telephony/Nat464xlatService;->mNat464xlatStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v0}, Lcom/android/internal/telephony/Nat464xlatService;->access$200(Lcom/android/internal/telephony/Nat464xlatService;)Lcom/android/internal/util/StateMachine;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 114
    :cond_0
    return-void
.end method

.method public interfaceClassDataActivityChanged(Ljava/lang/String;Z)V
    .locals 0
    .parameter "labe"
    .parameter "active"

    .prologue
    .line 125
    return-void
.end method

.method public interfaceLinkStateChanged(Ljava/lang/String;Z)V
    .locals 0
    .parameter "iface"
    .parameter "up"

    .prologue
    .line 107
    return-void
.end method

.method public interfaceRemoved(Ljava/lang/String;)V
    .locals 2
    .parameter "iface"

    .prologue
    .line 117
    const-string v0, "clat4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/android/internal/telephony/Nat464xlatService$InterfaceObserver;->this$0:Lcom/android/internal/telephony/Nat464xlatService;

    #getter for: Lcom/android/internal/telephony/Nat464xlatService;->mNat464xlatStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v0}, Lcom/android/internal/telephony/Nat464xlatService;->access$200(Lcom/android/internal/telephony/Nat464xlatService;)Lcom/android/internal/util/StateMachine;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 121
    :cond_0
    return-void
.end method

.method public interfaceStatusChanged(Ljava/lang/String;Z)V
    .locals 0
    .parameter "iface"
    .parameter "up"

    .prologue
    .line 105
    return-void
.end method

.method public limitReached(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "limitName"
    .parameter "iface"

    .prologue
    .line 123
    return-void
.end method
