.class public Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;
.super Ljava/lang/Object;
.source "Trace.java"


# static fields
.field public static final FINE:B = 0x1t

.field public static final FINER:B = 0x2t

.field public static final FINEST:B = 0x3t

.field private static count:S

.field private static destination:Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceDestination;


# instance fields
.field private on:Z

.field private resource:Ljava/lang/String;

.field private source:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-short v0, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->count:S

    return-void
.end method

.method private constructor <init>(SLjava/lang/String;)V
    .locals 2
    .parameter "source"
    .parameter "resource"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-short p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->source:S

    .line 47
    iput-object p2, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->resource:Ljava/lang/String;

    .line 48
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->destination:Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceDestination;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->destination:Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceDestination;

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->resource:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceDestination;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->on:Z

    .line 49
    return-void

    .line 48
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized getTrace(Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;
    .locals 3
    .parameter "resource"

    .prologue
    .line 26
    const-class v2, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->destination:Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceDestination;

    if-nez v1, :cond_0

    .line 27
    const-string v1, "java.io.File"

    invoke-static {v1}, Lorg/eclipse/paho/client/mqttv3/internal/ExceptionHelper;->isClassAvailable(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 31
    :try_start_1
    const-string v1, "org.eclipse.paho.client.mqttv3.internal.trace.TraceFileDestination"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceDestination;

    sput-object v1, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->destination:Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceDestination;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 36
    :cond_0
    :goto_0
    :try_start_2
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;

    sget-short v1, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->count:S

    invoke-direct {v0, v1, p0}, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;-><init>(SLjava/lang/String;)V

    .line 37
    .local v0, trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;
    sget-short v1, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->count:S

    add-int/lit8 v1, v1, 0x1

    int-to-short v1, v1

    sput-short v1, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->count:S
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 38
    monitor-exit v2

    return-object v0

    .line 26
    .end local v0           #trace:Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 32
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public isOn()Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->on:Z

    return v0
.end method

.method public trace(BI)V
    .locals 8
    .parameter "level"
    .parameter "id"

    .prologue
    const/4 v5, 0x0

    .line 76
    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->on:Z

    if-eqz v0, :cond_0

    .line 77
    sget-object v7, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->destination:Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceDestination;

    new-instance v0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TracePoint;

    iget-short v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->source:S

    const/4 v2, 0x5

    move v3, p1

    move v4, p2

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/paho/client/mqttv3/internal/trace/TracePoint;-><init>(SBBILjava/lang/Throwable;[Ljava/lang/Object;)V

    invoke-interface {v7, v0}, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceDestination;->write(Lorg/eclipse/paho/client/mqttv3/internal/trace/TracePoint;)V

    .line 79
    :cond_0
    return-void
.end method

.method public trace(BI[Ljava/lang/Object;)V
    .locals 8
    .parameter "level"
    .parameter "id"
    .parameter "inserts"

    .prologue
    .line 81
    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->on:Z

    if-eqz v0, :cond_0

    .line 82
    sget-object v7, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->destination:Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceDestination;

    new-instance v0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TracePoint;

    iget-short v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->source:S

    const/4 v2, 0x5

    const/4 v5, 0x0

    move v3, p1

    move v4, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/paho/client/mqttv3/internal/trace/TracePoint;-><init>(SBBILjava/lang/Throwable;[Ljava/lang/Object;)V

    invoke-interface {v7, v0}, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceDestination;->write(Lorg/eclipse/paho/client/mqttv3/internal/trace/TracePoint;)V

    .line 84
    :cond_0
    return-void
.end method

.method public trace(BI[Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 8
    .parameter "level"
    .parameter "id"
    .parameter "inserts"
    .parameter "throwable"

    .prologue
    .line 86
    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->on:Z

    if-eqz v0, :cond_0

    .line 87
    sget-object v7, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->destination:Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceDestination;

    new-instance v0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TracePoint;

    iget-short v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->source:S

    const/4 v2, 0x5

    move v3, p1

    move v4, p2

    move-object v5, p4

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/paho/client/mqttv3/internal/trace/TracePoint;-><init>(SBBILjava/lang/Throwable;[Ljava/lang/Object;)V

    invoke-interface {v7, v0}, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceDestination;->write(Lorg/eclipse/paho/client/mqttv3/internal/trace/TracePoint;)V

    .line 89
    :cond_0
    return-void
.end method

.method public traceBreak(BI)V
    .locals 8
    .parameter "level"
    .parameter "id"

    .prologue
    const/4 v5, 0x0

    .line 66
    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->on:Z

    if-eqz v0, :cond_0

    .line 67
    sget-object v7, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->destination:Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceDestination;

    new-instance v0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TracePoint;

    iget-short v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->source:S

    const/4 v2, 0x3

    move v3, p1

    move v4, p2

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/paho/client/mqttv3/internal/trace/TracePoint;-><init>(SBBILjava/lang/Throwable;[Ljava/lang/Object;)V

    invoke-interface {v7, v0}, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceDestination;->write(Lorg/eclipse/paho/client/mqttv3/internal/trace/TracePoint;)V

    .line 69
    :cond_0
    return-void
.end method

.method public traceCatch(BILjava/lang/Throwable;)V
    .locals 8
    .parameter "level"
    .parameter "id"
    .parameter "throwable"

    .prologue
    .line 71
    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->on:Z

    if-eqz v0, :cond_0

    .line 72
    sget-object v7, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->destination:Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceDestination;

    new-instance v0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TracePoint;

    iget-short v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->source:S

    const/4 v2, 0x4

    const/4 v6, 0x0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/paho/client/mqttv3/internal/trace/TracePoint;-><init>(SBBILjava/lang/Throwable;[Ljava/lang/Object;)V

    invoke-interface {v7, v0}, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceDestination;->write(Lorg/eclipse/paho/client/mqttv3/internal/trace/TracePoint;)V

    .line 74
    :cond_0
    return-void
.end method

.method public traceEntry(BI)V
    .locals 8
    .parameter "level"
    .parameter "id"

    .prologue
    const/4 v5, 0x0

    .line 56
    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->on:Z

    if-eqz v0, :cond_0

    .line 57
    sget-object v7, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->destination:Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceDestination;

    new-instance v0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TracePoint;

    iget-short v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->source:S

    const/4 v2, 0x1

    move v3, p1

    move v4, p2

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/paho/client/mqttv3/internal/trace/TracePoint;-><init>(SBBILjava/lang/Throwable;[Ljava/lang/Object;)V

    invoke-interface {v7, v0}, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceDestination;->write(Lorg/eclipse/paho/client/mqttv3/internal/trace/TracePoint;)V

    .line 59
    :cond_0
    return-void
.end method

.method public traceExit(BI)V
    .locals 8
    .parameter "level"
    .parameter "id"

    .prologue
    const/4 v5, 0x0

    .line 61
    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->on:Z

    if-eqz v0, :cond_0

    .line 62
    sget-object v7, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->destination:Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceDestination;

    new-instance v0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TracePoint;

    iget-short v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/Trace;->source:S

    const/4 v2, 0x2

    move v3, p1

    move v4, p2

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/paho/client/mqttv3/internal/trace/TracePoint;-><init>(SBBILjava/lang/Throwable;[Ljava/lang/Object;)V

    invoke-interface {v7, v0}, Lorg/eclipse/paho/client/mqttv3/internal/trace/TraceDestination;->write(Lorg/eclipse/paho/client/mqttv3/internal/trace/TracePoint;)V

    .line 64
    :cond_0
    return-void
.end method
