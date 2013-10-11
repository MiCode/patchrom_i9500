.class Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl$2;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;)V
    .locals 0

    .prologue
    .line 4253
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl$2;->this$1:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 4256
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl$2;->this$1:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    #getter for: Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1300(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 4257
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl$2;->this$1:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    #getter for: Lcom/android/server/power/PowerManagerService;->mHandlerBlankUnblankDisplay:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$4900(Lcom/android/server/power/PowerManagerService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4259
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl$2;->this$1:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    #getter for: Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->mBlanked:Z
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->access$5000(Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4260
    const-string v0, "PowerManagerService"

    const-string v2, "mPrintWakeLockDuringScreenOffRunnable : screen is on, just return"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4261
    monitor-exit v1

    .line 4270
    :goto_0
    return-void

    .line 4264
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl$2;->this$1:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    #calls: Lcom/android/server/power/PowerManagerService;->printWakeLockLocked()V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$5700(Lcom/android/server/power/PowerManagerService;)V

    .line 4266
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl$2;->this$1:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    const-wide/16 v2, 0x1388

    invoke-static {v0, v2, v3}, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->access$5514(Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;J)J

    .line 4267
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl$2;->this$1:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    const-wide/32 v2, 0x1b7740

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl$2;->this$1:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    #getter for: Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->mDelayTimePrintWakeLock:J
    invoke-static {v4}, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->access$5500(Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    #setter for: Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->mDelayTimePrintWakeLock:J
    invoke-static {v0, v2, v3}, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->access$5502(Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;J)J

    .line 4268
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl$2;->this$1:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    #getter for: Lcom/android/server/power/PowerManagerService;->mHandlerBlankUnblankDisplay:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$4900(Lcom/android/server/power/PowerManagerService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl$2;->this$1:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    #getter for: Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->mDelayTimePrintWakeLock:J
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->access$5500(Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;)J

    move-result-wide v2

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4269
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
