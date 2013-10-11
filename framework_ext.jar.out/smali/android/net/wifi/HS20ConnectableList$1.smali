.class final Landroid/net/wifi/HS20ConnectableList$1;
.super Ljava/lang/Object;
.source "HS20ConnectableList.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/HS20ConnectableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/net/wifi/HS20ConnectableList;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/HS20ConnectableList;
    .locals 4
    .parameter "in"

    .prologue
    .line 168
    new-instance v1, Landroid/net/wifi/HS20ConnectableList;

    invoke-direct {v1}, Landroid/net/wifi/HS20ConnectableList;-><init>()V

    .line 170
    .local v1, apList:Landroid/net/wifi/HS20ConnectableList;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 171
    .local v0, apCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 172
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/Hs20ScanResult;

    invoke-virtual {v1, v3}, Landroid/net/wifi/HS20ConnectableList;->update(Landroid/net/wifi/Hs20ScanResult;)V

    .line 171
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 174
    :cond_0
    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 166
    invoke-virtual {p0, p1}, Landroid/net/wifi/HS20ConnectableList$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/HS20ConnectableList;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/HS20ConnectableList;
    .locals 1
    .parameter "size"

    .prologue
    .line 178
    new-array v0, p1, [Landroid/net/wifi/HS20ConnectableList;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 166
    invoke-virtual {p0, p1}, Landroid/net/wifi/HS20ConnectableList$1;->newArray(I)[Landroid/net/wifi/HS20ConnectableList;

    move-result-object v0

    return-object v0
.end method
