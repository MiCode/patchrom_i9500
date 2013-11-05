.class Lorg/jivesoftware/smack/h;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/io/Writer;

.field private b:Lorg/jivesoftware/smack/XMPPConnection;


# direct methods
.method protected constructor <init>(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jivesoftware/smack/h;->b:Lorg/jivesoftware/smack/XMPPConnection;

    iget-object v0, p1, Lorg/jivesoftware/smack/XMPPConnection;->m:Ljava/io/Writer;

    iput-object v0, p0, Lorg/jivesoftware/smack/h;->a:Ljava/io/Writer;

    return-void
.end method

.method private b(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 4

    iget-object v1, p0, Lorg/jivesoftware/smack/h;->a:Ljava/io/Writer;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smack/h;->a:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Packet;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/jivesoftware/smack/h;->a:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lorg/jivesoftware/smack/h;->b:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/XMPPConnection;->d(Lorg/jivesoftware/smack/packet/Packet;)V

    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    new-instance v2, Lorg/jivesoftware/smack/XMPPException;

    invoke-direct {v2, v0}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method a()V
    .locals 1

    iget-object v0, p0, Lorg/jivesoftware/smack/h;->b:Lorg/jivesoftware/smack/XMPPConnection;

    iget-object v0, v0, Lorg/jivesoftware/smack/XMPPConnection;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lorg/jivesoftware/smack/h;->b:Lorg/jivesoftware/smack/XMPPConnection;

    iget-object v0, v0, Lorg/jivesoftware/smack/XMPPConnection;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public a(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 1

    iget-object v0, p0, Lorg/jivesoftware/smack/h;->b:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/XMPPConnection;->e(Lorg/jivesoftware/smack/packet/Packet;)V

    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/h;->b(Lorg/jivesoftware/smack/packet/Packet;)V

    iget-object v0, p0, Lorg/jivesoftware/smack/h;->b:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/XMPPConnection;->c(Lorg/jivesoftware/smack/packet/Packet;)V

    return-void
.end method

.method public b()V
    .locals 3

    iget-object v1, p0, Lorg/jivesoftware/smack/h;->a:Ljava/io/Writer;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smack/h;->a:Ljava/io/Writer;

    const-string v2, "</stream:stream>"

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/jivesoftware/smack/h;->a:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method c()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<stream:stream"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " xmlns=\"xm\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " xmlns:stream=\"xm\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jivesoftware/smack/h;->b:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/XMPPConnection;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " version=\"105\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " model=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v2}, Lorg/jivesoftware/smack/util/StringUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " os=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-static {v2}, Lorg/jivesoftware/smack/util/StringUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " connpt=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jivesoftware/smack/h;->b:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/XMPPConnection;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/jivesoftware/smack/util/StringUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " host=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jivesoftware/smack/h;->b:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/XMPPConnection;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jivesoftware/smack/h;->a:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/jivesoftware/smack/h;->a:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method public d()V
    .locals 4

    iget-object v1, p0, Lorg/jivesoftware/smack/h;->a:Ljava/io/Writer;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smack/h;->a:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/jivesoftware/smack/h;->b:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v3}, Lorg/jivesoftware/smack/XMPPConnection;->t()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/jivesoftware/smack/h;->a:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    iget-object v0, p0, Lorg/jivesoftware/smack/h;->b:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPConnection;->v()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    new-instance v2, Lorg/jivesoftware/smack/XMPPException;

    invoke-direct {v2, v0}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
