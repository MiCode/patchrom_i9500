.class public final Landroid/hardware/contextaware/manager/ContextAwareService$Listener;
.super Ljava/lang/Object;
.source "ContextAwareService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contextaware/manager/ContextAwareService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Listener"
.end annotation


# instance fields
.field private final mServices:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mToken:Landroid/os/IBinder;

.field final synthetic this$0:Landroid/hardware/contextaware/manager/ContextAwareService;


# direct methods
.method constructor <init>(Landroid/hardware/contextaware/manager/ContextAwareService;Landroid/os/IBinder;)V
    .locals 1
    .parameter
    .parameter "token"

    .prologue
    .line 474
    iput-object p1, p0, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->this$0:Landroid/hardware/contextaware/manager/ContextAwareService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 475
    iput-object p2, p0, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->mToken:Landroid/os/IBinder;

    .line 476
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 477
    return-void
.end method

.method static synthetic access$000(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;)Landroid/os/IBinder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 460
    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$100(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 460
    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method static synthetic access$400(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;ILandroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 460
    invoke-direct {p0, p1, p2}, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->callback(ILandroid/os/Bundle;)V

    return-void
.end method

.method private declared-synchronized callback(ILandroid/os/Bundle;)V
    .locals 3
    .parameter "type"
    .parameter "context"

    .prologue
    .line 511
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->mToken:Landroid/os/IBinder;

    invoke-static {v2}, Landroid/hardware/contextaware/manager/IContextAwareCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/contextaware/manager/IContextAwareCallback;

    move-result-object v0

    .line 513
    .local v0, callback:Landroid/hardware/contextaware/manager/IContextAwareCallback;
    if-eqz v0, :cond_0

    .line 514
    invoke-interface {v0, p1, p2}, Landroid/hardware/contextaware/manager/IContextAwareCallback;->caCallback(ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 519
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 521
    .end local v0           #callback:Landroid/hardware/contextaware/manager/IContextAwareCallback;
    :goto_0
    monitor-exit p0

    return-void

    .line 516
    :catch_0
    move-exception v1

    .line 517
    .local v1, e:Landroid/os/RemoteException;
    :try_start_2
    invoke-static {v1}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->exception(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 519
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 511
    .end local v1           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 519
    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method


# virtual methods
.method public binderDied()V
    .locals 6

    .prologue
    .line 486
    iget-object v2, p0, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 487
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 488
    .local v1, next:Ljava/lang/Integer;
    iget-object v2, p0, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 489
    iget-object v2, p0, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 491
    :cond_0
    iget-object v2, p0, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->this$0:Landroid/hardware/contextaware/manager/ContextAwareService;

    #getter for: Landroid/hardware/contextaware/manager/ContextAwareService;->mContextManager:Landroid/hardware/contextaware/manager/ContextManager;
    invoke-static {v2}, Landroid/hardware/contextaware/manager/ContextAwareService;->access$200(Landroid/hardware/contextaware/manager/ContextAwareService;)Landroid/hardware/contextaware/manager/ContextManager;

    move-result-object v2

    invoke-static {}, Landroid/hardware/contextaware/ContextList;->getInstance()Landroid/hardware/contextaware/ContextList;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/hardware/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->this$0:Landroid/hardware/contextaware/manager/ContextAwareService;

    const/4 v5, 0x1

    invoke-virtual {v2, p0, v3, v4, v5}, Landroid/hardware/contextaware/manager/ContextManager;->stop(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;Ljava/lang/String;Landroid/hardware/contextaware/manager/IContextObserver;Z)V

    goto :goto_0

    .line 495
    .end local v1           #next:Ljava/lang/Integer;
    :cond_1
    invoke-static {}, Landroid/hardware/contextaware/manager/ListenerListManager;->getInstance()Landroid/hardware/contextaware/manager/ListenerListManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/hardware/contextaware/manager/ListenerListManager;->removeListener(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;)V

    .line 496
    iget-object v2, p0, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->mToken:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v2, p0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 498
    iget-object v2, p0, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->this$0:Landroid/hardware/contextaware/manager/ContextAwareService;

    iget-object v3, p0, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->mToken:Landroid/os/IBinder;

    const-string v4, "unregisterCallback"

    #calls: Landroid/hardware/contextaware/manager/ContextAwareService;->displayCallback(Landroid/os/IBinder;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Landroid/hardware/contextaware/manager/ContextAwareService;->access$300(Landroid/hardware/contextaware/manager/ContextAwareService;Landroid/os/IBinder;Ljava/lang/String;)V

    .line 499
    return-void
.end method

.method public getServices()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 529
    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public getToken()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->mToken:Landroid/os/IBinder;

    return-object v0
.end method
