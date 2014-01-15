.class final Lcom/google/common/collect/ImmutableAsList;
.super Lcom/google/common/collect/RegularImmutableList;
.source "ImmutableAsList.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/ImmutableAsList$SerializedForm;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/RegularImmutableList",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final transient collection:Lcom/google/common/collect/ImmutableCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableCollection",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>([Ljava/lang/Object;Lcom/google/common/collect/ImmutableCollection;)V
    .locals 2
    .parameter "array"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "Lcom/google/common/collect/ImmutableCollection",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, this:Lcom/google/common/collect/ImmutableAsList;,"Lcom/google/common/collect/ImmutableAsList<TE;>;"
    .local p2, collection:Lcom/google/common/collect/ImmutableCollection;,"Lcom/google/common/collect/ImmutableCollection<TE;>;"
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/common/collect/RegularImmutableList;-><init>([Ljava/lang/Object;II)V

    .line 38
    iput-object p2, p0, Lcom/google/common/collect/ImmutableAsList;->collection:Lcom/google/common/collect/ImmutableCollection;

    .line 39
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .prologue
    .line 63
    .local p0, this:Lcom/google/common/collect/ImmutableAsList;,"Lcom/google/common/collect/ImmutableAsList<TE;>;"
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Use SerializedForm"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "target"

    .prologue
    .line 44
    .local p0, this:Lcom/google/common/collect/ImmutableAsList;,"Lcom/google/common/collect/ImmutableAsList<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableAsList;->collection:Lcom/google/common/collect/ImmutableCollection;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 67
    .local p0, this:Lcom/google/common/collect/ImmutableAsList;,"Lcom/google/common/collect/ImmutableAsList<TE;>;"
    new-instance v0, Lcom/google/common/collect/ImmutableAsList$SerializedForm;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableAsList;->collection:Lcom/google/common/collect/ImmutableCollection;

    invoke-direct {v0, v1}, Lcom/google/common/collect/ImmutableAsList$SerializedForm;-><init>(Lcom/google/common/collect/ImmutableCollection;)V

    return-object v0
.end method
