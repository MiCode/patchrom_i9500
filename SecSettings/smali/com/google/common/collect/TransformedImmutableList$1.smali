.class Lcom/google/common/collect/TransformedImmutableList$1;
.super Lcom/google/common/collect/AbstractIndexedListIterator;
.source "TransformedImmutableList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/TransformedImmutableList;->listIterator(I)Lcom/google/common/collect/UnmodifiableListIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIndexedListIterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/TransformedImmutableList;


# direct methods
.method constructor <init>(Lcom/google/common/collect/TransformedImmutableList;II)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    .local p0, this:Lcom/google/common/collect/TransformedImmutableList$1;,"Lcom/google/common/collect/TransformedImmutableList.1;"
    iput-object p1, p0, Lcom/google/common/collect/TransformedImmutableList$1;->this$0:Lcom/google/common/collect/TransformedImmutableList;

    invoke-direct {p0, p2, p3}, Lcom/google/common/collect/AbstractIndexedListIterator;-><init>(II)V

    return-void
.end method


# virtual methods
.method protected get(I)Ljava/lang/Object;
    .locals 1
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 84
    .local p0, this:Lcom/google/common/collect/TransformedImmutableList$1;,"Lcom/google/common/collect/TransformedImmutableList.1;"
    iget-object v0, p0, Lcom/google/common/collect/TransformedImmutableList$1;->this$0:Lcom/google/common/collect/TransformedImmutableList;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/TransformedImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
