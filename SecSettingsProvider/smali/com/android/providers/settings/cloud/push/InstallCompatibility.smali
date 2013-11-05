.class public Lcom/android/providers/settings/cloud/push/InstallCompatibility;
.super Ljava/lang/Object;
.source "InstallCompatibility.java"


# instance fields
.field private mMessage:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field private mPrecise:Z

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
    .line 26
    iget-object v0, p0, Lcom/android/providers/settings/cloud/push/InstallCompatibility;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/providers/settings/cloud/push/InstallCompatibility;->mPackageName:Ljava/lang/String;

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
    .line 42
    iget-object v0, p0, Lcom/android/providers/settings/cloud/push/InstallCompatibility;->mVersions:Ljava/util/Set;

    return-object v0
.end method

.method public isPrecise()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/android/providers/settings/cloud/push/InstallCompatibility;->mPrecise:Z

    return v0
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/android/providers/settings/cloud/push/InstallCompatibility;->mMessage:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .parameter "pkgName"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/android/providers/settings/cloud/push/InstallCompatibility;->mPackageName:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setPrecise(Z)V
    .locals 0
    .parameter "precise"

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/android/providers/settings/cloud/push/InstallCompatibility;->mPrecise:Z

    .line 39
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
    .line 46
    .local p1, versions:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/android/providers/settings/cloud/push/InstallCompatibility;->mVersions:Ljava/util/Set;

    .line 47
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InstallCompatibility : PackageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/settings/cloud/push/InstallCompatibility;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Message = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/settings/cloud/push/InstallCompatibility;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Precise = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/providers/settings/cloud/push/InstallCompatibility;->mPrecise:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Versions = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/settings/cloud/push/InstallCompatibility;->mVersions:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
