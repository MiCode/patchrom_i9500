.class Lcom/google/common/collect/AbstractBiMap$KeySet$1;
.super Ljava/lang/Object;
.source "AbstractBiMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/AbstractBiMap$KeySet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TK;>;"
    }
.end annotation


# instance fields
.field entry:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/google/common/collect/AbstractBiMap$KeySet;

.field final synthetic val$iterator:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractBiMap$KeySet;Ljava/util/Iterator;)V
    .locals 0

    .prologue
    .line 195
    .local p0, this:Lcom/google/common/collect/AbstractBiMap$KeySet$1;,"Lcom/google/common/collect/AbstractBiMap$KeySet.1;"
    iput-object p1, p0, Lcom/google/common/collect/AbstractBiMap$KeySet$1;->this$1:Lcom/google/common/collect/AbstractBiMap$KeySet;

    iput-object p2, p0, Lcom/google/common/collect/AbstractBiMap$KeySet$1;->val$iterator:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 200
    .local p0, this:Lcom/google/common/collect/AbstractBiMap$KeySet$1;,"Lcom/google/common/collect/AbstractBiMap$KeySet.1;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap$KeySet$1;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 204
    .local p0, this:Lcom/google/common/collect/AbstractBiMap$KeySet$1;,"Lcom/google/common/collect/AbstractBiMap$KeySet.1;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap$KeySet$1;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lcom/google/common/collect/AbstractBiMap$KeySet$1;->entry:Ljava/util/Map$Entry;

    .line 205
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap$KeySet$1;->entry:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 209
    .local p0, this:Lcom/google/common/collect/AbstractBiMap$KeySet$1;,"Lcom/google/common/collect/AbstractBiMap$KeySet.1;"
    iget-object v1, p0, Lcom/google/common/collect/AbstractBiMap$KeySet$1;->entry:Ljava/util/Map$Entry;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 210
    iget-object v1, p0, Lcom/google/common/collect/AbstractBiMap$KeySet$1;->entry:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 211
    .local v0, value:Ljava/lang/Object;,"TV;"
    iget-object v1, p0, Lcom/google/common/collect/AbstractBiMap$KeySet$1;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 212
    iget-object v1, p0, Lcom/google/common/collect/AbstractBiMap$KeySet$1;->this$1:Lcom/google/common/collect/AbstractBiMap$KeySet;

    iget-object v1, v1, Lcom/google/common/collect/AbstractBiMap$KeySet;->this$0:Lcom/google/common/collect/AbstractBiMap;

    #calls: Lcom/google/common/collect/AbstractBiMap;->removeFromInverseMap(Ljava/lang/Object;)V
    invoke-static {v1, v0}, Lcom/google/common/collect/AbstractBiMap;->access$400(Lcom/google/common/collect/AbstractBiMap;Ljava/lang/Object;)V

    .line 213
    return-void

    .line 209
    .end local v0           #value:Ljava/lang/Object;,"TV;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
