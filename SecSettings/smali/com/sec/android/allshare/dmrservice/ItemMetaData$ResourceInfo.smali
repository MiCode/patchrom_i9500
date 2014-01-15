.class public Lcom/sec/android/allshare/dmrservice/ItemMetaData$ResourceInfo;
.super Ljava/lang/Object;
.source "ItemMetaData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/allshare/dmrservice/ItemMetaData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ResourceInfo"
.end annotation


# instance fields
.field public final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/android/allshare/dmrservice/ItemMetaData$ResourceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private duration:Ljava/lang/String;

.field private filesize:Ljava/lang/String;

.field private resolution:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/allshare/dmrservice/ItemMetaData;

.field private uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/android/allshare/dmrservice/ItemMetaData;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 268
    iput-object p1, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData$ResourceInfo;->this$0:Lcom/sec/android/allshare/dmrservice/ItemMetaData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    iput-object v0, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData$ResourceInfo;->duration:Ljava/lang/String;

    .line 262
    iput-object v0, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData$ResourceInfo;->resolution:Ljava/lang/String;

    .line 264
    iput-object v0, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData$ResourceInfo;->filesize:Ljava/lang/String;

    .line 266
    iput-object v0, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData$ResourceInfo;->uri:Ljava/lang/String;

    .line 383
    new-instance v0, Lcom/sec/android/allshare/dmrservice/ItemMetaData$ResourceInfo$1;

    invoke-direct {v0, p0}, Lcom/sec/android/allshare/dmrservice/ItemMetaData$ResourceInfo$1;-><init>(Lcom/sec/android/allshare/dmrservice/ItemMetaData$ResourceInfo;)V

    iput-object v0, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData$ResourceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 270
    return-void
.end method

.method private constructor <init>(Lcom/sec/android/allshare/dmrservice/ItemMetaData;Landroid/os/Parcel;)V
    .locals 1
    .parameter
    .parameter "src"

    .prologue
    const/4 v0, 0x0

    .line 395
    iput-object p1, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData$ResourceInfo;->this$0:Lcom/sec/android/allshare/dmrservice/ItemMetaData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    iput-object v0, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData$ResourceInfo;->duration:Ljava/lang/String;

    .line 262
    iput-object v0, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData$ResourceInfo;->resolution:Ljava/lang/String;

    .line 264
    iput-object v0, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData$ResourceInfo;->filesize:Ljava/lang/String;

    .line 266
    iput-object v0, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData$ResourceInfo;->uri:Ljava/lang/String;

    .line 383
    new-instance v0, Lcom/sec/android/allshare/dmrservice/ItemMetaData$ResourceInfo$1;

    invoke-direct {v0, p0}, Lcom/sec/android/allshare/dmrservice/ItemMetaData$ResourceInfo$1;-><init>(Lcom/sec/android/allshare/dmrservice/ItemMetaData$ResourceInfo;)V

    iput-object v0, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData$ResourceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 396
    invoke-direct {p0, p2}, Lcom/sec/android/allshare/dmrservice/ItemMetaData$ResourceInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 397
    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/allshare/dmrservice/ItemMetaData;Landroid/os/Parcel;Lcom/sec/android/allshare/dmrservice/ItemMetaData$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 258
    invoke-direct {p0, p1, p2}, Lcom/sec/android/allshare/dmrservice/ItemMetaData$ResourceInfo;-><init>(Lcom/sec/android/allshare/dmrservice/ItemMetaData;Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/allshare/dmrservice/ItemMetaData;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "uri"

    .prologue
    const/4 v0, 0x0

    .line 272
    iput-object p1, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData$ResourceInfo;->this$0:Lcom/sec/android/allshare/dmrservice/ItemMetaData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    iput-object v0, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData$ResourceInfo;->duration:Ljava/lang/String;

    .line 262
    iput-object v0, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData$ResourceInfo;->resolution:Ljava/lang/String;

    .line 264
    iput-object v0, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData$ResourceInfo;->filesize:Ljava/lang/String;

    .line 266
    iput-object v0, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData$ResourceInfo;->uri:Ljava/lang/String;

    .line 383
    new-instance v0, Lcom/sec/android/allshare/dmrservice/ItemMetaData$ResourceInfo$1;

    invoke-direct {v0, p0}, Lcom/sec/android/allshare/dmrservice/ItemMetaData$ResourceInfo$1;-><init>(Lcom/sec/android/allshare/dmrservice/ItemMetaData$ResourceInfo;)V

    iput-object v0, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData$ResourceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 273
    iput-object p2, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData$ResourceInfo;->uri:Ljava/lang/String;

    .line 274
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "src"

    .prologue
    .line 400
    if-eqz p1, :cond_0

    .line 402
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData$ResourceInfo;->duration:Ljava/lang/String;

    .line 403
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData$ResourceInfo;->resolution:Ljava/lang/String;

    .line 404
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData$ResourceInfo;->filesize:Ljava/lang/String;

    .line 405
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData$ResourceInfo;->uri:Ljava/lang/String;

    .line 407
    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 372
    const/4 v0, 0x0

    return v0
.end method

.method public getDuration()Ljava/lang/String;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData$ResourceInfo;->duration:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData$ResourceInfo;->filesize:Ljava/lang/String;

    return-object v0
.end method

.method public getResolution()Ljava/lang/String;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData$ResourceInfo;->resolution:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData$ResourceInfo;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public setDuration(Ljava/lang/String;)V
    .locals 0
    .parameter "duration"

    .prologue
    .line 284
    iput-object p1, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData$ResourceInfo;->duration:Ljava/lang/String;

    .line 285
    return-void
.end method

.method public setFileSize(Ljava/lang/String;)V
    .locals 0
    .parameter "filesize"

    .prologue
    .line 333
    iput-object p1, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData$ResourceInfo;->filesize:Ljava/lang/String;

    .line 334
    return-void
.end method

.method public setResolution(Ljava/lang/String;)V
    .locals 0
    .parameter "resolution"

    .prologue
    .line 309
    iput-object p1, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData$ResourceInfo;->resolution:Ljava/lang/String;

    .line 310
    return-void
.end method

.method public setUri(Ljava/lang/String;)V
    .locals 0
    .parameter "resuri"

    .prologue
    .line 355
    iput-object p1, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData$ResourceInfo;->uri:Ljava/lang/String;

    .line 356
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 377
    iget-object v0, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData$ResourceInfo;->duration:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 378
    iget-object v0, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData$ResourceInfo;->resolution:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 379
    iget-object v0, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData$ResourceInfo;->filesize:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 380
    iget-object v0, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData$ResourceInfo;->uri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 381
    return-void
.end method
