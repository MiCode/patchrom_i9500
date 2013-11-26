.class public Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;
.super Lcom/sec/android/app/camera/command/MenuCommand;
.source "EffectMenuSelectCommand.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EffectMenuSelectCommand"


# instance fields
.field private final mActivityContext:Lcom/sec/android/app/camera/Camera;

.field private mEffect:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/Camera;I)V
    .locals 1
    .parameter "context"
    .parameter "commandid"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/sec/android/app/camera/command/MenuCommand;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 37
    packed-switch p2, :pswitch_data_0

    .line 169
    :goto_0
    :pswitch_0
    return-void

    .line 39
    :pswitch_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    goto :goto_0

    .line 42
    :pswitch_2
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    goto :goto_0

    .line 45
    :pswitch_3
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    goto :goto_0

    .line 48
    :pswitch_4
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    goto :goto_0

    .line 51
    :pswitch_5
    const/4 v0, 0x6

    iput v0, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    goto :goto_0

    .line 54
    :pswitch_6
    const/16 v0, 0x18

    iput v0, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    goto :goto_0

    .line 57
    :pswitch_7
    const/16 v0, 0x9

    iput v0, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    goto :goto_0

    .line 60
    :pswitch_8
    const/16 v0, 0x8

    iput v0, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    goto :goto_0

    .line 63
    :pswitch_9
    const/4 v0, 0x7

    iput v0, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    goto :goto_0

    .line 66
    :pswitch_a
    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    goto :goto_0

    .line 69
    :pswitch_b
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    goto :goto_0

    .line 72
    :pswitch_c
    const/16 v0, 0xa

    iput v0, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    goto :goto_0

    .line 75
    :pswitch_d
    const/16 v0, 0xb

    iput v0, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    goto :goto_0

    .line 78
    :pswitch_e
    const/16 v0, 0xc

    iput v0, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    goto :goto_0

    .line 81
    :pswitch_f
    const/16 v0, 0xd

    iput v0, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    goto :goto_0

    .line 84
    :pswitch_10
    const/16 v0, 0x16

    iput v0, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    goto :goto_0

    .line 87
    :pswitch_11
    const/16 v0, 0xe

    iput v0, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    goto :goto_0

    .line 90
    :pswitch_12
    const/16 v0, 0xf

    iput v0, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    goto :goto_0

    .line 93
    :pswitch_13
    const/16 v0, 0x10

    iput v0, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    goto :goto_0

    .line 96
    :pswitch_14
    const/16 v0, 0x11

    iput v0, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    goto :goto_0

    .line 99
    :pswitch_15
    const/16 v0, 0x12

    iput v0, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    goto :goto_0

    .line 102
    :pswitch_16
    const/16 v0, 0x13

    iput v0, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    goto :goto_0

    .line 105
    :pswitch_17
    const/16 v0, 0x14

    iput v0, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    goto :goto_0

    .line 108
    :pswitch_18
    const/16 v0, 0x15

    iput v0, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    goto :goto_0

    .line 112
    :pswitch_19
    const/16 v0, 0x28

    iput v0, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    goto :goto_0

    .line 115
    :pswitch_1a
    const/16 v0, 0x29

    iput v0, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    goto :goto_0

    .line 118
    :pswitch_1b
    const/16 v0, 0x31

    iput v0, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    goto :goto_0

    .line 121
    :pswitch_1c
    const/16 v0, 0x2a

    iput v0, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    goto/16 :goto_0

    .line 124
    :pswitch_1d
    const/16 v0, 0x2b

    iput v0, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    goto/16 :goto_0

    .line 127
    :pswitch_1e
    const/16 v0, 0x2c

    iput v0, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    goto/16 :goto_0

    .line 130
    :pswitch_1f
    const/16 v0, 0x32

    iput v0, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    goto/16 :goto_0

    .line 133
    :pswitch_20
    const/16 v0, 0x2d

    iput v0, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    goto/16 :goto_0

    .line 136
    :pswitch_21
    const/16 v0, 0x2e

    iput v0, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    goto/16 :goto_0

    .line 139
    :pswitch_22
    const/16 v0, 0x2f

    iput v0, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    goto/16 :goto_0

    .line 142
    :pswitch_23
    const/16 v0, 0x30

    iput v0, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    goto/16 :goto_0

    .line 145
    :pswitch_24
    const/16 v0, 0x19

    iput v0, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    goto/16 :goto_0

    .line 148
    :pswitch_25
    const/16 v0, 0x1a

    iput v0, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    goto/16 :goto_0

    .line 152
    :pswitch_26
    const/16 v0, 0x1b

    iput v0, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    goto/16 :goto_0

    .line 155
    :pswitch_27
    const/16 v0, 0x1c

    iput v0, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    goto/16 :goto_0

    .line 158
    :pswitch_28
    const/16 v0, 0x1d

    iput v0, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    goto/16 :goto_0

    .line 161
    :pswitch_29
    const/16 v0, 0x1e

    iput v0, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    goto/16 :goto_0

    .line 164
    :pswitch_2a
    const/16 v0, 0x1f

    iput v0, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    goto/16 :goto_0

    .line 37
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_24
        :pswitch_5
        :pswitch_25
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
    .end packed-switch
.end method


# virtual methods
.method public execute()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 173
    iget-object v2, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->isPreviewStarted()Z

    move-result v2

    if-nez v2, :cond_1

    .line 174
    const-string v2, "EffectMenuSelectCommand"

    const-string v3, "return isStartPreview.."

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_0
    :goto_0
    return v1

    .line 178
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getIsLaunchGallery()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 179
    const-string v2, "EffectMenuSelectCommand"

    const-string v3, "return getIsLaunchGallery.."

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 183
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->isCapturing()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 184
    const-string v2, "EffectMenuSelectCommand"

    const-string v3, "return isCapturing.."

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 188
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraEffect()I

    move-result v0

    .line 190
    .local v0, currentEffect:I
    iget-object v2, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget v3, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->onEffectMenuSelect(I)V

    .line 191
    iget v2, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mEffect:I

    if-ne v0, v2, :cond_4

    .line 192
    iget-object v2, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->isCaptureEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 195
    iget-object v1, p0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 197
    :cond_4
    const/4 v1, 0x1

    goto :goto_0
.end method
