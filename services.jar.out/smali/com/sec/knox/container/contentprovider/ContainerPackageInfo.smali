.class public Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;
.super Ljava/lang/Object;
.source "ContainerPackageInfo.java"


# instance fields
.field private appPackage:Ljava/lang/String;

.field private containerId:I

.field private installationSource:I

.field private signature:Ljava/lang/String;

.field private uid:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput v0, p0, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->containerId:I

    .line 11
    iput-object v1, p0, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->appPackage:Ljava/lang/String;

    .line 12
    iput-object v1, p0, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->signature:Ljava/lang/String;

    .line 13
    iput v0, p0, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->installationSource:I

    .line 14
    iput v0, p0, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->uid:I

    return-void
.end method


# virtual methods
.method public getAppPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->appPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getContainerId()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->containerId:I

    return v0
.end method

.method public getInstallationSource()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->installationSource:I

    return v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->uid:I

    return v0
.end method

.method public setAppPackage(Ljava/lang/String;)V
    .locals 0
    .parameter "appPackage"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->appPackage:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setContainerId(I)V
    .locals 0
    .parameter "containerId"

    .prologue
    .line 21
    iput p1, p0, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->containerId:I

    .line 22
    return-void
.end method

.method public setInstallationSource(I)V
    .locals 0
    .parameter "installationSource"

    .prologue
    .line 39
    iput p1, p0, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->installationSource:I

    .line 40
    return-void
.end method

.method public setSignature(Ljava/lang/String;)V
    .locals 0
    .parameter "signature"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->signature:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setUid(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 45
    iput p1, p0, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->uid:I

    .line 46
    return-void
.end method
