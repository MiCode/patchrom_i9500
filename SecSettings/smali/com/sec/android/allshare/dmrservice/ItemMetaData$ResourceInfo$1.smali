.class Lcom/sec/android/allshare/dmrservice/ItemMetaData$ResourceInfo$1;
.super Ljava/lang/Object;
.source "ItemMetaData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/allshare/dmrservice/ItemMetaData$ResourceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/sec/android/allshare/dmrservice/ItemMetaData$ResourceInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/allshare/dmrservice/ItemMetaData$ResourceInfo;


# direct methods
.method constructor <init>(Lcom/sec/android/allshare/dmrservice/ItemMetaData$ResourceInfo;)V
    .locals 0

    .prologue
    .line 383
    iput-object p1, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData$ResourceInfo$1;->this$1:Lcom/sec/android/allshare/dmrservice/ItemMetaData$ResourceInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sec/android/allshare/dmrservice/ItemMetaData$ResourceInfo;
    .locals 3
    .parameter "source"

    .prologue
    .line 386
    new-instance v0, Lcom/sec/android/allshare/dmrservice/ItemMetaData$ResourceInfo;

    iget-object v1, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData$ResourceInfo$1;->this$1:Lcom/sec/android/allshare/dmrservice/ItemMetaData$ResourceInfo;

    iget-object v1, v1, Lcom/sec/android/allshare/dmrservice/ItemMetaData$ResourceInfo;->this$0:Lcom/sec/android/allshare/dmrservice/ItemMetaData;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/sec/android/allshare/dmrservice/ItemMetaData$ResourceInfo;-><init>(Lcom/sec/android/allshare/dmrservice/ItemMetaData;Landroid/os/Parcel;Lcom/sec/android/allshare/dmrservice/ItemMetaData$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 383
    invoke-virtual {p0, p1}, Lcom/sec/android/allshare/dmrservice/ItemMetaData$ResourceInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sec/android/allshare/dmrservice/ItemMetaData$ResourceInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/sec/android/allshare/dmrservice/ItemMetaData$ResourceInfo;
    .locals 1
    .parameter "size"

    .prologue
    .line 391
    new-array v0, p1, [Lcom/sec/android/allshare/dmrservice/ItemMetaData$ResourceInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 383
    invoke-virtual {p0, p1}, Lcom/sec/android/allshare/dmrservice/ItemMetaData$ResourceInfo$1;->newArray(I)[Lcom/sec/android/allshare/dmrservice/ItemMetaData$ResourceInfo;

    move-result-object v0

    return-object v0
.end method
