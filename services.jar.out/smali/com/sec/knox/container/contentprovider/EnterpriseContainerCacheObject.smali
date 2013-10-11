.class public Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
.super Ljava/lang/Object;
.source "EnterpriseContainerCacheObject.java"

# interfaces
.implements Lcom/sec/knox/container/EnterpriseContainerConstants;


# instance fields
.field private admin:I

.field private containerId:I

.field private containerLockOnScreenLock:Z

.field private containerStatus:I

.field private containerType:I

.field private failedPasswordAttempts:I

.field private lockType:I

.field private mEmail:Ljava/lang/String;

.field private mFirmwareVersion:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mPassword:Ljava/lang/String;

.field private mSecurityIcon:Landroid/graphics/Bitmap;

.field private mSecurityText:Ljava/lang/String;

.field private maximumTimeToLock:J

.field private passwordExpirationDate:J

.field private passwordExpirationTimeout:J

.field private passwordHasExpired:Z

.field private passwordStateInfo:Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;

.field private passwordStatus:I

.field private pkgsInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private verifyPwdOnlyOnModeChange:Z


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput v5, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->containerId:I

    .line 14
    iput-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->mPassword:Ljava/lang/String;

    .line 15
    iput-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->mEmail:Ljava/lang/String;

    .line 16
    iput-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->mSecurityText:Ljava/lang/String;

    .line 17
    iput-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->mName:Ljava/lang/String;

    .line 18
    iput-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->mSecurityIcon:Landroid/graphics/Bitmap;

    .line 19
    iput-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->mFirmwareVersion:Ljava/lang/String;

    .line 20
    const/16 v0, 0x5a

    iput v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->containerStatus:I

    .line 21
    const/16 v0, 0x50

    iput v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->passwordStatus:I

    .line 22
    iput v5, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->admin:I

    .line 23
    iput-wide v3, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->passwordExpirationDate:J

    .line 24
    iput-wide v3, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->passwordExpirationTimeout:J

    .line 25
    iput-boolean v2, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->passwordHasExpired:Z

    .line 26
    iput v2, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->failedPasswordAttempts:I

    .line 27
    iput-wide v3, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->maximumTimeToLock:J

    .line 28
    iput v2, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->lockType:I

    .line 29
    iput v2, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->containerType:I

    .line 30
    iput-boolean v2, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->containerLockOnScreenLock:Z

    .line 31
    iput-boolean v2, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->verifyPwdOnlyOnModeChange:Z

    .line 32
    iput-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->pkgsInfo:Ljava/util/HashMap;

    .line 33
    iput-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->passwordStateInfo:Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;

    return-void
.end method


# virtual methods
.method public getAdmin()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->admin:I

    return v0
.end method

.method public getContainerId()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->containerId:I

    return v0
.end method

.method public getContainerLockOnScreenLock()Z
    .locals 1

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->containerLockOnScreenLock:Z

    return v0
.end method

.method public getContainerPackagesInfo()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 188
    iget-object v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->pkgsInfo:Ljava/util/HashMap;

    return-object v0
.end method

.method public getContainerStatus()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->containerStatus:I

    return v0
.end method

.method public getContainerType()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->containerType:I

    return v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->mEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getFailedPasswordAttempts()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->failedPasswordAttempts:I

    return v0
.end method

.method public getFirmwareVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->mFirmwareVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getLockType()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->lockType:I

    return v0
.end method

.method public getMaximumTimeToLock()J
    .locals 2

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->maximumTimeToLock:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getPasswordExpirationDate()J
    .locals 2

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->passwordExpirationDate:J

    return-wide v0
.end method

.method public getPasswordExpirationTimeout()J
    .locals 2

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->passwordExpirationTimeout:J

    return-wide v0
.end method

.method public getPasswordHasExpired()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->passwordHasExpired:Z

    return v0
.end method

.method public getPasswordStateInfo()Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->passwordStateInfo:Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;

    return-object v0
.end method

.method public getPasswordStatus()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->passwordStatus:I

    return v0
.end method

.method public getSecurityIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->mSecurityIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getSecurityText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->mSecurityText:Ljava/lang/String;

    return-object v0
.end method

.method public getVerifyPwdOnlyOnChangeMode()Z
    .locals 1

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->verifyPwdOnlyOnModeChange:Z

    return v0
.end method

.method public setAdmin(I)V
    .locals 0
    .parameter "admin"

    .prologue
    .line 124
    iput p1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->admin:I

    .line 125
    return-void
.end method

.method public setContainerId(I)V
    .locals 0
    .parameter "container"

    .prologue
    .line 76
    iput p1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->containerId:I

    .line 77
    return-void
.end method

.method public setContainerLockOnScreenLock(Z)V
    .locals 0
    .parameter "lockSetting"

    .prologue
    .line 168
    iput-boolean p1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->containerLockOnScreenLock:Z

    .line 169
    return-void
.end method

.method public setContainerPackagesInfo(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 192
    .local p1, info:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;>;"
    iput-object p1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->pkgsInfo:Ljava/util/HashMap;

    .line 193
    return-void
.end method

.method public setContainerStatus(I)V
    .locals 0
    .parameter "containers"

    .prologue
    .line 116
    iput p1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->containerStatus:I

    .line 117
    return-void
.end method

.method public setContainerType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 140
    iput p1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->containerType:I

    .line 141
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .parameter "email"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->mEmail:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setFailedPasswordAttempts(I)V
    .locals 0
    .parameter "failedPasswordAttempts"

    .prologue
    .line 36
    iput p1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->failedPasswordAttempts:I

    .line 37
    return-void
.end method

.method public setFirmwareVersion(Ljava/lang/String;)V
    .locals 0
    .parameter "firmwareVersion"

    .prologue
    .line 180
    iput-object p1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->mFirmwareVersion:Ljava/lang/String;

    .line 181
    return-void
.end method

.method public setLockType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 132
    iput p1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->lockType:I

    .line 133
    return-void
.end method

.method public setMaximumTimeToLock(J)V
    .locals 0
    .parameter "maximumTimeToLock"

    .prologue
    .line 44
    iput-wide p1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->maximumTimeToLock:J

    .line 45
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->mName:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .parameter "password"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->mPassword:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setPasswordExpirationDate(J)V
    .locals 0
    .parameter "passwordExpirationDate"

    .prologue
    .line 60
    iput-wide p1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->passwordExpirationDate:J

    .line 61
    return-void
.end method

.method public setPasswordExpirationTimeout(J)V
    .locals 0
    .parameter "passwordExpirationTimeout"

    .prologue
    .line 68
    iput-wide p1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->passwordExpirationTimeout:J

    .line 69
    return-void
.end method

.method public setPasswordHasExpired(Z)V
    .locals 0
    .parameter "passwordHasExpired"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->passwordHasExpired:Z

    .line 53
    return-void
.end method

.method public setPasswordStateInfo(Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;)V
    .locals 0
    .parameter "info"

    .prologue
    .line 200
    iput-object p1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->passwordStateInfo:Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;

    .line 201
    return-void
.end method

.method public setPasswordStatus(I)V
    .locals 0
    .parameter "stat"

    .prologue
    .line 148
    iput p1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->passwordStatus:I

    .line 149
    return-void
.end method

.method public setSecurityIcon(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "securityIcon"

    .prologue
    .line 156
    iput-object p1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->mSecurityIcon:Landroid/graphics/Bitmap;

    .line 157
    return-void
.end method

.method public setSecurityText(Ljava/lang/String;)V
    .locals 0
    .parameter "securityText"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->mSecurityText:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setVerifyPwdOnlyOnChangeMode(Z)V
    .locals 0
    .parameter "toggleFlag"

    .prologue
    .line 184
    iput-boolean p1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->verifyPwdOnlyOnModeChange:Z

    .line 185
    return-void
.end method
