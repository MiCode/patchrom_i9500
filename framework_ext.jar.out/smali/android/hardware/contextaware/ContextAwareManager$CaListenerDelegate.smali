.class Landroid/hardware/contextaware/ContextAwareManager$CaListenerDelegate;
.super Landroid/hardware/contextaware/manager/IContextAwareCallback$Stub;
.source "ContextAwareManager.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contextaware/ContextAwareManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CaListenerDelegate"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

.field final synthetic this$0:Landroid/hardware/contextaware/ContextAwareManager;


# direct methods
.method constructor <init>(Landroid/hardware/contextaware/ContextAwareManager;Landroid/hardware/contextaware/manager/ContextAwareListener;Landroid/os/Handler;)V
    .locals 2
    .parameter
    .parameter "listener"
    .parameter "handler"

    .prologue
    .line 491
    iput-object p1, p0, Landroid/hardware/contextaware/ContextAwareManager$CaListenerDelegate;->this$0:Landroid/hardware/contextaware/ContextAwareManager;

    .line 492
    invoke-direct {p0}, Landroid/hardware/contextaware/manager/IContextAwareCallback$Stub;-><init>()V

    .line 493
    iput-object p2, p0, Landroid/hardware/contextaware/ContextAwareManager$CaListenerDelegate;->mListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    .line 495
    const/4 v0, 0x0

    .line 496
    .local v0, looper:Landroid/os/Looper;
    if-nez p3, :cond_0

    .line 497
    #getter for: Landroid/hardware/contextaware/ContextAwareManager;->mMainLooper:Landroid/os/Looper;
    invoke-static {p1}, Landroid/hardware/contextaware/ContextAwareManager;->access$000(Landroid/hardware/contextaware/ContextAwareManager;)Landroid/os/Looper;

    move-result-object v0

    .line 502
    :goto_0
    new-instance v1, Landroid/hardware/contextaware/ContextAwareManager$CaListenerDelegate$1;

    invoke-direct {v1, p0, v0, p1}, Landroid/hardware/contextaware/ContextAwareManager$CaListenerDelegate$1;-><init>(Landroid/hardware/contextaware/ContextAwareManager$CaListenerDelegate;Landroid/os/Looper;Landroid/hardware/contextaware/ContextAwareManager;)V

    iput-object v1, p0, Landroid/hardware/contextaware/ContextAwareManager$CaListenerDelegate;->mHandler:Landroid/os/Handler;

    .line 514
    return-void

    .line 499
    :cond_0
    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic access$100(Landroid/hardware/contextaware/ContextAwareManager$CaListenerDelegate;)Landroid/hardware/contextaware/manager/ContextAwareListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 474
    iget-object v0, p0, Landroid/hardware/contextaware/ContextAwareManager$CaListenerDelegate;->mListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized caCallback(ILandroid/os/Bundle;)V
    .locals 2
    .parameter "type"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 535
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 536
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 537
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 538
    iget-object v1, p0, Landroid/hardware/contextaware/ContextAwareManager$CaListenerDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 540
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 541
    monitor-exit p0

    return-void

    .line 535
    .end local v0           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getListener()Landroid/hardware/contextaware/manager/ContextAwareListener;
    .locals 1

    .prologue
    .line 522
    iget-object v0, p0, Landroid/hardware/contextaware/ContextAwareManager$CaListenerDelegate;->mListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    return-object v0
.end method

.method public getListenerInfo()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 551
    iget-object v0, p0, Landroid/hardware/contextaware/ContextAwareManager$CaListenerDelegate;->mListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
