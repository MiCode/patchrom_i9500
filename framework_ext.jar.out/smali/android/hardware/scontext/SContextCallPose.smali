.class public Landroid/hardware/scontext/SContextCallPose;
.super Ljava/lang/Object;
.source "SContextCallPose.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/scontext/SContextCallPose;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mPose:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 89
    new-instance v0, Landroid/hardware/scontext/SContextCallPose$1;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextCallPose$1;-><init>()V

    sput-object v0, Landroid/hardware/scontext/SContextCallPose;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/scontext/SContextCallPose;->mPose:I

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "src"

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextCallPose;->readFromParcel(Landroid/os/Parcel;)V

    .line 39
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "src"

    .prologue
    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/scontext/SContextCallPose;->mPose:I

    .line 86
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public getPose()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Landroid/hardware/scontext/SContextCallPose;->mPose:I

    return v0
.end method

.method setPose(I)V
    .locals 0
    .parameter "pose"

    .prologue
    .line 56
    iput p1, p0, Landroid/hardware/scontext/SContextCallPose;->mPose:I

    .line 57
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 76
    iget v0, p0, Landroid/hardware/scontext/SContextCallPose;->mPose:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    return-void
.end method
