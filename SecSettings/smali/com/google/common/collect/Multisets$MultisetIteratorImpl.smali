.class final Lcom/google/common/collect/Multisets$MultisetIteratorImpl;
.super Ljava/lang/Object;
.source "Multisets.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Multisets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MultisetIteratorImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private canRemove:Z

.field private currentEntry:Lcom/google/common/collect/Multiset$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final entryIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;>;"
        }
    .end annotation
.end field

.field private laterCount:I

.field private final multiset:Lcom/google/common/collect/Multiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Multiset",
            "<TE;>;"
        }
    .end annotation
.end field

.field private totalCount:I


# direct methods
.method constructor <init>(Lcom/google/common/collect/Multiset;Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multiset",
            "<TE;>;",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;>;)V"
        }
    .end annotation

    .prologue
    .line 893
    .local p0, this:Lcom/google/common/collect/Multisets$MultisetIteratorImpl;,"Lcom/google/common/collect/Multisets$MultisetIteratorImpl<TE;>;"
    .local p1, multiset:Lcom/google/common/collect/Multiset;,"Lcom/google/common/collect/Multiset<TE;>;"
    .local p2, entryIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/common/collect/Multiset$Entry<TE;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 894
    iput-object p1, p0, Lcom/google/common/collect/Multisets$MultisetIteratorImpl;->multiset:Lcom/google/common/collect/Multiset;

    .line 895
    iput-object p2, p0, Lcom/google/common/collect/Multisets$MultisetIteratorImpl;->entryIterator:Ljava/util/Iterator;

    .line 896
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 900
    .local p0, this:Lcom/google/common/collect/Multisets$MultisetIteratorImpl;,"Lcom/google/common/collect/Multisets$MultisetIteratorImpl<TE;>;"
    iget v0, p0, Lcom/google/common/collect/Multisets$MultisetIteratorImpl;->laterCount:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/Multisets$MultisetIteratorImpl;->entryIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 905
    .local p0, this:Lcom/google/common/collect/Multisets$MultisetIteratorImpl;,"Lcom/google/common/collect/Multisets$MultisetIteratorImpl<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$MultisetIteratorImpl;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 906
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 908
    :cond_0
    iget v0, p0, Lcom/google/common/collect/Multisets$MultisetIteratorImpl;->laterCount:I

    if-nez v0, :cond_1

    .line 909
    iget-object v0, p0, Lcom/google/common/collect/Multisets$MultisetIteratorImpl;->entryIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multiset$Entry;

    iput-object v0, p0, Lcom/google/common/collect/Multisets$MultisetIteratorImpl;->currentEntry:Lcom/google/common/collect/Multiset$Entry;

    .line 910
    iget-object v0, p0, Lcom/google/common/collect/Multisets$MultisetIteratorImpl;->currentEntry:Lcom/google/common/collect/Multiset$Entry;

    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/Multisets$MultisetIteratorImpl;->laterCount:I

    iput v0, p0, Lcom/google/common/collect/Multisets$MultisetIteratorImpl;->totalCount:I

    .line 912
    :cond_1
    iget v0, p0, Lcom/google/common/collect/Multisets$MultisetIteratorImpl;->laterCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/Multisets$MultisetIteratorImpl;->laterCount:I

    .line 913
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/collect/Multisets$MultisetIteratorImpl;->canRemove:Z

    .line 914
    iget-object v0, p0, Lcom/google/common/collect/Multisets$MultisetIteratorImpl;->currentEntry:Lcom/google/common/collect/Multiset$Entry;

    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 919
    .local p0, this:Lcom/google/common/collect/Multisets$MultisetIteratorImpl;,"Lcom/google/common/collect/Multisets$MultisetIteratorImpl<TE;>;"
    iget-boolean v0, p0, Lcom/google/common/collect/Multisets$MultisetIteratorImpl;->canRemove:Z

    const-string v1, "no calls to next() since the last call to remove()"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 921
    iget v0, p0, Lcom/google/common/collect/Multisets$MultisetIteratorImpl;->totalCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 922
    iget-object v0, p0, Lcom/google/common/collect/Multisets$MultisetIteratorImpl;->entryIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 926
    :goto_0
    iget v0, p0, Lcom/google/common/collect/Multisets$MultisetIteratorImpl;->totalCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/Multisets$MultisetIteratorImpl;->totalCount:I

    .line 927
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/collect/Multisets$MultisetIteratorImpl;->canRemove:Z

    .line 928
    return-void

    .line 924
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/Multisets$MultisetIteratorImpl;->multiset:Lcom/google/common/collect/Multiset;

    iget-object v1, p0, Lcom/google/common/collect/Multisets$MultisetIteratorImpl;->currentEntry:Lcom/google/common/collect/Multiset$Entry;

    invoke-interface {v1}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/collect/Multiset;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
