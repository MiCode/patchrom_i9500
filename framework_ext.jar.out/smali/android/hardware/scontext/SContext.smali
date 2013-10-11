.class public Landroid/hardware/scontext/SContext;
.super Ljava/lang/Object;
.source "SContext.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/scontext/SContext;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_DEVICE_TYPE:I = 0x0

.field private static final DEFAULT_ENVIRONMENT_SENSOR:I = 0x1

.field private static final DEFAULT_GENDER:I = 0x1

.field private static final DEFAULT_HEIGHT:D = 170.0

.field private static final DEFAULT_MOVE_DISTANCE:D = 100.0

.field private static final DEFAULT_MOVE_DURATION:I = 0x3c

.field private static final DEFAULT_MOVE_MIN_DURATION:I = 0x5

.field private static final DEFAULT_NOMOVE_DURATION:I = 0x3c

.field private static final DEFAULT_SERVICE_TYPE:I = 0x0

.field private static final DEFAULT_SHAKE_DURATION:I = 0x320

.field private static final DEFAULT_SHAKE_STRENGTH:I = 0x2

.field private static final DEFAULT_STEP_COUNT:I = 0xa

.field private static final DEFAULT_UPDATE_INTERVAL:I = 0x3c

.field private static final DEFAULT_WEIGHT:D = 60.0

.field public static final TYPE_AIRMOTION:I = 0x7

.field public static final TYPE_APPROACH:I = 0x1

.field public static final TYPE_AUTO_ROTATION:I = 0x6

.field public static final TYPE_CALL_POSE:I = 0xb

.field public static final TYPE_CURRENT_STATUS_FOR_POSITIONING:I = 0xa

.field public static final TYPE_ENVIRONMENT:I = 0x8

.field public static final TYPE_FLIP_COVER_ACTION:I = 0xd

.field public static final TYPE_GYRO_TEMPERATURE:I = 0xe

.field public static final TYPE_MOTION:I = 0x4

.field public static final TYPE_MOVEMENT:I = 0x5

.field public static final TYPE_MOVEMENT_FOR_POSITIONING:I = 0x9

.field public static final TYPE_PEDOMETER:I = 0x2

.field public static final TYPE_PUT_DOWN_MOTION:I = 0xf

.field public static final TYPE_SHAKE_MOTION:I = 0xc

.field public static final TYPE_STEP_COUNT_ALERT:I = 0x3

.field private static final mServiceList:[Ljava/lang/String;


# instance fields
.field private mDeviceType:I

.field private mGender:I

.field private mHeight:D

.field private mMoveDistanceThrs:D

.field private mMoveDurationThrs:I

.field private mMoveMinDurationThrs:I

.field private mNomoveDurationThrs:I

.field private mSensorType:I

.field private mShakeDuration:I

.field private mShakeStrength:I

.field private mStepCount:I

.field private mType:I

.field private mUpdateInterval:I

.field private mWeight:D


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 156
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "None"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Approach"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Pedometer"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Step Count Alert"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Motion"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Movement"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Auto Rotation"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Air Motion"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Environment"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Movemnt For Positioning"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Current Status For Positioning"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Call Pose"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Shake Motion"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Flip Cover Action"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "Gyro Temperature"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Put Down Motion"

    aput-object v2, v0, v1

    sput-object v0, Landroid/hardware/scontext/SContext;->mServiceList:[Ljava/lang/String;

    .line 464
    new-instance v0, Landroid/hardware/scontext/SContext$1;

    invoke-direct {v0}, Landroid/hardware/scontext/SContext$1;-><init>()V

    sput-object v0, Landroid/hardware/scontext/SContext;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v2, 0x3c

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iput v3, p0, Landroid/hardware/scontext/SContext;->mType:I

    .line 168
    const/16 v0, 0xa

    iput v0, p0, Landroid/hardware/scontext/SContext;->mStepCount:I

    .line 169
    iput v4, p0, Landroid/hardware/scontext/SContext;->mGender:I

    .line 170
    const-wide v0, 0x4065400000000000L

    iput-wide v0, p0, Landroid/hardware/scontext/SContext;->mHeight:D

    .line 171
    const-wide/high16 v0, 0x404e

    iput-wide v0, p0, Landroid/hardware/scontext/SContext;->mWeight:D

    .line 172
    iput v3, p0, Landroid/hardware/scontext/SContext;->mDeviceType:I

    .line 173
    iput v4, p0, Landroid/hardware/scontext/SContext;->mSensorType:I

    .line 174
    iput v2, p0, Landroid/hardware/scontext/SContext;->mUpdateInterval:I

    .line 175
    iput v2, p0, Landroid/hardware/scontext/SContext;->mNomoveDurationThrs:I

    .line 176
    iput v2, p0, Landroid/hardware/scontext/SContext;->mMoveDurationThrs:I

    .line 177
    const-wide/high16 v0, 0x4059

    iput-wide v0, p0, Landroid/hardware/scontext/SContext;->mMoveDistanceThrs:D

    .line 178
    const/4 v0, 0x5

    iput v0, p0, Landroid/hardware/scontext/SContext;->mMoveMinDurationThrs:I

    .line 179
    const/4 v0, 0x2

    iput v0, p0, Landroid/hardware/scontext/SContext;->mShakeStrength:I

    .line 180
    const/16 v0, 0x320

    iput v0, p0, Landroid/hardware/scontext/SContext;->mShakeDuration:I

    .line 181
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "src"

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContext;->readFromParcel(Landroid/os/Parcel;)V

    .line 188
    return-void
.end method

.method static getServiceName(I)Ljava/lang/String;
    .locals 2
    .parameter "service"

    .prologue
    .line 206
    sget-object v0, Landroid/hardware/scontext/SContext;->mServiceList:[Ljava/lang/String;

    array-length v0, v0

    if-ge p0, v0, :cond_0

    .line 207
    sget-object v0, Landroid/hardware/scontext/SContext;->mServiceList:[Ljava/lang/String;

    aget-object v0, v0, p0

    .line 209
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/hardware/scontext/SContext;->mServiceList:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "src"

    .prologue
    .line 447
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/scontext/SContext;->mType:I

    .line 448
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/scontext/SContext;->mStepCount:I

    .line 449
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/scontext/SContext;->mGender:I

    .line 450
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/scontext/SContext;->mHeight:D

    .line 451
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/scontext/SContext;->mWeight:D

    .line 452
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/scontext/SContext;->mDeviceType:I

    .line 453
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/scontext/SContext;->mSensorType:I

    .line 454
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/scontext/SContext;->mUpdateInterval:I

    .line 455
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/scontext/SContext;->mNomoveDurationThrs:I

    .line 456
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/scontext/SContext;->mMoveDurationThrs:I

    .line 457
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/scontext/SContext;->mMoveDistanceThrs:D

    .line 458
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/scontext/SContext;->mMoveMinDurationThrs:I

    .line 459
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/scontext/SContext;->mShakeStrength:I

    .line 460
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/scontext/SContext;->mShakeDuration:I

    .line 461
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 415
    const/4 v0, 0x0

    return v0
.end method

.method getDeviceType()I
    .locals 1

    .prologue
    .line 255
    iget v0, p0, Landroid/hardware/scontext/SContext;->mDeviceType:I

    return v0
.end method

.method getDuration()I
    .locals 1

    .prologue
    .line 327
    iget v0, p0, Landroid/hardware/scontext/SContext;->mShakeDuration:I

    return v0
.end method

.method getEnvSensorType()I
    .locals 1

    .prologue
    .line 264
    iget v0, p0, Landroid/hardware/scontext/SContext;->mSensorType:I

    return v0
.end method

.method getGender()I
    .locals 1

    .prologue
    .line 228
    iget v0, p0, Landroid/hardware/scontext/SContext;->mGender:I

    return v0
.end method

.method getHeight()D
    .locals 2

    .prologue
    .line 237
    iget-wide v0, p0, Landroid/hardware/scontext/SContext;->mHeight:D

    return-wide v0
.end method

.method getMoveDistanceThrs()D
    .locals 2

    .prologue
    .line 300
    iget-wide v0, p0, Landroid/hardware/scontext/SContext;->mMoveDistanceThrs:D

    return-wide v0
.end method

.method getMoveDurationThrs()I
    .locals 1

    .prologue
    .line 291
    iget v0, p0, Landroid/hardware/scontext/SContext;->mMoveDurationThrs:I

    return v0
.end method

.method getMoveMinDurationThrs()I
    .locals 1

    .prologue
    .line 309
    iget v0, p0, Landroid/hardware/scontext/SContext;->mMoveMinDurationThrs:I

    return v0
.end method

.method getNomoveDurationThrs()I
    .locals 1

    .prologue
    .line 282
    iget v0, p0, Landroid/hardware/scontext/SContext;->mNomoveDurationThrs:I

    return v0
.end method

.method getStepCount()I
    .locals 1

    .prologue
    .line 219
    iget v0, p0, Landroid/hardware/scontext/SContext;->mStepCount:I

    return v0
.end method

.method getStrength()I
    .locals 1

    .prologue
    .line 318
    iget v0, p0, Landroid/hardware/scontext/SContext;->mShakeStrength:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Landroid/hardware/scontext/SContext;->mType:I

    return v0
.end method

.method getUpdateInterval()I
    .locals 1

    .prologue
    .line 273
    iget v0, p0, Landroid/hardware/scontext/SContext;->mUpdateInterval:I

    return v0
.end method

.method getWeight()D
    .locals 2

    .prologue
    .line 246
    iget-wide v0, p0, Landroid/hardware/scontext/SContext;->mWeight:D

    return-wide v0
.end method

.method setDeviceType(I)V
    .locals 0
    .parameter "devicetype"

    .prologue
    .line 367
    iput p1, p0, Landroid/hardware/scontext/SContext;->mDeviceType:I

    .line 368
    return-void
.end method

.method setEnvironmentInfo(II)V
    .locals 0
    .parameter "envSensorType"
    .parameter "updateInterval"

    .prologue
    .line 377
    iput p1, p0, Landroid/hardware/scontext/SContext;->mSensorType:I

    .line 378
    iput p2, p0, Landroid/hardware/scontext/SContext;->mUpdateInterval:I

    .line 379
    return-void
.end method

.method setParametersForMFP(IIDI)V
    .locals 0
    .parameter "nomove_duration"
    .parameter "move_duration"
    .parameter "move_distance"
    .parameter "move_min_duration"

    .prologue
    .line 390
    iput p1, p0, Landroid/hardware/scontext/SContext;->mNomoveDurationThrs:I

    .line 391
    iput p2, p0, Landroid/hardware/scontext/SContext;->mMoveDurationThrs:I

    .line 392
    iput-wide p3, p0, Landroid/hardware/scontext/SContext;->mMoveDistanceThrs:D

    .line 393
    iput p5, p0, Landroid/hardware/scontext/SContext;->mMoveMinDurationThrs:I

    .line 394
    return-void
.end method

.method setShakeInfo(II)V
    .locals 0
    .parameter "strength"
    .parameter "duration"

    .prologue
    .line 403
    iput p1, p0, Landroid/hardware/scontext/SContext;->mShakeStrength:I

    .line 404
    iput p2, p0, Landroid/hardware/scontext/SContext;->mShakeDuration:I

    .line 405
    return-void
.end method

.method setStepCount(I)V
    .locals 0
    .parameter "stepCount"

    .prologue
    .line 345
    iput p1, p0, Landroid/hardware/scontext/SContext;->mStepCount:I

    .line 346
    return-void
.end method

.method setType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 336
    iput p1, p0, Landroid/hardware/scontext/SContext;->mType:I

    .line 337
    return-void
.end method

.method setUserInfo(IDD)V
    .locals 0
    .parameter "gender"
    .parameter "height"
    .parameter "weight"

    .prologue
    .line 356
    iput p1, p0, Landroid/hardware/scontext/SContext;->mGender:I

    .line 357
    iput-wide p2, p0, Landroid/hardware/scontext/SContext;->mHeight:D

    .line 358
    iput-wide p4, p0, Landroid/hardware/scontext/SContext;->mWeight:D

    .line 359
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 425
    iget v0, p0, Landroid/hardware/scontext/SContext;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 426
    iget v0, p0, Landroid/hardware/scontext/SContext;->mStepCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 427
    iget v0, p0, Landroid/hardware/scontext/SContext;->mGender:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 428
    iget-wide v0, p0, Landroid/hardware/scontext/SContext;->mHeight:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 429
    iget-wide v0, p0, Landroid/hardware/scontext/SContext;->mWeight:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 430
    iget v0, p0, Landroid/hardware/scontext/SContext;->mDeviceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 431
    iget v0, p0, Landroid/hardware/scontext/SContext;->mSensorType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 432
    iget v0, p0, Landroid/hardware/scontext/SContext;->mUpdateInterval:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 433
    iget v0, p0, Landroid/hardware/scontext/SContext;->mNomoveDurationThrs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 434
    iget v0, p0, Landroid/hardware/scontext/SContext;->mMoveDurationThrs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 435
    iget-wide v0, p0, Landroid/hardware/scontext/SContext;->mMoveDistanceThrs:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 436
    iget v0, p0, Landroid/hardware/scontext/SContext;->mMoveMinDurationThrs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 437
    iget v0, p0, Landroid/hardware/scontext/SContext;->mShakeStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 438
    iget v0, p0, Landroid/hardware/scontext/SContext;->mShakeDuration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 439
    return-void
.end method
