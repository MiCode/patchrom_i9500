.class final Lcom/sec/knox/container/EnterpriseContainerObjectParam$1;
.super Ljava/lang/Object;
.source "EnterpriseContainerObjectParam.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/knox/container/EnterpriseContainerObjectParam;
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
        "Lcom/sec/knox/container/EnterpriseContainerObjectParam;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sec/knox/container/EnterpriseContainerObjectParam;
    .locals 1
    .parameter "source"

    .prologue
    .line 32
    new-instance v0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;

    invoke-direct {v0, p1}, Lcom/sec/knox/container/EnterpriseContainerObjectParam;-><init>(Landroid/os/Parcel;)V

    .line 33
    .local v0, f:Lcom/sec/knox/container/EnterpriseContainerObjectParam;
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerObjectParam$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sec/knox/container/EnterpriseContainerObjectParam;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/sec/knox/container/EnterpriseContainerObjectParam;
    .locals 1
    .parameter "size"

    .prologue
    .line 38
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerObjectParam$1;->newArray(I)[Lcom/sec/knox/container/EnterpriseContainerObjectParam;

    move-result-object v0

    return-object v0
.end method
