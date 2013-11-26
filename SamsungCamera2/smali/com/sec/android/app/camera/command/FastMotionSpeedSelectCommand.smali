.class public Lcom/sec/android/app/camera/command/FastMotionSpeedSelectCommand;
.super Lcom/sec/android/app/camera/command/MenuCommand;
.source "FastMotionSpeedSelectCommand.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FastMotionSpeedSelectCommand"


# instance fields
.field private final mActivityContext:Lcom/sec/android/app/camera/Camera;

.field private mFastMotionSpeed:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/Camera;I)V
    .locals 1
    .parameter "context"
    .parameter "commandid"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/sec/android/app/camera/command/MenuCommand;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/sec/android/app/camera/command/FastMotionSpeedSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 37
    packed-switch p2, :pswitch_data_0

    .line 50
    :goto_0
    return-void

    .line 39
    :pswitch_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/command/FastMotionSpeedSelectCommand;->mFastMotionSpeed:I

    goto :goto_0

    .line 42
    :pswitch_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/command/FastMotionSpeedSelectCommand;->mFastMotionSpeed:I

    goto :goto_0

    .line 45
    :pswitch_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/command/FastMotionSpeedSelectCommand;->mFastMotionSpeed:I

    goto :goto_0

    .line 37
    nop

    :pswitch_data_0
    .packed-switch 0x1773
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public execute()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 54
    iget-object v1, p0, Lcom/sec/android/app/camera/command/FastMotionSpeedSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->isPreviewStarted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 55
    const-string v1, "FastMotionSpeedSelectCommand"

    const-string v2, "return isStartPreview.."

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :goto_0
    return v0

    .line 59
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/command/FastMotionSpeedSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getIsLaunchGallery()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 60
    const-string v1, "FastMotionSpeedSelectCommand"

    const-string v2, "return getIsLaunchGallery.."

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/command/FastMotionSpeedSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget v1, p0, Lcom/sec/android/app/camera/command/FastMotionSpeedSelectCommand;->mFastMotionSpeed:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->onFastMotionSpeedSelect(I)V

    .line 65
    iget v0, p0, Lcom/sec/android/app/camera/command/FastMotionSpeedSelectCommand;->mZOrder:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_2

    .line 66
    iget-object v0, p0, Lcom/sec/android/app/camera/command/FastMotionSpeedSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 68
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
