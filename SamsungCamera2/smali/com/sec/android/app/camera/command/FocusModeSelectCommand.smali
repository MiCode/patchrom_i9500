.class public Lcom/sec/android/app/camera/command/FocusModeSelectCommand;
.super Lcom/sec/android/app/camera/command/MenuCommand;
.source "FocusModeSelectCommand.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FocusModeSelectCommand"


# instance fields
.field private final mActivityContext:Lcom/sec/android/app/camera/Camera;

.field private mFocusMode:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/Camera;I)V
    .locals 1
    .parameter "context"
    .parameter "commandid"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/sec/android/app/camera/command/MenuCommand;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/sec/android/app/camera/command/FocusModeSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 36
    packed-switch p2, :pswitch_data_0

    .line 52
    :goto_0
    return-void

    .line 38
    :pswitch_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/command/FocusModeSelectCommand;->mFocusMode:I

    goto :goto_0

    .line 41
    :pswitch_1
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/command/FocusModeSelectCommand;->mFocusMode:I

    goto :goto_0

    .line 44
    :pswitch_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/command/FocusModeSelectCommand;->mFocusMode:I

    goto :goto_0

    .line 47
    :pswitch_3
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/command/FocusModeSelectCommand;->mFocusMode:I

    goto :goto_0

    .line 36
    nop

    :pswitch_data_0
    .packed-switch 0x2bc
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public execute()Z
    .locals 3

    .prologue
    const/4 v2, 0x3

    const/4 v0, 0x0

    .line 56
    iget-object v1, p0, Lcom/sec/android/app/camera/command/FocusModeSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->isCapturing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    const-string v1, "FocusModeSelectCommand"

    const-string v2, "return isCapturing.."

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :goto_0
    return v0

    .line 61
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/command/FocusModeSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->isPreviewStarted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 62
    const-string v1, "FocusModeSelectCommand"

    const-string v2, "return isStartPreview.."

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 66
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/command/FocusModeSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getIsLaunchGallery()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 67
    const-string v1, "FocusModeSelectCommand"

    const-string v2, "return getIsLaunchGallery.."

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 71
    :cond_2
    iget v0, p0, Lcom/sec/android/app/camera/command/FocusModeSelectCommand;->mFocusMode:I

    if-eq v0, v2, :cond_3

    .line 72
    iget-object v0, p0, Lcom/sec/android/app/camera/command/FocusModeSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->hideFaceRect()V

    .line 74
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/command/FocusModeSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget v1, p0, Lcom/sec/android/app/camera/command/FocusModeSelectCommand;->mFocusMode:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->onFocusModeMenuSelect(I)V

    .line 75
    iget v0, p0, Lcom/sec/android/app/camera/command/FocusModeSelectCommand;->mZOrder:I

    if-le v0, v2, :cond_4

    .line 76
    iget-object v0, p0, Lcom/sec/android/app/camera/command/FocusModeSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 78
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method
