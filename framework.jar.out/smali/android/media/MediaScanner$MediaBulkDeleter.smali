.class Landroid/media/MediaScanner$MediaBulkDeleter;
.super Ljava/lang/Object;
.source "MediaScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MediaBulkDeleter"
.end annotation


# instance fields
.field deletedNumber:I

.field mBaseUri:Landroid/net/Uri;

.field mProvider:Landroid/content/IContentProvider;

.field path:Ljava/lang/String;

.field whereArgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field whereClause:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Landroid/content/IContentProvider;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2
    .parameter "provider"
    .parameter "baseUri"
    .parameter "path"

    .prologue
    .line 1754
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1747
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/media/MediaScanner$MediaBulkDeleter;->whereClause:Ljava/lang/StringBuilder;

    .line 1748
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/media/MediaScanner$MediaBulkDeleter;->whereArgs:Ljava/util/ArrayList;

    .line 1755
    iput-object p1, p0, Landroid/media/MediaScanner$MediaBulkDeleter;->mProvider:Landroid/content/IContentProvider;

    .line 1756
    iput-object p2, p0, Landroid/media/MediaScanner$MediaBulkDeleter;->mBaseUri:Landroid/net/Uri;

    .line 1757
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/MediaScanner$MediaBulkDeleter;->deletedNumber:I

    .line 1758
    iput-object p3, p0, Landroid/media/MediaScanner$MediaBulkDeleter;->path:Ljava/lang/String;

    .line 1759
    return-void
.end method


# virtual methods
.method public delete(J)V
    .locals 3
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1765
    iget-object v0, p0, Landroid/media/MediaScanner$MediaBulkDeleter;->whereClause:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1766
    iget-object v0, p0, Landroid/media/MediaScanner$MediaBulkDeleter;->whereClause:Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1768
    :cond_0
    iget-object v0, p0, Landroid/media/MediaScanner$MediaBulkDeleter;->whereClause:Ljava/lang/StringBuilder;

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1769
    iget-object v0, p0, Landroid/media/MediaScanner$MediaBulkDeleter;->whereArgs:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1770
    iget-object v0, p0, Landroid/media/MediaScanner$MediaBulkDeleter;->whereArgs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    .line 1771
    invoke-virtual {p0}, Landroid/media/MediaScanner$MediaBulkDeleter;->flush()V

    .line 1773
    :cond_1
    return-void
.end method

.method public flush()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1775
    invoke-static {}, Landroid/media/MediaScanner;->access$4000()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 1776
    :try_start_0
    invoke-static {}, Landroid/media/MediaScanner;->access$4100()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {}, Landroid/media/MediaScanner;->access$4100()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Landroid/media/MediaScanner$MediaBulkDeleter;->path:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1777
    const-string v3, "MediaScanner"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BulkDeleter detects ejection for path : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/media/MediaScanner$MediaBulkDeleter;->path:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1778
    iget-object v3, p0, Landroid/media/MediaScanner$MediaBulkDeleter;->whereArgs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1779
    monitor-exit v4

    .line 1794
    :cond_0
    :goto_0
    return-void

    .line 1781
    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1782
    iget-object v3, p0, Landroid/media/MediaScanner$MediaBulkDeleter;->whereArgs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1783
    .local v2, size:I
    if-lez v2, :cond_0

    .line 1784
    new-array v0, v2, [Ljava/lang/String;

    .line 1785
    .local v0, foo:[Ljava/lang/String;
    iget-object v3, p0, Landroid/media/MediaScanner$MediaBulkDeleter;->whereArgs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .end local v0           #foo:[Ljava/lang/String;
    check-cast v0, [Ljava/lang/String;

    .line 1786
    .restart local v0       #foo:[Ljava/lang/String;
    iget-object v3, p0, Landroid/media/MediaScanner$MediaBulkDeleter;->mProvider:Landroid/content/IContentProvider;

    iget-object v4, p0, Landroid/media/MediaScanner$MediaBulkDeleter;->mBaseUri:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id IN ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/media/MediaScanner$MediaBulkDeleter;->whereClause:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5, v0}, Landroid/content/IContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 1788
    .local v1, numrows:I
    iget v3, p0, Landroid/media/MediaScanner$MediaBulkDeleter;->deletedNumber:I

    add-int/2addr v3, v1

    iput v3, p0, Landroid/media/MediaScanner$MediaBulkDeleter;->deletedNumber:I

    .line 1789
    const-string v3, "MediaScanner"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BulkDeleter flush number : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1790
    const-string v3, "MediaScanner"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BulkDeleter ID-info : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1791
    iget-object v3, p0, Landroid/media/MediaScanner$MediaBulkDeleter;->whereClause:Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1792
    iget-object v3, p0, Landroid/media/MediaScanner$MediaBulkDeleter;->whereArgs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 1781
    .end local v0           #foo:[Ljava/lang/String;
    .end local v1           #numrows:I
    .end local v2           #size:I
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public getTotalDeletedNumber()I
    .locals 1

    .prologue
    .line 1761
    iget v0, p0, Landroid/media/MediaScanner$MediaBulkDeleter;->deletedNumber:I

    return v0
.end method
