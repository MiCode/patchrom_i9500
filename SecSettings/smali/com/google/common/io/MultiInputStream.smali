.class final Lcom/google/common/io/MultiInputStream;
.super Ljava/io/InputStream;
.source "MultiInputStream.java"


# instance fields
.field private in:Ljava/io/InputStream;

.field private it:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<+",
            "Lcom/google/common/io/InputSupplier",
            "<+",
            "Ljava/io/InputStream;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<+",
            "Lcom/google/common/io/InputSupplier",
            "<+",
            "Ljava/io/InputStream;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    .local p1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<+Lcom/google/common/io/InputSupplier<+Ljava/io/InputStream;>;>;"
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/google/common/io/MultiInputStream;->it:Ljava/util/Iterator;

    .line 44
    invoke-direct {p0}, Lcom/google/common/io/MultiInputStream;->advance()V

    .line 45
    return-void
.end method

.method private advance()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/google/common/io/MultiInputStream;->close()V

    .line 62
    iget-object v0, p0, Lcom/google/common/io/MultiInputStream;->it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/google/common/io/MultiInputStream;->it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/io/InputSupplier;

    invoke-interface {v0}, Lcom/google/common/io/InputSupplier;->getInput()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    iput-object v0, p0, Lcom/google/common/io/MultiInputStream;->in:Ljava/io/InputStream;

    .line 65
    :cond_0
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/common/io/MultiInputStream;->in:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 69
    const/4 v0, 0x0

    .line 71
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/common/io/MultiInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    goto :goto_0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 48
    iget-object v0, p0, Lcom/google/common/io/MultiInputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/google/common/io/MultiInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    iput-object v1, p0, Lcom/google/common/io/MultiInputStream;->in:Ljava/io/InputStream;

    .line 55
    :cond_0
    return-void

    .line 52
    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/google/common/io/MultiInputStream;->in:Ljava/io/InputStream;

    throw v0
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 79
    iget-object v2, p0, Lcom/google/common/io/MultiInputStream;->in:Ljava/io/InputStream;

    if-nez v2, :cond_1

    move v0, v1

    .line 87
    :cond_0
    :goto_0
    return v0

    .line 82
    :cond_1
    iget-object v2, p0, Lcom/google/common/io/MultiInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 83
    .local v0, result:I
    if-ne v0, v1, :cond_0

    .line 84
    invoke-direct {p0}, Lcom/google/common/io/MultiInputStream;->advance()V

    .line 85
    invoke-virtual {p0}, Lcom/google/common/io/MultiInputStream;->read()I

    move-result v0

    goto :goto_0
.end method

.method public read([BII)I
    .locals 3
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 91
    iget-object v2, p0, Lcom/google/common/io/MultiInputStream;->in:Ljava/io/InputStream;

    if-nez v2, :cond_1

    move v0, v1

    .line 99
    :cond_0
    :goto_0
    return v0

    .line 94
    :cond_1
    iget-object v2, p0, Lcom/google/common/io/MultiInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 95
    .local v0, result:I
    if-ne v0, v1, :cond_0

    .line 96
    invoke-direct {p0}, Lcom/google/common/io/MultiInputStream;->advance()V

    .line 97
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/io/MultiInputStream;->read([BII)I

    move-result v0

    goto :goto_0
.end method

.method public skip(J)J
    .locals 8
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x1

    const-wide/16 v2, 0x0

    .line 103
    iget-object v4, p0, Lcom/google/common/io/MultiInputStream;->in:Ljava/io/InputStream;

    if-eqz v4, :cond_0

    cmp-long v4, p1, v2

    if-gtz v4, :cond_2

    :cond_0
    move-wide v0, v2

    .line 113
    :cond_1
    :goto_0
    return-wide v0

    .line 106
    :cond_2
    iget-object v4, p0, Lcom/google/common/io/MultiInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v4, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 107
    .local v0, result:J
    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 110
    invoke-virtual {p0}, Lcom/google/common/io/MultiInputStream;->read()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    move-wide v0, v2

    .line 111
    goto :goto_0

    .line 113
    :cond_3
    iget-object v2, p0, Lcom/google/common/io/MultiInputStream;->in:Ljava/io/InputStream;

    sub-long v3, p1, v6

    invoke-virtual {v2, v3, v4}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    add-long v0, v6, v2

    goto :goto_0
.end method
