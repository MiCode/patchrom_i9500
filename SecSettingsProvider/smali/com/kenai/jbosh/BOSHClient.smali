.class public final Lcom/kenai/jbosh/BOSHClient;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kenai/jbosh/BOSHClient$a;
    }
.end annotation


# static fields
.field static final synthetic a:Z

.field private static final b:Ljava/util/logging/Logger;

.field private static final c:I

.field private static final d:I

.field private static final e:Z


# instance fields
.field private A:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kenai/jbosh/ComposableBody;",
            ">;"
        }
    .end annotation
.end field

.field private volatile B:J

.field private volatile C:J

.field private D:Landroid/content/Context;

.field private final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/kenai/jbosh/BOSHClientConnListener;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/kenai/jbosh/BOSHClientRequestListener;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/kenai/jbosh/BOSHClientResponseListener;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/concurrent/locks/ReentrantLock;

.field private final j:Ljava/util/concurrent/locks/Condition;

.field private final k:Ljava/util/concurrent/locks/Condition;

.field private final l:Ljava/util/concurrent/locks/Condition;

.field private final m:Ljava/util/concurrent/locks/Condition;

.field private n:J

.field private final o:Lcom/kenai/jbosh/BOSHClientConfig;

.field private final p:Ljava/lang/Runnable;

.field private final q:Lcom/kenai/jbosh/ab;

.field private final r:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/kenai/jbosh/BOSHClient$a;",
            ">;"
        }
    .end annotation
.end field

.field private final s:Lcom/kenai/jbosh/ac;

.field private final t:Ljava/util/concurrent/ScheduledExecutorService;

.field private u:Ljava/util/concurrent/ThreadPoolExecutor;

.field private v:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private w:Lcom/kenai/jbosh/x;

.field private x:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/kenai/jbosh/z;",
            ">;"
        }
    .end annotation
.end field

.field private y:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private z:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-class v0, Lcom/kenai/jbosh/BOSHClient;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/kenai/jbosh/BOSHClient;->a:Z

    const-class v0, Lcom/kenai/jbosh/BOSHClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/kenai/jbosh/BOSHClient;->b:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/kenai/jbosh/BOSHClient;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".emptyRequestDelay"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x64

    invoke-static {v0, v3}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/kenai/jbosh/BOSHClient;->c:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/kenai/jbosh/BOSHClient;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".pauseMargin"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x1f4

    invoke-static {v0, v3}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/kenai/jbosh/BOSHClient;->d:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/kenai/jbosh/BOSHClient;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".assertionsEnabled"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    sget-boolean v0, Lcom/kenai/jbosh/BOSHClient;->a:Z

    if-nez v0, :cond_0

    move v2, v1

    :cond_0
    :goto_1
    sput-boolean v2, Lcom/kenai/jbosh/BOSHClient;->e:Z

    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    goto :goto_1
.end method

.method private constructor <init>(Lcom/kenai/jbosh/BOSHClientConfig;Landroid/content/Context;)V
    .locals 4

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->f:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->g:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->h:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->i:Ljava/util/concurrent/locks/ReentrantLock;

    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->j:Ljava/util/concurrent/locks/Condition;

    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->k:Ljava/util/concurrent/locks/Condition;

    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->l:Ljava/util/concurrent/locks/Condition;

    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->m:Ljava/util/concurrent/locks/Condition;

    iput-wide v2, p0, Lcom/kenai/jbosh/BOSHClient;->n:J

    new-instance v0, Lcom/kenai/jbosh/r;

    invoke-direct {v0, p0}, Lcom/kenai/jbosh/r;-><init>(Lcom/kenai/jbosh/BOSHClient;)V

    iput-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->p:Ljava/lang/Runnable;

    new-instance v0, Lcom/kenai/jbosh/d;

    invoke-direct {v0}, Lcom/kenai/jbosh/d;-><init>()V

    iput-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->q:Lcom/kenai/jbosh/ab;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->r:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Lcom/kenai/jbosh/ac;

    invoke-direct {v0}, Lcom/kenai/jbosh/ac;-><init>()V

    iput-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->s:Lcom/kenai/jbosh/ac;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->t:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->x:Ljava/util/Queue;

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->y:Ljava/util/SortedSet;

    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->z:Ljava/lang/Long;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->A:Ljava/util/List;

    iput-wide v2, p0, Lcom/kenai/jbosh/BOSHClient;->B:J

    iput-wide v2, p0, Lcom/kenai/jbosh/BOSHClient;->C:J

    iput-object p1, p0, Lcom/kenai/jbosh/BOSHClient;->o:Lcom/kenai/jbosh/BOSHClientConfig;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->D:Landroid/content/Context;

    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->c()V

    return-void
.end method

.method static synthetic a(Lcom/kenai/jbosh/BOSHClient;J)J
    .locals 0

    iput-wide p1, p0, Lcom/kenai/jbosh/BOSHClient;->C:J

    return-wide p1
.end method

.method public static a(Lcom/kenai/jbosh/BOSHClientConfig;Landroid/content/Context;)Lcom/kenai/jbosh/BOSHClient;
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Client configuration may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/kenai/jbosh/BOSHClient;

    invoke-direct {v0, p0, p1}, Lcom/kenai/jbosh/BOSHClient;-><init>(Lcom/kenai/jbosh/BOSHClientConfig;Landroid/content/Context;)V

    return-object v0
.end method

.method private a(JLcom/kenai/jbosh/ComposableBody;)Lcom/kenai/jbosh/ComposableBody;
    .locals 3

    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->k()V

    invoke-virtual {p3}, Lcom/kenai/jbosh/ComposableBody;->e()Lcom/kenai/jbosh/ComposableBody$Builder;

    move-result-object v0

    sget-object v1, Lcom/kenai/jbosh/q;->w:Lcom/kenai/jbosh/BodyQName;

    iget-object v2, p0, Lcom/kenai/jbosh/BOSHClient;->o:Lcom/kenai/jbosh/BOSHClientConfig;

    invoke-virtual {v2}, Lcom/kenai/jbosh/BOSHClientConfig;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kenai/jbosh/ComposableBody$Builder;->a(Lcom/kenai/jbosh/BodyQName;Ljava/lang/String;)Lcom/kenai/jbosh/ComposableBody$Builder;

    sget-object v1, Lcom/kenai/jbosh/q;->A:Lcom/kenai/jbosh/BodyQName;

    iget-object v2, p0, Lcom/kenai/jbosh/BOSHClient;->o:Lcom/kenai/jbosh/BOSHClientConfig;

    invoke-virtual {v2}, Lcom/kenai/jbosh/BOSHClientConfig;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kenai/jbosh/ComposableBody$Builder;->a(Lcom/kenai/jbosh/BodyQName;Ljava/lang/String;)Lcom/kenai/jbosh/ComposableBody$Builder;

    sget-object v1, Lcom/kenai/jbosh/q;->y:Lcom/kenai/jbosh/BodyQName;

    invoke-static {}, Lcom/kenai/jbosh/o;->b()Lcom/kenai/jbosh/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kenai/jbosh/o;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kenai/jbosh/ComposableBody$Builder;->a(Lcom/kenai/jbosh/BodyQName;Ljava/lang/String;)Lcom/kenai/jbosh/ComposableBody$Builder;

    sget-object v1, Lcom/kenai/jbosh/q;->z:Lcom/kenai/jbosh/BodyQName;

    const-string v2, "300"

    invoke-virtual {v0, v1, v2}, Lcom/kenai/jbosh/ComposableBody$Builder;->a(Lcom/kenai/jbosh/BodyQName;Ljava/lang/String;)Lcom/kenai/jbosh/ComposableBody$Builder;

    sget-object v1, Lcom/kenai/jbosh/q;->h:Lcom/kenai/jbosh/BodyQName;

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/kenai/jbosh/ComposableBody$Builder;->a(Lcom/kenai/jbosh/BodyQName;Ljava/lang/String;)Lcom/kenai/jbosh/ComposableBody$Builder;

    sget-object v1, Lcom/kenai/jbosh/q;->q:Lcom/kenai/jbosh/BodyQName;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kenai/jbosh/ComposableBody$Builder;->a(Lcom/kenai/jbosh/BodyQName;Ljava/lang/String;)Lcom/kenai/jbosh/ComposableBody$Builder;

    invoke-direct {p0, v0}, Lcom/kenai/jbosh/BOSHClient;->a(Lcom/kenai/jbosh/ComposableBody$Builder;)V

    invoke-direct {p0, v0}, Lcom/kenai/jbosh/BOSHClient;->b(Lcom/kenai/jbosh/ComposableBody$Builder;)V

    sget-object v1, Lcom/kenai/jbosh/q;->c:Lcom/kenai/jbosh/BodyQName;

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/kenai/jbosh/ComposableBody$Builder;->a(Lcom/kenai/jbosh/BodyQName;Ljava/lang/String;)Lcom/kenai/jbosh/ComposableBody$Builder;

    sget-object v1, Lcom/kenai/jbosh/q;->t:Lcom/kenai/jbosh/BodyQName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/kenai/jbosh/ComposableBody$Builder;->a(Lcom/kenai/jbosh/BodyQName;Ljava/lang/String;)Lcom/kenai/jbosh/ComposableBody$Builder;

    invoke-virtual {v0}, Lcom/kenai/jbosh/ComposableBody$Builder;->a()Lcom/kenai/jbosh/ComposableBody;

    move-result-object v0

    return-object v0
.end method

.method private a(ILcom/kenai/jbosh/AbstractBody;)Lcom/kenai/jbosh/ae;
    .locals 1

    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->k()V

    invoke-static {p2}, Lcom/kenai/jbosh/BOSHClient;->a(Lcom/kenai/jbosh/AbstractBody;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/kenai/jbosh/q;->e:Lcom/kenai/jbosh/BodyQName;

    invoke-virtual {p2, v0}, Lcom/kenai/jbosh/AbstractBody;->a(Lcom/kenai/jbosh/BodyQName;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kenai/jbosh/ae;->a(Ljava/lang/String;)Lcom/kenai/jbosh/ae;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->w:Lcom/kenai/jbosh/x;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->w:Lcom/kenai/jbosh/x;

    invoke-virtual {v0}, Lcom/kenai/jbosh/x;->c()Lcom/kenai/jbosh/o;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/kenai/jbosh/ae;->a(I)Lcom/kenai/jbosh/ae;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(J)V
    .locals 3

    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->k()V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Empty request delay must be >= 0 (was: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->h()V

    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->d()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMACK-BOSH: Scheduling empty request in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->b(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->t:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->p:Ljava/lang/Runnable;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, p1, p2, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->v:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->l:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SMACK-BOSH: Could not schedule empty request"

    invoke-static {v1, v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private a(Lcom/kenai/jbosh/AbstractBody;I)V
    .locals 4

    invoke-direct {p0, p2, p1}, Lcom/kenai/jbosh/BOSHClient;->a(ILcom/kenai/jbosh/AbstractBody;)Lcom/kenai/jbosh/ae;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/kenai/jbosh/BOSHException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Terminal binding condition encountered: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/kenai/jbosh/ae;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/kenai/jbosh/ae;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/kenai/jbosh/BOSHException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-void
.end method

.method private a(Lcom/kenai/jbosh/AbstractBody;Lcom/kenai/jbosh/AbstractBody;)V
    .locals 5

    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->k()V

    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->w:Lcom/kenai/jbosh/x;

    invoke-virtual {v0}, Lcom/kenai/jbosh/x;->f()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    sget-object v0, Lcom/kenai/jbosh/q;->o:Lcom/kenai/jbosh/BodyQName;

    invoke-virtual {p2, v0}, Lcom/kenai/jbosh/AbstractBody;->a(Lcom/kenai/jbosh/BodyQName;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/kenai/jbosh/q;->c:Lcom/kenai/jbosh/BodyQName;

    invoke-virtual {p2, v0}, Lcom/kenai/jbosh/AbstractBody;->a(Lcom/kenai/jbosh/BodyQName;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/kenai/jbosh/q;->q:Lcom/kenai/jbosh/BodyQName;

    invoke-virtual {p1, v0}, Lcom/kenai/jbosh/AbstractBody;->a(Lcom/kenai/jbosh/BodyQName;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v1, v0

    :goto_0
    sget-object v0, Lcom/kenai/jbosh/BOSHClient;->b:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/kenai/jbosh/BOSHClient;->b:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing pending acks up to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->A:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kenai/jbosh/AbstractBody;

    sget-object v3, Lcom/kenai/jbosh/q;->q:Lcom/kenai/jbosh/BodyQName;

    invoke-virtual {v0, v3}, Lcom/kenai/jbosh/AbstractBody;->a(Lcom/kenai/jbosh/BodyQName;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    if-gtz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_4
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v1, v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/kenai/jbosh/BOSHClient;)V
    .locals 0

    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->j()V

    return-void
.end method

.method private a(Lcom/kenai/jbosh/ComposableBody$Builder;)V
    .locals 2

    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->k()V

    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->o:Lcom/kenai/jbosh/BOSHClientConfig;

    invoke-virtual {v0}, Lcom/kenai/jbosh/BOSHClientConfig;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/kenai/jbosh/q;->r:Lcom/kenai/jbosh/BodyQName;

    invoke-virtual {p1, v1, v0}, Lcom/kenai/jbosh/ComposableBody$Builder;->a(Lcom/kenai/jbosh/BodyQName;Ljava/lang/String;)Lcom/kenai/jbosh/ComposableBody$Builder;

    :cond_0
    return-void
.end method

.method private a(Lcom/kenai/jbosh/z;)V
    .locals 2

    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->x:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->u:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/kenai/jbosh/s;

    invoke-direct {v1, p0}, Lcom/kenai/jbosh/s;-><init>(Lcom/kenai/jbosh/BOSHClient;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Ljava/lang/Throwable;)V
    .locals 2

    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->l()V

    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->u:Ljava/util/concurrent/ThreadPoolExecutor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->u:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->u:Ljava/util/concurrent/ThreadPoolExecutor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->n()V

    :goto_1
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_2
    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->h()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->x:Ljava/util/Queue;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->w:Lcom/kenai/jbosh/x;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->y:Ljava/util/SortedSet;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->A:Ljava/util/List;

    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->j:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->k:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->l:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->m:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->q:Lcom/kenai/jbosh/ab;

    invoke-interface {v0}, Lcom/kenai/jbosh/ab;->a()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/kenai/jbosh/BOSHClient;->b(Ljava/lang/Throwable;)V

    goto :goto_1

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private static a(Lcom/kenai/jbosh/AbstractBody;)Z
    .locals 2

    const-string v0, "terminate"

    sget-object v1, Lcom/kenai/jbosh/q;->x:Lcom/kenai/jbosh/BodyQName;

    invoke-virtual {p0, v1}, Lcom/kenai/jbosh/AbstractBody;->a(Lcom/kenai/jbosh/BodyQName;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private b(JLcom/kenai/jbosh/ComposableBody;)Lcom/kenai/jbosh/ComposableBody;
    .locals 3

    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->k()V

    invoke-virtual {p3}, Lcom/kenai/jbosh/ComposableBody;->e()Lcom/kenai/jbosh/ComposableBody$Builder;

    move-result-object v0

    sget-object v1, Lcom/kenai/jbosh/q;->t:Lcom/kenai/jbosh/BodyQName;

    iget-object v2, p0, Lcom/kenai/jbosh/BOSHClient;->w:Lcom/kenai/jbosh/x;

    invoke-virtual {v2}, Lcom/kenai/jbosh/x;->a()Lcom/kenai/jbosh/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kenai/jbosh/n;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kenai/jbosh/ComposableBody$Builder;->a(Lcom/kenai/jbosh/BodyQName;Ljava/lang/String;)Lcom/kenai/jbosh/ComposableBody$Builder;

    sget-object v1, Lcom/kenai/jbosh/q;->q:Lcom/kenai/jbosh/BodyQName;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kenai/jbosh/ComposableBody$Builder;->a(Lcom/kenai/jbosh/BodyQName;Ljava/lang/String;)Lcom/kenai/jbosh/ComposableBody$Builder;

    invoke-virtual {v0}, Lcom/kenai/jbosh/ComposableBody$Builder;->a()Lcom/kenai/jbosh/ComposableBody;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/kenai/jbosh/BOSHClient;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1

    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->i:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method private b(Lcom/kenai/jbosh/ComposableBody$Builder;)V
    .locals 2

    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->k()V

    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->o:Lcom/kenai/jbosh/BOSHClientConfig;

    invoke-virtual {v0}, Lcom/kenai/jbosh/BOSHClientConfig;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/kenai/jbosh/q;->g:Lcom/kenai/jbosh/BodyQName;

    invoke-virtual {p1, v1, v0}, Lcom/kenai/jbosh/ComposableBody$Builder;->a(Lcom/kenai/jbosh/BodyQName;Ljava/lang/String;)Lcom/kenai/jbosh/ComposableBody$Builder;

    :cond_0
    return-void
.end method

.method private b(Lcom/kenai/jbosh/z;)V
    .locals 10

    const/4 v0, 0x0

    const-wide/16 v8, 0x0

    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->l()V

    :try_start_0
    invoke-virtual {p1}, Lcom/kenai/jbosh/z;->b()Lcom/kenai/jbosh/aa;

    move-result-object v1

    invoke-interface {v1}, Lcom/kenai/jbosh/aa;->b()Lcom/kenai/jbosh/AbstractBody;

    move-result-object v2

    invoke-interface {v1}, Lcom/kenai/jbosh/aa;->c()I
    :try_end_0
    .catch Lcom/kenai/jbosh/BOSHException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    iget-object v4, p0, Lcom/kenai/jbosh/BOSHClient;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_1
    invoke-interface {v1}, Lcom/kenai/jbosh/aa;->d()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/kenai/jbosh/BOSHClient;->B:J

    cmp-long v1, v6, v4

    if-nez v1, :cond_0

    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/kenai/jbosh/BOSHClient;->B:J

    :cond_0
    iget-wide v6, p0, Lcom/kenai/jbosh/BOSHClient;->n:J

    cmp-long v1, v4, v6

    if-gtz v1, :cond_4

    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->m:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    :cond_1
    const-wide/16 v4, 0x1

    iget-wide v6, p0, Lcom/kenai/jbosh/BOSHClient;->n:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/kenai/jbosh/BOSHClient;->n:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-direct {p0, v2}, Lcom/kenai/jbosh/BOSHClient;->g(Lcom/kenai/jbosh/AbstractBody;)V

    invoke-virtual {p1}, Lcom/kenai/jbosh/z;->a()Lcom/kenai/jbosh/AbstractBody;

    move-result-object v4

    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_2
    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->d()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3
    .catch Lcom/kenai/jbosh/BOSHException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_4

    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_5

    :try_start_3
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->x:Ljava/util/Queue;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->x:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->g()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, v4}, Lcom/kenai/jbosh/BOSHClient;->c(Lcom/kenai/jbosh/AbstractBody;)J

    move-result-wide v0

    cmp-long v2, v0, v8

    if-lez v2, :cond_2

    invoke-direct {p0, v0, v1}, Lcom/kenai/jbosh/BOSHClient;->a(J)V

    :cond_2
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->k:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_3
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "SMACK-BOSH: Could not obtain response"

    invoke-static {v1, v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v0}, Lcom/kenai/jbosh/BOSHClient;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "Interrupted"

    invoke-static {v1, v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v0}, Lcom/kenai/jbosh/BOSHClient;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_4
    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SMACK-BOSH: responded rid("

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ") is not expected ("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, p0, Lcom/kenai/jbosh/BOSHClient;->n:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "), wait"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/b;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->m:Ljava/util/concurrent/locks/Condition;

    const-wide/16 v4, 0x1e

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v4, v5, v6}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMACK-BOSH: wait for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/kenai/jbosh/BOSHClient;->n:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " timeout, terminate!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->c(Ljava/lang/String;)V

    new-instance v0, Lcom/kenai/jbosh/BOSHException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wait timeout for rid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/kenai/jbosh/BOSHClient;->n:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kenai/jbosh/BOSHException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/kenai/jbosh/BOSHClient;->a(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2

    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    :catch_2
    move-exception v0

    :try_start_5
    invoke-direct {p0, v0}, Lcom/kenai/jbosh/BOSHClient;->a(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_5
    const-string v0, "SMACK-BOSH: lock is not held by this thread, don\'t schedule empty request"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    :try_start_6
    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->w:Lcom/kenai/jbosh/x;

    if-nez v1, :cond_7

    invoke-static {v4, v2}, Lcom/kenai/jbosh/x;->a(Lcom/kenai/jbosh/AbstractBody;Lcom/kenai/jbosh/AbstractBody;)Lcom/kenai/jbosh/x;

    move-result-object v1

    iput-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->w:Lcom/kenai/jbosh/x;

    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->m()V

    :cond_7
    iget-object v5, p0, Lcom/kenai/jbosh/BOSHClient;->w:Lcom/kenai/jbosh/x;

    invoke-direct {p0, v2, v3}, Lcom/kenai/jbosh/BOSHClient;->a(Lcom/kenai/jbosh/AbstractBody;I)V

    invoke-static {v2}, Lcom/kenai/jbosh/BOSHClient;->a(Lcom/kenai/jbosh/AbstractBody;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/kenai/jbosh/BOSHClient;->a(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3
    .catch Lcom/kenai/jbosh/BOSHException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_4

    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_9

    :try_start_7
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->x:Ljava/util/Queue;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->x:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->g()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-direct {p0, v4}, Lcom/kenai/jbosh/BOSHClient;->c(Lcom/kenai/jbosh/AbstractBody;)J

    move-result-wide v0

    cmp-long v2, v0, v8

    if-lez v2, :cond_8

    invoke-direct {p0, v0, v1}, Lcom/kenai/jbosh/BOSHClient;->a(J)V

    :cond_8
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->k:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_9
    const-string v0, "SMACK-BOSH: lock is not held by this thread, don\'t schedule empty request"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    :try_start_8
    invoke-static {v2}, Lcom/kenai/jbosh/BOSHClient;->b(Lcom/kenai/jbosh/AbstractBody;)Z

    move-result v1

    if-eqz v1, :cond_11

    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->x:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->x:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v3, Lcom/kenai/jbosh/z;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kenai/jbosh/z;

    invoke-virtual {v0}, Lcom/kenai/jbosh/z;->a()Lcom/kenai/jbosh/AbstractBody;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/kenai/jbosh/z;-><init>(Lcom/kenai/jbosh/AbstractBody;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3
    .catch Lcom/kenai/jbosh/BOSHException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_1

    :catch_3
    move-exception v0

    :try_start_9
    const-string v1, "SMACK-BOSH: Could not process response"

    invoke-static {v1, v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-direct {p0, v0}, Lcom/kenai/jbosh/BOSHClient;->a(Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_14

    :try_start_a
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->x:Ljava/util/Queue;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->x:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->g()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-direct {p0, v4}, Lcom/kenai/jbosh/BOSHClient;->c(Lcom/kenai/jbosh/AbstractBody;)J

    move-result-wide v0

    cmp-long v2, v0, v8

    if-lez v2, :cond_b

    invoke-direct {p0, v0, v1}, Lcom/kenai/jbosh/BOSHClient;->a(J)V

    :cond_b
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->k:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    :cond_c
    :try_start_b
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kenai/jbosh/z;

    invoke-direct {p0, v0}, Lcom/kenai/jbosh/BOSHClient;->a(Lcom/kenai/jbosh/z;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3
    .catch Lcom/kenai/jbosh/BOSHException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_4

    goto :goto_2

    :catch_4
    move-exception v0

    :try_start_c
    const-string v1, "SMACK-BOSH: Could not process response"

    invoke-static {v1, v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-direct {p0, v0}, Lcom/kenai/jbosh/BOSHClient;->a(Ljava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_15

    :try_start_d
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->x:Ljava/util/Queue;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->x:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->g()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-direct {p0, v4}, Lcom/kenai/jbosh/BOSHClient;->c(Lcom/kenai/jbosh/AbstractBody;)J

    move-result-wide v0

    cmp-long v2, v0, v8

    if-lez v2, :cond_d

    invoke-direct {p0, v0, v1}, Lcom/kenai/jbosh/BOSHClient;->a(J)V

    :cond_d
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->k:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    :cond_e
    move-object v0, v1

    :cond_f
    :goto_3
    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v1

    if-eqz v1, :cond_13

    :try_start_e
    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->x:Ljava/util/Queue;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->x:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->g()Z

    move-result v1

    if-nez v1, :cond_10

    invoke-direct {p0, v4}, Lcom/kenai/jbosh/BOSHClient;->c(Lcom/kenai/jbosh/AbstractBody;)J

    move-result-wide v1

    cmp-long v3, v1, v8

    if-lez v3, :cond_10

    invoke-direct {p0, v1, v2}, Lcom/kenai/jbosh/BOSHClient;->a(J)V

    :cond_10
    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->k:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_4
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kenai/jbosh/z;

    iget-object v2, p0, Lcom/kenai/jbosh/BOSHClient;->q:Lcom/kenai/jbosh/ab;

    invoke-virtual {v0}, Lcom/kenai/jbosh/z;->a()Lcom/kenai/jbosh/AbstractBody;

    move-result-object v3

    iget-object v4, p0, Lcom/kenai/jbosh/BOSHClient;->D:Landroid/content/Context;

    invoke-interface {v2, v5, v3, v4}, Lcom/kenai/jbosh/ab;->a(Lcom/kenai/jbosh/x;Lcom/kenai/jbosh/AbstractBody;Landroid/content/Context;)Lcom/kenai/jbosh/aa;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/kenai/jbosh/z;->a(Lcom/kenai/jbosh/aa;)V

    invoke-virtual {v0}, Lcom/kenai/jbosh/z;->a()Lcom/kenai/jbosh/AbstractBody;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kenai/jbosh/BOSHClient;->f(Lcom/kenai/jbosh/AbstractBody;)V

    goto :goto_5

    :cond_11
    :try_start_f
    invoke-direct {p0, v4, v2}, Lcom/kenai/jbosh/BOSHClient;->a(Lcom/kenai/jbosh/AbstractBody;Lcom/kenai/jbosh/AbstractBody;)V

    invoke-direct {p0, v4}, Lcom/kenai/jbosh/BOSHClient;->d(Lcom/kenai/jbosh/AbstractBody;)V

    invoke-direct {p0, v2}, Lcom/kenai/jbosh/BOSHClient;->e(Lcom/kenai/jbosh/AbstractBody;)Lcom/kenai/jbosh/z;

    move-result-object v1

    if-eqz v1, :cond_f

    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v1}, Lcom/kenai/jbosh/BOSHClient;->a(Lcom/kenai/jbosh/z;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3
    .catch Lcom/kenai/jbosh/BOSHException; {:try_start_f .. :try_end_f} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_f} :catch_4

    goto :goto_3

    :catchall_3
    move-exception v0

    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v1

    if-eqz v1, :cond_16

    :try_start_10
    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->x:Ljava/util/Queue;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->x:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->g()Z

    move-result v1

    if-nez v1, :cond_12

    invoke-direct {p0, v4}, Lcom/kenai/jbosh/BOSHClient;->c(Lcom/kenai/jbosh/AbstractBody;)J

    move-result-wide v1

    cmp-long v3, v1, v8

    if-lez v3, :cond_12

    invoke-direct {p0, v1, v2}, Lcom/kenai/jbosh/BOSHClient;->a(J)V

    :cond_12
    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->k:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_6
    throw v0

    :catchall_4
    move-exception v0

    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_13
    const-string v1, "SMACK-BOSH: lock is not held by this thread, don\'t schedule empty request"

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/b;->b(Ljava/lang/String;)V

    goto :goto_4

    :catchall_5
    move-exception v0

    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_14
    const-string v0, "SMACK-BOSH: lock is not held by this thread, don\'t schedule empty request"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :catchall_6
    move-exception v0

    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_15
    const-string v0, "SMACK-BOSH: lock is not held by this thread, don\'t schedule empty request"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :catchall_7
    move-exception v0

    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_16
    const-string v1, "SMACK-BOSH: lock is not held by this thread, don\'t schedule empty request"

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/b;->b(Ljava/lang/String;)V

    goto :goto_6
.end method

.method private b(Ljava/lang/Throwable;)V
    .locals 6

    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->l()V

    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kenai/jbosh/BOSHClientConnListener;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->A:Ljava/util/List;

    invoke-static {p0, v1, p1}, Lcom/kenai/jbosh/BOSHClientConnEvent;->a(Lcom/kenai/jbosh/BOSHClient;Ljava/util/List;Ljava/lang/Throwable;)Lcom/kenai/jbosh/BOSHClientConnEvent;

    move-result-object v1

    :cond_0
    :try_start_0
    invoke-interface {v0, v1}, Lcom/kenai/jbosh/BOSHClientConnListener;->a(Lcom/kenai/jbosh/BOSHClientConnEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v3, Lcom/kenai/jbosh/BOSHClient;->b:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v5, "Unhandled Exception"

    invoke-virtual {v3, v4, v5, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static b(Lcom/kenai/jbosh/AbstractBody;)Z
    .locals 2

    const-string v0, "error"

    sget-object v1, Lcom/kenai/jbosh/q;->x:Lcom/kenai/jbosh/BodyQName;

    invoke-virtual {p0, v1}, Lcom/kenai/jbosh/AbstractBody;->a(Lcom/kenai/jbosh/BodyQName;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private c(Lcom/kenai/jbosh/AbstractBody;)J
    .locals 4

    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->k()V

    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->w:Lcom/kenai/jbosh/x;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->w:Lcom/kenai/jbosh/x;

    invoke-virtual {v0}, Lcom/kenai/jbosh/x;->e()Lcom/kenai/jbosh/j;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    sget-object v0, Lcom/kenai/jbosh/q;->m:Lcom/kenai/jbosh/BodyQName;

    invoke-virtual {p1, v0}, Lcom/kenai/jbosh/AbstractBody;->a(Lcom/kenai/jbosh/BodyQName;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kenai/jbosh/k;->a(Ljava/lang/String;)Lcom/kenai/jbosh/k;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/kenai/jbosh/k;->c()I

    move-result v0

    sget v1, Lcom/kenai/jbosh/BOSHClient;->d:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    sget v0, Lcom/kenai/jbosh/BOSHClient;->c:I
    :try_end_0
    .catch Lcom/kenai/jbosh/BOSHException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v0, v0

    :cond_0
    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/kenai/jbosh/BOSHClient;->b:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v3, "Could not extract"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->i()J

    move-result-wide v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/kenai/jbosh/BOSHClient;)Ljava/util/Queue;
    .locals 1

    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->x:Ljava/util/Queue;

    return-object v0
.end method

.method private c()V
    .locals 7

    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->l()V

    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->q:Lcom/kenai/jbosh/ab;

    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->o:Lcom/kenai/jbosh/BOSHClientConfig;

    invoke-interface {v0, v1}, Lcom/kenai/jbosh/ab;->a(Lcom/kenai/jbosh/BOSHClientConfig;)V

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x2

    const/4 v2, 0x2

    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->u:Ljava/util/concurrent/ThreadPoolExecutor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private d(Lcom/kenai/jbosh/AbstractBody;)V
    .locals 6

    const-wide/16 v4, 0x1

    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->k()V

    sget-object v0, Lcom/kenai/jbosh/q;->q:Lcom/kenai/jbosh/BodyQName;

    invoke-virtual {p1, v0}, Lcom/kenai/jbosh/AbstractBody;->a(Lcom/kenai/jbosh/BodyQName;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->z:Ljava/lang/Long;

    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->z:Ljava/lang/Long;

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->y:Ljava/util/SortedSet;

    invoke-interface {v1, v0}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->z:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->y:Ljava/util/SortedSet;

    invoke-interface {v1}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->y:Ljava/util/SortedSet;

    invoke-interface {v1}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->z:Ljava/lang/Long;

    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->y:Ljava/util/SortedSet;

    invoke-interface {v1, v0}, Ljava/util/SortedSet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic d(Lcom/kenai/jbosh/BOSHClient;)V
    .locals 0

    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->e()V

    return-void
.end method

.method private d()Z
    .locals 1

    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->k()V

    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->u:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e(Lcom/kenai/jbosh/AbstractBody;)Lcom/kenai/jbosh/z;
    .locals 7

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->k()V

    sget-object v1, Lcom/kenai/jbosh/q;->o:Lcom/kenai/jbosh/BodyQName;

    invoke-virtual {p1, v1}, Lcom/kenai/jbosh/AbstractBody;->a(Lcom/kenai/jbosh/BodyQName;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v1, Lcom/kenai/jbosh/q;->v:Lcom/kenai/jbosh/BodyQName;

    invoke-virtual {p1, v1}, Lcom/kenai/jbosh/AbstractBody;->a(Lcom/kenai/jbosh/BodyQName;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sget-object v4, Lcom/kenai/jbosh/BOSHClient;->b:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/kenai/jbosh/BOSHClient;->b:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received report of missing request (RID="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", time="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "ms)"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->A:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v1, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez v1, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kenai/jbosh/AbstractBody;

    sget-object v5, Lcom/kenai/jbosh/q;->q:Lcom/kenai/jbosh/BodyQName;

    invoke-virtual {v0, v5}, Lcom/kenai/jbosh/AbstractBody;->a(Lcom/kenai/jbosh/BodyQName;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :goto_2
    move-object v1, v0

    goto :goto_1

    :cond_2
    if-nez v1, :cond_3

    new-instance v0, Lcom/kenai/jbosh/BOSHException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Report of missing message with RID \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' but local copy of that request was not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kenai/jbosh/BOSHException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Lcom/kenai/jbosh/z;

    invoke-direct {v0, v1}, Lcom/kenai/jbosh/z;-><init>(Lcom/kenai/jbosh/AbstractBody;)V

    invoke-direct {p0, v0}, Lcom/kenai/jbosh/BOSHClient;->a(Lcom/kenai/jbosh/z;)V

    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->j:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    goto/16 :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_2
.end method

.method private e()V
    .locals 8

    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->f()Lcom/kenai/jbosh/z;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-virtual {v1}, Lcom/kenai/jbosh/z;->a()Lcom/kenai/jbosh/AbstractBody;

    move-result-object v0

    sget-object v2, Lcom/kenai/jbosh/q;->q:Lcom/kenai/jbosh/BodyQName;

    invoke-virtual {v0, v2}, Lcom/kenai/jbosh/AbstractBody;->a(Lcom/kenai/jbosh/BodyQName;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/kenai/jbosh/BOSHClient;->n:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_1

    iput-wide v2, p0, Lcom/kenai/jbosh/BOSHClient;->n:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->r:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kenai/jbosh/BOSHClient$a;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Lcom/kenai/jbosh/BOSHClient$a;->a(Lcom/kenai/jbosh/z;)Lcom/kenai/jbosh/z;

    move-result-object v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/kenai/jbosh/BOSHClient;->b:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Discarding exchange on request of test hook: RID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/kenai/jbosh/z;->a()Lcom/kenai/jbosh/AbstractBody;

    move-result-object v1

    sget-object v4, Lcom/kenai/jbosh/q;->q:Lcom/kenai/jbosh/BodyQName;

    invoke-virtual {v1, v4}, Lcom/kenai/jbosh/AbstractBody;->a(Lcom/kenai/jbosh/BodyQName;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_2
    move-object v0, v1

    :cond_3
    invoke-direct {p0, v0}, Lcom/kenai/jbosh/BOSHClient;->b(Lcom/kenai/jbosh/z;)V

    goto :goto_0
.end method

.method private f()Lcom/kenai/jbosh/z;
    .locals 5

    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->l()V

    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->x:Ljava/util/Queue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->x:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kenai/jbosh/z;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_2

    :try_start_2
    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->j:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_3
    sget-object v2, Lcom/kenai/jbosh/BOSHClient;->b:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v4, "Interrupted"

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private f(Lcom/kenai/jbosh/AbstractBody;)V
    .locals 6

    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->l()V

    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kenai/jbosh/BOSHClientRequestListener;

    if-nez v1, :cond_0

    invoke-static {p0, p1}, Lcom/kenai/jbosh/BOSHMessageEvent;->a(Lcom/kenai/jbosh/BOSHClient;Lcom/kenai/jbosh/AbstractBody;)Lcom/kenai/jbosh/BOSHMessageEvent;

    move-result-object v1

    :cond_0
    :try_start_0
    invoke-interface {v0, v1}, Lcom/kenai/jbosh/BOSHClientRequestListener;->a(Lcom/kenai/jbosh/BOSHMessageEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v3, Lcom/kenai/jbosh/BOSHClient;->b:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v5, "Unhandled Exception"

    invoke-virtual {v3, v4, v5, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private g(Lcom/kenai/jbosh/AbstractBody;)V
    .locals 6

    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->l()V

    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->h:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kenai/jbosh/BOSHClientResponseListener;

    if-nez v1, :cond_0

    invoke-static {p0, p1}, Lcom/kenai/jbosh/BOSHMessageEvent;->b(Lcom/kenai/jbosh/BOSHClient;Lcom/kenai/jbosh/AbstractBody;)Lcom/kenai/jbosh/BOSHMessageEvent;

    move-result-object v1

    :cond_0
    :try_start_0
    invoke-interface {v0, v1}, Lcom/kenai/jbosh/BOSHClientResponseListener;->a(Lcom/kenai/jbosh/BOSHMessageEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v3, Lcom/kenai/jbosh/BOSHClient;->b:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v5, "Unhandled Exception"

    invoke-virtual {v3, v4, v5, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private g()Z
    .locals 4

    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->v:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->v:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-wide v0, p0, Lcom/kenai/jbosh/BOSHClient;->B:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private h()V
    .locals 2

    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->k()V

    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->v:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->v:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->v:Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    return-void
.end method

.method private i()J
    .locals 5

    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->k()V

    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->w:Lcom/kenai/jbosh/x;

    invoke-virtual {v0}, Lcom/kenai/jbosh/x;->d()Lcom/kenai/jbosh/l;

    move-result-object v0

    sget v1, Lcom/kenai/jbosh/BOSHClient;->c:I

    int-to-long v2, v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/kenai/jbosh/l;->c()I

    move-result v0

    int-to-long v0, v0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    move-wide v0, v2

    goto :goto_0
.end method

.method private j()V
    .locals 1

    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->l()V

    :try_start_0
    invoke-static {}, Lcom/kenai/jbosh/ComposableBody;->d()Lcom/kenai/jbosh/ComposableBody$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kenai/jbosh/ComposableBody$Builder;->a()Lcom/kenai/jbosh/ComposableBody;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kenai/jbosh/BOSHClient;->a(Lcom/kenai/jbosh/ComposableBody;)V
    :try_end_0
    .catch Lcom/kenai/jbosh/BOSHException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/kenai/jbosh/BOSHClient;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private k()V
    .locals 2

    sget-boolean v0, Lcom/kenai/jbosh/BOSHClient;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Lock is not held by current thread"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    return-void
.end method

.method private l()V
    .locals 2

    sget-boolean v0, Lcom/kenai/jbosh/BOSHClient;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Lock is held by current thread"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    return-void
.end method

.method private m()V
    .locals 7

    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kenai/jbosh/BOSHClientConnListener;

    if-nez v1, :cond_1

    invoke-static {p0}, Lcom/kenai/jbosh/BOSHClientConnEvent;->a(Lcom/kenai/jbosh/BOSHClient;)Lcom/kenai/jbosh/BOSHClientConnEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :cond_1
    :try_start_1
    invoke-interface {v0, v1}, Lcom/kenai/jbosh/BOSHClientConnListener;->a(Lcom/kenai/jbosh/BOSHClientConnEvent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    sget-object v4, Lcom/kenai/jbosh/BOSHClient;->b:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v6, "Unhandled Exception"

    invoke-virtual {v4, v5, v6, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :cond_2
    throw v0

    :cond_3
    if-eqz v2, :cond_4

    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :cond_4
    return-void
.end method

.method private n()V
    .locals 6

    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->l()V

    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kenai/jbosh/BOSHClientConnListener;

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/kenai/jbosh/BOSHClientConnEvent;->b(Lcom/kenai/jbosh/BOSHClient;)Lcom/kenai/jbosh/BOSHClientConnEvent;

    move-result-object v1

    :cond_0
    :try_start_0
    invoke-interface {v0, v1}, Lcom/kenai/jbosh/BOSHClientConnListener;->a(Lcom/kenai/jbosh/BOSHClientConnEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v3, Lcom/kenai/jbosh/BOSHClient;->b:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v5, "Unhandled Exception"

    invoke-virtual {v3, v4, v5, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    new-instance v0, Lcom/kenai/jbosh/BOSHException;

    const-string v1, "Session explicitly closed by caller"

    invoke-direct {v0, v1}, Lcom/kenai/jbosh/BOSHException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/kenai/jbosh/BOSHClient;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public a(Lcom/kenai/jbosh/BOSHClientConnListener;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Listener may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/kenai/jbosh/BOSHClientRequestListener;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Listener may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->g:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/kenai/jbosh/BOSHClientResponseListener;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Listener may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->h:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/kenai/jbosh/ComposableBody;)V
    .locals 5

    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->l()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Message body may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->d()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/kenai/jbosh/BOSHClient;->a(Lcom/kenai/jbosh/AbstractBody;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/kenai/jbosh/BOSHException;

    const-string v1, "Cannot send message when session is closed"

    invoke-direct {v0, v1}, Lcom/kenai/jbosh/BOSHException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->s:Lcom/kenai/jbosh/ac;

    invoke-virtual {v0}, Lcom/kenai/jbosh/ac;->a()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/kenai/jbosh/ComposableBody;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iput-wide v0, p0, Lcom/kenai/jbosh/BOSHClient;->B:J

    :cond_2
    iget-object v2, p0, Lcom/kenai/jbosh/BOSHClient;->w:Lcom/kenai/jbosh/x;

    if-nez v2, :cond_4

    iget-object v3, p0, Lcom/kenai/jbosh/BOSHClient;->x:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct {p0, v0, v1, p1}, Lcom/kenai/jbosh/BOSHClient;->a(JLcom/kenai/jbosh/ComposableBody;)Lcom/kenai/jbosh/ComposableBody;

    move-result-object v0

    :cond_3
    :goto_0
    new-instance v1, Lcom/kenai/jbosh/z;

    invoke-direct {v1, v0}, Lcom/kenai/jbosh/z;-><init>(Lcom/kenai/jbosh/AbstractBody;)V

    invoke-direct {p0, v1}, Lcom/kenai/jbosh/BOSHClient;->a(Lcom/kenai/jbosh/z;)V

    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->j:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->h()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-virtual {v1}, Lcom/kenai/jbosh/z;->a()Lcom/kenai/jbosh/AbstractBody;

    move-result-object v0

    iget-object v3, p0, Lcom/kenai/jbosh/BOSHClient;->q:Lcom/kenai/jbosh/ab;

    iget-object v4, p0, Lcom/kenai/jbosh/BOSHClient;->D:Landroid/content/Context;

    invoke-interface {v3, v2, v0, v4}, Lcom/kenai/jbosh/ab;->a(Lcom/kenai/jbosh/x;Lcom/kenai/jbosh/AbstractBody;Landroid/content/Context;)Lcom/kenai/jbosh/aa;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kenai/jbosh/z;->a(Lcom/kenai/jbosh/aa;)V

    invoke-direct {p0, v0}, Lcom/kenai/jbosh/BOSHClient;->f(Lcom/kenai/jbosh/AbstractBody;)V

    return-void

    :cond_4
    :try_start_2
    invoke-direct {p0, v0, v1, p1}, Lcom/kenai/jbosh/BOSHClient;->b(JLcom/kenai/jbosh/ComposableBody;)Lcom/kenai/jbosh/ComposableBody;

    move-result-object v0

    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->w:Lcom/kenai/jbosh/x;

    invoke-virtual {v1}, Lcom/kenai/jbosh/x;->f()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->A:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public b()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/kenai/jbosh/BOSHClient;->C:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->u:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    new-instance v0, Lcom/kenai/jbosh/BOSHException;

    const-string v1, "SMACK-BOSH: request timeout happened, reset connection"

    invoke-direct {v0, v1}, Lcom/kenai/jbosh/BOSHException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/kenai/jbosh/BOSHClient;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->u:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    move-result v0

    if-lez v0, :cond_2

    invoke-direct {p0}, Lcom/kenai/jbosh/BOSHClient;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const-wide/16 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0, v1}, Lcom/kenai/jbosh/BOSHClient;->a(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/kenai/jbosh/BOSHClient;->i:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public b(Lcom/kenai/jbosh/ComposableBody;)V
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Message body may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lcom/kenai/jbosh/ComposableBody;->e()Lcom/kenai/jbosh/ComposableBody$Builder;

    move-result-object v0

    sget-object v1, Lcom/kenai/jbosh/q;->x:Lcom/kenai/jbosh/BodyQName;

    const-string v2, "terminate"

    invoke-virtual {v0, v1, v2}, Lcom/kenai/jbosh/ComposableBody$Builder;->a(Lcom/kenai/jbosh/BodyQName;Ljava/lang/String;)Lcom/kenai/jbosh/ComposableBody$Builder;

    invoke-virtual {v0}, Lcom/kenai/jbosh/ComposableBody$Builder;->a()Lcom/kenai/jbosh/ComposableBody;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kenai/jbosh/BOSHClient;->a(Lcom/kenai/jbosh/ComposableBody;)V

    return-void
.end method
