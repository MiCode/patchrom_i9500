.class final Lcom/sec/knox/container/signapk/CertSignature$1;
.super Ljava/lang/Object;
.source "CertSignature.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/knox/container/signapk/CertSignature;
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
        "Lcom/sec/knox/container/signapk/CertSignature;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sec/knox/container/signapk/CertSignature;
    .locals 2
    .parameter "source"

    .prologue
    .line 196
    new-instance v0, Lcom/sec/knox/container/signapk/CertSignature;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/sec/knox/container/signapk/CertSignature;-><init>(Landroid/os/Parcel;Lcom/sec/knox/container/signapk/CertSignature$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 194
    invoke-virtual {p0, p1}, Lcom/sec/knox/container/signapk/CertSignature$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sec/knox/container/signapk/CertSignature;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/sec/knox/container/signapk/CertSignature;
    .locals 1
    .parameter "size"

    .prologue
    .line 200
    new-array v0, p1, [Lcom/sec/knox/container/signapk/CertSignature;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 194
    invoke-virtual {p0, p1}, Lcom/sec/knox/container/signapk/CertSignature$1;->newArray(I)[Lcom/sec/knox/container/signapk/CertSignature;

    move-result-object v0

    return-object v0
.end method
