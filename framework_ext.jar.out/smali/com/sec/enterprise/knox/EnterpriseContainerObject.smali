.class public Lcom/sec/enterprise/knox/EnterpriseContainerObject;
.super Ljava/lang/Object;
.source "EnterpriseContainerObject.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/sec/knox/container/EnterpriseContainerConstants;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/enterprise/knox/EnterpriseContainerObject;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private admin:I

.field private containerType:I

.field private email:Ljava/lang/String;

.field private id:I

.field private lockType:I

.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/sec/enterprise/knox/EnterpriseContainerObject$1;

    invoke-direct {v0}, Lcom/sec/enterprise/knox/EnterpriseContainerObject$1;-><init>()V

    sput-object v0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput v0, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->id:I

    .line 17
    iput v0, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->admin:I

    .line 18
    iput-object v2, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->email:Ljava/lang/String;

    .line 19
    iput-object v2, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->name:Ljava/lang/String;

    .line 20
    iput v1, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->lockType:I

    .line 21
    iput v1, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->containerType:I

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput v0, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->id:I

    .line 17
    iput v0, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->admin:I

    .line 18
    iput-object v2, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->email:Ljava/lang/String;

    .line 19
    iput-object v2, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->name:Ljava/lang/String;

    .line 20
    iput v1, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->lockType:I

    .line 21
    iput v1, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->containerType:I

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->id:I

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->admin:I

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->email:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->name:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->lockType:I

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->containerType:I

    .line 49
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public getContainerAdmin()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->admin:I

    return v0
.end method

.method public getContainerEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getContainerId()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->id:I

    return v0
.end method

.method public getContainerLockType()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->lockType:I

    return v0
.end method

.method public getContainerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getContainerType()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->containerType:I

    return v0
.end method

.method public setContainerAdmin(I)V
    .locals 0
    .parameter "admin"

    .prologue
    .line 60
    iput p1, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->admin:I

    .line 61
    return-void
.end method

.method public setContainerEmail(Ljava/lang/String;)V
    .locals 0
    .parameter "email"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->email:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setContainerId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 52
    iput p1, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->id:I

    .line 53
    return-void
.end method

.method public setContainerLockType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 84
    iput p1, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->lockType:I

    .line 85
    return-void
.end method

.method public setContainerName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->name:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setContainerType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 92
    iput p1, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->containerType:I

    .line 93
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 108
    iget v0, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    iget v0, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->admin:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    iget-object v0, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->email:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->email:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    :goto_0
    iget-object v0, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->name:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 120
    :goto_1
    iget v0, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->lockType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    iget v0, p0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->containerType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    return-void

    .line 113
    :cond_0
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 118
    :cond_1
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1
.end method
