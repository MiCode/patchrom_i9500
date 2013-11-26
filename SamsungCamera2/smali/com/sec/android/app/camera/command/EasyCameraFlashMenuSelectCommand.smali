.class public Lcom/sec/android/app/camera/command/EasyCameraFlashMenuSelectCommand;
.super Lcom/sec/android/app/camera/command/MenuCommand;
.source "EasyCameraFlashMenuSelectCommand.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EasyCameraFlashMenuSelectCommand"


# instance fields
.field private final mActivityContext:Lcom/sec/android/app/camera/Camera;

.field private mCommandId:I

.field private mFlashMode:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/Camera;I)V
    .locals 0
    .parameter "context"
    .parameter "commandid"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/sec/android/app/camera/command/MenuCommand;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/sec/android/app/camera/command/EasyCameraFlashMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 36
    iput p2, p0, Lcom/sec/android/app/camera/command/EasyCameraFlashMenuSelectCommand;->mCommandId:I

    .line 37
    return-void
.end method


# virtual methods
.method public execute()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 41
    iget-object v2, p0, Lcom/sec/android/app/camera/command/EasyCameraFlashMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->isPreviewStarted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 42
    const-string v1, "EasyCameraFlashMenuSelectCommand"

    const-string v2, "return isStartPreview.."

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :goto_0
    return v0

    .line 46
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/command/EasyCameraFlashMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getIsLaunchGallery()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 47
    const-string v1, "EasyCameraFlashMenuSelectCommand"

    const-string v2, "return getIsLaunchGallery.."

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 51
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/command/EasyCameraFlashMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->isCapturing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 52
    const-string v1, "EasyCameraFlashMenuSelectCommand"

    const-string v2, "return isCapturing.."

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 56
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/command/EasyCameraFlashMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getFlashMode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 70
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/command/EasyCameraFlashMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget v2, p0, Lcom/sec/android/app/camera/command/EasyCameraFlashMenuSelectCommand;->mFlashMode:I

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/Camera;->onFlashModeMenuSelect(I)V

    .line 71
    iget v0, p0, Lcom/sec/android/app/camera/command/EasyCameraFlashMenuSelectCommand;->mZOrder:I

    const/4 v2, 0x3

    if-le v0, v2, :cond_3

    .line 72
    iget-object v0, p0, Lcom/sec/android/app/camera/command/EasyCameraFlashMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    :cond_3
    move v0, v1

    .line 74
    goto :goto_0

    .line 58
    :pswitch_0
    iput v1, p0, Lcom/sec/android/app/camera/command/EasyCameraFlashMenuSelectCommand;->mFlashMode:I

    goto :goto_1

    .line 61
    :pswitch_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/command/EasyCameraFlashMenuSelectCommand;->mFlashMode:I

    goto :goto_1

    .line 64
    :pswitch_2
    iput v0, p0, Lcom/sec/android/app/camera/command/EasyCameraFlashMenuSelectCommand;->mFlashMode:I

    goto :goto_1

    .line 56
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
