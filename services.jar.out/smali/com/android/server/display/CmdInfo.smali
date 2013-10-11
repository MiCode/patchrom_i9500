.class public Lcom/android/server/display/CmdInfo;
.super Ljava/lang/Object;
.source "CmdInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/CmdInfo$CmdType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/server/display/CmdInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final TAG:Ljava/lang/String;

.field private cmdDetail:I

.field private cmdType:Lcom/android/server/display/CmdInfo$CmdType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/android/server/display/CmdInfo$1;

    invoke-direct {v0}, Lcom/android/server/display/CmdInfo$1;-><init>()V

    sput-object v0, Lcom/android/server/display/CmdInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, "WfdBridgeServer"

    iput-object v0, p0, Lcom/android/server/display/CmdInfo;->TAG:Ljava/lang/String;

    .line 54
    invoke-virtual {p0, p1}, Lcom/android/server/display/CmdInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 55
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/server/display/CmdInfo$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6
    invoke-direct {p0, p1}, Lcom/android/server/display/CmdInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/CmdInfo$CmdType;)V
    .locals 1
    .parameter "aCmdType"

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, "WfdBridgeServer"

    iput-object v0, p0, Lcom/android/server/display/CmdInfo;->TAG:Ljava/lang/String;

    .line 58
    iput-object p1, p0, Lcom/android/server/display/CmdInfo;->cmdType:Lcom/android/server/display/CmdInfo$CmdType;

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/display/CmdInfo;->cmdDetail:I

    .line 60
    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/CmdInfo$CmdType;I)V
    .locals 1
    .parameter "aCmdType"
    .parameter "aCmdDetail"

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, "WfdBridgeServer"

    iput-object v0, p0, Lcom/android/server/display/CmdInfo;->TAG:Ljava/lang/String;

    .line 63
    iput-object p1, p0, Lcom/android/server/display/CmdInfo;->cmdType:Lcom/android/server/display/CmdInfo$CmdType;

    .line 64
    iput p2, p0, Lcom/android/server/display/CmdInfo;->cmdDetail:I

    .line 65
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public getCmdDetail()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/android/server/display/CmdInfo;->cmdDetail:I

    return v0
.end method

.method public getCmdType()Lcom/android/server/display/CmdInfo$CmdType;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/server/display/CmdInfo;->cmdType:Lcom/android/server/display/CmdInfo$CmdType;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 42
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/display/CmdInfo$CmdType;->valueOf(Ljava/lang/String;)Lcom/android/server/display/CmdInfo$CmdType;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/CmdInfo;->cmdType:Lcom/android/server/display/CmdInfo$CmdType;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/server/display/CmdInfo;->cmdDetail:I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 51
    :goto_1
    return-void

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/display/CmdInfo;->cmdType:Lcom/android/server/display/CmdInfo$CmdType;

    goto :goto_0

    .line 48
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 49
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/display/CmdInfo;->cmdDetail:I

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/server/display/CmdInfo;->cmdType:Lcom/android/server/display/CmdInfo$CmdType;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 37
    iget v0, p0, Lcom/android/server/display/CmdInfo;->cmdDetail:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 38
    return-void

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/CmdInfo;->cmdType:Lcom/android/server/display/CmdInfo$CmdType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
