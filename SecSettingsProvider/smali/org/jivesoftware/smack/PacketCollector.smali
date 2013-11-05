.class public Lorg/jivesoftware/smack/PacketCollector;
.super Ljava/lang/Object;


# instance fields
.field private a:Lorg/jivesoftware/smack/filter/PacketFilter;

.field private b:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lorg/jivesoftware/smack/packet/Packet;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method protected a(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_1

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketCollector;->a:Lorg/jivesoftware/smack/filter/PacketFilter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/jivesoftware/smack/PacketCollector;->a:Lorg/jivesoftware/smack/filter/PacketFilter;

    invoke-interface {v0, p1}, Lorg/jivesoftware/smack/filter/PacketFilter;->a(Lorg/jivesoftware/smack/packet/Packet;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketCollector;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jivesoftware/smack/PacketCollector;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
