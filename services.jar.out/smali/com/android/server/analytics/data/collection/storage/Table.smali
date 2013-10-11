.class public Lcom/android/server/analytics/data/collection/storage/Table;
.super Ljava/lang/Object;
.source "Table.java"


# instance fields
.field mColumns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/analytics/data/collection/storage/Column;",
            ">;"
        }
    .end annotation
.end field

.field mForeignKeyName:Ljava/lang/String;

.field mForeignReferKey:Ljava/lang/String;

.field mForeignReferTable:Ljava/lang/String;

.field mTableName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "foreignReferTable"
    .parameter "foreignReferKey"
    .parameter "foreignKey"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/analytics/data/collection/storage/Table;->mColumns:Ljava/util/ArrayList;

    .line 45
    iput-object p1, p0, Lcom/android/server/analytics/data/collection/storage/Table;->mTableName:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lcom/android/server/analytics/data/collection/storage/Table;->mForeignReferTable:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Lcom/android/server/analytics/data/collection/storage/Table;->mForeignReferKey:Ljava/lang/String;

    .line 48
    iput-object p4, p0, Lcom/android/server/analytics/data/collection/storage/Table;->mForeignKeyName:Ljava/lang/String;

    .line 49
    return-void
.end method


# virtual methods
.method public addColumn(Lcom/android/server/analytics/data/collection/storage/Column;)V
    .locals 1
    .parameter "column"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/server/analytics/data/collection/storage/Table;->mColumns:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    return-void
.end method

.method public buildPrimaryKeys()Ljava/lang/String;
    .locals 6

    .prologue
    .line 56
    const-string v2, ""

    .line 58
    .local v2, ret:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/analytics/data/collection/storage/Table;->mColumns:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/analytics/data/collection/storage/Column;

    .line 59
    .local v0, column:Lcom/android/server/analytics/data/collection/storage/Column;
    iget-boolean v3, v0, Lcom/android/server/analytics/data/collection/storage/Column;->mIsPrimaryKey:Z

    if-eqz v3, :cond_0

    .line 60
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/analytics/data/collection/storage/Column;->mColumnName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 65
    .end local v0           #column:Lcom/android/server/analytics/data/collection/storage/Column;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const-string v5, ", "

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :goto_1
    return-object v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public buildTableColumns()Ljava/lang/String;
    .locals 6

    .prologue
    .line 69
    const-string v2, ""

    .line 71
    .local v2, ret:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/analytics/data/collection/storage/Table;->mColumns:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/analytics/data/collection/storage/Column;

    .line 72
    .local v0, column:Lcom/android/server/analytics/data/collection/storage/Column;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/server/analytics/data/collection/storage/Column;->getSQLDeclaration()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 76
    .end local v0           #column:Lcom/android/server/analytics/data/collection/storage/Column;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const-string v5, ", "

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :goto_1
    return-object v3

    :cond_1
    const-string v3, ""

    goto :goto_1
.end method

.method public getMissingColumns(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/analytics/data/collection/storage/Column;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .local v2, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/analytics/data/collection/storage/Column;>;"
    iget-object v3, p0, Lcom/android/server/analytics/data/collection/storage/Table;->mColumns:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/analytics/data/collection/storage/Column;

    .line 83
    .local v0, column:Lcom/android/server/analytics/data/collection/storage/Column;
    iget-object v3, v0, Lcom/android/server/analytics/data/collection/storage/Column;->mColumnName:Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 84
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 88
    .end local v0           #column:Lcom/android/server/analytics/data/collection/storage/Column;
    :cond_1
    return-object v2
.end method
