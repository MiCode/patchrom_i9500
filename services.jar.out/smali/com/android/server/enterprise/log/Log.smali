.class public final Lcom/android/server/enterprise/log/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field public static final LVL_DEBUG:I = 0x3

.field public static final LVL_ERROR:I = 0x6

.field public static final LVL_INFO:I = 0x4

.field public static final LVL_SENSITIVE:I = 0x1

.field public static final LVL_VERBOSE:I = 0x2

.field public static final LVL_WARNING:I = 0x5

.field private static mLoggerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/enterprise/log/Logger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/log/Log;->mLoggerList:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    return-void
.end method

.method public static declared-synchronized addLogger(Lcom/android/server/enterprise/log/Logger;)Z
    .locals 3
    .parameter "logger"

    .prologue
    const/4 v0, 0x0

    .line 84
    const-class v1, Lcom/android/server/enterprise/log/Log;

    monitor-enter v1

    if-nez p0, :cond_1

    .line 90
    :cond_0
    :goto_0
    monitor-exit v1

    return v0

    .line 87
    :cond_1
    :try_start_0
    sget-object v2, Lcom/android/server/enterprise/log/Log;->mLoggerList:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 88
    sget-object v0, Lcom/android/server/enterprise/log/Log;->mLoggerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    goto :goto_0

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 148
    sget-object v2, Lcom/android/server/enterprise/log/Log;->mLoggerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/log/Logger;

    .line 149
    .local v1, ilog:Lcom/android/server/enterprise/log/Logger;
    const/4 v2, 0x3

    invoke-virtual {v1, v2, p0, p1}, Lcom/android/server/enterprise/log/Logger;->log(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 151
    .end local v1           #ilog:Lcom/android/server/enterprise/log/Logger;
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 242
    sget-object v2, Lcom/android/server/enterprise/log/Log;->mLoggerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/log/Logger;

    .line 243
    .local v1, ilog:Lcom/android/server/enterprise/log/Logger;
    const/4 v2, 0x6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Lcom/android/server/enterprise/log/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, p0, v3}, Lcom/android/server/enterprise/log/Logger;->log(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 245
    .end local v1           #ilog:Lcom/android/server/enterprise/log/Logger;
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 193
    sget-object v2, Lcom/android/server/enterprise/log/Log;->mLoggerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/log/Logger;

    .line 194
    .local v1, ilog:Lcom/android/server/enterprise/log/Logger;
    const/4 v2, 0x6

    invoke-virtual {v1, v2, p0, p1}, Lcom/android/server/enterprise/log/Logger;->log(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 196
    .end local v1           #ilog:Lcom/android/server/enterprise/log/Logger;
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 293
    sget-object v2, Lcom/android/server/enterprise/log/Log;->mLoggerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/log/Logger;

    .line 294
    .local v1, ilog:Lcom/android/server/enterprise/log/Logger;
    const/4 v2, 0x6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Lcom/android/server/enterprise/log/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, p0, v3}, Lcom/android/server/enterprise/log/Logger;->log(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 296
    .end local v1           #ilog:Lcom/android/server/enterprise/log/Logger;
    :cond_0
    return-void
.end method

.method public static declared-synchronized getLogger(Ljava/lang/String;)Lcom/android/server/enterprise/log/Logger;
    .locals 5
    .parameter "loggerName"

    .prologue
    const/4 v2, 0x0

    .line 112
    const-class v3, Lcom/android/server/enterprise/log/Log;

    monitor-enter v3

    if-nez p0, :cond_0

    move-object v1, v2

    .line 120
    :goto_0
    monitor-exit v3

    return-object v1

    .line 115
    :cond_0
    :try_start_0
    sget-object v4, Lcom/android/server/enterprise/log/Log;->mLoggerList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/log/Logger;

    .line 116
    .local v1, logger:Lcom/android/server/enterprise/log/Logger;
    iget-object v4, v1, Lcom/android/server/enterprise/log/Logger;->loggerName:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .end local v1           #logger:Lcom/android/server/enterprise/log/Logger;
    :cond_2
    move-object v1, v2

    .line 120
    goto :goto_0

    .line 112
    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 4
    .parameter "tr"

    .prologue
    .line 322
    if-nez p0, :cond_0

    .line 323
    const-string v3, ""

    .line 340
    :goto_0
    return-object v3

    .line 329
    :cond_0
    move-object v2, p0

    .line 330
    .local v2, t:Ljava/lang/Throwable;
    :goto_1
    if-eqz v2, :cond_2

    .line 331
    instance-of v3, v2, Ljava/net/UnknownHostException;

    if-eqz v3, :cond_1

    .line 332
    const-string v3, ""

    goto :goto_0

    .line 334
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    goto :goto_1

    .line 337
    :cond_2
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 338
    .local v1, sw:Ljava/io/StringWriter;
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 339
    .local v0, pw:Ljava/io/PrintWriter;
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 340
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 163
    sget-object v2, Lcom/android/server/enterprise/log/Log;->mLoggerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/log/Logger;

    .line 164
    .local v1, ilog:Lcom/android/server/enterprise/log/Logger;
    const/4 v2, 0x4

    invoke-virtual {v1, v2, p0, p1}, Lcom/android/server/enterprise/log/Logger;->log(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 166
    .end local v1           #ilog:Lcom/android/server/enterprise/log/Logger;
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 259
    sget-object v2, Lcom/android/server/enterprise/log/Log;->mLoggerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/log/Logger;

    .line 260
    .local v1, ilog:Lcom/android/server/enterprise/log/Logger;
    const/4 v2, 0x6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Lcom/android/server/enterprise/log/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, p0, v3}, Lcom/android/server/enterprise/log/Logger;->log(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 262
    .end local v1           #ilog:Lcom/android/server/enterprise/log/Logger;
    :cond_0
    return-void
.end method

.method public static declared-synchronized removeLogger(Lcom/android/server/enterprise/log/Logger;)Z
    .locals 2
    .parameter "logger"

    .prologue
    .line 99
    const-class v1, Lcom/android/server/enterprise/log/Log;

    monitor-enter v1

    if-nez p0, :cond_0

    .line 100
    const/4 v0, 0x0

    .line 103
    :goto_0
    monitor-exit v1

    return v0

    .line 102
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/log/Logger;->flush()V

    .line 103
    sget-object v0, Lcom/android/server/enterprise/log/Log;->mLoggerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    goto :goto_0

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static s(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 208
    sget-object v2, Lcom/android/server/enterprise/log/Log;->mLoggerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/log/Logger;

    .line 209
    .local v1, ilog:Lcom/android/server/enterprise/log/Logger;
    const/4 v2, 0x1

    invoke-virtual {v1, v2, p0, p1}, Lcom/android/server/enterprise/log/Logger;->log(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 211
    .end local v1           #ilog:Lcom/android/server/enterprise/log/Logger;
    :cond_0
    return-void
.end method

.method public static s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 310
    sget-object v2, Lcom/android/server/enterprise/log/Log;->mLoggerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/log/Logger;

    .line 311
    .local v1, ilog:Lcom/android/server/enterprise/log/Logger;
    const/4 v2, 0x6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Lcom/android/server/enterprise/log/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, p0, v3}, Lcom/android/server/enterprise/log/Logger;->log(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 313
    .end local v1           #ilog:Lcom/android/server/enterprise/log/Logger;
    :cond_0
    return-void
.end method

.method public static stringValueOf(I)Ljava/lang/String;
    .locals 1
    .parameter "logLevel"

    .prologue
    .line 347
    packed-switch p0, :pswitch_data_0

    .line 361
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 349
    :pswitch_0
    const-string v0, "SENSITIVE"

    goto :goto_0

    .line 351
    :pswitch_1
    const-string v0, "VERBOSE"

    goto :goto_0

    .line 353
    :pswitch_2
    const-string v0, "DEBUG"

    goto :goto_0

    .line 355
    :pswitch_3
    const-string v0, "INFO"

    goto :goto_0

    .line 357
    :pswitch_4
    const-string v0, "WARNING"

    goto :goto_0

    .line 359
    :pswitch_5
    const-string v0, "ERROR"

    goto :goto_0

    .line 347
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 133
    sget-object v2, Lcom/android/server/enterprise/log/Log;->mLoggerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/log/Logger;

    .line 134
    .local v1, ilog:Lcom/android/server/enterprise/log/Logger;
    const/4 v2, 0x2

    invoke-virtual {v1, v2, p0, p1}, Lcom/android/server/enterprise/log/Logger;->log(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 136
    .end local v1           #ilog:Lcom/android/server/enterprise/log/Logger;
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 225
    sget-object v2, Lcom/android/server/enterprise/log/Log;->mLoggerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/log/Logger;

    .line 226
    .local v1, ilog:Lcom/android/server/enterprise/log/Logger;
    const/4 v2, 0x6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Lcom/android/server/enterprise/log/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, p0, v3}, Lcom/android/server/enterprise/log/Logger;->log(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 228
    .end local v1           #ilog:Lcom/android/server/enterprise/log/Logger;
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 178
    sget-object v2, Lcom/android/server/enterprise/log/Log;->mLoggerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/log/Logger;

    .line 179
    .local v1, ilog:Lcom/android/server/enterprise/log/Logger;
    const/4 v2, 0x5

    invoke-virtual {v1, v2, p0, p1}, Lcom/android/server/enterprise/log/Logger;->log(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 181
    .end local v1           #ilog:Lcom/android/server/enterprise/log/Logger;
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 276
    sget-object v2, Lcom/android/server/enterprise/log/Log;->mLoggerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/log/Logger;

    .line 277
    .local v1, ilog:Lcom/android/server/enterprise/log/Logger;
    const/4 v2, 0x6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Lcom/android/server/enterprise/log/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, p0, v3}, Lcom/android/server/enterprise/log/Logger;->log(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 279
    .end local v1           #ilog:Lcom/android/server/enterprise/log/Logger;
    :cond_0
    return-void
.end method
