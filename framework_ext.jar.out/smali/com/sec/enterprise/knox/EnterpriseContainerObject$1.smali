.class final Lcom/sec/enterprise/knox/EnterpriseContainerObject$1;
.super Ljava/lang/Object;
.source "EnterpriseContainerObject.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/enterprise/knox/EnterpriseContainerObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/sec/enterprise/knox/EnterpriseContainerObject;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    .locals 1
    .parameter "source"

    .prologue
    .line 27
    new-instance v0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;

    invoke-direct {v0, p1}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;-><init>(Landroid/os/Parcel;)V

    .line 28
    .local v0, f:Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/sec/enterprise/knox/EnterpriseContainerObject$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sec/enterprise/knox/EnterpriseContainerObject;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    .locals 2
    .parameter "size"

    .prologue
    .line 33
    const-string v0, "EnterpriseContainerObject"

    const-string v1, "EnterpriseContainerObject[] array to be created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    new-array v0, p1, [Lcom/sec/enterprise/knox/EnterpriseContainerObject;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/sec/enterprise/knox/EnterpriseContainerObject$1;->newArray(I)[Lcom/sec/enterprise/knox/EnterpriseContainerObject;

    move-result-object v0

    return-object v0
.end method
