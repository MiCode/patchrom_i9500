.class public final Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;
.super Ljava/lang/Object;
.source "CommonEngine.java"

# interfaces
.implements Lcom/sec/android/seccamera/SecCamera$ErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/CommonEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ErrorCallback"
.end annotation


# static fields
.field private static final CAMERA_ERROR_MSG_NO_ERROR:I = 0x0

.field private static final CAMERA_ERROR_WRONG_FW:I = 0x3e8


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/CommonEngine;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/CommonEngine;)V
    .locals 0

    .prologue
    .line 573
    iput-object p1, p0, Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILcom/sec/android/seccamera/SecCamera;)V
    .locals 6
    .parameter "error"
    .parameter "camera"

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x1

    .line 578
    sget-boolean v1, Lcom/sec/android/app/camera/Util;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 579
    const-string v1, "CommonEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ErrorCallback.onError ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v1

    if-ne v1, v5, :cond_2

    .line 587
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->closeCamera()V

    .line 646
    :cond_0
    :goto_1
    return-void

    .line 581
    :cond_1
    const-string v1, "CommonEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ErrorCallback.onError ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 591
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 594
    sparse-switch p1, :sswitch_data_0

    .line 643
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/4 v2, -0x5

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->finishOnError(I)V

    goto :goto_1

    .line 596
    :sswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 597
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/CeRequestQueue;->removeRequest(I)V

    goto :goto_1

    .line 600
    :sswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 601
    .local v0, tm:Landroid/telephony/TelephonyManager;
    const-string v1, "CommonEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onError : CAMERA_ERROR_WRONG_FW ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-boolean v3, v3, Lcom/sec/android/app/camera/CommonEngine;->mInformedAboutFirmwareVersion:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] IMEI:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-boolean v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mInformedAboutFirmwareVersion:Z

    if-nez v1, :cond_3

    const-string v1, "357858010034783"

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    const-string v1, "004400152020002"

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v4, :cond_5

    .line 603
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/4 v2, -0x7

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->finishOnError(I)V

    .line 604
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iput-boolean v4, v1, Lcom/sec/android/app/camera/CommonEngine;->mInformedAboutFirmwareVersion:Z

    goto/16 :goto_1

    .line 606
    :cond_5
    const-string v1, "CommonEngine"

    const-string v2, "onError : CAMERA_ERROR_WRONG_FW"

    invoke-static {v1, v2}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 610
    .end local v0           #tm:Landroid/telephony/TelephonyManager;
    :sswitch_2
    const-string v1, "CommonEngine"

    const-string v2, "!!!Camera retry!!! - start!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    sget-boolean v1, Lcom/sec/android/app/camera/Util;->DEBUG:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getDualMode()I

    move-result v1

    if-nez v1, :cond_6

    .line 612
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/16 v2, -0xb

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->finishOnError(I)V

    .line 615
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->getCurrentStateHandler()Lcom/sec/android/app/camera/AbstractCeState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_7

    .line 616
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->getVideoRecordingTimeInSecond()I

    move-result v1

    if-ge v1, v4, :cond_9

    .line 617
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->doCancelVideoRecordingSync()V

    .line 623
    :cond_7
    :goto_2
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/Camera;->setResizeHandleDragVibration(Z)V

    .line 624
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->doCamcorderRecordingStopSound()V

    .line 625
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->getCurrentStateHandler()Lcom/sec/android/app/camera/AbstractCeState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_8

    .line 626
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->releaseMediaRecorder()V

    .line 629
    :cond_8
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->doStopEngineSync()V

    .line 630
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->doStartEngineAsync()V

    .line 631
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->waitForEngineStartingThread()V

    .line 632
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->doStartDualEngineSync()V

    .line 633
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CommonEngine;->changeEngineState(I)V

    .line 634
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->doStartPreviewAsync()V

    .line 635
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->doStartDualPreviewSync()V

    .line 636
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->waitForStartPreviewThreadComplete()V

    .line 637
    const-string v1, "CommonEngine"

    const-string v2, "!!!Camera retry!!! before return"

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 619
    :cond_9
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->doStopVideoRecordingSync()V

    goto :goto_2

    .line 640
    :sswitch_3
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/4 v2, -0x8

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->finishOnError(I)V

    goto/16 :goto_1

    .line 594
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x64 -> :sswitch_3
        0x3e8 -> :sswitch_1
        0x3e9 -> :sswitch_2
    .end sparse-switch
.end method
