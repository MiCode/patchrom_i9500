.class Lcom/google/common/collect/ImmutableMultimap$Values$1;
.super Lcom/google/common/collect/UnmodifiableIterator;
.source "ImmutableMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/ImmutableMultimap$Values;->iterator()Lcom/google/common/collect/UnmodifiableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/UnmodifiableIterator",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/ImmutableMultimap$Values;

.field final synthetic val$entryIterator:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableMultimap$Values;Ljava/util/Iterator;)V
    .locals 0

    .prologue
    .line 604
    .local p0, this:Lcom/google/common/collect/ImmutableMultimap$Values$1;,"Lcom/google/common/collect/ImmutableMultimap$Values.1;"
    iput-object p1, p0, Lcom/google/common/collect/ImmutableMultimap$Values$1;->this$0:Lcom/google/common/collect/ImmutableMultimap$Values;

    iput-object p2, p0, Lcom/google/common/collect/ImmutableMultimap$Values$1;->val$entryIterator:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/common/collect/UnmodifiableIterator;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 607
    .local p0, this:Lcom/google/common/collect/ImmutableMultimap$Values$1;,"Lcom/google/common/collect/ImmutableMultimap$Values.1;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultimap$Values$1;->val$entryIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 611
    .local p0, this:Lcom/google/common/collect/ImmutableMultimap$Values$1;,"Lcom/google/common/collect/ImmutableMultimap$Values.1;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultimap$Values$1;->val$entryIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
