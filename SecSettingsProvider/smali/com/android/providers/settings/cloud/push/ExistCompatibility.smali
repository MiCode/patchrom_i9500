.class public Lcom/android/providers/settings/cloud/push/ExistCompatibility;
.super Ljava/lang/Object;
.source "ExistCompatibility.java"


# instance fields
.field private mMessage:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field private mPrecise:Z

.field private mTicker:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mVersions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/providers/settings/cloud/push/ExistCompatibility;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/providers/settings/cloud/push/ExistCompatibility;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getTicker()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/providers/settings/cloud/push/ExistCompatibility;->mTicker:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/providers/settings/cloud/push/ExistCompatibility;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getVersions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/providers/settings/cloud/push/ExistCompatibility;->mVersions:Ljava/util/Set;

    return-object v0
.end method

.method public isPrecise()Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/providers/settings/cloud/push/ExistCompatibility;->mPrecise:Z

    return v0
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/providers/settings/cloud/push/ExistCompatibility;->mMessage:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .parameter "pkgName"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/android/providers/settings/cloud/push/ExistCompatibility;->mPackageName:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setPrecise(Z)V
    .locals 0
    .parameter "precise"

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/android/providers/settings/cloud/push/ExistCompatibility;->mPrecise:Z

    .line 57
    return-void
.end method

.method public setTicker(Ljava/lang/String;)V
    .locals 0
    .parameter "ticker"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/providers/settings/cloud/push/ExistCompatibility;->mTicker:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/providers/settings/cloud/push/ExistCompatibility;->mTitle:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setVersions(Ljava/util/Set;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p1, versions:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/android/providers/settings/cloud/push/ExistCompatibility;->mVersions:Ljava/util/Set;

    .line 65
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ExistCompatibility : PackageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/settings/cloud/push/ExistCompatibility;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Message = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/settings/cloud/push/ExistCompatibility;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Title = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/settings/cloud/push/ExistCompatibility;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Tricker = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/settings/cloud/push/ExistCompatibility;->mTicker:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Precise = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/providers/settings/cloud/push/ExistCompatibility;->mPrecise:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Versions = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/settings/cloud/push/ExistCompatibility;->mVersions:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
