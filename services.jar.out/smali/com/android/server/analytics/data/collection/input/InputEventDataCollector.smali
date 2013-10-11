.class public Lcom/android/server/analytics/data/collection/input/InputEventDataCollector;
.super Ljava/lang/Object;
.source "InputEventDataCollector.java"

# interfaces
.implements Lcom/sec/analytics/data/collection/serviceif/LogCollector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/analytics/data/collection/input/InputEventDataCollector$InternalHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "InputEventDataCollector"

.field private static mInternalHandler:Landroid/os/Handler;

.field private static final mSdf:Ljava/text/SimpleDateFormat;


# instance fields
.field private mCallback:Lcom/sec/analytics/data/collection/serviceif/LogCollector$LogCollectorCallback;

.field private mInstance:Lcom/android/server/analytics/data/collection/input/InputEventDataCollector;

.field private mLogGroups:I

.field private mPid:I

.field private mTid:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 54
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/analytics/data/collection/input/InputEventDataCollector;->mSdf:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "InternalHandlerThread"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 106
    .local v0, thread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 107
    new-instance v1, Lcom/android/server/analytics/data/collection/input/InputEventDataCollector$InternalHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/analytics/data/collection/input/InputEventDataCollector$InternalHandler;-><init>(Lcom/android/server/analytics/data/collection/input/InputEventDataCollector;Landroid/os/Looper;)V

    sput-object v1, Lcom/android/server/analytics/data/collection/input/InputEventDataCollector;->mInternalHandler:Landroid/os/Handler;

    .line 108
    sget-object v1, Lcom/android/server/analytics/data/collection/input/InputEventDataCollector;->mInternalHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/analytics/data/collection/input/InputEventDataCollector$1;

    invoke-direct {v2, p0}, Lcom/android/server/analytics/data/collection/input/InputEventDataCollector$1;-><init>(Lcom/android/server/analytics/data/collection/input/InputEventDataCollector;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 119
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    iput v1, p0, Lcom/android/server/analytics/data/collection/input/InputEventDataCollector;->mPid:I

    .line 120
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getId()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/analytics/data/collection/input/InputEventDataCollector;->mTid:J

    .line 121
    iput-object p0, p0, Lcom/android/server/analytics/data/collection/input/InputEventDataCollector;->mInstance:Lcom/android/server/analytics/data/collection/input/InputEventDataCollector;

    .line 122
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/analytics/data/collection/input/InputEventDataCollector;)Lcom/android/server/analytics/data/collection/input/InputEventDataCollector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/server/analytics/data/collection/input/InputEventDataCollector;->mInstance:Lcom/android/server/analytics/data/collection/input/InputEventDataCollector;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/analytics/data/collection/input/InputEventDataCollector;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/server/analytics/data/collection/input/InputEventDataCollector;->processInputEventLog(Ljava/lang/String;)V

    return-void
.end method

.method private static native enableLogCollection(Z)V
.end method

.method public static log(ILjava/lang/String;)V
    .locals 3
    .parameter "logGroup"
    .parameter "log"

    .prologue
    .line 57
    sget-object v0, Lcom/android/server/analytics/data/collection/input/InputEventDataCollector;->mInternalHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 59
    return-void
.end method

.method private processInputEventLog(Ljava/lang/String;)V
    .locals 6
    .parameter "log"

    .prologue
    const/4 v5, 0x4

    .line 162
    const-string v3, "InputEventDataCollector"

    const-string v4, "processInputEvent"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    new-array v0, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/android/server/analytics/data/collection/input/InputEventDataCollector;->mSdf:Ljava/text/SimpleDateFormat;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/android/server/analytics/data/collection/input/InputEventDataCollector;->mPid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    const/4 v3, 0x2

    iget-wide v4, p0, Lcom/android/server/analytics/data/collection/input/InputEventDataCollector;->mTid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v0, v3

    const/4 v3, 0x3

    aput-object p1, v0, v3

    .line 167
    .local v0, arguments:[Ljava/lang/Object;
    const-string v3, "{0} {1,number,##########} {2,number,##########} I input_event: {3}"

    invoke-static {v3, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 170
    .local v2, result:Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/analytics/data/collection/input/InputEventDataCollector;->mCallback:Lcom/sec/analytics/data/collection/serviceif/LogCollector$LogCollectorCallback;

    const/4 v4, 0x4

    invoke-interface {v3, v4, v2}, Lcom/sec/analytics/data/collection/serviceif/LogCollector$LogCollectorCallback;->processLog(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :goto_0
    return-void

    .line 172
    :catch_0
    move-exception v1

    .line 173
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private supportedLogGroups(I)Z
    .locals 2
    .parameter "logGroups"

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/android/server/analytics/data/collection/input/InputEventDataCollector;->getSupportedLogGroups()I

    move-result v0

    .line 200
    .local v0, supported:I
    and-int v1, v0, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getActiveLogGroups()I
    .locals 1

    .prologue
    .line 195
    iget v0, p0, Lcom/android/server/analytics/data/collection/input/InputEventDataCollector;->mLogGroups:I

    return v0
.end method

.method public getSupportedLogGroups()I
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x4

    return v0
.end method

.method public registerLogCollectorCallback(Lcom/sec/analytics/data/collection/serviceif/LogCollector$LogCollectorCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/server/analytics/data/collection/input/InputEventDataCollector;->mCallback:Lcom/sec/analytics/data/collection/serviceif/LogCollector$LogCollectorCallback;

    .line 132
    return-void
.end method

.method public restartLogCollection(I)V
    .locals 0
    .parameter "logGroups"

    .prologue
    .line 137
    return-void
.end method

.method public startLogCollection(I)V
    .locals 3
    .parameter "logGroups"

    .prologue
    .line 141
    invoke-direct {p0, p1}, Lcom/android/server/analytics/data/collection/input/InputEventDataCollector;->supportedLogGroups(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " log groups not supported."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_0
    iput p1, p0, Lcom/android/server/analytics/data/collection/input/InputEventDataCollector;->mLogGroups:I

    .line 145
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/analytics/data/collection/input/InputEventDataCollector;->enableLogCollection(Z)V

    .line 155
    return-void
.end method

.method public stopLogCollection()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 179
    invoke-static {v0}, Lcom/android/server/analytics/data/collection/input/InputEventDataCollector;->enableLogCollection(Z)V

    .line 185
    iput v0, p0, Lcom/android/server/analytics/data/collection/input/InputEventDataCollector;->mLogGroups:I

    .line 186
    return-void
.end method

.method public unregisterLogCollectorCallback(Lcom/sec/analytics/data/collection/serviceif/LogCollector$LogCollectorCallback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 190
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/analytics/data/collection/input/InputEventDataCollector;->mCallback:Lcom/sec/analytics/data/collection/serviceif/LogCollector$LogCollectorCallback;

    .line 191
    return-void
.end method
