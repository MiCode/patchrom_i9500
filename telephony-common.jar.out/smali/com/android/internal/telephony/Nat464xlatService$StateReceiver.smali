.class Lcom/android/internal/telephony/Nat464xlatService$StateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Nat464xlatService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/Nat464xlatService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/Nat464xlatService;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/Nat464xlatService;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/internal/telephony/Nat464xlatService$StateReceiver;->this$0:Lcom/android/internal/telephony/Nat464xlatService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/Nat464xlatService;Lcom/android/internal/telephony/Nat464xlatService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/Nat464xlatService$StateReceiver;-><init>(Lcom/android/internal/telephony/Nat464xlatService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "content"
    .parameter "intent"

    .prologue
    .line 84
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 86
    const/4 v1, 0x0

    .line 88
    .local v1, info:Landroid/net/NetworkInfo;
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/Nat464xlatService$StateReceiver;->this$0:Lcom/android/internal/telephony/Nat464xlatService;

    #getter for: Lcom/android/internal/telephony/Nat464xlatService;->mConnService:Landroid/net/IConnectivityManager;
    invoke-static {v2}, Lcom/android/internal/telephony/Nat464xlatService;->access$100(Lcom/android/internal/telephony/Nat464xlatService;)Landroid/net/IConnectivityManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/net/IConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 90
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 91
    iget-object v2, p0, Lcom/android/internal/telephony/Nat464xlatService$StateReceiver;->this$0:Lcom/android/internal/telephony/Nat464xlatService;

    #getter for: Lcom/android/internal/telephony/Nat464xlatService;->mNat464xlatStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v2}, Lcom/android/internal/telephony/Nat464xlatService;->access$200(Lcom/android/internal/telephony/Nat464xlatService;)Lcom/android/internal/util/StateMachine;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 98
    .end local v1           #info:Landroid/net/NetworkInfo;
    :cond_0
    :goto_1
    return-void

    .line 94
    .restart local v1       #info:Landroid/net/NetworkInfo;
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/Nat464xlatService$StateReceiver;->this$0:Lcom/android/internal/telephony/Nat464xlatService;

    #getter for: Lcom/android/internal/telephony/Nat464xlatService;->mNat464xlatStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v2}, Lcom/android/internal/telephony/Nat464xlatService;->access$200(Lcom/android/internal/telephony/Nat464xlatService;)Lcom/android/internal/util/StateMachine;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_1

    .line 89
    :catch_0
    move-exception v2

    goto :goto_0
.end method
