.class public Lcom/sec/android/allshare/dmrservice/DeviceList;
.super Ljava/lang/Object;
.source "DeviceList.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/allshare/dmrservice/DeviceList$ACCESS_TYPE;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/android/allshare/dmrservice/DeviceList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private devList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/allshare/dmrservice/Device;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 118
    new-instance v0, Lcom/sec/android/allshare/dmrservice/DeviceList$1;

    invoke-direct {v0}, Lcom/sec/android/allshare/dmrservice/DeviceList$1;-><init>()V

    sput-object v0, Lcom/sec/android/allshare/dmrservice/DeviceList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/allshare/dmrservice/DeviceList;->devList:Ljava/util/List;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/allshare/dmrservice/DeviceList;->devList:Ljava/util/List;

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "parcel"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/sec/android/allshare/dmrservice/DeviceList;-><init>()V

    .line 53
    invoke-virtual {p0, p1}, Lcom/sec/android/allshare/dmrservice/DeviceList;->readFromParcel(Landroid/os/Parcel;)V

    .line 54
    return-void
.end method


# virtual methods
.method public addToDeviceList(Lcom/sec/android/allshare/dmrservice/Device;)V
    .locals 1
    .parameter "device"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sec/android/allshare/dmrservice/DeviceList;->devList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/sec/android/allshare/dmrservice/DeviceList;->devList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    :goto_0
    return-void

    .line 89
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/allshare/dmrservice/DeviceList;->devList:Ljava/util/List;

    .line 90
    iget-object v0, p0, Lcom/sec/android/allshare/dmrservice/DeviceList;->devList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/sec/android/allshare/dmrservice/DeviceList;->devList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 102
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public getDeviceList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/allshare/dmrservice/Device;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/allshare/dmrservice/DeviceList;->devList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/sec/android/allshare/dmrservice/DeviceList;->devList:Ljava/util/List;

    .line 70
    :goto_0
    return-object v0

    .line 69
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/allshare/dmrservice/DeviceList;->devList:Ljava/util/List;

    .line 70
    iget-object v0, p0, Lcom/sec/android/allshare/dmrservice/DeviceList;->devList:Ljava/util/List;

    goto :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "parcel"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/sec/android/allshare/dmrservice/DeviceList;->devList:Ljava/util/List;

    sget-object v1, Lcom/sec/android/allshare/dmrservice/Device;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 116
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "parcel"
    .parameter "arg1"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/sec/android/allshare/dmrservice/DeviceList;->devList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 112
    return-void
.end method
