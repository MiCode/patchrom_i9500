.class Lcom/google/common/collect/AbstractMultimap$4;
.super Lcom/google/common/collect/Multimaps$Entries;
.source "AbstractMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/AbstractMultimap;->createEntries()Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Multimaps$Entries",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/AbstractMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractMultimap;)V
    .locals 0

    .prologue
    .line 1084
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$4;,"Lcom/google/common/collect/AbstractMultimap.4;"
    iput-object p1, p0, Lcom/google/common/collect/AbstractMultimap$4;->this$0:Lcom/google/common/collect/AbstractMultimap;

    invoke-direct {p0}, Lcom/google/common/collect/Multimaps$Entries;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1090
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$4;,"Lcom/google/common/collect/AbstractMultimap.4;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$4;->this$0:Lcom/google/common/collect/AbstractMultimap;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractMultimap;->createEntryIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method multimap()Lcom/google/common/collect/Multimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1086
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$4;,"Lcom/google/common/collect/AbstractMultimap.4;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$4;->this$0:Lcom/google/common/collect/AbstractMultimap;

    return-object v0
.end method
