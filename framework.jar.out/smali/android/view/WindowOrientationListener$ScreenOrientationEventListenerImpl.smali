.class final Landroid/view/WindowOrientationListener$ScreenOrientationEventListenerImpl;
.super Ljava/lang/Object;
.source "WindowOrientationListener.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/WindowOrientationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ScreenOrientationEventListenerImpl"
.end annotation


# static fields
.field private static mFaceDetectionManager:Lcom/sec/android/smartface/SmartFaceManager;

.field private static mfaceDetectionm:Lcom/sec/android/facedetection/FaceDetectionManager;


# instance fields
.field private final mOrientationListener:Landroid/view/WindowOrientationListener;

.field private mPm:Landroid/os/PowerManager;

.field private mProposedRotation:I


# direct methods
.method public constructor <init>(Landroid/view/WindowOrientationListener;)V
    .locals 2
    .parameter "orientationListener"

    .prologue
    .line 486
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 487
    iput-object p1, p0, Landroid/view/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mOrientationListener:Landroid/view/WindowOrientationListener;

    .line 491
    iget-object v0, p0, Landroid/view/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mOrientationListener:Landroid/view/WindowOrientationListener;

    #getter for: Landroid/view/WindowOrientationListener;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/view/WindowOrientationListener;->access$300(Landroid/view/WindowOrientationListener;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/view/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mOrientationListener:Landroid/view/WindowOrientationListener;

    #getter for: Landroid/view/WindowOrientationListener;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/view/WindowOrientationListener;->access$300(Landroid/view/WindowOrientationListener;)Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Landroid/view/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mPm:Landroid/os/PowerManager;

    .line 492
    return-void
.end method

.method static synthetic access$100(Landroid/view/WindowOrientationListener$ScreenOrientationEventListenerImpl;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 477
    invoke-direct {p0}, Landroid/view/WindowOrientationListener$ScreenOrientationEventListenerImpl;->reset()V

    return-void
.end method

.method private reset()V
    .locals 1

    .prologue
    .line 495
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mProposedRotation:I

    .line 496
    return-void
.end method


# virtual methods
.method public getProposedRotation()I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 499
    iget v1, p0, Landroid/view/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mProposedRotation:I

    if-lt v1, v0, :cond_0

    iget v1, p0, Landroid/view/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mProposedRotation:I

    const/4 v2, 0x3

    if-le v1, v2, :cond_1

    .line 502
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Landroid/view/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mProposedRotation:I

    goto :goto_0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 507
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 8
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 513
    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v5, v4

    .line 515
    .local v2, x:F
    const-string v5, "WindowOrientationListener"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Rotation Sensor : x="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    float-to-int v5, v2

    iput v5, p0, Landroid/view/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mProposedRotation:I

    .line 518
    iget v5, p0, Landroid/view/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mProposedRotation:I

    if-ltz v5, :cond_0

    iget v5, p0, Landroid/view/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mProposedRotation:I

    const/4 v6, 0x3

    if-le v5, v6, :cond_1

    .line 519
    :cond_0
    const/4 v5, -0x1

    iput v5, p0, Landroid/view/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mProposedRotation:I

    .line 522
    :cond_1
    iget v5, p0, Landroid/view/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mProposedRotation:I

    if-ltz v5, :cond_3

    iget v5, p0, Landroid/view/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mProposedRotation:I

    iget-object v6, p0, Landroid/view/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mOrientationListener:Landroid/view/WindowOrientationListener;

    invoke-static {}, Landroid/view/WindowOrientationListener;->access$500()I

    move-result v6

    if-eq v5, v6, :cond_3

    .line 523
    invoke-static {}, Landroid/view/WindowOrientationListener;->access$700()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 524
    const-string v5, "WindowOrientationListener"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Proposed rotation changed!  proposedRotation="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/view/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mProposedRotation:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    :cond_2
    const-string v5, "WindowOrientationListener"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Proposed rotation changed!  proposedRotation="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/view/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mProposedRotation:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "currentRotation = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/view/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mOrientationListener:Landroid/view/WindowOrientationListener;

    invoke-static {}, Landroid/view/WindowOrientationListener;->access$500()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    iget-object v5, p0, Landroid/view/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mOrientationListener:Landroid/view/WindowOrientationListener;

    #getter for: Landroid/view/WindowOrientationListener;->mContext:Landroid/content/Context;
    invoke-static {v5}, Landroid/view/WindowOrientationListener;->access$300(Landroid/view/WindowOrientationListener;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "intelligent_rotation_mode"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_4

    move v1, v3

    .line 531
    .local v1, intelligent_rotation_enabled:Z
    :goto_0
    if-nez v1, :cond_5

    .line 533
    iget-object v3, p0, Landroid/view/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mOrientationListener:Landroid/view/WindowOrientationListener;

    invoke-virtual {v3, v4}, Landroid/view/WindowOrientationListener;->setFaceDetectionResult(Z)V

    .line 534
    iget-object v3, p0, Landroid/view/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mOrientationListener:Landroid/view/WindowOrientationListener;

    iget v4, p0, Landroid/view/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mProposedRotation:I

    invoke-virtual {v3, v4}, Landroid/view/WindowOrientationListener;->onProposedRotationChanged(I)V

    .line 616
    .end local v1           #intelligent_rotation_enabled:Z
    :cond_3
    :goto_1
    return-void

    :cond_4
    move v1, v4

    .line 529
    goto :goto_0

    .line 538
    .restart local v1       #intelligent_rotation_enabled:Z
    :cond_5
    iget-object v5, p0, Landroid/view/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mOrientationListener:Landroid/view/WindowOrientationListener;

    invoke-static {}, Landroid/view/WindowOrientationListener;->access$500()I

    move-result v5

    if-ltz v5, :cond_3

    iget-object v5, p0, Landroid/view/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mOrientationListener:Landroid/view/WindowOrientationListener;

    invoke-static {}, Landroid/view/WindowOrientationListener;->access$500()I

    move-result v5

    const/4 v6, 0x4

    if-ge v5, v6, :cond_3

    invoke-static {}, Landroid/view/WindowOrientationListener;->access$800()I

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {}, Landroid/view/WindowOrientationListener;->access$800()I

    move-result v5

    if-eq v5, v3, :cond_3

    invoke-static {}, Landroid/view/WindowOrientationListener;->access$800()I

    move-result v5

    const/4 v6, 0x5

    if-eq v5, v6, :cond_3

    invoke-static {}, Landroid/view/WindowOrientationListener;->access$800()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_3

    invoke-static {}, Landroid/view/WindowOrientationListener;->access$800()I

    move-result v5

    const/16 v6, 0x9

    if-eq v5, v6, :cond_3

    .line 547
    sget-object v5, Landroid/view/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mFaceDetectionManager:Lcom/sec/android/smartface/SmartFaceManager;

    if-nez v5, :cond_6

    .line 548
    invoke-static {}, Lcom/sec/android/smartface/SmartFaceManager;->getSmartFaceManager()Lcom/sec/android/smartface/SmartFaceManager;

    move-result-object v5

    sput-object v5, Landroid/view/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mFaceDetectionManager:Lcom/sec/android/smartface/SmartFaceManager;

    .line 550
    :cond_6
    sget-object v5, Landroid/view/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mFaceDetectionManager:Lcom/sec/android/smartface/SmartFaceManager;

    if-eqz v5, :cond_3

    .line 552
    sget-object v5, Landroid/view/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mFaceDetectionManager:Lcom/sec/android/smartface/SmartFaceManager;

    iget-object v6, p0, Landroid/view/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mOrientationListener:Landroid/view/WindowOrientationListener;

    invoke-static {}, Landroid/view/WindowOrientationListener;->access$500()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sec/android/smartface/SmartFaceManager;->checkForSmartRotation(I)Z

    move-result v0

    .line 553
    .local v0, face_found:Z
    if-ne v0, v3, :cond_7

    .line 555
    const-string v4, "WindowOrientationListener"

    const-string v5, "SMARTFACESERVICE FEATURE, face detected"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    iget-object v4, p0, Landroid/view/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mOrientationListener:Landroid/view/WindowOrientationListener;

    invoke-virtual {v4, v3}, Landroid/view/WindowOrientationListener;->setFaceDetectionResult(Z)V

    goto :goto_1

    .line 561
    :cond_7
    iget-object v3, p0, Landroid/view/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mOrientationListener:Landroid/view/WindowOrientationListener;

    invoke-virtual {v3, v4}, Landroid/view/WindowOrientationListener;->setFaceDetectionResult(Z)V

    .line 562
    iget-object v3, p0, Landroid/view/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mOrientationListener:Landroid/view/WindowOrientationListener;

    iget v4, p0, Landroid/view/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mProposedRotation:I

    invoke-virtual {v3, v4}, Landroid/view/WindowOrientationListener;->onProposedRotationChanged(I)V

    goto :goto_1
.end method
