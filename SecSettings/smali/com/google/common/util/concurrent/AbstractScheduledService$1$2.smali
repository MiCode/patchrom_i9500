.class Lcom/google/common/util/concurrent/AbstractScheduledService$1$2;
.super Ljava/lang/Object;
.source "AbstractScheduledService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/AbstractScheduledService$1;->doStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/util/concurrent/AbstractScheduledService$1;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/AbstractScheduledService$1;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$1$2;->this$1:Lcom/google/common/util/concurrent/AbstractScheduledService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 189
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$1$2;->this$1:Lcom/google/common/util/concurrent/AbstractScheduledService$1;

    #getter for: Lcom/google/common/util/concurrent/AbstractScheduledService$1;->lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v1}, Lcom/google/common/util/concurrent/AbstractScheduledService$1;->access$100(Lcom/google/common/util/concurrent/AbstractScheduledService$1;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 191
    :try_start_0
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$1$2;->this$1:Lcom/google/common/util/concurrent/AbstractScheduledService$1;

    iget-object v1, v1, Lcom/google/common/util/concurrent/AbstractScheduledService$1;->this$0:Lcom/google/common/util/concurrent/AbstractScheduledService;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/AbstractScheduledService;->startUp()V

    .line 192
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$1$2;->this$1:Lcom/google/common/util/concurrent/AbstractScheduledService$1;

    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$1$2;->this$1:Lcom/google/common/util/concurrent/AbstractScheduledService$1;

    iget-object v2, v2, Lcom/google/common/util/concurrent/AbstractScheduledService$1;->this$0:Lcom/google/common/util/concurrent/AbstractScheduledService;

    invoke-virtual {v2}, Lcom/google/common/util/concurrent/AbstractScheduledService;->scheduler()Lcom/google/common/util/concurrent/AbstractScheduledService$Scheduler;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$1$2;->this$1:Lcom/google/common/util/concurrent/AbstractScheduledService$1;

    iget-object v3, v3, Lcom/google/common/util/concurrent/AbstractScheduledService$1;->this$0:Lcom/google/common/util/concurrent/AbstractScheduledService;

    #getter for: Lcom/google/common/util/concurrent/AbstractScheduledService;->delegate:Lcom/google/common/util/concurrent/AbstractService;
    invoke-static {v3}, Lcom/google/common/util/concurrent/AbstractScheduledService;->access$400(Lcom/google/common/util/concurrent/AbstractScheduledService;)Lcom/google/common/util/concurrent/AbstractService;

    move-result-object v3

    iget-object v4, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$1$2;->this$1:Lcom/google/common/util/concurrent/AbstractScheduledService$1;

    #getter for: Lcom/google/common/util/concurrent/AbstractScheduledService$1;->executorService:Ljava/util/concurrent/ScheduledExecutorService;
    invoke-static {v4}, Lcom/google/common/util/concurrent/AbstractScheduledService$1;->access$500(Lcom/google/common/util/concurrent/AbstractScheduledService$1;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v4

    iget-object v5, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$1$2;->this$1:Lcom/google/common/util/concurrent/AbstractScheduledService$1;

    #getter for: Lcom/google/common/util/concurrent/AbstractScheduledService$1;->task:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/google/common/util/concurrent/AbstractScheduledService$1;->access$600(Lcom/google/common/util/concurrent/AbstractScheduledService$1;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/common/util/concurrent/AbstractScheduledService$Scheduler;->schedule(Lcom/google/common/util/concurrent/AbstractService;Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    #setter for: Lcom/google/common/util/concurrent/AbstractScheduledService$1;->runningTask:Ljava/util/concurrent/Future;
    invoke-static {v1, v2}, Lcom/google/common/util/concurrent/AbstractScheduledService$1;->access$302(Lcom/google/common/util/concurrent/AbstractScheduledService$1;Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;

    .line 193
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$1$2;->this$1:Lcom/google/common/util/concurrent/AbstractScheduledService$1;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/AbstractService;->notifyStarted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$1$2;->this$1:Lcom/google/common/util/concurrent/AbstractScheduledService$1;

    #getter for: Lcom/google/common/util/concurrent/AbstractScheduledService$1;->lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v1}, Lcom/google/common/util/concurrent/AbstractScheduledService$1;->access$100(Lcom/google/common/util/concurrent/AbstractScheduledService$1;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 200
    return-void

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, t:Ljava/lang/Throwable;
    :try_start_1
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$1$2;->this$1:Lcom/google/common/util/concurrent/AbstractScheduledService$1;

    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/AbstractService;->notifyFailed(Ljava/lang/Throwable;)V

    .line 196
    invoke-static {v0}, Lcom/google/common/base/Throwables;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 198
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$1$2;->this$1:Lcom/google/common/util/concurrent/AbstractScheduledService$1;

    #getter for: Lcom/google/common/util/concurrent/AbstractScheduledService$1;->lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v2}, Lcom/google/common/util/concurrent/AbstractScheduledService$1;->access$100(Lcom/google/common/util/concurrent/AbstractScheduledService$1;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method
