.class public Lcom/sec/android/allshare/dmrservice/BGM;
.super Ljava/lang/Object;
.source "BGM.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/android/allshare/dmrservice/BGM;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public album:Ljava/lang/String;

.field public artist:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 122
    new-instance v0, Lcom/sec/android/allshare/dmrservice/BGM$1;

    invoke-direct {v0}, Lcom/sec/android/allshare/dmrservice/BGM$1;-><init>()V

    sput-object v0, Lcom/sec/android/allshare/dmrservice/BGM;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "parcel"

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-virtual {p0, p1}, Lcom/sec/android/allshare/dmrservice/BGM;->readFromParcel(Landroid/os/Parcel;)V

    .line 50
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "parcel"

    .prologue
    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/allshare/dmrservice/BGM;->album:Ljava/lang/String;

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/allshare/dmrservice/BGM;->title:Ljava/lang/String;

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/allshare/dmrservice/BGM;->artist:Ljava/lang/String;

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/allshare/dmrservice/BGM;->url:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setAlbum(Ljava/lang/String;)V
    .locals 0
    .parameter "album"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/sec/android/allshare/dmrservice/BGM;->album:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setArtist(Ljava/lang/String;)V
    .locals 0
    .parameter "artist"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/sec/android/allshare/dmrservice/BGM;->artist:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/sec/android/allshare/dmrservice/BGM;->title:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/sec/android/allshare/dmrservice/BGM;->url:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "parcel"
    .parameter "flags"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/sec/android/allshare/dmrservice/BGM;->album:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/sec/android/allshare/dmrservice/BGM;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/sec/android/allshare/dmrservice/BGM;->artist:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/sec/android/allshare/dmrservice/BGM;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    return-void
.end method
