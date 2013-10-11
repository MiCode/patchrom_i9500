.class public Landroid/hardware/scontext/SContextShakeMotion;
.super Ljava/lang/Object;
.source "SContextShakeMotion.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/scontext/SContextShakeMotion;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mShakeStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    new-instance v0, Landroid/hardware/scontext/SContextShakeMotion$1;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextShakeMotion$1;-><init>()V

    sput-object v0, Landroid/hardware/scontext/SContextShakeMotion;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/scontext/SContextShakeMotion;->mShakeStatus:I

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "src"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextShakeMotion;->readFromParcel(Landroid/os/Parcel;)V

    .line 40
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "src"

    .prologue
    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/scontext/SContextShakeMotion;->mShakeStatus:I

    .line 87
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public getShakeStatus()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Landroid/hardware/scontext/SContextShakeMotion;->mShakeStatus:I

    return v0
.end method

.method setShakeStatus(I)V
    .locals 0
    .parameter "shakeStatus"

    .prologue
    .line 57
    iput p1, p0, Landroid/hardware/scontext/SContextShakeMotion;->mShakeStatus:I

    .line 58
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 77
    iget v0, p0, Landroid/hardware/scontext/SContextShakeMotion;->mShakeStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    return-void
.end method
