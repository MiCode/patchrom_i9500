.class Lcom/google/common/collect/AbstractMultimap$SortedAsMap;
.super Lcom/google/common/collect/AbstractMultimap$AsMap;
.source "AbstractMultimap.java"

# interfaces
.implements Ljava/util/SortedMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/AbstractMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SortedAsMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractMultimap",
        "<TK;TV;>.AsMap;",
        "Ljava/util/SortedMap",
        "<TK;",
        "Ljava/util/Collection",
        "<TV;>;>;"
    }
.end annotation


# instance fields
.field sortedKeySet:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet",
            "<TK;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/collect/AbstractMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractMultimap;Ljava/util/SortedMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 1300
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$SortedAsMap;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.SortedAsMap;"
    .local p2, submap:Ljava/util/SortedMap;,"Ljava/util/SortedMap<TK;Ljava/util/Collection<TV;>;>;"
    iput-object p1, p0, Lcom/google/common/collect/AbstractMultimap$SortedAsMap;->this$0:Lcom/google/common/collect/AbstractMultimap;

    .line 1301
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/AbstractMultimap$AsMap;-><init>(Lcom/google/common/collect/AbstractMultimap;Ljava/util/Map;)V

    .line 1302
    return-void
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation

    .prologue
    .line 1310
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$SortedAsMap;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.SortedAsMap;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$SortedAsMap;->sortedMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 1315
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$SortedAsMap;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.SortedAsMap;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$SortedAsMap;->sortedMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1325
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$SortedAsMap;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.SortedAsMap;"
    .local p1, toKey:Ljava/lang/Object;,"TK;"
    new-instance v0, Lcom/google/common/collect/AbstractMultimap$SortedAsMap;

    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$SortedAsMap;->this$0:Lcom/google/common/collect/AbstractMultimap;

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$SortedAsMap;->sortedMap()Ljava/util/SortedMap;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/AbstractMultimap$SortedAsMap;-><init>(Lcom/google/common/collect/AbstractMultimap;Ljava/util/SortedMap;)V

    return-object v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 1298
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$SortedAsMap;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.SortedAsMap;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$SortedAsMap;->keySet()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public keySet()Ljava/util/SortedSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 1343
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$SortedAsMap;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.SortedAsMap;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$SortedAsMap;->sortedKeySet:Ljava/util/SortedSet;

    .line 1344
    .local v0, result:Ljava/util/SortedSet;,"Ljava/util/SortedSet<TK;>;"
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/AbstractMultimap$SortedKeySet;

    .end local v0           #result:Ljava/util/SortedSet;,"Ljava/util/SortedSet<TK;>;"
    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$SortedAsMap;->this$0:Lcom/google/common/collect/AbstractMultimap;

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$SortedAsMap;->sortedMap()Ljava/util/SortedMap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/AbstractMultimap$SortedKeySet;-><init>(Lcom/google/common/collect/AbstractMultimap;Ljava/util/SortedMap;)V

    iput-object v0, p0, Lcom/google/common/collect/AbstractMultimap$SortedAsMap;->sortedKeySet:Ljava/util/SortedSet;

    :cond_0
    return-object v0
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 1320
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$SortedAsMap;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.SortedAsMap;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$SortedAsMap;->sortedMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method sortedMap()Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1305
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$SortedAsMap;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.SortedAsMap;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$AsMap;->submap:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/SortedMap",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1330
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$SortedAsMap;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.SortedAsMap;"
    .local p1, fromKey:Ljava/lang/Object;,"TK;"
    .local p2, toKey:Ljava/lang/Object;,"TK;"
    new-instance v0, Lcom/google/common/collect/AbstractMultimap$SortedAsMap;

    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$SortedAsMap;->this$0:Lcom/google/common/collect/AbstractMultimap;

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$SortedAsMap;->sortedMap()Ljava/util/SortedMap;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/AbstractMultimap$SortedAsMap;-><init>(Lcom/google/common/collect/AbstractMultimap;Ljava/util/SortedMap;)V

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1335
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$SortedAsMap;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.SortedAsMap;"
    .local p1, fromKey:Ljava/lang/Object;,"TK;"
    new-instance v0, Lcom/google/common/collect/AbstractMultimap$SortedAsMap;

    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$SortedAsMap;->this$0:Lcom/google/common/collect/AbstractMultimap;

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$SortedAsMap;->sortedMap()Ljava/util/SortedMap;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/AbstractMultimap$SortedAsMap;-><init>(Lcom/google/common/collect/AbstractMultimap;Ljava/util/SortedMap;)V

    return-object v0
.end method
