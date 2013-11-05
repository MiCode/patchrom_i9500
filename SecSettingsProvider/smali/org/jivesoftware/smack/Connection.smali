.class public abstract Lorg/jivesoftware/smack/Connection;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smack/Connection$InterceptorWrapper;,
        Lorg/jivesoftware/smack/Connection$ListenerWrapper;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static c:Z


# instance fields
.field private final b:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/jivesoftware/smack/ConnectionListener;",
            ">;"
        }
    .end annotation
.end field

.field protected d:I

.field protected e:J

.field protected final f:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/jivesoftware/smack/PacketCollector;",
            ">;"
        }
    .end annotation
.end field

.field protected final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/jivesoftware/smack/PacketListener;",
            "Lorg/jivesoftware/smack/Connection$ListenerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field protected final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/jivesoftware/smack/PacketListener;",
            "Lorg/jivesoftware/smack/Connection$ListenerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field protected final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/jivesoftware/smack/PacketInterceptor;",
            "Lorg/jivesoftware/smack/Connection$InterceptorWrapper;",
            ">;"
        }
    .end annotation
.end field

.field protected final j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/jivesoftware/smack/PacketListener;",
            ">;"
        }
    .end annotation
.end field

.field protected k:Lorg/jivesoftware/smack/debugger/SmackDebugger;

.field protected l:Ljava/io/Reader;

.field protected m:Ljava/io/Writer;

.field protected n:Ljava/lang/String;

.field protected final o:I

.field protected p:Lorg/jivesoftware/smack/ConnectionConfiguration;

.field protected q:Lcom/xiaomi/push/service/XMPushService;

.field private r:I

.field private s:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lorg/jivesoftware/smack/Connection;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    sput-boolean v1, Lorg/jivesoftware/smack/Connection;->c:Z

    :try_start_0
    const-string v0, "smack.debugEnabled"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/jivesoftware/smack/Connection;->c:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->a()Ljava/lang/String;

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected constructor <init>(Lcom/xiaomi/push/service/XMPushService;Lorg/jivesoftware/smack/ConnectionConfiguration;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/jivesoftware/smack/Connection;->d:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/jivesoftware/smack/Connection;->e:J

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/Connection;->b:Ljava/util/Collection;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/Connection;->f:Ljava/util/Collection;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/Connection;->g:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/Connection;->h:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/Connection;->i:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/Connection;->j:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jivesoftware/smack/Connection;->k:Lorg/jivesoftware/smack/debugger/SmackDebugger;

    const-string v0, ""

    iput-object v0, p0, Lorg/jivesoftware/smack/Connection;->n:Ljava/lang/String;

    const/4 v0, 0x2

    iput v0, p0, Lorg/jivesoftware/smack/Connection;->r:I

    sget-object v0, Lorg/jivesoftware/smack/Connection;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Lorg/jivesoftware/smack/Connection;->o:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/jivesoftware/smack/Connection;->s:J

    iput-object p2, p0, Lorg/jivesoftware/smack/Connection;->p:Lorg/jivesoftware/smack/ConnectionConfiguration;

    iput-object p1, p0, Lorg/jivesoftware/smack/Connection;->q:Lcom/xiaomi/push/service/XMPushService;

    return-void
.end method

.method private a(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string v0, "connected"

    :goto_0
    return-object v0

    :cond_0
    if-nez p1, :cond_1

    const-string v0, "connecting"

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    const-string v0, "disconnected"

    goto :goto_0

    :cond_2
    const-string v0, "unknown"

    goto :goto_0
.end method


# virtual methods
.method public a(IILjava/lang/Exception;)V
    .locals 6

    const/16 v5, 0xa

    const/4 v4, 0x2

    const/4 v3, 0x1

    iget v0, p0, Lorg/jivesoftware/smack/Connection;->r:I

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lorg/jivesoftware/smack/Connection;->r:I

    invoke-direct {p0, v2}, Lorg/jivesoftware/smack/Connection;->a(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/Connection;->a(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {p2}, Lcom/xiaomi/push/service/r;->a(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "update the connection status. %1$s -> %2$s : %3$s "

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    :cond_0
    if-ne p1, v3, :cond_2

    iget-object v0, p0, Lorg/jivesoftware/smack/Connection;->q:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0, v5}, Lcom/xiaomi/push/service/XMPushService;->a(I)V

    iget v0, p0, Lorg/jivesoftware/smack/Connection;->r:I

    if-eqz v0, :cond_1

    const-string v0, "try set connected while not connecting."

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    :cond_1
    iput p1, p0, Lorg/jivesoftware/smack/Connection;->r:I

    iget-object v0, p0, Lorg/jivesoftware/smack/Connection;->b:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/ConnectionListener;

    invoke-interface {v0}, Lorg/jivesoftware/smack/ConnectionListener;->i()V

    goto :goto_0

    :cond_2
    if-nez p1, :cond_4

    iget-object v0, p0, Lorg/jivesoftware/smack/Connection;->q:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/XMPushService;->h()V

    iget v0, p0, Lorg/jivesoftware/smack/Connection;->r:I

    if-eq v0, v4, :cond_3

    const-string v0, "try set connecting while not disconnected."

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    :cond_3
    iput p1, p0, Lorg/jivesoftware/smack/Connection;->r:I

    iget-object v0, p0, Lorg/jivesoftware/smack/Connection;->b:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/ConnectionListener;

    invoke-interface {v0}, Lorg/jivesoftware/smack/ConnectionListener;->g()V

    goto :goto_1

    :cond_4
    if-ne p1, v4, :cond_8

    iget-object v0, p0, Lorg/jivesoftware/smack/Connection;->q:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0, v5}, Lcom/xiaomi/push/service/XMPushService;->a(I)V

    iget v0, p0, Lorg/jivesoftware/smack/Connection;->r:I

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/jivesoftware/smack/Connection;->b:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/ConnectionListener;

    if-nez p3, :cond_5

    new-instance v1, Ljava/util/concurrent/CancellationException;

    const-string v3, "disconnect while connecting"

    invoke-direct {v1, v3}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    :goto_3
    invoke-interface {v0, v1}, Lorg/jivesoftware/smack/ConnectionListener;->a(Ljava/lang/Exception;)V

    goto :goto_2

    :cond_5
    move-object v1, p3

    goto :goto_3

    :cond_6
    iget v0, p0, Lorg/jivesoftware/smack/Connection;->r:I

    if-ne v0, v3, :cond_7

    iget-object v0, p0, Lorg/jivesoftware/smack/Connection;->b:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/ConnectionListener;

    invoke-interface {v0, p2, p3}, Lorg/jivesoftware/smack/ConnectionListener;->b(ILjava/lang/Exception;)V

    goto :goto_4

    :cond_7
    iput p1, p0, Lorg/jivesoftware/smack/Connection;->r:I

    :cond_8
    return-void
.end method

.method public abstract a(Lcom/xiaomi/push/service/p$b;)V
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    iput-object p1, p0, Lorg/jivesoftware/smack/Connection;->n:Ljava/lang/String;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lorg/jivesoftware/smack/Connection;->a(IILjava/lang/Exception;)V

    return-void
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public a(Lorg/jivesoftware/smack/ConnectionListener;)V
    .locals 1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/jivesoftware/smack/Connection;->b:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jivesoftware/smack/Connection;->b:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public a(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Packet listener is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lorg/jivesoftware/smack/Connection$ListenerWrapper;

    invoke-direct {v0, p1, p2}, Lorg/jivesoftware/smack/Connection$ListenerWrapper;-><init>(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    iget-object v1, p0, Lorg/jivesoftware/smack/Connection;->g:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public abstract a(Lorg/jivesoftware/smack/packet/Packet;)V
.end method

.method public abstract a(Lorg/jivesoftware/smack/packet/Presence;ILjava/lang/Exception;)V
.end method

.method public abstract a([Lorg/jivesoftware/smack/packet/Packet;)V
.end method

.method protected b()V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/jivesoftware/smack/Connection;->l:Ljava/io/Reader;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/jivesoftware/smack/Connection;->m:Ljava/io/Writer;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lorg/jivesoftware/smack/Connection;->p:Lorg/jivesoftware/smack/ConnectionConfiguration;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/ConnectionConfiguration;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/jivesoftware/smack/Connection;->k:Lorg/jivesoftware/smack/debugger/SmackDebugger;

    if-nez v1, :cond_4

    :try_start_0
    const-string v1, "smack.debuggerClass"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_2

    :try_start_1
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :cond_2
    :goto_2
    if-nez v0, :cond_3

    new-instance v0, Lde/measite/smack/AndroidDebugger;

    iget-object v1, p0, Lorg/jivesoftware/smack/Connection;->m:Ljava/io/Writer;

    iget-object v2, p0, Lorg/jivesoftware/smack/Connection;->l:Ljava/io/Reader;

    invoke-direct {v0, p0, v1, v2}, Lde/measite/smack/AndroidDebugger;-><init>(Lorg/jivesoftware/smack/Connection;Ljava/io/Writer;Ljava/io/Reader;)V

    iput-object v0, p0, Lorg/jivesoftware/smack/Connection;->k:Lorg/jivesoftware/smack/debugger/SmackDebugger;

    iget-object v0, p0, Lorg/jivesoftware/smack/Connection;->k:Lorg/jivesoftware/smack/debugger/SmackDebugger;

    invoke-interface {v0}, Lorg/jivesoftware/smack/debugger/SmackDebugger;->a()Ljava/io/Reader;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smack/Connection;->l:Ljava/io/Reader;

    iget-object v0, p0, Lorg/jivesoftware/smack/Connection;->k:Lorg/jivesoftware/smack/debugger/SmackDebugger;

    invoke-interface {v0}, Lorg/jivesoftware/smack/debugger/SmackDebugger;->b()Ljava/io/Writer;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smack/Connection;->m:Ljava/io/Writer;

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v1, v0

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_3
    const/4 v1, 0x3

    :try_start_2
    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lorg/jivesoftware/smack/Connection;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Ljava/io/Writer;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Ljava/io/Reader;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/jivesoftware/smack/Connection;->m:Ljava/io/Writer;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/jivesoftware/smack/Connection;->l:Ljava/io/Reader;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/debugger/SmackDebugger;

    iput-object v0, p0, Lorg/jivesoftware/smack/Connection;->k:Lorg/jivesoftware/smack/debugger/SmackDebugger;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    iget-object v0, p0, Lorg/jivesoftware/smack/Connection;->k:Lorg/jivesoftware/smack/debugger/SmackDebugger;

    invoke-interface {v0}, Lorg/jivesoftware/smack/debugger/SmackDebugger;->a()Ljava/io/Reader;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smack/Connection;->l:Ljava/io/Reader;

    iget-object v0, p0, Lorg/jivesoftware/smack/Connection;->k:Lorg/jivesoftware/smack/debugger/SmackDebugger;

    invoke-interface {v0}, Lorg/jivesoftware/smack/debugger/SmackDebugger;->b()Ljava/io/Writer;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smack/Connection;->m:Ljava/io/Writer;

    goto :goto_0

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Can\'t initialize the configured debugger!"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_4
    iget-object v0, p0, Lorg/jivesoftware/smack/Connection;->k:Lorg/jivesoftware/smack/debugger/SmackDebugger;

    iget-object v1, p0, Lorg/jivesoftware/smack/Connection;->l:Ljava/io/Reader;

    invoke-interface {v0, v1}, Lorg/jivesoftware/smack/debugger/SmackDebugger;->a(Ljava/io/Reader;)Ljava/io/Reader;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smack/Connection;->l:Ljava/io/Reader;

    iget-object v0, p0, Lorg/jivesoftware/smack/Connection;->k:Lorg/jivesoftware/smack/debugger/SmackDebugger;

    iget-object v1, p0, Lorg/jivesoftware/smack/Connection;->m:Ljava/io/Writer;

    invoke-interface {v0, v1}, Lorg/jivesoftware/smack/debugger/SmackDebugger;->a(Ljava/io/Writer;)Ljava/io/Writer;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smack/Connection;->m:Ljava/io/Writer;

    goto/16 :goto_0
.end method

.method public b(Lorg/jivesoftware/smack/ConnectionListener;)V
    .locals 1

    iget-object v0, p0, Lorg/jivesoftware/smack/Connection;->b:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Packet listener is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lorg/jivesoftware/smack/Connection$ListenerWrapper;

    invoke-direct {v0, p1, p2}, Lorg/jivesoftware/smack/Connection$ListenerWrapper;-><init>(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    iget-object v1, p0, Lorg/jivesoftware/smack/Connection;->h:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public abstract c()V
.end method

.method protected c(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 2

    iget-object v0, p0, Lorg/jivesoftware/smack/Connection;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/Connection$ListenerWrapper;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/Connection$ListenerWrapper;->a(Lorg/jivesoftware/smack/packet/Packet;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jivesoftware/smack/Connection;->p:Lorg/jivesoftware/smack/ConnectionConfiguration;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/ConnectionConfiguration;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected d(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 2

    iget-object v0, p0, Lorg/jivesoftware/smack/Connection;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/PacketListener;

    invoke-interface {v0, p1}, Lorg/jivesoftware/smack/PacketListener;->a(Lorg/jivesoftware/smack/packet/Packet;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jivesoftware/smack/Connection;->p:Lorg/jivesoftware/smack/ConnectionConfiguration;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/ConnectionConfiguration;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected e(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/jivesoftware/smack/Connection;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/Connection$InterceptorWrapper;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/Connection$InterceptorWrapper;->a(Lorg/jivesoftware/smack/packet/Packet;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jivesoftware/smack/Connection;->p:Lorg/jivesoftware/smack/ConnectionConfiguration;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/ConnectionConfiguration;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()I
    .locals 1

    iget-object v0, p0, Lorg/jivesoftware/smack/Connection;->p:Lorg/jivesoftware/smack/ConnectionConfiguration;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/ConnectionConfiguration;->j()I

    move-result v0

    return v0
.end method

.method public h()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/jivesoftware/smack/ConnectionListener;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/jivesoftware/smack/Connection;->b:Ljava/util/Collection;

    return-object v0
.end method

.method protected i()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/jivesoftware/smack/PacketCollector;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/jivesoftware/smack/Connection;->f:Ljava/util/Collection;

    return-object v0
.end method

.method public j()Z
    .locals 1

    iget v0, p0, Lorg/jivesoftware/smack/Connection;->r:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lorg/jivesoftware/smack/Connection;->r:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()I
    .locals 1

    iget v0, p0, Lorg/jivesoftware/smack/Connection;->d:I

    return v0
.end method

.method public m()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/jivesoftware/smack/Connection;->d:I

    return-void
.end method

.method public n()J
    .locals 2

    iget-wide v0, p0, Lorg/jivesoftware/smack/Connection;->e:J

    return-wide v0
.end method

.method public o()V
    .locals 2

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/jivesoftware/smack/Connection;->e:J

    return-void
.end method

.method public p()I
    .locals 1

    iget v0, p0, Lorg/jivesoftware/smack/Connection;->r:I

    return v0
.end method

.method public q()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/jivesoftware/smack/Connection;->s:J

    return-void
.end method

.method public r()Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/jivesoftware/smack/Connection;->s:J

    sub-long/2addr v0, v2

    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->c()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
