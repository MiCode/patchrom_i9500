.class public Lcom/android/internal/telephony/Nat464xlatService;
.super Ljava/lang/Object;
.source "Nat464xlatService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/Nat464xlatService$1;,
        Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;,
        Lcom/android/internal/telephony/Nat464xlatService$InterfaceObserver;,
        Lcom/android/internal/telephony/Nat464xlatService$StateReceiver;
    }
.end annotation


# static fields
.field private static final CLAT_INTERFACE_NAME:Ljava/lang/String; = "clat4"

.field private static final TAG:Ljava/lang/String; = "Nat464xlatService"


# instance fields
.field private final mConnService:Landroid/net/IConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mInterfaceObserver:Lcom/android/internal/telephony/Nat464xlatService$InterfaceObserver;

.field private mLooper:Landroid/os/Looper;

.field private final mNMService:Landroid/os/INetworkManagementService;

.field private mNat464xlatStateMachine:Lcom/android/internal/util/StateMachine;

.field private mStateReceiver:Landroid/content/BroadcastReceiver;

.field private mThread:Landroid/os/HandlerThread;

.field private mUpstreamInterface:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/IConnectivityManager;)V
    .locals 5
    .parameter "context"
    .parameter "nmService"
    .parameter "connService"

    .prologue
    const/4 v3, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/android/internal/telephony/Nat464xlatService;->mContext:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lcom/android/internal/telephony/Nat464xlatService;->mNMService:Landroid/os/INetworkManagementService;

    .line 60
    iput-object p3, p0, Lcom/android/internal/telephony/Nat464xlatService;->mConnService:Landroid/net/IConnectivityManager;

    .line 61
    iput-object v3, p0, Lcom/android/internal/telephony/Nat464xlatService;->mUpstreamInterface:Ljava/lang/String;

    .line 63
    new-instance v2, Lcom/android/internal/telephony/Nat464xlatService$StateReceiver;

    invoke-direct {v2, p0, v3}, Lcom/android/internal/telephony/Nat464xlatService$StateReceiver;-><init>(Lcom/android/internal/telephony/Nat464xlatService;Lcom/android/internal/telephony/Nat464xlatService$1;)V

    iput-object v2, p0, Lcom/android/internal/telephony/Nat464xlatService;->mStateReceiver:Landroid/content/BroadcastReceiver;

    .line 64
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 65
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 66
    iget-object v2, p0, Lcom/android/internal/telephony/Nat464xlatService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/Nat464xlatService;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 68
    new-instance v2, Lcom/android/internal/telephony/Nat464xlatService$InterfaceObserver;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/Nat464xlatService$InterfaceObserver;-><init>(Lcom/android/internal/telephony/Nat464xlatService;)V

    iput-object v2, p0, Lcom/android/internal/telephony/Nat464xlatService;->mInterfaceObserver:Lcom/android/internal/telephony/Nat464xlatService$InterfaceObserver;

    .line 70
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/Nat464xlatService;->mNMService:Landroid/os/INetworkManagementService;

    iget-object v3, p0, Lcom/android/internal/telephony/Nat464xlatService;->mInterfaceObserver:Lcom/android/internal/telephony/Nat464xlatService$InterfaceObserver;

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_0
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "464xlat"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/internal/telephony/Nat464xlatService;->mThread:Landroid/os/HandlerThread;

    .line 76
    iget-object v2, p0, Lcom/android/internal/telephony/Nat464xlatService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 77
    iget-object v2, p0, Lcom/android/internal/telephony/Nat464xlatService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/Nat464xlatService;->mLooper:Landroid/os/Looper;

    .line 78
    new-instance v2, Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;

    const-string v3, "464xlat"

    iget-object v4, p0, Lcom/android/internal/telephony/Nat464xlatService;->mLooper:Landroid/os/Looper;

    invoke-direct {v2, p0, v3, v4}, Lcom/android/internal/telephony/Nat464xlatService$Nat464xlatStateMachine;-><init>(Lcom/android/internal/telephony/Nat464xlatService;Ljava/lang/String;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/internal/telephony/Nat464xlatService;->mNat464xlatStateMachine:Lcom/android/internal/util/StateMachine;

    .line 79
    iget-object v2, p0, Lcom/android/internal/telephony/Nat464xlatService;->mNat464xlatStateMachine:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v2}, Lcom/android/internal/util/StateMachine;->start()V

    .line 80
    return-void

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "Nat464xlatService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not register InterfaceObserver "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/Nat464xlatService;)Landroid/net/IConnectivityManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/internal/telephony/Nat464xlatService;->mConnService:Landroid/net/IConnectivityManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/telephony/Nat464xlatService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/internal/telephony/Nat464xlatService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/Nat464xlatService;)Lcom/android/internal/util/StateMachine;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/internal/telephony/Nat464xlatService;->mNat464xlatStateMachine:Lcom/android/internal/util/StateMachine;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/Nat464xlatService;)Landroid/os/INetworkManagementService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/internal/telephony/Nat464xlatService;->mNMService:Landroid/os/INetworkManagementService;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/Nat464xlatService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/internal/telephony/Nat464xlatService;->mUpstreamInterface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/internal/telephony/Nat464xlatService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/internal/telephony/Nat464xlatService;->mUpstreamInterface:Ljava/lang/String;

    return-object p1
.end method
