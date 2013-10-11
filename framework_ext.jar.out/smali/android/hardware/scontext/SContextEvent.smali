.class public Landroid/hardware/scontext/SContextEvent;
.super Ljava/lang/Object;
.source "SContextEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/scontext/SContextEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAirMotionContext:Landroid/hardware/scontext/SContextAirMotion;

.field private mApproachContext:Landroid/hardware/scontext/SContextApproach;

.field private mAutoRotationContext:Landroid/hardware/scontext/SContextAutoRotation;

.field private mCallPoseContext:Landroid/hardware/scontext/SContextCallPose;

.field private mCurrentStatusForPositioningContext:Landroid/hardware/scontext/SContextCurrentStatusForPositioning;

.field private mEnvironmentContext:Landroid/hardware/scontext/SContextEnvironment;

.field private mFlipCoverActionContext:Landroid/hardware/scontext/SContextFlipCoverAction;

.field private mGyroTemperatureContext:Landroid/hardware/scontext/SContextGyroTemperature;

.field private mMotionContext:Landroid/hardware/scontext/SContextMotion;

.field private mMovementContext:Landroid/hardware/scontext/SContextMovement;

.field private mMovementForPositioningContext:Landroid/hardware/scontext/SContextMovementForPositioning;

.field private mPedometerContext:Landroid/hardware/scontext/SContextPedometer;

.field private mPutDownMotionContext:Landroid/hardware/scontext/SContextPutDownMotion;

.field private mShakeMotionContext:Landroid/hardware/scontext/SContextShakeMotion;

.field private mStepCountAlertContext:Landroid/hardware/scontext/SContextStepCountAlert;

.field public scontext:Landroid/hardware/scontext/SContext;

.field public timestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 423
    new-instance v0, Landroid/hardware/scontext/SContextEvent$1;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextEvent$1;-><init>()V

    sput-object v0, Landroid/hardware/scontext/SContextEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Landroid/hardware/scontext/SContext;

    invoke-direct {v0}, Landroid/hardware/scontext/SContext;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->scontext:Landroid/hardware/scontext/SContext;

    .line 80
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextEvent;->timestamp:J

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "src"

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextEvent;->readFromParcel(Landroid/os/Parcel;)V

    .line 88
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "src"

    .prologue
    .line 403
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextEvent;->timestamp:J

    .line 404
    const-class v0, Landroid/hardware/scontext/SContext;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContext;

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->scontext:Landroid/hardware/scontext/SContext;

    .line 405
    const-class v0, Landroid/hardware/scontext/SContextApproach;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextApproach;

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mApproachContext:Landroid/hardware/scontext/SContextApproach;

    .line 406
    const-class v0, Landroid/hardware/scontext/SContextPedometer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextPedometer;

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mPedometerContext:Landroid/hardware/scontext/SContextPedometer;

    .line 407
    const-class v0, Landroid/hardware/scontext/SContextStepCountAlert;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextStepCountAlert;

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mStepCountAlertContext:Landroid/hardware/scontext/SContextStepCountAlert;

    .line 408
    const-class v0, Landroid/hardware/scontext/SContextMotion;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextMotion;

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mMotionContext:Landroid/hardware/scontext/SContextMotion;

    .line 409
    const-class v0, Landroid/hardware/scontext/SContextMovement;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextMovement;

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mMovementContext:Landroid/hardware/scontext/SContextMovement;

    .line 410
    const-class v0, Landroid/hardware/scontext/SContextAutoRotation;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextAutoRotation;

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mAutoRotationContext:Landroid/hardware/scontext/SContextAutoRotation;

    .line 411
    const-class v0, Landroid/hardware/scontext/SContextAirMotion;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextAirMotion;

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mAirMotionContext:Landroid/hardware/scontext/SContextAirMotion;

    .line 412
    const-class v0, Landroid/hardware/scontext/SContextEnvironment;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextEnvironment;

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEnvironmentContext:Landroid/hardware/scontext/SContextEnvironment;

    .line 413
    const-class v0, Landroid/hardware/scontext/SContextMovementForPositioning;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextMovementForPositioning;

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mMovementForPositioningContext:Landroid/hardware/scontext/SContextMovementForPositioning;

    .line 414
    const-class v0, Landroid/hardware/scontext/SContextCurrentStatusForPositioning;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextCurrentStatusForPositioning;

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mCurrentStatusForPositioningContext:Landroid/hardware/scontext/SContextCurrentStatusForPositioning;

    .line 415
    const-class v0, Landroid/hardware/scontext/SContextCallPose;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextCallPose;

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mCallPoseContext:Landroid/hardware/scontext/SContextCallPose;

    .line 416
    const-class v0, Landroid/hardware/scontext/SContextShakeMotion;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextShakeMotion;

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mShakeMotionContext:Landroid/hardware/scontext/SContextShakeMotion;

    .line 417
    const-class v0, Landroid/hardware/scontext/SContextFlipCoverAction;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextFlipCoverAction;

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mFlipCoverActionContext:Landroid/hardware/scontext/SContextFlipCoverAction;

    .line 418
    const-class v0, Landroid/hardware/scontext/SContextGyroTemperature;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextGyroTemperature;

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mGyroTemperatureContext:Landroid/hardware/scontext/SContextGyroTemperature;

    .line 419
    const-class v0, Landroid/hardware/scontext/SContextPutDownMotion;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextPutDownMotion;

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mPutDownMotionContext:Landroid/hardware/scontext/SContextPutDownMotion;

    .line 420
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 368
    const/4 v0, 0x0

    return v0
.end method

.method public getAirMotionContext()Landroid/hardware/scontext/SContextAirMotion;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mAirMotionContext:Landroid/hardware/scontext/SContextAirMotion;

    return-object v0
.end method

.method public getApproachContext()Landroid/hardware/scontext/SContextApproach;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mApproachContext:Landroid/hardware/scontext/SContextApproach;

    return-object v0
.end method

.method public getAutoRotationContext()Landroid/hardware/scontext/SContextAutoRotation;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mAutoRotationContext:Landroid/hardware/scontext/SContextAutoRotation;

    return-object v0
.end method

.method public getCallPoseContext()Landroid/hardware/scontext/SContextCallPose;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mCallPoseContext:Landroid/hardware/scontext/SContextCallPose;

    return-object v0
.end method

.method public getCurrentStatusForPositioningContext()Landroid/hardware/scontext/SContextCurrentStatusForPositioning;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mCurrentStatusForPositioningContext:Landroid/hardware/scontext/SContextCurrentStatusForPositioning;

    return-object v0
.end method

.method public getEnvironmentContext()Landroid/hardware/scontext/SContextEnvironment;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEnvironmentContext:Landroid/hardware/scontext/SContextEnvironment;

    return-object v0
.end method

.method public getFlipCoverActionContext()Landroid/hardware/scontext/SContextFlipCoverAction;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mFlipCoverActionContext:Landroid/hardware/scontext/SContextFlipCoverAction;

    return-object v0
.end method

.method public getGyroTemperatureContext()Landroid/hardware/scontext/SContextGyroTemperature;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mGyroTemperatureContext:Landroid/hardware/scontext/SContextGyroTemperature;

    return-object v0
.end method

.method public getMotionContext()Landroid/hardware/scontext/SContextMotion;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mMotionContext:Landroid/hardware/scontext/SContextMotion;

    return-object v0
.end method

.method public getMovementContext()Landroid/hardware/scontext/SContextMovement;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mMovementContext:Landroid/hardware/scontext/SContextMovement;

    return-object v0
.end method

.method public getMovementForPositioningContext()Landroid/hardware/scontext/SContextMovementForPositioning;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mMovementForPositioningContext:Landroid/hardware/scontext/SContextMovementForPositioning;

    return-object v0
.end method

.method public getPedometerContext()Landroid/hardware/scontext/SContextPedometer;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mPedometerContext:Landroid/hardware/scontext/SContextPedometer;

    return-object v0
.end method

.method public getPutDownMotionContext()Landroid/hardware/scontext/SContextPutDownMotion;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mPutDownMotionContext:Landroid/hardware/scontext/SContextPutDownMotion;

    return-object v0
.end method

.method public getShakeMotionContext()Landroid/hardware/scontext/SContextShakeMotion;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mShakeMotionContext:Landroid/hardware/scontext/SContextShakeMotion;

    return-object v0
.end method

.method public getStepCountAlertContext()Landroid/hardware/scontext/SContextStepCountAlert;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mStepCountAlertContext:Landroid/hardware/scontext/SContextStepCountAlert;

    return-object v0
.end method

.method setAirMotionContext(Landroid/hardware/scontext/SContextAirMotion;)V
    .locals 0
    .parameter "airMotionContext"

    .prologue
    .line 285
    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mAirMotionContext:Landroid/hardware/scontext/SContextAirMotion;

    .line 286
    return-void
.end method

.method setApproachContext(Landroid/hardware/scontext/SContextApproach;)V
    .locals 0
    .parameter "approachContext"

    .prologue
    .line 231
    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mApproachContext:Landroid/hardware/scontext/SContextApproach;

    .line 232
    return-void
.end method

.method setAutoRotationContext(Landroid/hardware/scontext/SContextAutoRotation;)V
    .locals 0
    .parameter "autoRotationContext"

    .prologue
    .line 276
    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mAutoRotationContext:Landroid/hardware/scontext/SContextAutoRotation;

    .line 277
    return-void
.end method

.method setCallPoseContext(Landroid/hardware/scontext/SContextCallPose;)V
    .locals 0
    .parameter "callPose"

    .prologue
    .line 322
    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mCallPoseContext:Landroid/hardware/scontext/SContextCallPose;

    .line 323
    return-void
.end method

.method setCurrentStatusForPositioningContext(Landroid/hardware/scontext/SContextCurrentStatusForPositioning;)V
    .locals 0
    .parameter "currentStatusForPositioning"

    .prologue
    .line 313
    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mCurrentStatusForPositioningContext:Landroid/hardware/scontext/SContextCurrentStatusForPositioning;

    .line 314
    return-void
.end method

.method setEnvironmentContext(Landroid/hardware/scontext/SContextEnvironment;)V
    .locals 0
    .parameter "environmentContext"

    .prologue
    .line 294
    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mEnvironmentContext:Landroid/hardware/scontext/SContextEnvironment;

    .line 295
    return-void
.end method

.method setFlipCoverActionContext(Landroid/hardware/scontext/SContextFlipCoverAction;)V
    .locals 0
    .parameter "flipCoverAction"

    .prologue
    .line 340
    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mFlipCoverActionContext:Landroid/hardware/scontext/SContextFlipCoverAction;

    .line 341
    return-void
.end method

.method setGyroTemperatureContext(Landroid/hardware/scontext/SContextGyroTemperature;)V
    .locals 0
    .parameter "gyroTemperature"

    .prologue
    .line 349
    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mGyroTemperatureContext:Landroid/hardware/scontext/SContextGyroTemperature;

    .line 350
    return-void
.end method

.method setMotionContext(Landroid/hardware/scontext/SContextMotion;)V
    .locals 0
    .parameter "motionContext"

    .prologue
    .line 258
    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mMotionContext:Landroid/hardware/scontext/SContextMotion;

    .line 259
    return-void
.end method

.method setMovementContext(Landroid/hardware/scontext/SContextMovement;)V
    .locals 0
    .parameter "movementContext"

    .prologue
    .line 267
    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mMovementContext:Landroid/hardware/scontext/SContextMovement;

    .line 268
    return-void
.end method

.method setMovementForPositioningContext(Landroid/hardware/scontext/SContextMovementForPositioning;)V
    .locals 0
    .parameter "movementForPositioning"

    .prologue
    .line 303
    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mMovementForPositioningContext:Landroid/hardware/scontext/SContextMovementForPositioning;

    .line 304
    return-void
.end method

.method setPedometerContext(Landroid/hardware/scontext/SContextPedometer;)V
    .locals 0
    .parameter "pedometerContext"

    .prologue
    .line 240
    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mPedometerContext:Landroid/hardware/scontext/SContextPedometer;

    .line 241
    return-void
.end method

.method setPutDownMotionContext(Landroid/hardware/scontext/SContextPutDownMotion;)V
    .locals 0
    .parameter "putDownMotion"

    .prologue
    .line 358
    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mPutDownMotionContext:Landroid/hardware/scontext/SContextPutDownMotion;

    .line 359
    return-void
.end method

.method setShakeMotionContext(Landroid/hardware/scontext/SContextShakeMotion;)V
    .locals 0
    .parameter "shakeMotion"

    .prologue
    .line 331
    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mShakeMotionContext:Landroid/hardware/scontext/SContextShakeMotion;

    .line 332
    return-void
.end method

.method setStepCountAlertContext(Landroid/hardware/scontext/SContextStepCountAlert;)V
    .locals 0
    .parameter "stepCountAlertContext"

    .prologue
    .line 249
    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mStepCountAlertContext:Landroid/hardware/scontext/SContextStepCountAlert;

    .line 250
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 378
    iget-wide v0, p0, Landroid/hardware/scontext/SContextEvent;->timestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 379
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->scontext:Landroid/hardware/scontext/SContext;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 380
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mApproachContext:Landroid/hardware/scontext/SContextApproach;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 381
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mPedometerContext:Landroid/hardware/scontext/SContextPedometer;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 382
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mStepCountAlertContext:Landroid/hardware/scontext/SContextStepCountAlert;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 383
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mMotionContext:Landroid/hardware/scontext/SContextMotion;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 384
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mMovementContext:Landroid/hardware/scontext/SContextMovement;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 385
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mAutoRotationContext:Landroid/hardware/scontext/SContextAutoRotation;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 386
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mAirMotionContext:Landroid/hardware/scontext/SContextAirMotion;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 387
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEnvironmentContext:Landroid/hardware/scontext/SContextEnvironment;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 388
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mMovementForPositioningContext:Landroid/hardware/scontext/SContextMovementForPositioning;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 389
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mCurrentStatusForPositioningContext:Landroid/hardware/scontext/SContextCurrentStatusForPositioning;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 390
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mCallPoseContext:Landroid/hardware/scontext/SContextCallPose;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 391
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mShakeMotionContext:Landroid/hardware/scontext/SContextShakeMotion;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 392
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mFlipCoverActionContext:Landroid/hardware/scontext/SContextFlipCoverAction;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 393
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mGyroTemperatureContext:Landroid/hardware/scontext/SContextGyroTemperature;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 394
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mPutDownMotionContext:Landroid/hardware/scontext/SContextPutDownMotion;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 395
    return-void
.end method
