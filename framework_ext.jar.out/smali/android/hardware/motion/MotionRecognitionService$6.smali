.class Landroid/hardware/motion/MotionRecognitionService$6;
.super Ljava/lang/Object;
.source "MotionRecognitionService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/motion/MotionRecognitionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/motion/MotionRecognitionService;


# direct methods
.method constructor <init>(Landroid/hardware/motion/MotionRecognitionService;)V
    .locals 0

    .prologue
    .line 2152
    iput-object p1, p0, Landroid/hardware/motion/MotionRecognitionService$6;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 2
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 2155
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    .line 2157
    :cond_0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    .line 2160
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 2161
    .local v0, sensor:Landroid/hardware/Sensor;
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    const/16 v2, 0x11

    if-ne v1, v2, :cond_0

    .line 2162
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService$6;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v3

    float-to-int v2, v2

    int-to-short v2, v2

    #setter for: Landroid/hardware/motion/MotionRecognitionService;->mPostGripVal:S
    invoke-static {v1, v2}, Landroid/hardware/motion/MotionRecognitionService;->access$2402(Landroid/hardware/motion/MotionRecognitionService;S)S

    .line 2164
    :try_start_0
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService$6;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    #getter for: Landroid/hardware/motion/MotionRecognitionService;->mPostGripVal:S
    invoke-static {v1}, Landroid/hardware/motion/MotionRecognitionService;->access$2400(Landroid/hardware/motion/MotionRecognitionService;)S

    move-result v1

    if-lez v1, :cond_1

    .line 2166
    const-string v1, "MotionRecognitionService"

    const-string v2, "GRIP_SENSOR Grip far"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2167
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService$6;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    #getter for: Landroid/hardware/motion/MotionRecognitionService;->mPhoneService:Lcom/android/internal/telephony/ITelephony;
    invoke-static {v1}, Landroid/hardware/motion/MotionRecognitionService;->access$800(Landroid/hardware/motion/MotionRecognitionService;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->setTransmitPower(I)Z

    .line 2177
    :cond_0
    :goto_0
    return-void

    .line 2171
    :cond_1
    const-string v1, "MotionRecognitionService"

    const-string v2, "GRIP_SENSOR Grip close"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2172
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService$6;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    #getter for: Landroid/hardware/motion/MotionRecognitionService;->mPhoneService:Lcom/android/internal/telephony/ITelephony;
    invoke-static {v1}, Landroid/hardware/motion/MotionRecognitionService;->access$800(Landroid/hardware/motion/MotionRecognitionService;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->setTransmitPower(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2174
    :catch_0
    move-exception v1

    goto :goto_0
.end method
