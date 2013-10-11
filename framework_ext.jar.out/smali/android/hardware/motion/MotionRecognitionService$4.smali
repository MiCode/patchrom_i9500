.class Landroid/hardware/motion/MotionRecognitionService$4;
.super Ljava/lang/Object;
.source "MotionRecognitionService.java"

# interfaces
.implements Lcom/sec/android/smartface/SmartFaceManager$SmartFaceInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/motion/MotionRecognitionService;-><init>(Landroid/content/Context;)V
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
    .line 503
    iput-object p1, p0, Landroid/hardware/motion/MotionRecognitionService$4;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Lcom/sec/android/smartface/FaceInfo;I)V
    .locals 6
    .parameter "data"
    .parameter "service_type"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 506
    and-int/lit8 v1, p2, 0x10

    if-eqz v1, :cond_0

    .line 507
    new-array v0, v5, [I

    .line 508
    .local v0, val:[I
    iget-boolean v1, p1, Lcom/sec/android/smartface/FaceInfo;->bFaceDetected:Z

    if-ne v1, v5, :cond_1

    .line 509
    const/4 v1, 0x3

    aput v1, v0, v4

    .line 513
    :goto_0
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService$4;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    #getter for: Landroid/hardware/motion/MotionRecognitionService;->mOldFaceInfo:I
    invoke-static {v1}, Landroid/hardware/motion/MotionRecognitionService;->access$1700(Landroid/hardware/motion/MotionRecognitionService;)I

    move-result v1

    aget v2, v0, v4

    if-eq v1, v2, :cond_0

    .line 514
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService$4;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    aget v2, v0, v4

    #setter for: Landroid/hardware/motion/MotionRecognitionService;->mOldFaceInfo:I
    invoke-static {v1, v2}, Landroid/hardware/motion/MotionRecognitionService;->access$1702(Landroid/hardware/motion/MotionRecognitionService;I)I

    .line 515
    const-string v1, "MotionRecognitionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SmartFaceManager onInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionService$4;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    #getter for: Landroid/hardware/motion/MotionRecognitionService;->mOldFaceInfo:I
    invoke-static {v3}, Landroid/hardware/motion/MotionRecognitionService;->access$1700(Landroid/hardware/motion/MotionRecognitionService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService$4;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    iget-object v1, v1, Landroid/hardware/motion/MotionRecognitionService;->sensorManager:Landroid/hardware/SensorManager;

    const/16 v2, 0x10

    invoke-virtual {v1, v2, v5, v0}, Landroid/hardware/SensorManager;->controlMotionSensor(II[I)I

    .line 519
    .end local v0           #val:[I
    :cond_0
    return-void

    .line 511
    .restart local v0       #val:[I
    :cond_1
    aput v4, v0, v4

    goto :goto_0
.end method
