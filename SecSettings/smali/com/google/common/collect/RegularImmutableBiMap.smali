.class Lcom/google/common/collect/RegularImmutableBiMap;
.super Lcom/google/common/collect/ImmutableBiMap;
.source "RegularImmutableBiMap.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableBiMap",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final transient delegate:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final transient inverse:Lcom/google/common/collect/ImmutableBiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableBiMap",
            "<TV;TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, this:Lcom/google/common/collect/RegularImmutableBiMap;,"Lcom/google/common/collect/RegularImmutableBiMap<TK;TV;>;"
    .local p1, delegate:Lcom/google/common/collect/ImmutableMap;,"Lcom/google/common/collect/ImmutableMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableBiMap;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableBiMap;->delegate:Lcom/google/common/collect/ImmutableMap;

    .line 35
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    .line 36
    .local v1, builder:Lcom/google/common/collect/ImmutableMap$Builder;,"Lcom/google/common/collect/ImmutableMap$Builder<TV;TK;>;"
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableMap;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 37
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    goto :goto_0

    .line 39
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    :cond_0
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    .line 40
    .local v0, backwardMap:Lcom/google/common/collect/ImmutableMap;,"Lcom/google/common/collect/ImmutableMap<TV;TK;>;"
    new-instance v4, Lcom/google/common/collect/RegularImmutableBiMap;

    invoke-direct {v4, v0, p0}, Lcom/google/common/collect/RegularImmutableBiMap;-><init>(Lcom/google/common/collect/ImmutableMap;Lcom/google/common/collect/ImmutableBiMap;)V

    iput-object v4, p0, Lcom/google/common/collect/RegularImmutableBiMap;->inverse:Lcom/google/common/collect/ImmutableBiMap;

    .line 41
    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/ImmutableMap;Lcom/google/common/collect/ImmutableBiMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableMap",
            "<TK;TV;>;",
            "Lcom/google/common/collect/ImmutableBiMap",
            "<TV;TK;>;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, this:Lcom/google/common/collect/RegularImmutableBiMap;,"Lcom/google/common/collect/RegularImmutableBiMap<TK;TV;>;"
    .local p1, delegate:Lcom/google/common/collect/ImmutableMap;,"Lcom/google/common/collect/ImmutableMap<TK;TV;>;"
    .local p2, inverse:Lcom/google/common/collect/ImmutableBiMap;,"Lcom/google/common/collect/ImmutableBiMap<TV;TK;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableBiMap;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableBiMap;->delegate:Lcom/google/common/collect/ImmutableMap;

    .line 46
    iput-object p2, p0, Lcom/google/common/collect/RegularImmutableBiMap;->inverse:Lcom/google/common/collect/ImmutableBiMap;

    .line 47
    return-void
.end method


# virtual methods
.method delegate()Lcom/google/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, this:Lcom/google/common/collect/RegularImmutableBiMap;,"Lcom/google/common/collect/RegularImmutableBiMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableBiMap;->delegate:Lcom/google/common/collect/ImmutableMap;

    return-object v0
.end method

.method public bridge synthetic inverse()Lcom/google/common/collect/BiMap;
    .locals 1

    .prologue
    .line 26
    .local p0, this:Lcom/google/common/collect/RegularImmutableBiMap;,"Lcom/google/common/collect/RegularImmutableBiMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableBiMap;->inverse()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    return-object v0
.end method

.method public inverse()Lcom/google/common/collect/ImmutableBiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableBiMap",
            "<TV;TK;>;"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, this:Lcom/google/common/collect/RegularImmutableBiMap;,"Lcom/google/common/collect/RegularImmutableBiMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableBiMap;->inverse:Lcom/google/common/collect/ImmutableBiMap;

    return-object v0
.end method

.method isPartialView()Z
    .locals 1

    .prologue
    .line 58
    .local p0, this:Lcom/google/common/collect/RegularImmutableBiMap;,"Lcom/google/common/collect/RegularImmutableBiMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableBiMap;->delegate:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->isPartialView()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableBiMap;->inverse:Lcom/google/common/collect/ImmutableBiMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableBiMap;->delegate()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->isPartialView()Z

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
