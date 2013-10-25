.class Lcom/android/server/LightsService$4;
.super Ljava/lang/Object;
.source "LightsService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LightsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LightsService;


# direct methods
.method constructor <init>(Lcom/android/server/LightsService;)V
    .locals 0

    .prologue
    .line 445
    iput-object p1, p0, Lcom/android/server/LightsService$4;->this$0:Lcom/android/server/LightsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 470
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 448
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v2

    float-to-int v0, v1

    .line 450
    .local v0, lux:I
    const-string v1, "LightsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SvcLED] onSensorChanged::light value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    iget-object v1, p0, Lcom/android/server/LightsService$4;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mSvcLEDThread:Landroid/os/HandlerThread;
    invoke-static {v1}, Lcom/android/server/LightsService;->access$300(Lcom/android/server/LightsService;)Landroid/os/HandlerThread;

    move-result-object v2

    monitor-enter v2

    .line 454
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LightsService$4;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mSvcLEDHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/LightsService;->access$700(Lcom/android/server/LightsService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/LightsService$4;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mForcedSvcLEDTask:Lcom/android/server/LightsService$ForcedSvcLEDTask;
    invoke-static {v3}, Lcom/android/server/LightsService;->access$600(Lcom/android/server/LightsService;)Lcom/android/server/LightsService$ForcedSvcLEDTask;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 456
    iget-object v1, p0, Lcom/android/server/LightsService$4;->this$0:Lcom/android/server/LightsService;

    const/4 v3, 0x0

    #calls: Lcom/android/server/LightsService;->enableSvcLEDLightSensorLocked(Z)V
    invoke-static {v1, v3}, Lcom/android/server/LightsService;->access$500(Lcom/android/server/LightsService;Z)V

    .line 457
    iget-object v1, p0, Lcom/android/server/LightsService$4;->this$0:Lcom/android/server/LightsService;

    #calls: Lcom/android/server/LightsService;->setSvcLedLightLocked(I)V
    invoke-static {v1, v0}, Lcom/android/server/LightsService;->access$2400(Lcom/android/server/LightsService;I)V

    .line 458
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 461
    iget-object v1, p0, Lcom/android/server/LightsService$4;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mAlarmManagerForSvcLED:Landroid/app/AlarmManager;
    invoke-static {v1}, Lcom/android/server/LightsService;->access$2600(Lcom/android/server/LightsService;)Landroid/app/AlarmManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/LightsService$4;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mUpdateSvcLEDPendingIntent:Landroid/app/PendingIntent;
    invoke-static {v2}, Lcom/android/server/LightsService;->access$2500(Lcom/android/server/LightsService;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 462
    iget-object v1, p0, Lcom/android/server/LightsService$4;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mAlarmManagerForSvcLED:Landroid/app/AlarmManager;
    invoke-static {v1}, Lcom/android/server/LightsService;->access$2600(Lcom/android/server/LightsService;)Landroid/app/AlarmManager;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/server/LightsService$4;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mUpdateSvcLEDDelay:I
    invoke-static {v5}, Lcom/android/server/LightsService;->access$2700(Lcom/android/server/LightsService;)I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    iget-object v5, p0, Lcom/android/server/LightsService$4;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mUpdateSvcLEDPendingIntent:Landroid/app/PendingIntent;
    invoke-static {v5}, Lcom/android/server/LightsService;->access$2500(Lcom/android/server/LightsService;)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 464
    return-void

    .line 458
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
