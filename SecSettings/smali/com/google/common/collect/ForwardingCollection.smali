.class public abstract Lcom/google/common/collect/ForwardingCollection;
.super Lcom/google/common/collect/ForwardingObject;
.source "ForwardingCollection.java"

# interfaces
.implements Ljava/util/Collection;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ForwardingObject;",
        "Ljava/util/Collection",
        "<TE;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 54
    .local p0, this:Lcom/google/common/collect/ForwardingCollection;,"Lcom/google/common/collect/ForwardingCollection<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ForwardingObject;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, this:Lcom/google/common/collect/ForwardingCollection;,"Lcom/google/common/collect/ForwardingCollection<TE;>;"
    .local p1, element:Ljava/lang/Object;,"TE;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingCollection;->delegate()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, this:Lcom/google/common/collect/ForwardingCollection;,"Lcom/google/common/collect/ForwardingCollection<TE;>;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingCollection;->delegate()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 110
    .local p0, this:Lcom/google/common/collect/ForwardingCollection;,"Lcom/google/common/collect/ForwardingCollection<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingCollection;->delegate()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 111
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "object"

    .prologue
    .line 80
    .local p0, this:Lcom/google/common/collect/ForwardingCollection;,"Lcom/google/common/collect/ForwardingCollection<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingCollection;->delegate()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, this:Lcom/google/common/collect/ForwardingCollection;,"Lcom/google/common/collect/ForwardingCollection<TE;>;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingCollection;->delegate()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 48
    .local p0, this:Lcom/google/common/collect/ForwardingCollection;,"Lcom/google/common/collect/ForwardingCollection<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingCollection;->delegate()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected abstract delegate()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TE;>;"
        }
    .end annotation
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 75
    .local p0, this:Lcom/google/common/collect/ForwardingCollection;,"Lcom/google/common/collect/ForwardingCollection<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingCollection;->delegate()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, this:Lcom/google/common/collect/ForwardingCollection;,"Lcom/google/common/collect/ForwardingCollection<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingCollection;->delegate()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .parameter "object"

    .prologue
    .line 90
    .local p0, this:Lcom/google/common/collect/ForwardingCollection;,"Lcom/google/common/collect/ForwardingCollection<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingCollection;->delegate()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, this:Lcom/google/common/collect/ForwardingCollection;,"Lcom/google/common/collect/ForwardingCollection<TE;>;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingCollection;->delegate()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 105
    .local p0, this:Lcom/google/common/collect/ForwardingCollection;,"Lcom/google/common/collect/ForwardingCollection<TE;>;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingCollection;->delegate()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 65
    .local p0, this:Lcom/google/common/collect/ForwardingCollection;,"Lcom/google/common/collect/ForwardingCollection<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingCollection;->delegate()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method protected standardAddAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 158
    .local p0, this:Lcom/google/common/collect/ForwardingCollection;,"Lcom/google/common/collect/ForwardingCollection<TE;>;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/common/collect/Iterators;->addAll(Ljava/util/Collection;Ljava/util/Iterator;)Z

    move-result v0

    return v0
.end method

.method protected standardClear()V
    .locals 2
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .prologue
    .line 213
    .local p0, this:Lcom/google/common/collect/ForwardingCollection;,"Lcom/google/common/collect/ForwardingCollection<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 214
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<TE;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 215
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 216
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 218
    :cond_0
    return-void
.end method

.method protected standardContains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "object"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .prologue
    .line 131
    .local p0, this:Lcom/google/common/collect/ForwardingCollection;,"Lcom/google/common/collect/ForwardingCollection<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Iterators;->contains(Ljava/util/Iterator;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected standardContainsAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 142
    .local p0, this:Lcom/google/common/collect/ForwardingCollection;,"Lcom/google/common/collect/ForwardingCollection<TE;>;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 143
    .local v1, o:Ljava/lang/Object;
    invoke-virtual {p0, v1}, Lcom/google/common/collect/ForwardingCollection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 144
    const/4 v2, 0x0

    .line 147
    .end local v1           #o:Ljava/lang/Object;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method protected standardIsEmpty()Z
    .locals 1
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .prologue
    .line 229
    .local p0, this:Lcom/google/common/collect/ForwardingCollection;,"Lcom/google/common/collect/ForwardingCollection<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected standardRemove(Ljava/lang/Object;)Z
    .locals 2
    .parameter "object"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .prologue
    .line 170
    .local p0, this:Lcom/google/common/collect/ForwardingCollection;,"Lcom/google/common/collect/ForwardingCollection<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 171
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<TE;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 172
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 174
    const/4 v1, 0x1

    .line 177
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected standardRemoveAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 189
    .local p0, this:Lcom/google/common/collect/ForwardingCollection;,"Lcom/google/common/collect/ForwardingCollection<TE;>;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Iterators;->removeAll(Ljava/util/Iterator;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method protected standardRetainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 201
    .local p0, this:Lcom/google/common/collect/ForwardingCollection;,"Lcom/google/common/collect/ForwardingCollection<TE;>;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Iterators;->retainAll(Ljava/util/Iterator;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method protected standardToArray()[Ljava/lang/Object;
    .locals 2
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .prologue
    .line 251
    .local p0, this:Lcom/google/common/collect/ForwardingCollection;,"Lcom/google/common/collect/ForwardingCollection<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingCollection;->size()I

    move-result v1

    new-array v0, v1, [Ljava/lang/Object;

    .line 252
    .local v0, newArray:[Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lcom/google/common/collect/ForwardingCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method protected standardToArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 263
    .local p0, this:Lcom/google/common/collect/ForwardingCollection;,"Lcom/google/common/collect/ForwardingCollection<TE;>;"
    .local p1, array:[Ljava/lang/Object;,"[TT;"
    invoke-static {p0, p1}, Lcom/google/common/collect/ObjectArrays;->toArrayImpl(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected standardToString()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .prologue
    .line 240
    .local p0, this:Lcom/google/common/collect/ForwardingCollection;,"Lcom/google/common/collect/ForwardingCollection<TE;>;"
    invoke-static {p0}, Lcom/google/common/collect/Collections2;->toStringImpl(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 115
    .local p0, this:Lcom/google/common/collect/ForwardingCollection;,"Lcom/google/common/collect/ForwardingCollection<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingCollection;->delegate()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 120
    .local p0, this:Lcom/google/common/collect/ForwardingCollection;,"Lcom/google/common/collect/ForwardingCollection<TE;>;"
    .local p1, array:[Ljava/lang/Object;,"[TT;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingCollection;->delegate()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
