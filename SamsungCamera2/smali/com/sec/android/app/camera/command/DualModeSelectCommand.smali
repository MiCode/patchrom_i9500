.class public Lcom/sec/android/app/camera/command/DualModeSelectCommand;
.super Lcom/sec/android/app/camera/command/MenuCommand;
.source "DualModeSelectCommand.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DualModeSelectCommand"


# instance fields
.field private final mActivityContext:Lcom/sec/android/app/camera/Camera;

.field private mDualMode:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/Camera;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/sec/android/app/camera/command/MenuCommand;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/sec/android/app/camera/command/DualModeSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 34
    return-void
.end method


# virtual methods
.method public execute()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 38
    iget-object v2, p0, Lcom/sec/android/app/camera/command/DualModeSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->isCapturing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 39
    const-string v1, "DualModeSelectCommand"

    const-string v2, "return isCapturing.."

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :goto_0
    return v0

    .line 43
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/command/DualModeSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->isRecording()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 44
    const-string v1, "DualModeSelectCommand"

    const-string v2, "return isRecording.."

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 48
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/command/DualModeSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->isPreviewStarted()Z

    move-result v2

    if-nez v2, :cond_2

    .line 49
    const-string v1, "DualModeSelectCommand"

    const-string v2, "return isStartPreview.."

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 53
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/command/DualModeSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getIsLaunchGallery()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 54
    const-string v1, "DualModeSelectCommand"

    const-string v2, "return getIsLaunchGallery.."

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 58
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/camera/command/DualModeSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->isCaptureEnabled()Z

    move-result v2

    if-nez v2, :cond_4

    .line 59
    iget-object v2, p0, Lcom/sec/android/app/camera/command/DualModeSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->processBack()V

    goto :goto_1

    .line 61
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/camera/command/DualModeSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getDualMode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 71
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/command/DualModeSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget v2, p0, Lcom/sec/android/app/camera/command/DualModeSelectCommand;->mDualMode:I

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/Camera;->onDualModeSelected(I)V

    move v0, v1

    .line 72
    goto :goto_0

    .line 63
    :pswitch_0
    iput v1, p0, Lcom/sec/android/app/camera/command/DualModeSelectCommand;->mDualMode:I

    goto :goto_2

    .line 66
    :pswitch_1
    iput v0, p0, Lcom/sec/android/app/camera/command/DualModeSelectCommand;->mDualMode:I

    goto :goto_2

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
