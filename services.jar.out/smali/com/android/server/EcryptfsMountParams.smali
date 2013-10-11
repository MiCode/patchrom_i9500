.class public Lcom/android/server/EcryptfsMountParams;
.super Ljava/lang/Object;
.source "EcryptfsMountParams.java"


# instance fields
.field public callback:Landroid/dirEncryption/IDirEncryptionManagerCallBack;

.field public containerId:I

.field public excludeMediaTypes:I

.field public key:[B

.field public mountAndEncrypt:Z

.field public mountPath:Ljava/lang/String;

.field public newPassword:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public sourcePath:Ljava/lang/String;

.field public uninstallOrStop:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BZIILandroid/dirEncryption/IDirEncryptionManagerCallBack;Ljava/lang/String;I)V
    .locals 0
    .parameter "sourcePath"
    .parameter "mountPath"
    .parameter "password"
    .parameter "key"
    .parameter "mountAndEncrypt"
    .parameter "excludeMediaTypes"
    .parameter "containerId"
    .parameter "callback"
    .parameter "newPassword"
    .parameter "uninstallOrStop"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p2, p0, Lcom/android/server/EcryptfsMountParams;->mountPath:Ljava/lang/String;

    .line 28
    iput-object p1, p0, Lcom/android/server/EcryptfsMountParams;->sourcePath:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcom/android/server/EcryptfsMountParams;->password:Ljava/lang/String;

    .line 30
    iput-object p4, p0, Lcom/android/server/EcryptfsMountParams;->key:[B

    .line 31
    iput-boolean p5, p0, Lcom/android/server/EcryptfsMountParams;->mountAndEncrypt:Z

    .line 32
    iput p6, p0, Lcom/android/server/EcryptfsMountParams;->excludeMediaTypes:I

    .line 33
    iput p7, p0, Lcom/android/server/EcryptfsMountParams;->containerId:I

    .line 34
    iput-object p8, p0, Lcom/android/server/EcryptfsMountParams;->callback:Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    .line 35
    iput-object p9, p0, Lcom/android/server/EcryptfsMountParams;->newPassword:Ljava/lang/String;

    .line 36
    iput p10, p0, Lcom/android/server/EcryptfsMountParams;->uninstallOrStop:I

    .line 37
    return-void
.end method
