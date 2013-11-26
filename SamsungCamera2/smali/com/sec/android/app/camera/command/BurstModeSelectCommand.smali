.class public Lcom/sec/android/app/camera/command/BurstModeSelectCommand;
.super Lcom/sec/android/app/camera/command/MenuCommand;
.source "BurstModeSelectCommand.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BurstModeSelectCommand"


# instance fields
.field private final mActivityContext:Lcom/sec/android/app/camera/Camera;

.field private mBurstMode:I

.field private mCommandId:I

.field private mToggle:Z


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/Camera;IZ)V
    .locals 0
    .parameter "context"
    .parameter "commandid"
    .parameter "toggle"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/sec/android/app/camera/command/MenuCommand;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/sec/android/app/camera/command/BurstModeSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 38
    iput p2, p0, Lcom/sec/android/app/camera/command/BurstModeSelectCommand;->mCommandId:I

    .line 39
    iput-boolean p3, p0, Lcom/sec/android/app/camera/command/BurstModeSelectCommand;->mToggle:Z

    .line 40
    return-void
.end method


# virtual methods
.method public execute()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 44
    iget-object v2, p0, Lcom/sec/android/app/camera/command/BurstModeSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->isPreviewStarted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 45
    const-string v1, "BurstModeSelectCommand"

    const-string v2, "return isStartPreview.."

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :goto_0
    return v0

    .line 49
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/command/BurstModeSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getIsLaunchGallery()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 50
    const-string v1, "BurstModeSelectCommand"

    const-string v2, "return getIsLaunchGallery.."

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 54
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/command/BurstModeSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->isCapturing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 55
    const-string v1, "BurstModeSelectCommand"

    const-string v2, "return isCapturing.."

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 59
    :cond_2
    iget-boolean v2, p0, Lcom/sec/android/app/camera/command/BurstModeSelectCommand;->mToggle:Z

    if-eqz v2, :cond_4

    .line 60
    iget-object v2, p0, Lcom/sec/android/app/camera/command/BurstModeSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v2

    const/16 v3, 0x2f

    iget-object v4, p0, Lcom/sec/android/app/camera/command/BurstModeSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getBurstMode()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/command/BurstModeSelectCommand;->mCommandId:I

    .line 61
    iget v2, p0, Lcom/sec/android/app/camera/command/BurstModeSelectCommand;->mCommandId:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/sec/android/app/camera/command/BurstModeSelectCommand;->mCommandId:I

    const/16 v3, 0x1195

    if-lt v2, v3, :cond_3

    .line 62
    const/16 v2, 0x1194

    iput v2, p0, Lcom/sec/android/app/camera/command/BurstModeSelectCommand;->mCommandId:I

    .line 64
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/command/BurstModeSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget v3, p0, Lcom/sec/android/app/camera/command/BurstModeSelectCommand;->mCommandId:I

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->onHelpPopupSelect(I)V

    .line 67
    :cond_4
    iget v2, p0, Lcom/sec/android/app/camera/command/BurstModeSelectCommand;->mCommandId:I

    packed-switch v2, :pswitch_data_0

    .line 78
    :goto_1
    iget v0, p0, Lcom/sec/android/app/camera/command/BurstModeSelectCommand;->mBurstMode:I

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/command/BurstModeSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultBurstMode()I

    move-result v0

    if-nez v0, :cond_6

    .line 79
    iget-object v0, p0, Lcom/sec/android/app/camera/command/BurstModeSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget v2, p0, Lcom/sec/android/app/camera/command/BurstModeSelectCommand;->mBurstMode:I

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/Camera;->showTurnOnBurstShotHelpTextDialog(I)V

    .line 83
    :goto_2
    iget v0, p0, Lcom/sec/android/app/camera/command/BurstModeSelectCommand;->mZOrder:I

    const/4 v2, 0x3

    if-le v0, v2, :cond_5

    .line 84
    iget-object v0, p0, Lcom/sec/android/app/camera/command/BurstModeSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    :cond_5
    move v0, v1

    .line 86
    goto :goto_0

    .line 69
    :pswitch_0
    iput v0, p0, Lcom/sec/android/app/camera/command/BurstModeSelectCommand;->mBurstMode:I

    goto :goto_1

    .line 72
    :pswitch_1
    iput v1, p0, Lcom/sec/android/app/camera/command/BurstModeSelectCommand;->mBurstMode:I

    goto :goto_1

    .line 81
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/command/BurstModeSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget v2, p0, Lcom/sec/android/app/camera/command/BurstModeSelectCommand;->mBurstMode:I

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/Camera;->onBurstModeSelectCommand(I)V

    goto :goto_2

    .line 67
    nop

    :pswitch_data_0
    .packed-switch 0x1194
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
