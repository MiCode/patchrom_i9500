.class Lcom/google/common/collect/LinkedListMultimap$MultisetView$2$1;
.super Ljava/lang/Object;
.source "LinkedListMultimap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/LinkedListMultimap$MultisetView$2;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/google/common/collect/Multiset$Entry",
        "<TK;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/google/common/collect/LinkedListMultimap$MultisetView$2;

.field final synthetic val$keyIterator:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lcom/google/common/collect/LinkedListMultimap$MultisetView$2;Ljava/util/Iterator;)V
    .locals 0

    .prologue
    .line 790
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$MultisetView$2$1;,"Lcom/google/common/collect/LinkedListMultimap$MultisetView$2.1;"
    iput-object p1, p0, Lcom/google/common/collect/LinkedListMultimap$MultisetView$2$1;->this$2:Lcom/google/common/collect/LinkedListMultimap$MultisetView$2;

    iput-object p2, p0, Lcom/google/common/collect/LinkedListMultimap$MultisetView$2$1;->val$keyIterator:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 793
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$MultisetView$2$1;,"Lcom/google/common/collect/LinkedListMultimap$MultisetView$2.1;"
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$MultisetView$2$1;->val$keyIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Lcom/google/common/collect/Multiset$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 797
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$MultisetView$2$1;,"Lcom/google/common/collect/LinkedListMultimap$MultisetView$2.1;"
    iget-object v1, p0, Lcom/google/common/collect/LinkedListMultimap$MultisetView$2$1;->val$keyIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 798
    .local v0, key:Ljava/lang/Object;,"TK;"
    new-instance v1, Lcom/google/common/collect/LinkedListMultimap$MultisetView$2$1$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/LinkedListMultimap$MultisetView$2$1$1;-><init>(Lcom/google/common/collect/LinkedListMultimap$MultisetView$2$1;Ljava/lang/Object;)V

    return-object v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 790
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$MultisetView$2$1;,"Lcom/google/common/collect/LinkedListMultimap$MultisetView$2.1;"
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap$MultisetView$2$1;->next()Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 811
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$MultisetView$2$1;,"Lcom/google/common/collect/LinkedListMultimap$MultisetView$2.1;"
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$MultisetView$2$1;->val$keyIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 812
    return-void
.end method
