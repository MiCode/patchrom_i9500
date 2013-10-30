.class final Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo$1;
.super Ljava/lang/Object;
.source "SimeCandDetailInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;
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
        "Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;
    .locals 2
    .parameter "source"

    .prologue
    .line 133
    new-instance v0, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;-><init>(Landroid/os/Parcel;Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;
    .locals 1
    .parameter "size"

    .prologue
    .line 137
    new-array v0, p1, [Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo$1;->newArray(I)[Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;

    move-result-object v0

    return-object v0
.end method
