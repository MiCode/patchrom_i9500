.class Lcom/google/common/hash/HashCodes$IntHashCode;
.super Lcom/google/common/hash/HashCode;
.source "HashCodes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/HashCodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IntHashCode"
.end annotation


# instance fields
.field final hash:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .parameter "hash"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/common/hash/HashCode;-><init>()V

    .line 37
    iput p1, p0, Lcom/google/common/hash/HashCodes$IntHashCode;->hash:I

    .line 38
    return-void
.end method


# virtual methods
.method public asBytes()[B
    .locals 3

    .prologue
    .line 45
    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/common/hash/HashCodes$IntHashCode;->hash:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/common/hash/HashCodes$IntHashCode;->hash:I

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/common/hash/HashCodes$IntHashCode;->hash:I

    shr-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lcom/google/common/hash/HashCodes$IntHashCode;->hash:I

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public asInt()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/google/common/hash/HashCodes$IntHashCode;->hash:I

    return v0
.end method

.method public asLong()J
    .locals 2

    .prologue
    .line 57
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "this HashCode only has 32 bits; cannot create a long"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bits()I
    .locals 1

    .prologue
    .line 41
    const/16 v0, 0x20

    return v0
.end method
