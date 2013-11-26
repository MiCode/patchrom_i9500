.class public Lcom/sec/android/app/camera/MediaRecorderProfile;
.super Ljava/lang/Object;
.source "MediaRecorderProfile.java"


# static fields
.field private static final PROFILE_1280_720:I = 0x2

.field private static final PROFILE_1440_1080:I = 0x1

.field private static final PROFILE_176_144:I = 0x6

.field private static final PROFILE_1920_1080:I = 0x0

.field private static final PROFILE_320_240:I = 0x5

.field private static final PROFILE_640_480:I = 0x4

.field private static final PROFILE_720_480:I = 0x3

.field private static final PROFILE_800_450_Animated_Scene:I = 0x8

.field private static final PROFILE_MMS:I = 0x7

.field private static final PROPERTY_AUDIO_BITRATE:I = 0x7

.field private static final PROPERTY_AUDIO_ENCORDER:I = 0x6

.field private static final PROPERTY_AUDIO_NUM_CHANNELS:I = 0x8

.field private static final PROPERTY_AUDIO_SAMPLINGRATE:I = 0x9

.field private static final PROPERTY_VIDEO_BITRATE_FINE:I = 0x2

.field private static final PROPERTY_VIDEO_BITRATE_NORMAL:I = 0x3

.field private static final PROPERTY_VIDEO_BITRATE_SUPERFINE:I = 0x1

.field private static final PROPERTY_VIDEO_ENCORDER:I = 0x0

.field private static final PROPERTY_VIDEO_FRAME_RATE:I = 0x4

.field private static final PROPERTY_VIDEO_OUTPUT_FORMAT:I = 0x5

.field private static final TAG:Ljava/lang/String; = "MediaRecorderProfile"


# instance fields
.field public final mAudioBitrate:I

.field public final mAudioChannels:I

.field public final mAudioEncoder:I

.field public final mAudioSamplingRate:I

.field private mDualProfileTable:[[I

.field public final mOutputFormat:I

.field private mProfileTable:[[I

.field public final mVideoBitrate:I

.field public final mVideoEncoder:I

.field public final mVideoFps:I

.field public final mVideoHeight:I

.field public final mVideoWidth:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/Camera;I)V
    .locals 12
    .parameter "activityContext"
    .parameter "quality"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x4

    const/4 v8, 0x1

    const/16 v7, 0xa

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/16 v4, 0x9

    new-array v4, v4, [[I

    new-array v5, v7, [I

    fill-array-data v5, :array_0

    aput-object v5, v4, v10

    new-array v5, v7, [I

    fill-array-data v5, :array_1

    aput-object v5, v4, v8

    new-array v5, v7, [I

    fill-array-data v5, :array_2

    aput-object v5, v4, v11

    const/4 v5, 0x3

    new-array v6, v7, [I

    fill-array-data v6, :array_3

    aput-object v6, v4, v5

    new-array v5, v7, [I

    fill-array-data v5, :array_4

    aput-object v5, v4, v9

    const/4 v5, 0x5

    new-array v6, v7, [I

    fill-array-data v6, :array_5

    aput-object v6, v4, v5

    const/4 v5, 0x6

    new-array v6, v7, [I

    fill-array-data v6, :array_6

    aput-object v6, v4, v5

    const/4 v5, 0x7

    new-array v6, v7, [I

    fill-array-data v6, :array_7

    aput-object v6, v4, v5

    const/16 v5, 0x8

    new-array v6, v7, [I

    fill-array-data v6, :array_8

    aput-object v6, v4, v5

    iput-object v4, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mProfileTable:[[I

    .line 115
    const/16 v4, 0x9

    new-array v4, v4, [[I

    new-array v5, v7, [I

    fill-array-data v5, :array_9

    aput-object v5, v4, v10

    new-array v5, v7, [I

    fill-array-data v5, :array_a

    aput-object v5, v4, v8

    new-array v5, v7, [I

    fill-array-data v5, :array_b

    aput-object v5, v4, v11

    const/4 v5, 0x3

    new-array v6, v7, [I

    fill-array-data v6, :array_c

    aput-object v6, v4, v5

    new-array v5, v7, [I

    fill-array-data v5, :array_d

    aput-object v5, v4, v9

    const/4 v5, 0x5

    new-array v6, v7, [I

    fill-array-data v6, :array_e

    aput-object v6, v4, v5

    const/4 v5, 0x6

    new-array v6, v7, [I

    fill-array-data v6, :array_f

    aput-object v6, v4, v5

    const/4 v5, 0x7

    new-array v6, v7, [I

    fill-array-data v6, :array_10

    aput-object v6, v4, v5

    const/16 v5, 0x8

    new-array v6, v7, [I

    fill-array-data v6, :array_11

    aput-object v6, v4, v5

    iput-object v4, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mDualProfileTable:[[I

    .line 163
    const/4 v0, 0x3

    .line 164
    .local v0, propertyIndex:I
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v2

    .line 165
    .local v2, resolutionId:I
    const/4 v1, 0x3

    .line 168
    .local v1, qualityIndex:I
    sparse-switch v2, :sswitch_data_0

    .line 193
    :goto_0
    packed-switch p2, :pswitch_data_0

    .line 205
    :goto_1
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->isCinepicRecording()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 206
    const/16 v0, 0x8

    .line 207
    const-string v4, "800x450"

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    .line 219
    :cond_0
    :goto_2
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->isCamcorderRecordingMMSMode()Z

    move-result v4

    if-eqz v4, :cond_5

    const/16 v4, 0x12

    if-ne v2, v4, :cond_5

    .line 220
    iput v11, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoEncoder:I

    .line 225
    :goto_3
    const/4 v3, 0x0

    .line 226
    .local v3, use_gpu_filter:Z
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getDualMode()I

    move-result v4

    if-eq v4, v8, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getCameraEffect()I

    move-result v4

    if-eqz v4, :cond_2

    .line 227
    :cond_1
    const/4 v3, 0x1

    .line 229
    :cond_2
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->isCamcorderRecordingMMSMode()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 230
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Message_MmsModeCaptureVideoBitRate"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_6

    .line 231
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Message_MmsModeCaptureVideoBitRate"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoBitrate:I

    .line 247
    :goto_4
    if-eqz v3, :cond_a

    .line 248
    iget-object v4, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mDualProfileTable:[[I

    aget-object v4, v4, v0

    aget v4, v4, v9

    iput v4, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoFps:I

    .line 253
    :goto_5
    iget-object v4, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mProfileTable:[[I

    aget-object v4, v4, v0

    const/4 v5, 0x5

    aget v4, v4, v5

    iput v4, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mOutputFormat:I

    .line 254
    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoWidth:I

    .line 255
    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoHeight:I

    .line 258
    iget-object v4, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mProfileTable:[[I

    aget-object v4, v4, v0

    const/4 v5, 0x6

    aget v4, v4, v5

    iput v4, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mAudioEncoder:I

    .line 259
    iget-object v4, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mProfileTable:[[I

    aget-object v4, v4, v0

    const/4 v5, 0x7

    aget v4, v4, v5

    iput v4, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mAudioBitrate:I

    .line 260
    iget-object v4, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mProfileTable:[[I

    aget-object v4, v4, v0

    const/16 v5, 0x8

    aget v4, v4, v5

    iput v4, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mAudioChannels:I

    .line 261
    iget-object v4, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mProfileTable:[[I

    aget-object v4, v4, v0

    const/16 v5, 0x9

    aget v4, v4, v5

    iput v4, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mAudioSamplingRate:I

    .line 262
    return-void

    .line 170
    .end local v3           #use_gpu_filter:Z
    :sswitch_0
    const/4 v0, 0x0

    .line 171
    goto/16 :goto_0

    .line 173
    :sswitch_1
    const/4 v0, 0x1

    .line 174
    goto/16 :goto_0

    .line 176
    :sswitch_2
    const/4 v0, 0x2

    .line 177
    goto/16 :goto_0

    .line 180
    :sswitch_3
    const/4 v0, 0x3

    .line 181
    goto/16 :goto_0

    .line 183
    :sswitch_4
    const/4 v0, 0x4

    .line 184
    goto/16 :goto_0

    .line 186
    :sswitch_5
    const/4 v0, 0x5

    .line 187
    goto/16 :goto_0

    .line 189
    :sswitch_6
    const/4 v0, 0x6

    goto/16 :goto_0

    .line 195
    :pswitch_0
    const/4 v1, 0x1

    .line 196
    goto/16 :goto_1

    .line 198
    :pswitch_1
    const/4 v1, 0x2

    .line 199
    goto/16 :goto_1

    .line 201
    :pswitch_2
    const/4 v1, 0x3

    goto/16 :goto_1

    .line 208
    :cond_3
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderRecordingMode()I

    move-result v4

    if-ne v4, v8, :cond_0

    .line 209
    const/4 v0, 0x7

    .line 211
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Message_MmsModeCaptureVideoResolution"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 212
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Message_MmsModeCaptureVideoResolution"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_2

    .line 214
    :cond_4
    const/16 v2, 0x13

    goto/16 :goto_2

    .line 222
    :cond_5
    iget-object v4, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mProfileTable:[[I

    aget-object v4, v4, v0

    aget v4, v4, v10

    iput v4, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoEncoder:I

    goto/16 :goto_3

    .line 233
    .restart local v3       #use_gpu_filter:Z
    :cond_6
    if-eqz v3, :cond_7

    .line 234
    iget-object v4, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mDualProfileTable:[[I

    aget-object v4, v4, v0

    aget v4, v4, v1

    iput v4, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoBitrate:I

    goto/16 :goto_4

    .line 236
    :cond_7
    iget-object v4, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mProfileTable:[[I

    aget-object v4, v4, v0

    aget v4, v4, v1

    iput v4, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoBitrate:I

    goto/16 :goto_4

    .line 240
    :cond_8
    if-eqz v3, :cond_9

    .line 241
    iget-object v4, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mDualProfileTable:[[I

    aget-object v4, v4, v0

    aget v4, v4, v1

    iput v4, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoBitrate:I

    goto/16 :goto_4

    .line 243
    :cond_9
    iget-object v4, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mProfileTable:[[I

    aget-object v4, v4, v0

    aget v4, v4, v1

    iput v4, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoBitrate:I

    goto/16 :goto_4

    .line 250
    :cond_a
    iget-object v4, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mProfileTable:[[I

    aget-object v4, v4, v0

    aget v4, v4, v9

    iput v4, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoFps:I

    goto/16 :goto_5

    .line 68
    :array_0
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x40t 0x66t 0x3t 0x1t
        0xc0t 0xe1t 0xe4t 0x0t
        0x40t 0x5dt 0xc6t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x0t 0xf4t 0x1t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x80t 0xbbt 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x40t 0x5dt 0xc6t 0x0t
        0xc0t 0xd8t 0xa7t 0x0t
        0x40t 0x54t 0x89t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x0t 0xf4t 0x1t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x80t 0xbbt 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x1bt 0xb7t 0x0t
        0x80t 0x96t 0x98t 0x0t
        0x0t 0x12t 0x7at 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x0t 0xf4t 0x1t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x80t 0xbbt 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0xa8t 0xa0t 0x34t 0x0t
        0x50t 0x3et 0x2bt 0x0t
        0x90t 0x10t 0x23t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x0t 0xf4t 0x1t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x80t 0xbbt 0x0t 0x0t
    .end array-data

    :array_4
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x70t 0xf7t 0x2et 0x0t
        0xa8t 0xf4t 0x26t 0x0t
        0xb8t 0xcet 0x1et 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x0t 0xf4t 0x1t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x80t 0xbbt 0x0t 0x0t
    .end array-data

    :array_5
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x18t 0xb4t 0xbt 0x0t
        0xe8t 0xc7t 0x9t 0x0t
        0x70t 0xe7t 0x7t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x0t 0xf4t 0x1t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x80t 0xbbt 0x0t 0x0t
    .end array-data

    :array_6
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x0t 0xdct 0x5t 0x0t
        0x0t 0xe2t 0x4t 0x0t
        0x0t 0xe8t 0x3t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x0t 0xf4t 0x1t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x80t 0xbbt 0x0t 0x0t
    .end array-data

    :array_7
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x64t 0x77t 0x1t 0x0t
        0x64t 0x77t 0x1t 0x0t
        0x64t 0x77t 0x1t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xa8t 0x2ft 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x40t 0x1ft 0x0t 0x0t
    .end array-data

    :array_8
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x80t 0xeet 0x36t 0x0t
        0xc0t 0xc6t 0x2dt 0x0t
        0x80t 0x84t 0x1et 0x0t
        0xft 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x0t 0xf4t 0x1t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x80t 0xbbt 0x0t 0x0t
    .end array-data

    .line 115
    :array_9
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x80t 0x9ft 0xd5t 0x0t
        0x0t 0x1bt 0xb7t 0x0t
        0x80t 0x96t 0x98t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x0t 0xf4t 0x1t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x80t 0xbbt 0x0t 0x0t
    .end array-data

    :array_a
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x40t 0xbet 0xa1t 0x0t
        0x0t 0x47t 0x86t 0x0t
        0x0t 0xddt 0x6dt 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x0t 0xf4t 0x1t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x80t 0xbbt 0x0t 0x0t
    .end array-data

    :array_b
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0xd0t 0x77t 0x94t 0x0t
        0x0t 0x12t 0x7at 0x0t
        0x0t 0xa8t 0x61t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x0t 0xf4t 0x1t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x80t 0xbbt 0x0t 0x0t
    .end array-data

    :array_c
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x58t 0x19t 0x2at 0x0t
        0x78t 0x97t 0x22t 0x0t
        0xb0t 0xbt 0x1ct 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x0t 0xf4t 0x1t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x80t 0xbbt 0x0t 0x0t
    .end array-data

    :array_d
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0xa0t 0x25t 0x26t 0x0t
        0x90t 0x28t 0x1ft 0x0t
        0x98t 0xa4t 0x18t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x0t 0xf4t 0x1t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x80t 0xbbt 0x0t 0x0t
    .end array-data

    :array_e
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0xb0t 0x7dt 0x9t 0x0t
        0xe8t 0xd3t 0x7t 0x0t
        0x30t 0x51t 0x6t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x0t 0xf4t 0x1t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x80t 0xbbt 0x0t 0x0t
    .end array-data

    :array_f
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x0t 0xdct 0x5t 0x0t
        0x0t 0xe2t 0x4t 0x0t
        0x0t 0xe8t 0x3t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x0t 0xf4t 0x1t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x80t 0xbbt 0x0t 0x0t
    .end array-data

    :array_10
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x64t 0x77t 0x1t 0x0t
        0x64t 0x77t 0x1t 0x0t
        0x64t 0x77t 0x1t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xa8t 0x2ft 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x40t 0x1ft 0x0t 0x0t
    .end array-data

    :array_11
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x80t 0xeet 0x36t 0x0t
        0xc0t 0xc6t 0x2dt 0x0t
        0x80t 0x84t 0x1et 0x0t
        0xft 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x0t 0xf4t 0x1t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x80t 0xbbt 0x0t 0x0t
    .end array-data

    .line 168
    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_4
        0xd -> :sswitch_0
        0xe -> :sswitch_2
        0xf -> :sswitch_3
        0x12 -> :sswitch_5
        0x13 -> :sswitch_6
        0x1f -> :sswitch_1
        0x23 -> :sswitch_3
    .end sparse-switch

    .line 193
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
