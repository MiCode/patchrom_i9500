.class Lcom/google/common/collect/AbstractMultimap$WrappedList$WrappedListIterator;
.super Lcom/google/common/collect/AbstractMultimap$WrappedCollection$WrappedIterator;
.source "AbstractMultimap.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/AbstractMultimap$WrappedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WrappedListIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractMultimap",
        "<TK;TV;>.WrappedCollection.WrappedIterator;",
        "Ljava/util/ListIterator",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/collect/AbstractMultimap$WrappedList;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractMultimap$WrappedList;)V
    .locals 0

    .prologue
    .line 803
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$WrappedList$WrappedListIterator;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedList.WrappedListIterator;"
    iput-object p1, p0, Lcom/google/common/collect/AbstractMultimap$WrappedList$WrappedListIterator;->this$1:Lcom/google/common/collect/AbstractMultimap$WrappedList;

    invoke-direct {p0, p1}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection$WrappedIterator;-><init>(Lcom/google/common/collect/AbstractMultimap$WrappedCollection;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/common/collect/AbstractMultimap$WrappedList;I)V
    .locals 1
    .parameter
    .parameter "index"

    .prologue
    .line 805
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$WrappedList$WrappedListIterator;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedList.WrappedListIterator;"
    iput-object p1, p0, Lcom/google/common/collect/AbstractMultimap$WrappedList$WrappedListIterator;->this$1:Lcom/google/common/collect/AbstractMultimap$WrappedList;

    .line 806
    invoke-virtual {p1}, Lcom/google/common/collect/AbstractMultimap$WrappedList;->getListDelegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection$WrappedIterator;-><init>(Lcom/google/common/collect/AbstractMultimap$WrappedCollection;Ljava/util/Iterator;)V

    .line 807
    return-void
.end method

.method private getDelegateListIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 810
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$WrappedList$WrappedListIterator;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedList.WrappedListIterator;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection$WrappedIterator;->getDelegateIterator()Ljava/util/Iterator;

    move-result-object v0

    check-cast v0, Ljava/util/ListIterator;

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 840
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$WrappedList$WrappedListIterator;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedList.WrappedListIterator;"
    .local p1, value:Ljava/lang/Object;,"TV;"
    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$WrappedList$WrappedListIterator;->this$1:Lcom/google/common/collect/AbstractMultimap$WrappedList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    .line 841
    .local v0, wasEmpty:Z
    invoke-direct {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedList$WrappedListIterator;->getDelegateListIterator()Ljava/util/ListIterator;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 842
    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$WrappedList$WrappedListIterator;->this$1:Lcom/google/common/collect/AbstractMultimap$WrappedList;

    iget-object v1, v1, Lcom/google/common/collect/AbstractMultimap$WrappedList;->this$0:Lcom/google/common/collect/AbstractMultimap;

    invoke-static {v1}, Lcom/google/common/collect/AbstractMultimap;->access$208(Lcom/google/common/collect/AbstractMultimap;)I

    .line 843
    if-eqz v0, :cond_0

    .line 844
    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$WrappedList$WrappedListIterator;->this$1:Lcom/google/common/collect/AbstractMultimap$WrappedList;

    invoke-virtual {v1}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->addToMap()V

    .line 846
    :cond_0
    return-void
.end method

.method public hasPrevious()Z
    .locals 1

    .prologue
    .line 815
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$WrappedList$WrappedListIterator;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedList.WrappedListIterator;"
    invoke-direct {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedList$WrappedListIterator;->getDelegateListIterator()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public nextIndex()I
    .locals 1

    .prologue
    .line 825
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$WrappedList$WrappedListIterator;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedList.WrappedListIterator;"
    invoke-direct {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedList$WrappedListIterator;->getDelegateListIterator()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 820
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$WrappedList$WrappedListIterator;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedList.WrappedListIterator;"
    invoke-direct {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedList$WrappedListIterator;->getDelegateListIterator()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public previousIndex()I
    .locals 1

    .prologue
    .line 830
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$WrappedList$WrappedListIterator;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedList.WrappedListIterator;"
    invoke-direct {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedList$WrappedListIterator;->getDelegateListIterator()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    return v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 835
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$WrappedList$WrappedListIterator;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedList.WrappedListIterator;"
    .local p1, value:Ljava/lang/Object;,"TV;"
    invoke-direct {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedList$WrappedListIterator;->getDelegateListIterator()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 836
    return-void
.end method
