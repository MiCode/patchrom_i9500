.class Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;
.super Ljava/lang/Object;
.source "PackagePrefetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackagePrefetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PrefetchedPackage"
.end annotation


# instance fields
.field private mNeedToCollectCert:Z

.field private mPkg:Landroid/content/pm/PackageParser$Package;

.field final synthetic this$0:Lcom/android/server/pm/PackagePrefetcher;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackagePrefetcher;Landroid/content/pm/PackageParser$Package;Z)V
    .locals 1
    .parameter
    .parameter "pkg"
    .parameter "needToCollectCert"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;->this$0:Lcom/android/server/pm/PackagePrefetcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;->mPkg:Landroid/content/pm/PackageParser$Package;

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;->mNeedToCollectCert:Z

    .line 69
    iput-object p2, p0, Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;->mPkg:Landroid/content/pm/PackageParser$Package;

    .line 70
    iput-boolean p3, p0, Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;->mNeedToCollectCert:Z

    .line 71
    return-void
.end method


# virtual methods
.method public getNeedToCollectCert()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;->mNeedToCollectCert:Z

    return v0
.end method

.method public getPackage()Landroid/content/pm/PackageParser$Package;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;->mPkg:Landroid/content/pm/PackageParser$Package;

    return-object v0
.end method
