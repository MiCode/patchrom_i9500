.class final Landroid/hardware/contextaware/manager/ContextAwareService$ServiceHandler;
.super Landroid/os/Handler;
.source "ContextAwareService.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contextaware/manager/ContextAwareService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/contextaware/manager/ContextAwareService;


# direct methods
.method public constructor <init>(Landroid/hardware/contextaware/manager/ContextAwareService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 554
    iput-object p1, p0, Landroid/hardware/contextaware/manager/ContextAwareService$ServiceHandler;->this$0:Landroid/hardware/contextaware/manager/ContextAwareService;

    .line 555
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 556
    return-void
.end method

.method private callback(ILandroid/os/Bundle;)V
    .locals 4
    .parameter "type"
    .parameter "context"

    .prologue
    .line 584
    invoke-static {}, Landroid/hardware/contextaware/manager/ListenerListManager;->getInstance()Landroid/hardware/contextaware/manager/ListenerListManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/contextaware/manager/ListenerListManager;->getListenerList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 585
    .local v0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 586
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;

    .line 587
    .local v1, next:Landroid/hardware/contextaware/manager/ContextAwareService$Listener;
    if-eqz v1, :cond_0

    .line 591
    #getter for: Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v1}, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->access$100(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 592
    #calls: Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->callback(ILandroid/os/Bundle;)V
    invoke-static {v1, p1, p2}, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->access$400(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 595
    .end local v1           #next:Landroid/hardware/contextaware/manager/ContextAwareService$Listener;
    :cond_1
    return-void
.end method

.method private notifyOperationCheckResult(ILandroid/os/Bundle;)Z
    .locals 6
    .parameter "type"
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    .line 609
    sget-object v5, Landroid/hardware/contextaware/ContextList$ContextType;->CMD_PROCESS_FAULT_DETECTION:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    if-ne p1, v5, :cond_0

    if-nez p2, :cond_1

    .line 611
    :cond_0
    iget-object v5, p0, Landroid/hardware/contextaware/manager/ContextAwareService$ServiceHandler;->this$0:Landroid/hardware/contextaware/manager/ContextAwareService;

    #setter for: Landroid/hardware/contextaware/manager/ContextAwareService;->mOperationCheckResultNotifyCompletion:Z
    invoke-static {v5, v4}, Landroid/hardware/contextaware/manager/ContextAwareService;->access$502(Landroid/hardware/contextaware/manager/ContextAwareService;Z)Z

    .line 612
    const/4 v4, 0x0

    .line 641
    :goto_0
    return v4

    .line 615
    :cond_1
    const-string v5, "Listener"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 616
    .local v1, bundle:Landroid/os/Bundle;
    if-nez v1, :cond_2

    .line 617
    iget-object v5, p0, Landroid/hardware/contextaware/manager/ContextAwareService$ServiceHandler;->this$0:Landroid/hardware/contextaware/manager/ContextAwareService;

    #setter for: Landroid/hardware/contextaware/manager/ContextAwareService;->mOperationCheckResultNotifyCompletion:Z
    invoke-static {v5, v4}, Landroid/hardware/contextaware/manager/ContextAwareService;->access$502(Landroid/hardware/contextaware/manager/ContextAwareService;Z)Z

    goto :goto_0

    .line 621
    :cond_2
    const-string v5, "Binder"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 622
    .local v0, binder:Landroid/os/IBinder;
    const-string v5, "Service"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 624
    .local v3, service:I
    if-nez v0, :cond_3

    .line 625
    const-string v5, "binder is null"

    invoke-static {v5}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 626
    iget-object v5, p0, Landroid/hardware/contextaware/manager/ContextAwareService$ServiceHandler;->this$0:Landroid/hardware/contextaware/manager/ContextAwareService;

    #setter for: Landroid/hardware/contextaware/manager/ContextAwareService;->mOperationCheckResultNotifyCompletion:Z
    invoke-static {v5, v4}, Landroid/hardware/contextaware/manager/ContextAwareService;->access$502(Landroid/hardware/contextaware/manager/ContextAwareService;Z)Z

    goto :goto_0

    .line 630
    :cond_3
    invoke-static {}, Landroid/hardware/contextaware/manager/ListenerListManager;->getInstance()Landroid/hardware/contextaware/manager/ListenerListManager;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/hardware/contextaware/manager/ListenerListManager;->getListener(Landroid/os/IBinder;)Landroid/hardware/contextaware/manager/ContextAwareService$Listener;

    move-result-object v2

    .line 632
    .local v2, listener:Landroid/hardware/contextaware/manager/ContextAwareService$Listener;
    if-nez v2, :cond_5

    .line 633
    const-string v5, "mCurListenerForSensorHubFaultDetection is null."

    invoke-static {v5}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 639
    :cond_4
    :goto_1
    iget-object v5, p0, Landroid/hardware/contextaware/manager/ContextAwareService$ServiceHandler;->this$0:Landroid/hardware/contextaware/manager/ContextAwareService;

    #setter for: Landroid/hardware/contextaware/manager/ContextAwareService;->mOperationCheckResultNotifyCompletion:Z
    invoke-static {v5, v4}, Landroid/hardware/contextaware/manager/ContextAwareService;->access$502(Landroid/hardware/contextaware/manager/ContextAwareService;Z)Z

    goto :goto_0

    .line 634
    :cond_5
    const-string v5, "Service"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v3, :cond_4

    .line 635
    const-string v5, "Listener"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 636
    #calls: Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->callback(ILandroid/os/Bundle;)V
    invoke-static {v2, p1, p2}, Landroid/hardware/contextaware/manager/ContextAwareService$Listener;->access$400(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;ILandroid/os/Bundle;)V

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 565
    monitor-enter p0

    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    .line 566
    .local v1, type:I
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 568
    .local v0, context:Landroid/os/Bundle;
    invoke-direct {p0, v1, v0}, Landroid/hardware/contextaware/manager/ContextAwareService$ServiceHandler;->notifyOperationCheckResult(ILandroid/os/Bundle;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 569
    invoke-direct {p0, v1, v0}, Landroid/hardware/contextaware/manager/ContextAwareService$ServiceHandler;->callback(ILandroid/os/Bundle;)V

    .line 572
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 573
    monitor-exit p0

    return-void

    .line 565
    .end local v0           #context:Landroid/os/Bundle;
    .end local v1           #type:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
