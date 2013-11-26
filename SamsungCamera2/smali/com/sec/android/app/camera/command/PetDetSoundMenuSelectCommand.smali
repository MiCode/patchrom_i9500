.class public Lcom/sec/android/app/camera/command/PetDetSoundMenuSelectCommand;
.super Lcom/sec/android/app/camera/command/MenuCommand;
.source "PetDetSoundMenuSelectCommand.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PetDetSoundMenuSelectCommand"


# instance fields
.field private final mActivityContext:Lcom/sec/android/app/camera/Camera;

.field private mPetDetSound:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/Camera;I)V
    .locals 1
    .parameter "context"
    .parameter "commandid"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/sec/android/app/camera/command/MenuCommand;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/sec/android/app/camera/command/PetDetSoundMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 35
    packed-switch p2, :pswitch_data_0

    .line 51
    :goto_0
    return-void

    .line 37
    :pswitch_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/command/PetDetSoundMenuSelectCommand;->mPetDetSound:I

    goto :goto_0

    .line 40
    :pswitch_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/command/PetDetSoundMenuSelectCommand;->mPetDetSound:I

    goto :goto_0

    .line 43
    :pswitch_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/command/PetDetSoundMenuSelectCommand;->mPetDetSound:I

    goto :goto_0

    .line 46
    :pswitch_3
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/command/PetDetSoundMenuSelectCommand;->mPetDetSound:I

    goto :goto_0

    .line 35
    nop

    :pswitch_data_0
    .packed-switch 0x1325
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public execute()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 55
    iget-object v1, p0, Lcom/sec/android/app/camera/command/PetDetSoundMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->isPreviewStarted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 56
    const-string v1, "PetDetSoundMenuSelectCommand"

    const-string v2, "return isStartPreview.."

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :goto_0
    return v0

    .line 60
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/command/PetDetSoundMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getIsLaunchGallery()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 61
    const-string v1, "PetDetSoundMenuSelectCommand"

    const-string v2, "return getIsLaunchGallery.."

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 65
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/command/PetDetSoundMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->isCapturing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 66
    const-string v1, "PetDetSoundMenuSelectCommand"

    const-string v2, "return isCapturing.."

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 70
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/command/PetDetSoundMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget v1, p0, Lcom/sec/android/app/camera/command/PetDetSoundMenuSelectCommand;->mPetDetSound:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->onPetDetSoundMenuSelect(I)V

    .line 71
    const/4 v0, 0x1

    goto :goto_0
.end method
