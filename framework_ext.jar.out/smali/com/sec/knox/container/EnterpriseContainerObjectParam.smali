.class public Lcom/sec/knox/container/EnterpriseContainerObjectParam;
.super Ljava/lang/Object;
.source "EnterpriseContainerObjectParam.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/knox/container/EnterpriseContainerObjectParam;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "EnterpriseContainerObjectParam"


# instance fields
.field private mAdmin:I

.field private mApkInstallPath:Ljava/lang/String;

.field private mContainerCreationRequestId:I

.field private mEmail:Ljava/lang/String;

.field private mLockType:I

.field private mName:Ljava/lang/String;

.field private mPassword:Ljava/lang/String;

.field private mSecurityIcon:Landroid/graphics/Bitmap;

.field private mSecurityText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/sec/knox/container/EnterpriseContainerObjectParam$1;

    invoke-direct {v0}, Lcom/sec/knox/container/EnterpriseContainerObjectParam$1;-><init>()V

    sput-object v0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mName:Ljava/lang/String;

    .line 18
    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mPassword:Ljava/lang/String;

    .line 19
    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mEmail:Ljava/lang/String;

    .line 20
    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mSecurityText:Ljava/lang/String;

    .line 21
    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mSecurityIcon:Landroid/graphics/Bitmap;

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mAdmin:I

    .line 23
    iput v2, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mLockType:I

    .line 25
    iput v2, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mContainerCreationRequestId:I

    .line 26
    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mApkInstallPath:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mName:Ljava/lang/String;

    .line 18
    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mPassword:Ljava/lang/String;

    .line 19
    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mEmail:Ljava/lang/String;

    .line 20
    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mSecurityText:Ljava/lang/String;

    .line 21
    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mSecurityIcon:Landroid/graphics/Bitmap;

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mAdmin:I

    .line 23
    iput v2, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mLockType:I

    .line 25
    iput v2, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mContainerCreationRequestId:I

    .line 26
    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mApkInstallPath:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mName:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mPassword:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mEmail:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mSecurityText:Ljava/lang/String;

    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mSecurityIcon:Landroid/graphics/Bitmap;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mContainerCreationRequestId:I

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mAdmin:I

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mLockType:I

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mApkInstallPath:Ljava/lang/String;

    .line 56
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method public getAdmin()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mAdmin:I

    return v0
.end method

.method public getApkInstallPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mApkInstallPath:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getLockType()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mLockType:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestId()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mContainerCreationRequestId:I

    return v0
.end method

.method public getSecurityIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mSecurityIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getSecurityText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mSecurityText:Ljava/lang/String;

    return-object v0
.end method

.method public setAdmin(I)V
    .locals 0
    .parameter "admin"

    .prologue
    .line 107
    iput p1, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mAdmin:I

    .line 108
    return-void
.end method

.method public setApkInstallPath(Ljava/lang/String;)V
    .locals 0
    .parameter "apkPath"

    .prologue
    .line 123
    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mApkInstallPath:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .parameter "email"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mEmail:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setLockType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 115
    iput p1, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mLockType:I

    .line 116
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mName:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .parameter "password"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mPassword:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setRequestId(I)V
    .locals 0
    .parameter "requestId"

    .prologue
    .line 99
    iput p1, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mContainerCreationRequestId:I

    .line 100
    return-void
.end method

.method public setSecurityIcon(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "securityIcon"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mSecurityIcon:Landroid/graphics/Bitmap;

    .line 92
    return-void
.end method

.method public setSecurityText(Ljava/lang/String;)V
    .locals 0
    .parameter "securityText"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mSecurityText:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 145
    :goto_0
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mPassword:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mPassword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 151
    :goto_1
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mEmail:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 152
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mEmail:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 157
    :goto_2
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mSecurityText:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 158
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mSecurityText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 163
    :goto_3
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mSecurityIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 164
    iget v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mContainerCreationRequestId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    iget v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mAdmin:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    iget v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mLockType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mApkInstallPath:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 168
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mApkInstallPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 173
    :goto_4
    return-void

    .line 142
    :cond_0
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    const-string v0, "EnterpriseContainerObjectParam"

    const-string v1, "writeToParcel Password null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 148
    :cond_1
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 149
    const-string v0, "EnterpriseContainerObjectParam"

    const-string v1, "writeToParcel Password null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 154
    :cond_2
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 155
    const-string v0, "EnterpriseContainerObjectParam"

    const-string v1, "writeToParcel Email null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 160
    :cond_3
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 161
    const-string v0, "EnterpriseContainerObjectParam"

    const-string v1, "writeToParcel Security Text null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 170
    :cond_4
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 171
    const-string v0, "EnterpriseContainerObjectParam"

    const-string v1, "writeToParcel mApkInstallPath null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method
