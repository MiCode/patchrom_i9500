.class public Lorg/eclipse/paho/client/mqttv3/internal/trace/TracePoint;
.super Ljava/lang/Object;
.source "TracePoint.java"


# static fields
.field public static final BREAK:B = 0x3t

.field public static final CATCH:B = 0x4t

.field public static final ENTRY:B = 0x1t

.field public static final EXIT:B = 0x2t

.field public static final OTHER:B = 0x5t


# instance fields
.field public id:S

.field public inserts:[Ljava/lang/Object;

.field public level:B

.field public source:S

.field public stacktrace:[Ljava/lang/String;

.field public threadName:Ljava/lang/String;

.field public throwable:Ljava/lang/Throwable;

.field public timestamp:J

.field public type:B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public constructor <init>(SBBILjava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 2
    .parameter "source"
    .parameter "type"
    .parameter "level"
    .parameter "id"
    .parameter "throwable"
    .parameter "inserts"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-short p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TracePoint;->source:S

    .line 36
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TracePoint;->threadName:Ljava/lang/String;

    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TracePoint;->timestamp:J

    .line 38
    iput-byte p2, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TracePoint;->type:B

    .line 39
    iput-byte p3, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TracePoint;->level:B

    .line 40
    int-to-short v0, p4

    iput-short v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TracePoint;->id:S

    .line 41
    iput-object p5, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TracePoint;->throwable:Ljava/lang/Throwable;

    .line 42
    iput-object p6, p0, Lorg/eclipse/paho/client/mqttv3/internal/trace/TracePoint;->inserts:[Ljava/lang/Object;

    .line 43
    return-void
.end method
