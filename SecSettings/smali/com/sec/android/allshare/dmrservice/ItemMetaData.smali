.class public Lcom/sec/android/allshare/dmrservice/ItemMetaData;
.super Ljava/lang/Object;
.source "ItemMetaData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/allshare/dmrservice/ItemMetaData$ResourceInfo;,
        Lcom/sec/android/allshare/dmrservice/ItemMetaData$ItemType;
    }
.end annotation


# static fields
.field public static final BUNDLE_STRING_RENDERER_METADATA:Ljava/lang/String; = "BUNDLE_STRING_RENDERER_METADATA"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/android/allshare/dmrservice/ItemMetaData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private album:Ljava/lang/String;

.field private artist:Ljava/lang/String;

.field private date:Ljava/lang/String;

.field private itemType:Lcom/sec/android/allshare/dmrservice/ItemMetaData$ItemType;

.field private mimeType:Ljava/lang/String;

.field private subtitleuri:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 207
    new-instance v0, Lcom/sec/android/allshare/dmrservice/ItemMetaData$1;

    invoke-direct {v0}, Lcom/sec/android/allshare/dmrservice/ItemMetaData$1;-><init>()V

    sput-object v0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object v1, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->title:Ljava/lang/String;

    .line 24
    iput-object v1, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->date:Ljava/lang/String;

    .line 29
    iput-object v1, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->subtitleuri:Ljava/lang/String;

    .line 34
    sget-object v0, Lcom/sec/android/allshare/dmrservice/ItemMetaData$ItemType;->ITEM_UNKNOWN:Lcom/sec/android/allshare/dmrservice/ItemMetaData$ItemType;

    iput-object v0, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->itemType:Lcom/sec/android/allshare/dmrservice/ItemMetaData$ItemType;

    .line 44
    iput-object v1, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->mimeType:Ljava/lang/String;

    .line 49
    iput-object v1, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->artist:Ljava/lang/String;

    .line 54
    iput-object v1, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->album:Ljava/lang/String;

    .line 81
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "src"

    .prologue
    const/4 v1, 0x0

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object v1, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->title:Ljava/lang/String;

    .line 24
    iput-object v1, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->date:Ljava/lang/String;

    .line 29
    iput-object v1, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->subtitleuri:Ljava/lang/String;

    .line 34
    sget-object v0, Lcom/sec/android/allshare/dmrservice/ItemMetaData$ItemType;->ITEM_UNKNOWN:Lcom/sec/android/allshare/dmrservice/ItemMetaData$ItemType;

    iput-object v0, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->itemType:Lcom/sec/android/allshare/dmrservice/ItemMetaData$ItemType;

    .line 44
    iput-object v1, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->mimeType:Ljava/lang/String;

    .line 49
    iput-object v1, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->artist:Ljava/lang/String;

    .line 54
    iput-object v1, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->album:Ljava/lang/String;

    .line 220
    invoke-direct {p0, p1}, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->readFromParcel(Landroid/os/Parcel;)V

    .line 221
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sec/android/allshare/dmrservice/ItemMetaData$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/sec/android/allshare/dmrservice/ItemMetaData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/allshare/dmrservice/ItemMetaData$ItemType;Ljava/lang/String;)V
    .locals 2
    .parameter "itemtype"
    .parameter "title"

    .prologue
    const/4 v1, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object v1, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->title:Ljava/lang/String;

    .line 24
    iput-object v1, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->date:Ljava/lang/String;

    .line 29
    iput-object v1, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->subtitleuri:Ljava/lang/String;

    .line 34
    sget-object v0, Lcom/sec/android/allshare/dmrservice/ItemMetaData$ItemType;->ITEM_UNKNOWN:Lcom/sec/android/allshare/dmrservice/ItemMetaData$ItemType;

    iput-object v0, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->itemType:Lcom/sec/android/allshare/dmrservice/ItemMetaData$ItemType;

    .line 44
    iput-object v1, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->mimeType:Ljava/lang/String;

    .line 49
    iput-object v1, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->artist:Ljava/lang/String;

    .line 54
    iput-object v1, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->album:Ljava/lang/String;

    .line 84
    iput-object p1, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->itemType:Lcom/sec/android/allshare/dmrservice/ItemMetaData$ItemType;

    .line 85
    iput-object p2, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->title:Ljava/lang/String;

    .line 86
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .parameter "src"

    .prologue
    .line 224
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->title:Ljava/lang/String;

    .line 225
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->date:Ljava/lang/String;

    .line 226
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, conType:Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Lcom/sec/android/allshare/dmrservice/ItemMetaData$ItemType;->valueOf(Ljava/lang/String;)Lcom/sec/android/allshare/dmrservice/ItemMetaData$ItemType;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->itemType:Lcom/sec/android/allshare/dmrservice/ItemMetaData$ItemType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->subtitleuri:Ljava/lang/String;

    .line 234
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->mimeType:Ljava/lang/String;

    .line 235
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->artist:Ljava/lang/String;

    .line 236
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->album:Ljava/lang/String;

    .line 238
    return-void

    .line 230
    :catch_0
    move-exception v1

    .line 231
    .local v1, e:Ljava/lang/Exception;
    sget-object v2, Lcom/sec/android/allshare/dmrservice/ItemMetaData$ItemType;->ITEM_UNKNOWN:Lcom/sec/android/allshare/dmrservice/ItemMetaData$ItemType;

    iput-object v2, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->itemType:Lcom/sec/android/allshare/dmrservice/ItemMetaData$ItemType;

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x0

    return v0
.end method

.method public getAlbum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->album:Ljava/lang/String;

    return-object v0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->artist:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getItemType()Lcom/sec/android/allshare/dmrservice/ItemMetaData$ItemType;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->itemType:Lcom/sec/android/allshare/dmrservice/ItemMetaData$ItemType;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getSubtitleUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->subtitleuri:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setAlbum(Ljava/lang/String;)V
    .locals 0
    .parameter "album"

    .prologue
    .line 194
    iput-object p1, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->album:Ljava/lang/String;

    .line 195
    return-void
.end method

.method public setArtist(Ljava/lang/String;)V
    .locals 0
    .parameter "artist"

    .prologue
    .line 186
    iput-object p1, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->artist:Ljava/lang/String;

    .line 187
    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0
    .parameter "date"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->date:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public setItemType(Lcom/sec/android/allshare/dmrservice/ItemMetaData$ItemType;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 141
    iput-object p1, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->itemType:Lcom/sec/android/allshare/dmrservice/ItemMetaData$ItemType;

    .line 142
    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0
    .parameter "mimetype"

    .prologue
    .line 178
    iput-object p1, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->mimeType:Ljava/lang/String;

    .line 179
    return-void
.end method

.method public setSubtitleUri(Ljava/lang/String;)V
    .locals 0
    .parameter "subtitleUri"

    .prologue
    .line 163
    iput-object p1, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->subtitleuri:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->title:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 242
    iget-object v0, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->date:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->itemType:Lcom/sec/android/allshare/dmrservice/ItemMetaData$ItemType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->subtitleuri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->mimeType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->artist:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/sec/android/allshare/dmrservice/ItemMetaData;->album:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 250
    return-void
.end method
