.class public Lcom/sec/android/app/camera/command/StoryShotMenuSelectCommand;
.super Lcom/sec/android/app/camera/command/MenuCommand;
.source "StoryShotMenuSelectCommand.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StoryShotMenuSelectCommand"


# instance fields
.field private final mActivityContext:Lcom/sec/android/app/camera/Camera;

.field private mStoryShotMode:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/Camera;I)V
    .locals 1
    .parameter "context"
    .parameter "commandid"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/sec/android/app/camera/command/MenuCommand;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/sec/android/app/camera/command/StoryShotMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 35
    packed-switch p2, :pswitch_data_0

    .line 48
    :goto_0
    return-void

    .line 37
    :pswitch_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/command/StoryShotMenuSelectCommand;->mStoryShotMode:I

    goto :goto_0

    .line 40
    :pswitch_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/command/StoryShotMenuSelectCommand;->mStoryShotMode:I

    goto :goto_0

    .line 43
    :pswitch_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/command/StoryShotMenuSelectCommand;->mStoryShotMode:I

    goto :goto_0

    .line 35
    nop

    :pswitch_data_0
    .packed-switch 0x1450
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public execute()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 52
    iget-object v2, p0, Lcom/sec/android/app/camera/command/StoryShotMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->isPreviewStarted()Z

    move-result v2

    if-nez v2, :cond_1

    .line 53
    const-string v2, "StoryShotMenuSelectCommand"

    const-string v3, "return isStartPreview.."

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_0
    :goto_0
    return v1

    .line 57
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/command/StoryShotMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getIsLaunchGallery()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 58
    const-string v2, "StoryShotMenuSelectCommand"

    const-string v3, "return getIsLaunchGallery.."

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 62
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/command/StoryShotMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->isCapturing()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 63
    const-string v2, "StoryShotMenuSelectCommand"

    const-string v3, "return isCapturing.."

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 67
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/command/StoryShotMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getSoundShotMode()I

    move-result v0

    .line 69
    .local v0, currentStoryMode:I
    iget-object v2, p0, Lcom/sec/android/app/camera/command/StoryShotMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget v3, p0, Lcom/sec/android/app/camera/command/StoryShotMenuSelectCommand;->mStoryShotMode:I

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->onSoundShotMenuSelect(I)V

    .line 70
    iget v2, p0, Lcom/sec/android/app/camera/command/StoryShotMenuSelectCommand;->mStoryShotMode:I

    if-ne v0, v2, :cond_4

    .line 71
    iget-object v2, p0, Lcom/sec/android/app/camera/command/StoryShotMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->isCaptureEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 74
    iget-object v1, p0, Lcom/sec/android/app/camera/command/StoryShotMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 76
    :cond_4
    const/4 v1, 0x1

    goto :goto_0
.end method
