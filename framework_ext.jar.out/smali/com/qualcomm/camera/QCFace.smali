.class public Lcom/qualcomm/camera/QCFace;
.super Landroid/hardware/Camera$Face;
.source "QCFace.java"

# interfaces
.implements Lcom/qualcomm/snapdragon/util/QCCapabilitiesInterface;


# static fields
.field private static final BUNDLE_KEY_BLINK_DETECTED:Ljava/lang/String; = "blinkDetected"

.field private static final BUNDLE_KEY_FACE_PITCH_DEGREE:Ljava/lang/String; = "facePitchDegree"

.field private static final BUNDLE_KEY_FACE_RECOGNIZED:Ljava/lang/String; = "faceRecognized"

.field private static final BUNDLE_KEY_FACE_ROLL_DEGREE:Ljava/lang/String; = "faceRollDegree"

.field private static final BUNDLE_KEY_FACE_YAW_DEGREE:Ljava/lang/String; = "faceYawDegree"

.field private static final BUNDLE_KEY_GAZE_LEFT_RIGHT_DEGREE:Ljava/lang/String; = "gazeLeftRightDegree"

.field private static final BUNDLE_KEY_GAZE_UP_DOWN_DEGREE:Ljava/lang/String; = "gazeUpDownDegree"

.field private static final BUNDLE_KEY_LEFT_EYE_CLOSED_VALUE:Ljava/lang/String; = "leftEyeClosedValue"

.field private static final BUNDLE_KEY_RIGHT_EYE_CLOSED_VALUE:Ljava/lang/String; = "rightEyeClosedValue"

.field private static final BUNDLE_KEY_SMILE_SCORE:Ljava/lang/String; = "smileScore"

.field private static final BUNDLE_KEY_SMILE_VALUE:Ljava/lang/String; = "smileValue"

.field private static final STR_FACIAL_PROCESSING:Ljava/lang/String; = "ro.qc.sdk.camera.facialproc"

.field private static final STR_FALSE:Ljava/lang/String; = "false"

.field private static final STR_TRUE:Ljava/lang/String; = "true"


# instance fields
.field private blinkDetected:I

.field private faceRecognized:I

.field private gazeAngle:I

.field private leftrightDir:I

.field private leftrightGaze:I

.field private leyeBlink:I

.field private reyeBlink:I

.field private rollDir:I

.field private smileDegree:I

.field private smileScore:I

.field private topbottomGaze:I

.field private updownDir:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Landroid/hardware/Camera$Face;-><init>()V

    .line 61
    iput v0, p0, Lcom/qualcomm/camera/QCFace;->smileDegree:I

    .line 62
    iput v0, p0, Lcom/qualcomm/camera/QCFace;->smileScore:I

    .line 63
    iput v0, p0, Lcom/qualcomm/camera/QCFace;->blinkDetected:I

    .line 64
    iput v0, p0, Lcom/qualcomm/camera/QCFace;->faceRecognized:I

    .line 65
    iput v0, p0, Lcom/qualcomm/camera/QCFace;->gazeAngle:I

    .line 66
    iput v0, p0, Lcom/qualcomm/camera/QCFace;->updownDir:I

    .line 67
    iput v0, p0, Lcom/qualcomm/camera/QCFace;->leftrightDir:I

    .line 68
    iput v0, p0, Lcom/qualcomm/camera/QCFace;->rollDir:I

    .line 69
    iput v0, p0, Lcom/qualcomm/camera/QCFace;->leyeBlink:I

    .line 70
    iput v0, p0, Lcom/qualcomm/camera/QCFace;->reyeBlink:I

    .line 71
    iput v0, p0, Lcom/qualcomm/camera/QCFace;->leftrightGaze:I

    .line 72
    iput v0, p0, Lcom/qualcomm/camera/QCFace;->topbottomGaze:I

    .line 59
    return-void
.end method


# virtual methods
.method public getBlinkDetected()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/qualcomm/camera/QCFace;->blinkDetected:I

    return v0
.end method

.method public getCapabilities()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 220
    const-string v3, "ro.qc.sdk.camera.facialproc"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 222
    .local v2, propertyVal:Ljava/lang/String;
    const/4 v1, 0x0

    .line 223
    .local v1, methodList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 225
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #methodList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 226
    .restart local v1       #methodList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "getSmileDegree"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    const-string v3, "getSmileScore"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    const-string v3, "getBlinkDetected"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    const-string v3, "getFaceRecognized"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    const-string v3, "getGazeAngle"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    const-string v3, "getUpDownDirection"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    const-string v3, "getLeftRightDirection"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    const-string v3, "getRollDirection"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    const-string v3, "getLeftRightGazeDegree"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    const-string v3, "getTopBottomGazeDegree"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    const-string v3, "getLeftEyeBlinkDegree"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    const-string v3, "getRightEyeBlinkDegree"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    const-string v3, "getQCFaceInfo"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 242
    .local v0, capabilitiesBundle:Landroid/os/Bundle;
    const-string v3, "key_active_method_names"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 245
    return-object v0
.end method

.method public getFaceRecognized()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/qualcomm/camera/QCFace;->faceRecognized:I

    return v0
.end method

.method public getGazeAngle()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/qualcomm/camera/QCFace;->gazeAngle:I

    return v0
.end method

.method public getLeftEyeBlinkDegree()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lcom/qualcomm/camera/QCFace;->leyeBlink:I

    return v0
.end method

.method public getLeftRightDirection()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lcom/qualcomm/camera/QCFace;->leftrightDir:I

    return v0
.end method

.method public getLeftRightGazeDegree()I
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lcom/qualcomm/camera/QCFace;->leftrightGaze:I

    return v0
.end method

.method public getQCFaceInfo()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 199
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 200
    .local v0, faceInfo:Landroid/os/Bundle;
    const-string v1, "smileValue"

    iget v2, p0, Lcom/qualcomm/camera/QCFace;->smileDegree:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 202
    const-string v1, "leftEyeClosedValue"

    iget v2, p0, Lcom/qualcomm/camera/QCFace;->leyeBlink:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 203
    const-string v1, "rightEyeClosedValue"

    iget v2, p0, Lcom/qualcomm/camera/QCFace;->reyeBlink:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 205
    const-string v1, "facePitchDegree"

    iget v2, p0, Lcom/qualcomm/camera/QCFace;->updownDir:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 206
    const-string v1, "faceYawDegree"

    iget v2, p0, Lcom/qualcomm/camera/QCFace;->leftrightDir:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 207
    const-string v1, "faceRollDegree"

    iget v2, p0, Lcom/qualcomm/camera/QCFace;->rollDir:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 208
    const-string v1, "gazeUpDownDegree"

    iget v2, p0, Lcom/qualcomm/camera/QCFace;->topbottomGaze:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 209
    const-string v1, "gazeLeftRightDegree"

    iget v2, p0, Lcom/qualcomm/camera/QCFace;->leftrightGaze:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 211
    const-string v1, "blinkDetected"

    iget v2, p0, Lcom/qualcomm/camera/QCFace;->blinkDetected:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 212
    const-string v1, "smileScore"

    iget v2, p0, Lcom/qualcomm/camera/QCFace;->smileScore:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 213
    const-string v1, "faceRecognized"

    iget v2, p0, Lcom/qualcomm/camera/QCFace;->faceRecognized:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 215
    return-object v0
.end method

.method public getRightEyeBlinkDegree()I
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lcom/qualcomm/camera/QCFace;->reyeBlink:I

    return v0
.end method

.method public getRollDirection()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcom/qualcomm/camera/QCFace;->rollDir:I

    return v0
.end method

.method public getSmileDegree()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/qualcomm/camera/QCFace;->smileDegree:I

    return v0
.end method

.method public getSmileScore()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/qualcomm/camera/QCFace;->smileScore:I

    return v0
.end method

.method public getTopBottomGazeDegree()I
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lcom/qualcomm/camera/QCFace;->topbottomGaze:I

    return v0
.end method

.method public getUpDownDirection()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/qualcomm/camera/QCFace;->updownDir:I

    return v0
.end method
