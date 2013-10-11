.class public Landroid/hardware/scontext/SContextPedometer;
.super Ljava/lang/Object;
.source "SContextPedometer.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/scontext/SContextPedometer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCalorie:D

.field private mDistance:D

.field private mRunStepCount:J

.field private mSpeed:D

.field private mStepStatus:I

.field private mTotalStepCount:J

.field private mUpDownStepCount:J

.field private mWalkStepCount:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 257
    new-instance v0, Landroid/hardware/scontext/SContextPedometer$1;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextPedometer$1;-><init>()V

    sput-object v0, Landroid/hardware/scontext/SContextPedometer;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const-wide/16 v1, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-wide v3, p0, Landroid/hardware/scontext/SContextPedometer;->mCalorie:D

    .line 53
    iput-wide v3, p0, Landroid/hardware/scontext/SContextPedometer;->mDistance:D

    .line 54
    iput-wide v3, p0, Landroid/hardware/scontext/SContextPedometer;->mSpeed:D

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/scontext/SContextPedometer;->mStepStatus:I

    .line 56
    iput-wide v1, p0, Landroid/hardware/scontext/SContextPedometer;->mTotalStepCount:J

    .line 57
    iput-wide v1, p0, Landroid/hardware/scontext/SContextPedometer;->mWalkStepCount:J

    .line 58
    iput-wide v1, p0, Landroid/hardware/scontext/SContextPedometer;->mRunStepCount:J

    .line 59
    iput-wide v1, p0, Landroid/hardware/scontext/SContextPedometer;->mUpDownStepCount:J

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "src"

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextPedometer;->readFromParcel(Landroid/os/Parcel;)V

    .line 67
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "src"

    .prologue
    .line 246
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextPedometer;->mCalorie:D

    .line 247
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextPedometer;->mDistance:D

    .line 248
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextPedometer;->mSpeed:D

    .line 249
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/scontext/SContextPedometer;->mStepStatus:I

    .line 250
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextPedometer;->mTotalStepCount:J

    .line 251
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextPedometer;->mWalkStepCount:J

    .line 252
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextPedometer;->mRunStepCount:J

    .line 253
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextPedometer;->mUpDownStepCount:J

    .line 254
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 220
    const/4 v0, 0x0

    return v0
.end method

.method public getCalorie()D
    .locals 2

    .prologue
    .line 75
    iget-wide v0, p0, Landroid/hardware/scontext/SContextPedometer;->mCalorie:D

    return-wide v0
.end method

.method public getDistance()D
    .locals 2

    .prologue
    .line 84
    iget-wide v0, p0, Landroid/hardware/scontext/SContextPedometer;->mDistance:D

    return-wide v0
.end method

.method public getRunStepCount()J
    .locals 2

    .prologue
    .line 129
    iget-wide v0, p0, Landroid/hardware/scontext/SContextPedometer;->mRunStepCount:J

    return-wide v0
.end method

.method public getSpeed()D
    .locals 2

    .prologue
    .line 93
    iget-wide v0, p0, Landroid/hardware/scontext/SContextPedometer;->mSpeed:D

    return-wide v0
.end method

.method public getStepStatus()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Landroid/hardware/scontext/SContextPedometer;->mStepStatus:I

    return v0
.end method

.method public getTotalStepCount()J
    .locals 2

    .prologue
    .line 111
    iget-wide v0, p0, Landroid/hardware/scontext/SContextPedometer;->mTotalStepCount:J

    return-wide v0
.end method

.method public getUpDownStepCount()J
    .locals 2

    .prologue
    .line 138
    iget-wide v0, p0, Landroid/hardware/scontext/SContextPedometer;->mUpDownStepCount:J

    return-wide v0
.end method

.method public getWalkStepCount()J
    .locals 2

    .prologue
    .line 120
    iget-wide v0, p0, Landroid/hardware/scontext/SContextPedometer;->mWalkStepCount:J

    return-wide v0
.end method

.method setCalorie(D)V
    .locals 0
    .parameter "calorie"

    .prologue
    .line 147
    iput-wide p1, p0, Landroid/hardware/scontext/SContextPedometer;->mCalorie:D

    .line 148
    return-void
.end method

.method setDistance(D)V
    .locals 0
    .parameter "distance"

    .prologue
    .line 156
    iput-wide p1, p0, Landroid/hardware/scontext/SContextPedometer;->mDistance:D

    .line 157
    return-void
.end method

.method setRunStepCount(J)V
    .locals 0
    .parameter "runStepCount"

    .prologue
    .line 201
    iput-wide p1, p0, Landroid/hardware/scontext/SContextPedometer;->mRunStepCount:J

    .line 202
    return-void
.end method

.method setSpeed(D)V
    .locals 0
    .parameter "speed"

    .prologue
    .line 165
    iput-wide p1, p0, Landroid/hardware/scontext/SContextPedometer;->mSpeed:D

    .line 166
    return-void
.end method

.method setStepStatus(I)V
    .locals 0
    .parameter "stepStatus"

    .prologue
    .line 174
    iput p1, p0, Landroid/hardware/scontext/SContextPedometer;->mStepStatus:I

    .line 175
    return-void
.end method

.method setTotalStepCount(J)V
    .locals 0
    .parameter "totalStepCount"

    .prologue
    .line 183
    iput-wide p1, p0, Landroid/hardware/scontext/SContextPedometer;->mTotalStepCount:J

    .line 184
    return-void
.end method

.method setUpDownStepCount(J)V
    .locals 0
    .parameter "upDownStepCount"

    .prologue
    .line 210
    iput-wide p1, p0, Landroid/hardware/scontext/SContextPedometer;->mUpDownStepCount:J

    .line 211
    return-void
.end method

.method setWalkStepCount(J)V
    .locals 0
    .parameter "walkStepCount"

    .prologue
    .line 192
    iput-wide p1, p0, Landroid/hardware/scontext/SContextPedometer;->mWalkStepCount:J

    .line 193
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 230
    iget-wide v0, p0, Landroid/hardware/scontext/SContextPedometer;->mCalorie:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 231
    iget-wide v0, p0, Landroid/hardware/scontext/SContextPedometer;->mDistance:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 232
    iget-wide v0, p0, Landroid/hardware/scontext/SContextPedometer;->mSpeed:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 233
    iget v0, p0, Landroid/hardware/scontext/SContextPedometer;->mStepStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    iget-wide v0, p0, Landroid/hardware/scontext/SContextPedometer;->mTotalStepCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 235
    iget-wide v0, p0, Landroid/hardware/scontext/SContextPedometer;->mWalkStepCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 236
    iget-wide v0, p0, Landroid/hardware/scontext/SContextPedometer;->mRunStepCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 237
    iget-wide v0, p0, Landroid/hardware/scontext/SContextPedometer;->mUpDownStepCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 238
    return-void
.end method
