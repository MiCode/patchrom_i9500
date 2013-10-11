.class Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl$1;
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
    .line 4219
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl$1;->this$1:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 4222
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl$1;->this$1:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    #getter for: Lcom/android/server/power/PowerManagerService;->mLockBlankUnblankDisplay:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$4700(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 4223
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl$1;->this$1:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v2, 0x0

    #setter for: Lcom/android/server/power/PowerManagerService;->mPendingUpdateBlankUnblankDisplay:Z
    invoke-static {v0, v2}, Lcom/android/server/power/PowerManagerService;->access$4802(Lcom/android/server/power/PowerManagerService;Z)Z

    .line 4225
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl$1;->this$1:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    #getter for: Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->mBlanked:Z
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->access$5000(Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4226
    const/4 v0, 0x0

    #calls: Lcom/android/server/power/PowerManagerService;->nativeSetInteractive(Z)V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$5100(Z)V

    .line 4227
    const-string v0, "PowerManagerService"

    const-string v2, "[s] blankAllDisplays() : blankAllDisplaysFromPowerManage"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4228
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl$1;->this$1:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    #getter for: Lcom/android/server/power/PowerManagerService;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$5200(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/display/DisplayManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/DisplayManagerService;->blankAllDisplaysFromPowerManager()V

    .line 4229
    const/4 v0, 0x1

    #calls: Lcom/android/server/power/PowerManagerService;->nativeSetAutoSuspend(Z)V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$5300(Z)V

    .line 4231
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl$1;->this$1:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v2, 0x0

    #setter for: Lcom/android/server/power/PowerManagerService;->mNativeUserActivityCount:I
    invoke-static {v0, v2}, Lcom/android/server/power/PowerManagerService;->access$5402(Lcom/android/server/power/PowerManagerService;I)I

    .line 4233
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl$1;->this$1:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    const-wide/16 v2, 0x0

    #setter for: Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->mDelayTimePrintWakeLock:J
    invoke-static {v0, v2, v3}, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->access$5502(Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;J)J

    .line 4234
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl$1;->this$1:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    #getter for: Lcom/android/server/power/PowerManagerService;->mHandlerBlankUnblankDisplay:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$4900(Lcom/android/server/power/PowerManagerService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl$1;->this$1:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    #getter for: Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->mPrintWakeLockDuringScreenOffRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->access$5600(Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4246
    :goto_0
    monitor-exit v1

    .line 4247
    return-void

    .line 4238
    :cond_0
    const/4 v0, 0x0

    #calls: Lcom/android/server/power/PowerManagerService;->nativeSetAutoSuspend(Z)V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$5300(Z)V

    .line 4239
    const-string v0, "PowerManagerService"

    const-string v2, "[s] unblankAllDisplays() : unblankAllDisplaysFromPowerManager"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4240
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl$1;->this$1:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    #getter for: Lcom/android/server/power/PowerManagerService;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$5200(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/display/DisplayManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/DisplayManagerService;->unblankAllDisplaysFromPowerManager()V

    .line 4241
    const/4 v0, 0x1

    #calls: Lcom/android/server/power/PowerManagerService;->nativeSetInteractive(Z)V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$5100(Z)V

    .line 4243
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl$1;->this$1:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    #getter for: Lcom/android/server/power/PowerManagerService;->mHandlerBlankUnblankDisplay:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$4900(Lcom/android/server/power/PowerManagerService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl$1;->this$1:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    #getter for: Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->mPrintWakeLockDuringScreenOffRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->access$5600(Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 4246
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
