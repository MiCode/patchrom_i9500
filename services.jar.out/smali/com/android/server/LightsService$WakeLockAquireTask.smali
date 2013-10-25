.class Lcom/android/server/LightsService$WakeLockAquireTask;
.super Ljava/lang/Object;
.source "LightsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LightsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WakeLockAquireTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LightsService;


# direct methods
.method private constructor <init>(Lcom/android/server/LightsService;)V
    .locals 0

    .prologue
    .line 486
    iput-object p1, p0, Lcom/android/server/LightsService$WakeLockAquireTask;->this$0:Lcom/android/server/LightsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/LightsService;Lcom/android/server/LightsService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 486
    invoke-direct {p0, p1}, Lcom/android/server/LightsService$WakeLockAquireTask;-><init>(Lcom/android/server/LightsService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 488
    iget-object v0, p0, Lcom/android/server/LightsService$WakeLockAquireTask;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->wl:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/server/LightsService;->access$2800(Lcom/android/server/LightsService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    if-nez v0, :cond_0

    .line 489
    const-string v0, "LightsService"

    const-string v1, "[SvcLED] wl is null."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    :goto_0
    return-void

    .line 494
    :cond_0
    iget-object v0, p0, Lcom/android/server/LightsService$WakeLockAquireTask;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->wl:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/server/LightsService;->access$2800(Lcom/android/server/LightsService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/LightsService$WakeLockAquireTask;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mDelayWakeLock:I
    invoke-static {v1}, Lcom/android/server/LightsService;->access$2000(Lcom/android/server/LightsService;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    goto :goto_0
.end method
