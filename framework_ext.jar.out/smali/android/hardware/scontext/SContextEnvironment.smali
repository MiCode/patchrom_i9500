.class public Landroid/hardware/scontext/SContextEnvironment;
.super Ljava/lang/Object;
.source "SContextEnvironment.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/scontext/SContextEnvironment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBundleInfo:Landroid/os/Bundle;

.field private mSensorType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 150
    new-instance v0, Landroid/hardware/scontext/SContextEnvironment$1;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextEnvironment$1;-><init>()V

    sput-object v0, Landroid/hardware/scontext/SContextEnvironment;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEnvironment;->mBundleInfo:Landroid/os/Bundle;

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "src"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextEnvironment;->readFromParcel(Landroid/os/Parcel;)V

    .line 43
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "src"

    .prologue
    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/scontext/SContextEnvironment;->mSensorType:I

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextEnvironment;->mBundleInfo:Landroid/os/Bundle;

    .line 147
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method public getData()[D
    .locals 2

    .prologue
    .line 81
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/hardware/scontext/SContextEnvironment;->getData(I)[D

    move-result-object v0

    .line 83
    .local v0, arrDouble:[D
    return-object v0
.end method

.method public getData(I)[D
    .locals 3
    .parameter "index"

    .prologue
    const/4 v2, 0x1

    .line 62
    const/4 v0, 0x0

    .line 64
    .local v0, arrDouble:[D
    iget v1, p0, Landroid/hardware/scontext/SContextEnvironment;->mSensorType:I

    if-ne v1, v2, :cond_0

    .line 65
    if-nez p1, :cond_1

    .line 66
    iget-object v1, p0, Landroid/hardware/scontext/SContextEnvironment;->mBundleInfo:Landroid/os/Bundle;

    const-string v2, "Temperature"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    .line 72
    :cond_0
    :goto_0
    return-object v0

    .line 67
    :cond_1
    if-ne p1, v2, :cond_0

    .line 68
    iget-object v1, p0, Landroid/hardware/scontext/SContextEnvironment;->mBundleInfo:Landroid/os/Bundle;

    const-string v2, "Humidity"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    goto :goto_0
.end method

.method public getSensorType()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Landroid/hardware/scontext/SContextEnvironment;->mSensorType:I

    return v0
.end method

.method setData(I[D)V
    .locals 2
    .parameter "index"
    .parameter "arrDouble"

    .prologue
    .line 102
    if-nez p1, :cond_1

    .line 103
    iget-object v0, p0, Landroid/hardware/scontext/SContextEnvironment;->mBundleInfo:Landroid/os/Bundle;

    const-string v1, "Temperature"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 105
    iget-object v0, p0, Landroid/hardware/scontext/SContextEnvironment;->mBundleInfo:Landroid/os/Bundle;

    const-string v1, "Humidity"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    goto :goto_0
.end method

.method setData(Landroid/os/Bundle;)V
    .locals 0
    .parameter "bundleInfo"

    .prologue
    .line 115
    iput-object p1, p0, Landroid/hardware/scontext/SContextEnvironment;->mBundleInfo:Landroid/os/Bundle;

    .line 116
    return-void
.end method

.method setSensorType(I)V
    .locals 0
    .parameter "sensorType"

    .prologue
    .line 92
    iput p1, p0, Landroid/hardware/scontext/SContextEnvironment;->mSensorType:I

    .line 93
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 135
    iget v0, p0, Landroid/hardware/scontext/SContextEnvironment;->mSensorType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    iget-object v0, p0, Landroid/hardware/scontext/SContextEnvironment;->mBundleInfo:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 137
    return-void
.end method
