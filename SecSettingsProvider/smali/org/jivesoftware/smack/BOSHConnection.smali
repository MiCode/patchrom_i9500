.class public Lorg/jivesoftware/smack/BOSHConnection;
.super Lorg/jivesoftware/smack/Connection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smack/BOSHConnection$a;,
        Lorg/jivesoftware/smack/BOSHConnection$b;
    }
.end annotation


# instance fields
.field private A:Ljava/lang/Thread;

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/Object;

.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/String;

.field private r:Lcom/kenai/jbosh/BOSHClient;

.field private final s:Lorg/jivesoftware/smack/BOSHConfiguration;

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Ljava/util/concurrent/ExecutorService;

.field private z:Ljava/io/PipedWriter;


# direct methods
.method public constructor <init>(Lcom/xiaomi/push/service/XMPushService;Lorg/jivesoftware/smack/BOSHConfiguration;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lorg/jivesoftware/smack/Connection;-><init>(Lcom/xiaomi/push/service/XMPushService;Lorg/jivesoftware/smack/ConnectionConfiguration;)V

    iput-boolean v1, p0, Lorg/jivesoftware/smack/BOSHConnection;->t:Z

    iput-boolean v1, p0, Lorg/jivesoftware/smack/BOSHConnection;->u:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->v:Z

    iput-boolean v1, p0, Lorg/jivesoftware/smack/BOSHConnection;->w:Z

    iput-boolean v1, p0, Lorg/jivesoftware/smack/BOSHConnection;->x:Z

    iput-object v2, p0, Lorg/jivesoftware/smack/BOSHConnection;->a:Ljava/lang/String;

    iput-object v2, p0, Lorg/jivesoftware/smack/BOSHConnection;->b:Ljava/lang/String;

    iput-object v2, p0, Lorg/jivesoftware/smack/BOSHConnection;->B:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->C:Ljava/lang/Object;

    iput-object p2, p0, Lorg/jivesoftware/smack/BOSHConnection;->s:Lorg/jivesoftware/smack/BOSHConfiguration;

    return-void
.end method

.method static synthetic a(Lorg/jivesoftware/smack/BOSHConnection;)Ljava/io/PipedWriter;
    .locals 1

    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->z:Ljava/io/PipedWriter;

    return-object v0
.end method

.method private a(Z)V
    .locals 1

    iget-boolean v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->w:Z

    if-nez v0, :cond_0

    iput-boolean p1, p0, Lorg/jivesoftware/smack/BOSHConnection;->w:Z

    :cond_0
    return-void
.end method

.method static synthetic b(Lorg/jivesoftware/smack/BOSHConnection;)Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->A:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic c(Lorg/jivesoftware/smack/BOSHConnection;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->x:Z

    return v0
.end method

.method static synthetic d(Lorg/jivesoftware/smack/BOSHConnection;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->C:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 8

    const/4 v2, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0}, Lorg/jivesoftware/smack/BOSHConnection;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SMACK-BOSH: Already connected to a server."

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->c(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-boolean v2, p0, Lorg/jivesoftware/smack/BOSHConnection;->x:Z

    iput-object v6, p0, Lorg/jivesoftware/smack/BOSHConnection;->b:Ljava/lang/String;

    iput-object v6, p0, Lorg/jivesoftware/smack/BOSHConnection;->a:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0, v2, v3, v4}, Lorg/jivesoftware/smack/BOSHConnection;->a(IILjava/lang/Exception;)V

    iget-object v2, p0, Lorg/jivesoftware/smack/BOSHConnection;->s:Lorg/jivesoftware/smack/BOSHConfiguration;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/BOSHConfiguration;->f()Ljava/net/URI;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SMACK-BOSH: connecting using uri:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/logger/b;->b(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/jivesoftware/smack/BOSHConnection;->s:Lorg/jivesoftware/smack/BOSHConfiguration;

    invoke-virtual {v3}, Lorg/jivesoftware/smack/BOSHConfiguration;->h()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/kenai/jbosh/BOSHClientConfig$Builder;->a(Ljava/net/URI;Ljava/lang/String;)Lcom/kenai/jbosh/BOSHClientConfig$Builder;

    move-result-object v2

    iget-object v3, p0, Lorg/jivesoftware/smack/BOSHConnection;->s:Lorg/jivesoftware/smack/BOSHConfiguration;

    invoke-virtual {v3}, Lorg/jivesoftware/smack/BOSHConfiguration;->a()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/jivesoftware/smack/BOSHConnection;->s:Lorg/jivesoftware/smack/BOSHConfiguration;

    invoke-virtual {v3}, Lorg/jivesoftware/smack/BOSHConfiguration;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/jivesoftware/smack/BOSHConnection;->s:Lorg/jivesoftware/smack/BOSHConfiguration;

    invoke-virtual {v4}, Lorg/jivesoftware/smack/BOSHConfiguration;->c()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/kenai/jbosh/BOSHClientConfig$Builder;->a(Ljava/lang/String;I)Lcom/kenai/jbosh/BOSHClientConfig$Builder;

    :cond_1
    invoke-virtual {v2}, Lcom/kenai/jbosh/BOSHClientConfig$Builder;->a()Lcom/kenai/jbosh/BOSHClientConfig;

    move-result-object v2

    iget-object v3, p0, Lorg/jivesoftware/smack/BOSHConnection;->q:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v3}, Lcom/xiaomi/push/service/XMPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/kenai/jbosh/BOSHClient;->a(Lcom/kenai/jbosh/BOSHClientConfig;Landroid/content/Context;)Lcom/kenai/jbosh/BOSHClient;

    move-result-object v2

    iput-object v2, p0, Lorg/jivesoftware/smack/BOSHConnection;->r:Lcom/kenai/jbosh/BOSHClient;

    new-instance v2, Lorg/jivesoftware/smack/a;

    invoke-direct {v2, p0}, Lorg/jivesoftware/smack/a;-><init>(Lorg/jivesoftware/smack/BOSHConnection;)V

    invoke-static {v2}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    iput-object v2, p0, Lorg/jivesoftware/smack/BOSHConnection;->y:Ljava/util/concurrent/ExecutorService;

    iget-object v2, p0, Lorg/jivesoftware/smack/BOSHConnection;->r:Lcom/kenai/jbosh/BOSHClient;

    new-instance v3, Lorg/jivesoftware/smack/BOSHConnection$a;

    invoke-direct {v3, p0, p0}, Lorg/jivesoftware/smack/BOSHConnection$a;-><init>(Lorg/jivesoftware/smack/BOSHConnection;Lorg/jivesoftware/smack/BOSHConnection;)V

    invoke-virtual {v2, v3}, Lcom/kenai/jbosh/BOSHClient;->a(Lcom/kenai/jbosh/BOSHClientConnListener;)V

    iget-object v2, p0, Lorg/jivesoftware/smack/BOSHConnection;->r:Lcom/kenai/jbosh/BOSHClient;

    new-instance v3, Lorg/jivesoftware/smack/BOSHPacketReader;

    invoke-direct {v3, p0}, Lorg/jivesoftware/smack/BOSHPacketReader;-><init>(Lorg/jivesoftware/smack/BOSHConnection;)V

    invoke-virtual {v2, v3}, Lcom/kenai/jbosh/BOSHClient;->a(Lcom/kenai/jbosh/BOSHClientResponseListener;)V

    iget-object v2, p0, Lorg/jivesoftware/smack/BOSHConnection;->s:Lorg/jivesoftware/smack/BOSHConfiguration;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/BOSHConfiguration;->l()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lorg/jivesoftware/smack/BOSHConnection;->b()V

    iget-boolean v2, p0, Lorg/jivesoftware/smack/BOSHConnection;->v:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/jivesoftware/smack/BOSHConnection;->k:Lorg/jivesoftware/smack/debugger/SmackDebugger;

    invoke-interface {v2}, Lorg/jivesoftware/smack/debugger/SmackDebugger;->c()Lorg/jivesoftware/smack/PacketListener;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/jivesoftware/smack/BOSHConnection;->k:Lorg/jivesoftware/smack/debugger/SmackDebugger;

    invoke-interface {v2}, Lorg/jivesoftware/smack/debugger/SmackDebugger;->c()Lorg/jivesoftware/smack/PacketListener;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/jivesoftware/smack/BOSHConnection;->a(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    :cond_2
    iget-object v2, p0, Lorg/jivesoftware/smack/BOSHConnection;->k:Lorg/jivesoftware/smack/debugger/SmackDebugger;

    invoke-interface {v2}, Lorg/jivesoftware/smack/debugger/SmackDebugger;->d()Lorg/jivesoftware/smack/PacketListener;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/jivesoftware/smack/BOSHConnection;->k:Lorg/jivesoftware/smack/debugger/SmackDebugger;

    invoke-interface {v2}, Lorg/jivesoftware/smack/debugger/SmackDebugger;->d()Lorg/jivesoftware/smack/PacketListener;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/jivesoftware/smack/BOSHConnection;->b(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    :cond_3
    iget-object v2, p0, Lorg/jivesoftware/smack/BOSHConnection;->r:Lcom/kenai/jbosh/BOSHClient;

    invoke-static {}, Lcom/kenai/jbosh/ComposableBody;->d()Lcom/kenai/jbosh/ComposableBody$Builder;

    move-result-object v3

    const-string v4, "xm"

    const-string v5, "version"

    invoke-static {v4, v5}, Lcom/kenai/jbosh/BodyQName;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/kenai/jbosh/BodyQName;

    move-result-object v4

    const-string v5, "102"

    invoke-virtual {v3, v4, v5}, Lcom/kenai/jbosh/ComposableBody$Builder;->a(Lcom/kenai/jbosh/BodyQName;Ljava/lang/String;)Lcom/kenai/jbosh/ComposableBody$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kenai/jbosh/ComposableBody$Builder;->a()Lcom/kenai/jbosh/ComposableBody;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/kenai/jbosh/BOSHClient;->a(Lcom/kenai/jbosh/ComposableBody;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Lorg/jivesoftware/smack/BOSHConnection;->C:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    invoke-virtual {p0}, Lorg/jivesoftware/smack/BOSHConnection;->k()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-nez v3, :cond_4

    :try_start_2
    iget-object v3, p0, Lorg/jivesoftware/smack/BOSHConnection;->C:Ljava/lang/Object;

    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->b()I

    move-result v4

    mul-int/lit8 v4, v4, 0x6

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_4
    :goto_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p0}, Lorg/jivesoftware/smack/BOSHConnection;->k()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->x:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Timeout reached for the connection to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jivesoftware/smack/BOSHConnection;->s:Lorg/jivesoftware/smack/BOSHConfiguration;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/BOSHConfiguration;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jivesoftware/smack/BOSHConnection;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->s:Lorg/jivesoftware/smack/BOSHConfiguration;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/BOSHConfiguration;->d()Lcom/xiaomi/network/Fallback;

    move-result-object v0

    iget-object v1, p0, Lorg/jivesoftware/smack/BOSHConnection;->s:Lorg/jivesoftware/smack/BOSHConfiguration;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/BOSHConfiguration;->e()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/xiaomi/network/Fallback;->a(Ljava/lang/String;JJLjava/lang/Exception;)V

    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    new-instance v1, Lorg/jivesoftware/smack/packet/XMPPError;

    sget-object v2, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->r:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    invoke-direct {v1, v2, v7}, Lorg/jivesoftware/smack/packet/XMPPError;-><init>(Lorg/jivesoftware/smack/packet/XMPPError$Condition;Ljava/lang/String;)V

    invoke-direct {v0, v7, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/jivesoftware/smack/XMPPException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t connect to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/jivesoftware/smack/BOSHConnection;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :cond_5
    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->s:Lorg/jivesoftware/smack/BOSHConfiguration;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/BOSHConfiguration;->d()Lcom/xiaomi/network/Fallback;

    move-result-object v0

    iget-object v1, p0, Lorg/jivesoftware/smack/BOSHConnection;->s:Lorg/jivesoftware/smack/BOSHConfiguration;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/BOSHConfiguration;->e()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v4, -0x1

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/network/Fallback;->a(Ljava/lang/String;JJ)V

    goto/16 :goto_0

    :catch_1
    move-exception v3

    goto/16 :goto_1
.end method

.method protected a(Lcom/kenai/jbosh/ComposableBody;)V
    .locals 3

    invoke-virtual {p0}, Lorg/jivesoftware/smack/BOSHConnection;->k()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not connected to a server!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Body mustn\'t be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->b:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/kenai/jbosh/ComposableBody;->e()Lcom/kenai/jbosh/ComposableBody$Builder;

    move-result-object v0

    const-string v1, "xm"

    const-string v2, "sid"

    invoke-static {v1, v2}, Lcom/kenai/jbosh/BodyQName;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/kenai/jbosh/BodyQName;

    move-result-object v1

    iget-object v2, p0, Lorg/jivesoftware/smack/BOSHConnection;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/kenai/jbosh/ComposableBody$Builder;->a(Lcom/kenai/jbosh/BodyQName;Ljava/lang/String;)Lcom/kenai/jbosh/ComposableBody$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kenai/jbosh/ComposableBody$Builder;->a()Lcom/kenai/jbosh/ComposableBody;

    move-result-object p1

    :cond_2
    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->r:Lcom/kenai/jbosh/BOSHClient;

    invoke-virtual {v0, p1}, Lcom/kenai/jbosh/BOSHClient;->a(Lcom/kenai/jbosh/ComposableBody;)V

    return-void
.end method

.method public a(Lcom/xiaomi/push/service/p$b;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Lorg/jivesoftware/smack/XMBinder;

    invoke-direct {v0}, Lorg/jivesoftware/smack/XMBinder;-><init>()V

    iget-object v1, p0, Lorg/jivesoftware/smack/BOSHConnection;->n:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, p0}, Lorg/jivesoftware/smack/XMBinder;->a(Lcom/xiaomi/push/service/p$b;Ljava/lang/String;Lorg/jivesoftware/smack/Connection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected a(Ljava/lang/Exception;)V
    .locals 4

    new-instance v0, Lorg/jivesoftware/smack/packet/Presence;

    sget-object v1, Lorg/jivesoftware/smack/packet/Presence$Type;->b:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1, p1}, Lorg/jivesoftware/smack/BOSHConnection;->b(Lorg/jivesoftware/smack/packet/Presence;ILjava/lang/Exception;)V

    const-string v0, ""

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->d(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/jivesoftware/smack/BOSHConnection;->h()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/ConnectionListener;

    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v0, v2, p1}, Lorg/jivesoftware/smack/ConnectionListener;->b(ILjava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SMACK-BOSH: notify connection closed error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Lorg/jivesoftware/smack/packet/Presence;

    sget-object v1, Lorg/jivesoftware/smack/packet/Presence$Type;->b:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/packet/Presence;->l(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lorg/jivesoftware/smack/packet/Presence;->n(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/BOSHConnection;->a(Lorg/jivesoftware/smack/packet/Packet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 2

    iget-boolean v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->x:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/BOSHConnection;->e(Lorg/jivesoftware/smack/packet/Packet;)V

    :try_start_0
    invoke-static {}, Lcom/kenai/jbosh/ComposableBody;->d()Lcom/kenai/jbosh/ComposableBody$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Packet;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kenai/jbosh/ComposableBody$Builder;->a(Ljava/lang/String;)Lcom/kenai/jbosh/ComposableBody$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kenai/jbosh/ComposableBody$Builder;->a()Lcom/kenai/jbosh/ComposableBody;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/BOSHConnection;->a(Lcom/kenai/jbosh/ComposableBody;)V
    :try_end_0
    .catch Lcom/kenai/jbosh/BOSHException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/BOSHConnection;->c(Lorg/jivesoftware/smack/packet/Packet;)V

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lorg/jivesoftware/smack/XMPPException;

    invoke-direct {v1, v0}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    const-string v1, "try send packet while the connection is done."

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lorg/jivesoftware/smack/packet/Presence;ILjava/lang/Exception;)V
    .locals 2

    invoke-virtual {p0}, Lorg/jivesoftware/smack/BOSHConnection;->p()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/jivesoftware/smack/BOSHConnection;->b(Lorg/jivesoftware/smack/packet/Presence;ILjava/lang/Exception;)V

    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->f:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->w:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->v:Z

    goto :goto_0
.end method

.method public a([Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 5

    const/4 v0, 0x0

    iget-boolean v1, p0, Lorg/jivesoftware/smack/BOSHConnection;->x:Z

    if-nez v1, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    array-length v3, p1

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, p1, v1

    if-nez v4, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Packet is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, v4}, Lorg/jivesoftware/smack/BOSHConnection;->e(Lorg/jivesoftware/smack/packet/Packet;)V

    invoke-virtual {v4}, Lorg/jivesoftware/smack/packet/Packet;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/kenai/jbosh/ComposableBody;->d()Lcom/kenai/jbosh/ComposableBody$Builder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kenai/jbosh/ComposableBody$Builder;->a(Ljava/lang/String;)Lcom/kenai/jbosh/ComposableBody$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kenai/jbosh/ComposableBody$Builder;->a()Lcom/kenai/jbosh/ComposableBody;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/jivesoftware/smack/BOSHConnection;->a(Lcom/kenai/jbosh/ComposableBody;)V
    :try_end_0
    .catch Lcom/kenai/jbosh/BOSHException; {:try_start_0 .. :try_end_0} :catch_0

    array-length v1, p1

    :goto_1
    if-ge v0, v1, :cond_3

    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Lorg/jivesoftware/smack/BOSHConnection;->c(Lorg/jivesoftware/smack/packet/Packet;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Lorg/jivesoftware/smack/XMPPException;

    invoke-direct {v1, v0}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    const-string v1, "try send packet while connection is done."

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-void
.end method

.method protected b()V
    .locals 2

    new-instance v0, Lorg/jivesoftware/smack/b;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/b;-><init>(Lorg/jivesoftware/smack/BOSHConnection;)V

    iput-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->m:Ljava/io/Writer;

    :try_start_0
    new-instance v0, Ljava/io/PipedWriter;

    invoke-direct {v0}, Ljava/io/PipedWriter;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->z:Ljava/io/PipedWriter;

    new-instance v0, Ljava/io/PipedReader;

    iget-object v1, p0, Lorg/jivesoftware/smack/BOSHConnection;->z:Ljava/io/PipedWriter;

    invoke-direct {v0, v1}, Ljava/io/PipedReader;-><init>(Ljava/io/PipedWriter;)V

    iput-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->l:Ljava/io/Reader;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-super {p0}, Lorg/jivesoftware/smack/Connection;->b()V

    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->r:Lcom/kenai/jbosh/BOSHClient;

    new-instance v1, Lorg/jivesoftware/smack/c;

    invoke-direct {v1, p0}, Lorg/jivesoftware/smack/c;-><init>(Lorg/jivesoftware/smack/BOSHConnection;)V

    invoke-virtual {v0, v1}, Lcom/kenai/jbosh/BOSHClient;->a(Lcom/kenai/jbosh/BOSHClientResponseListener;)V

    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->r:Lcom/kenai/jbosh/BOSHClient;

    new-instance v1, Lorg/jivesoftware/smack/d;

    invoke-direct {v1, p0}, Lorg/jivesoftware/smack/d;-><init>(Lorg/jivesoftware/smack/BOSHConnection;)V

    invoke-virtual {v0, v1}, Lcom/kenai/jbosh/BOSHClient;->a(Lcom/kenai/jbosh/BOSHClientRequestListener;)V

    new-instance v0, Lorg/jivesoftware/smack/e;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/e;-><init>(Lorg/jivesoftware/smack/BOSHConnection;)V

    iput-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->A:Ljava/lang/Thread;

    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->A:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->A:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected b(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/jivesoftware/smack/BOSHConnection;->i()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/PacketCollector;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/PacketCollector;->a(Lorg/jivesoftware/smack/packet/Packet;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->y:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lorg/jivesoftware/smack/BOSHConnection$b;

    invoke-direct {v1, p0, p1}, Lorg/jivesoftware/smack/BOSHConnection$b;-><init>(Lorg/jivesoftware/smack/BOSHConnection;Lorg/jivesoftware/smack/packet/Packet;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0
.end method

.method protected b(Lorg/jivesoftware/smack/packet/Presence;ILjava/lang/Exception;)V
    .locals 5

    const/4 v1, 0x0

    const/4 v4, 0x0

    iget-boolean v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->t:Z

    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/BOSHConnection;->a(Z)V

    iput-object v4, p0, Lorg/jivesoftware/smack/BOSHConnection;->a:Ljava/lang/String;

    iput-object v4, p0, Lorg/jivesoftware/smack/BOSHConnection;->b:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->x:Z

    iput-boolean v1, p0, Lorg/jivesoftware/smack/BOSHConnection;->t:Z

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p2, p3}, Lorg/jivesoftware/smack/BOSHConnection;->a(IILjava/lang/Exception;)V

    iput-boolean v1, p0, Lorg/jivesoftware/smack/BOSHConnection;->v:Z

    const-string v0, ""

    iput-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->n:Ljava/lang/String;

    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->r:Lcom/kenai/jbosh/BOSHClient;

    invoke-static {}, Lcom/kenai/jbosh/ComposableBody;->d()Lcom/kenai/jbosh/ComposableBody$Builder;

    move-result-object v1

    const-string v2, "xmpp"

    const-string v3, "xm"

    invoke-virtual {v1, v2, v3}, Lcom/kenai/jbosh/ComposableBody$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/kenai/jbosh/ComposableBody$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kenai/jbosh/ComposableBody$Builder;->a()Lcom/kenai/jbosh/ComposableBody;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kenai/jbosh/BOSHClient;->b(Lcom/kenai/jbosh/ComposableBody;)V

    const-wide/16 v0, 0x96

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->r:Lcom/kenai/jbosh/BOSHClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->r:Lcom/kenai/jbosh/BOSHClient;

    invoke-virtual {v0}, Lcom/kenai/jbosh/BOSHClient;->a()V

    iput-object v4, p0, Lorg/jivesoftware/smack/BOSHConnection;->r:Lcom/kenai/jbosh/BOSHClient;

    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->z:Ljava/io/PipedWriter;

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->z:Ljava/io/PipedWriter;

    invoke-virtual {v0}, Ljava/io/PipedWriter;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    iput-object v4, p0, Lorg/jivesoftware/smack/BOSHConnection;->l:Ljava/io/Reader;

    :cond_1
    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->l:Ljava/io/Reader;

    if-eqz v0, :cond_2

    :try_start_2
    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->l:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    iput-object v4, p0, Lorg/jivesoftware/smack/BOSHConnection;->l:Ljava/io/Reader;

    :cond_2
    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->m:Ljava/io/Writer;

    if-eqz v0, :cond_3

    :try_start_3
    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->m:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4

    :goto_3
    iput-object v4, p0, Lorg/jivesoftware/smack/BOSHConnection;->m:Ljava/io/Writer;

    :cond_3
    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->y:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->y:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :cond_4
    invoke-virtual {p0}, Lorg/jivesoftware/smack/BOSHConnection;->h()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/ConnectionListener;

    :try_start_4
    invoke-interface {v0, p2, p3}, Lorg/jivesoftware/smack/ConnectionListener;->b(ILjava/lang/Exception;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    const-string v2, "SMACK-BOSH: Error while shut down connection"

    invoke-static {v2, v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_5
    iput-object v4, p0, Lorg/jivesoftware/smack/BOSHConnection;->A:Ljava/lang/Thread;

    return-void

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v0

    goto :goto_3
.end method

.method public c()V
    .locals 1

    invoke-virtual {p0}, Lorg/jivesoftware/smack/BOSHConnection;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SMACK-BOSH: scheduling empty request for ping"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->r:Lcom/kenai/jbosh/BOSHClient;

    invoke-virtual {v0}, Lcom/kenai/jbosh/BOSHClient;->b()V

    :cond_0
    return-void
.end method
