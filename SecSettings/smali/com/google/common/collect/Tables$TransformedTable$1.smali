.class Lcom/google/common/collect/Tables$TransformedTable$1;
.super Ljava/lang/Object;
.source "Tables.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Tables$TransformedTable;->cellFunction()Lcom/google/common/base/Function;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function",
        "<",
        "Lcom/google/common/collect/Table$Cell",
        "<TR;TC;TV1;>;",
        "Lcom/google/common/collect/Table$Cell",
        "<TR;TC;TV2;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/Tables$TransformedTable;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Tables$TransformedTable;)V
    .locals 0

    .prologue
    .line 472
    .local p0, this:Lcom/google/common/collect/Tables$TransformedTable$1;,"Lcom/google/common/collect/Tables$TransformedTable.1;"
    iput-object p1, p0, Lcom/google/common/collect/Tables$TransformedTable$1;->this$0:Lcom/google/common/collect/Tables$TransformedTable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/google/common/collect/Table$Cell;)Lcom/google/common/collect/Table$Cell;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Table$Cell",
            "<TR;TC;TV1;>;)",
            "Lcom/google/common/collect/Table$Cell",
            "<TR;TC;TV2;>;"
        }
    .end annotation

    .prologue
    .line 474
    .local p0, this:Lcom/google/common/collect/Tables$TransformedTable$1;,"Lcom/google/common/collect/Tables$TransformedTable.1;"
    .local p1, cell:Lcom/google/common/collect/Table$Cell;,"Lcom/google/common/collect/Table$Cell<TR;TC;TV1;>;"
    invoke-interface {p1}, Lcom/google/common/collect/Table$Cell;->getRowKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/Table$Cell;->getColumnKey()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/Tables$TransformedTable$1;->this$0:Lcom/google/common/collect/Tables$TransformedTable;

    iget-object v2, v2, Lcom/google/common/collect/Tables$TransformedTable;->function:Lcom/google/common/base/Function;

    invoke-interface {p1}, Lcom/google/common/collect/Table$Cell;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/common/collect/Tables;->immutableCell(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/Table$Cell;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 472
    .local p0, this:Lcom/google/common/collect/Tables$TransformedTable$1;,"Lcom/google/common/collect/Tables$TransformedTable.1;"
    check-cast p1, Lcom/google/common/collect/Table$Cell;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Tables$TransformedTable$1;->apply(Lcom/google/common/collect/Table$Cell;)Lcom/google/common/collect/Table$Cell;

    move-result-object v0

    return-object v0
.end method
