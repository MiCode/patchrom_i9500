.class public Lcom/sec/android/app/camera/CeRequest;
.super Ljava/lang/Object;
.source "CeRequest.java"


# static fields
.field public static final CE_AUTO_PORTRAIT_DETECTION_CANCELED:I = 0xf

.field public static final CE_AUTO_PORTRAIT_DETECTION_COMPLETED:I = 0xe

.field public static final CE_CANCEL_VIDEO_RECORDING:I = 0x6a

.field public static final CE_CHANGE_PARAM:I = 0x7

.field public static final CE_DO_AUTOFOCUS:I = 0x5

.field public static final CE_DO_AUTOFOCUS_COMPLETED:I = 0x2

.field public static final CE_DO_AUTO_NIGHT:I = 0x32

.field public static final CE_DO_CAPTURE:I = 0x6

.field public static final CE_DO_CAPTURE_COMPLETED:I = 0x3

.field public static final CE_HIDE_REVIEW_SCREEN:I = 0x17

.field public static final CE_IMAGE_STORING_COMPLETED:I = 0x7

.field public static final CE_INITIALIZE_RECORDER:I = 0x64

.field public static final CE_PAUSE_VIDEO_RECORDING:I = 0x67

.field public static final CE_PET_DETECTION_CANCELED:I = 0xc

.field public static final CE_PET_DETECTION_COMPLETED:I = 0xb

.field public static final CE_POST_INIT:I = 0x2

.field public static final CE_PREPARE_RECORDING_COMPLETED:I = 0x65

.field public static final CE_PREPARE_VIDEO_RECORDING:I = 0x65

.field public static final CE_PREVIEW_SWITCH_COMPLETED:I = 0xd

.field public static final CE_PROCESS_BACK:I = 0x18

.field public static final CE_RESET_SETTINGS:I = 0x15

.field public static final CE_RESUME_VIDEO_RECORDING:I = 0x68

.field public static final CE_SET_ALL_PARAM:I = 0xa

.field public static final CE_SET_EFFECT_LAYER:I = 0x28

.field public static final CE_SET_EFFECT_ORIENTATION:I = 0x31

.field public static final CE_SET_MULTIPLE_PARAMS:I = 0x1f

.field public static final CE_SET_PARAM:I = 0x8

.field public static final CE_SET_SHUTTER_SOUND:I = 0x2e

.field public static final CE_SET_SINGLE_EFFECT:I = 0x24

.field public static final CE_SET_SINGLE_EFFECT_SYNC:I = 0x33

.field public static final CE_SHOW_REVIEW_SCREEN:I = 0x16

.field public static final CE_SMILE_DETECTION_CANCELED:I = 0x6

.field public static final CE_SMILE_DETECTION_COMPLETED:I = 0x5

.field public static final CE_START_ACTIONSHOT:I = 0x12

.field public static final CE_START_AUTO_PORTRAIT_DETECTION:I = 0x22

.field public static final CE_START_CONTINUOUS:I = 0xe

.field public static final CE_START_CONTINUOUS_COMPLETED:I = 0x10

.field public static final CE_START_DRAMASHOT:I = 0x2f

.field public static final CE_START_DUAL_CAMERA:I = 0x26

.field public static final CE_START_DUAL_ENGINE:I = 0x2b

.field public static final CE_START_DUAL_PREVIEW:I = 0x2c

.field public static final CE_START_ENGINE:I = 0x0

.field public static final CE_START_ENGINE_COMPLETED:I = 0x0

.field public static final CE_START_PANORAMA:I = 0x10

.field public static final CE_START_PANORAMA_COMPLETED:I = 0x9

.field public static final CE_START_PET_DETECTION:I = 0x1d

.field public static final CE_START_PREVIEW:I = 0x3

.field public static final CE_START_PREVIEW_COMPLETED:I = 0x1

.field public static final CE_START_PREVIEW_DUMMY:I = 0x1b

.field public static final CE_START_RECORDING_COMPLETED:I = 0x66

.field public static final CE_START_RECORDING_SOUND:I = 0x29

.field public static final CE_START_RECORD_DUAL_PREVIEW:I = 0x2d

.field public static final CE_START_SHUTTER_TIMER:I = 0x9

.field public static final CE_START_SHUTTER_TIMER_COPMLETED:I = 0x4

.field public static final CE_START_SMILE_DETECTION:I = 0xb

.field public static final CE_START_VIDEO_RECORDING:I = 0x66

.field public static final CE_STOP_ACTIONSHOT:I = 0x13

.field public static final CE_STOP_AUTO_PORTRAIT_DETECTION:I = 0x23

.field public static final CE_STOP_CONTINUOUS:I = 0xf

.field public static final CE_STOP_CONTINUOUS_COMPLETED:I = 0x11

.field public static final CE_STOP_DRAMASHOT:I = 0x30

.field public static final CE_STOP_DUAL_CAMERA:I = 0x27

.field public static final CE_STOP_ENGINE:I = 0x1

.field public static final CE_STOP_PANORAMA:I = 0x11

.field public static final CE_STOP_PET_DETECTION:I = 0x1e

.field public static final CE_STOP_PREVIEW:I = 0x4

.field public static final CE_STOP_PREVIEW_DUMMY:I = 0x19

.field public static final CE_STOP_RECORDING_SOUND:I = 0x2a

.field public static final CE_STOP_SMILE_DETECTION:I = 0xc

.field public static final CE_STOP_VIDEO_RECORDING:I = 0x69

.field public static final CE_SURFACE_CREATED:I = 0x64

.field public static final CE_SWITCH_CAMERA:I = 0x14

.field public static final CE_SWITCH_TO_CAMCORDER_PREVIEW:I = 0x21

.field public static final CE_SWITCH_TO_CAMERA_PREVIEW:I = 0x20

.field public static final CE_WAIT:I = 0xd

.field public static final CE_WAIT_COMPLETED:I = 0x8

.field private static final REQUEST_POOL_SIZE:I = 0xa

.field private static mPool:[Lcom/sec/android/app/camera/CeRequest;


# instance fields
.field private mParam:Ljava/lang/Object;

.field private mRequest:I

.field public mReserved:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 114
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/sec/android/app/camera/CeRequest;

    sput-object v0, Lcom/sec/android/app/camera/CeRequest;->mPool:[Lcom/sec/android/app/camera/CeRequest;

    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;)V
    .locals 1
    .parameter "request"
    .parameter "param"

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/CeRequest;->mParam:Ljava/lang/Object;

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/CeRequest;->mReserved:Z

    .line 137
    iput p1, p0, Lcom/sec/android/app/camera/CeRequest;->mRequest:I

    .line 138
    iput-object p2, p0, Lcom/sec/android/app/camera/CeRequest;->mParam:Ljava/lang/Object;

    .line 139
    return-void
.end method

.method public static obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;
    .locals 4
    .parameter "request"
    .parameter "param"

    .prologue
    const/4 v3, 0x1

    .line 117
    const/4 v1, 0x0

    .line 118
    .local v1, req:Lcom/sec/android/app/camera/CeRequest;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v2, 0xa

    if-ge v0, v2, :cond_2

    .line 119
    sget-object v2, Lcom/sec/android/app/camera/CeRequest;->mPool:[Lcom/sec/android/app/camera/CeRequest;

    aget-object v1, v2, v0

    .line 120
    if-nez v1, :cond_0

    .line 121
    new-instance v1, Lcom/sec/android/app/camera/CeRequest;

    .end local v1           #req:Lcom/sec/android/app/camera/CeRequest;
    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/camera/CeRequest;-><init>(ILjava/lang/Object;)V

    .line 122
    .restart local v1       #req:Lcom/sec/android/app/camera/CeRequest;
    iput-boolean v3, v1, Lcom/sec/android/app/camera/CeRequest;->mReserved:Z

    .line 123
    sget-object v2, Lcom/sec/android/app/camera/CeRequest;->mPool:[Lcom/sec/android/app/camera/CeRequest;

    aput-object v1, v2, v0

    move-object v2, v1

    .line 133
    :goto_1
    return-object v2

    .line 126
    :cond_0
    iget-boolean v2, v1, Lcom/sec/android/app/camera/CeRequest;->mReserved:Z

    if-nez v2, :cond_1

    .line 127
    iput p0, v1, Lcom/sec/android/app/camera/CeRequest;->mRequest:I

    .line 128
    iput-object p1, v1, Lcom/sec/android/app/camera/CeRequest;->mParam:Ljava/lang/Object;

    .line 129
    iput-boolean v3, v1, Lcom/sec/android/app/camera/CeRequest;->mReserved:Z

    move-object v2, v1

    .line 130
    goto :goto_1

    .line 118
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 133
    :cond_2
    new-instance v2, Lcom/sec/android/app/camera/CeRequest;

    invoke-direct {v2, p0, p1}, Lcom/sec/android/app/camera/CeRequest;-><init>(ILjava/lang/Object;)V

    goto :goto_1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "o"

    .prologue
    const/4 v0, 0x0

    .line 154
    if-nez p1, :cond_1

    .line 163
    .end local p1
    :cond_0
    :goto_0
    return v0

    .line 156
    .restart local p1
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 160
    check-cast p1, Lcom/sec/android/app/camera/CeRequest;

    .end local p1
    iget v1, p1, Lcom/sec/android/app/camera/CeRequest;->mRequest:I

    iget v2, p0, Lcom/sec/android/app/camera/CeRequest;->mRequest:I

    if-ne v1, v2, :cond_0

    .line 161
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getParam()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/sec/android/app/camera/CeRequest;->mParam:Ljava/lang/Object;

    return-object v0
.end method

.method public getRequest()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lcom/sec/android/app/camera/CeRequest;->mRequest:I

    return v0
.end method

.method public setRequest(I)V
    .locals 0
    .parameter "request"

    .prologue
    .line 142
    iput p1, p0, Lcom/sec/android/app/camera/CeRequest;->mRequest:I

    .line 143
    return-void
.end method
