.class public Landroid/hardware/contextaware/utilbundle/logger/CaLogger;
.super Ljava/lang/Object;
.source "CaLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/contextaware/utilbundle/logger/CaLogger$1;,
        Landroid/hardware/contextaware/utilbundle/logger/CaLogger$Level;
    }
.end annotation


# static fields
.field private static final FILE_NAME:Ljava/lang/String; = "CAELogger"

.field public static final TAG:Ljava/lang/String; = "CAE"

.field private static volatile instance:Landroid/hardware/contextaware/utilbundle/logger/CaLogger;

.field private static isCaller:Z

.field private static isConsoleLogging:Z

.field private static isFileLogging:Z

.field private static mLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 33
    sput-boolean v1, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->isConsoleLogging:Z

    .line 36
    const/4 v0, 0x0

    sput-boolean v0, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->isFileLogging:Z

    .line 39
    sget-object v0, Landroid/hardware/contextaware/utilbundle/logger/CaLogger$Level;->TRACE:Landroid/hardware/contextaware/utilbundle/logger/CaLogger$Level;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->mLevel:I

    .line 42
    sput-boolean v1, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->isCaller:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 24
    sget-boolean v0, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->isConsoleLogging:Z

    return v0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 24
    sget v0, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->mLevel:I

    return v0
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 24
    sget-boolean v0, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->isFileLogging:Z

    return v0
.end method

.method static synthetic access$500(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 24
    invoke-static {p0, p1, p2, p3}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->getFilePattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600()Z
    .locals 1

    .prologue
    .line 24
    sget-boolean v0, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->isCaller:Z

    return v0
.end method

.method public static debug(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 265
    sget-object v0, Landroid/hardware/contextaware/utilbundle/logger/CaLogger$Level;->DEBUG:Landroid/hardware/contextaware/utilbundle/logger/CaLogger$Level;

    invoke-virtual {v0, p0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger$Level;->consoleLogging(Ljava/lang/String;)V

    .line 266
    sget-object v0, Landroid/hardware/contextaware/utilbundle/logger/CaLogger$Level;->DEBUG:Landroid/hardware/contextaware/utilbundle/logger/CaLogger$Level;

    invoke-virtual {v0, p0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger$Level;->fileLogging(Ljava/lang/String;)V

    .line 267
    return-void
.end method

.method public static error(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 298
    sget-object v0, Landroid/hardware/contextaware/utilbundle/logger/CaLogger$Level;->ERROR:Landroid/hardware/contextaware/utilbundle/logger/CaLogger$Level;

    invoke-virtual {v0, p0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger$Level;->consoleLogging(Ljava/lang/String;)V

    .line 299
    sget-object v0, Landroid/hardware/contextaware/utilbundle/logger/CaLogger$Level;->ERROR:Landroid/hardware/contextaware/utilbundle/logger/CaLogger$Level;

    invoke-virtual {v0, p0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger$Level;->fileLogging(Ljava/lang/String;)V

    .line 300
    return-void
.end method

.method public static exception(Ljava/lang/Throwable;)V
    .locals 5
    .parameter "exMsg"

    .prologue
    .line 309
    sget-object v3, Landroid/hardware/contextaware/utilbundle/logger/CaLogger$Level;->EXCEPTION:Landroid/hardware/contextaware/utilbundle/logger/CaLogger$Level;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger$Level;->consoleLogging(Ljava/lang/String;)V

    .line 310
    sget-object v3, Landroid/hardware/contextaware/utilbundle/logger/CaLogger$Level;->EXCEPTION:Landroid/hardware/contextaware/utilbundle/logger/CaLogger$Level;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger$Level;->fileLogging(Ljava/lang/String;)V

    .line 312
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 313
    .local v2, trace:[Ljava/lang/StackTraceElement;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 314
    sget-object v3, Landroid/hardware/contextaware/utilbundle/logger/CaLogger$Level;->EXCEPTION:Landroid/hardware/contextaware/utilbundle/logger/CaLogger$Level;

    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger$Level;->consoleLogging(Ljava/lang/String;)V

    .line 315
    sget-object v3, Landroid/hardware/contextaware/utilbundle/logger/CaLogger$Level;->EXCEPTION:Landroid/hardware/contextaware/utilbundle/logger/CaLogger$Level;

    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger$Level;->fileLogging(Ljava/lang/String;)V

    .line 313
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 318
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 319
    .local v1, ourCause:Ljava/lang/Throwable;
    if-eqz v1, :cond_1

    .line 320
    invoke-static {v1}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->exception(Ljava/lang/Throwable;)V

    .line 322
    :cond_1
    return-void
.end method

.method private static getFilePattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "priority"
    .parameter "tag"
    .parameter "caller"
    .parameter "msg"

    .prologue
    .line 340
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 341
    .local v5, utcDate:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 342
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 343
    .local v6, year:I
    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int/lit8 v3, v7, 0x1

    .line 344
    .local v3, month:I
    const/4 v7, 0x5

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 345
    .local v0, date:I
    const/16 v7, 0xb

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 346
    .local v1, hour:I
    const/16 v7, 0xc

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 347
    .local v2, min:I
    const/16 v7, 0xd

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 349
    .local v4, sec:I
    const-string v7, "[%4d-%02d-%02d %02d:%02d:%02d] [%s] [%s] %s %s"

    const/16 v8, 0xa

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x6

    aput-object p0, v8, v9

    const/4 v9, 0x7

    aput-object p1, v8, v9

    const/16 v9, 0x8

    aput-object p2, v8, v9

    const/16 v9, 0x9

    aput-object p3, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public static getInstance()Landroid/hardware/contextaware/utilbundle/logger/CaLogger;
    .locals 2

    .prologue
    .line 240
    sget-object v0, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->instance:Landroid/hardware/contextaware/utilbundle/logger/CaLogger;

    if-nez v0, :cond_1

    .line 241
    const-class v1, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;

    monitor-enter v1

    .line 242
    :try_start_0
    sget-object v0, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->instance:Landroid/hardware/contextaware/utilbundle/logger/CaLogger;

    if-nez v0, :cond_0

    .line 243
    new-instance v0, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;

    invoke-direct {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;-><init>()V

    sput-object v0, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->instance:Landroid/hardware/contextaware/utilbundle/logger/CaLogger;

    .line 245
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    :cond_1
    sget-object v0, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->instance:Landroid/hardware/contextaware/utilbundle/logger/CaLogger;

    return-object v0

    .line 245
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static info(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 276
    sget-object v0, Landroid/hardware/contextaware/utilbundle/logger/CaLogger$Level;->INFO:Landroid/hardware/contextaware/utilbundle/logger/CaLogger$Level;

    invoke-virtual {v0, p0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger$Level;->consoleLogging(Ljava/lang/String;)V

    .line 277
    sget-object v0, Landroid/hardware/contextaware/utilbundle/logger/CaLogger$Level;->INFO:Landroid/hardware/contextaware/utilbundle/logger/CaLogger$Level;

    invoke-virtual {v0, p0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger$Level;->fileLogging(Ljava/lang/String;)V

    .line 278
    return-void
.end method

.method public static setConsoleLoggingEnable(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 360
    sput-boolean p0, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->isConsoleLogging:Z

    .line 361
    return-void
.end method

.method public static setFileLoggingEnable(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 370
    const/4 v0, 0x0

    .line 372
    .local v0, check:Z
    if-eqz p0, :cond_1

    .line 373
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaFileLogger;->getInstance()Landroid/hardware/contextaware/utilbundle/logger/CaFileLogger;

    move-result-object v1

    const-string v2, "CAELogger"

    invoke-virtual {v1, v2}, Landroid/hardware/contextaware/utilbundle/logger/CaFileLogger;->startLogging(Ljava/lang/String;)Z

    move-result v0

    .line 378
    :goto_0
    if-eqz v0, :cond_0

    .line 379
    sput-boolean p0, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->isFileLogging:Z

    .line 381
    :cond_0
    return-void

    .line 375
    :cond_1
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaFileLogger;->getInstance()Landroid/hardware/contextaware/utilbundle/logger/CaFileLogger;

    move-result-object v1

    const-string v2, "CAELogger"

    invoke-virtual {v1, v2}, Landroid/hardware/contextaware/utilbundle/logger/CaFileLogger;->stopLogging(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static setLogOption(IZ)V
    .locals 0
    .parameter "level"
    .parameter "enableCaller"

    .prologue
    .line 392
    sput p0, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->mLevel:I

    .line 393
    sput-boolean p1, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->isCaller:Z

    .line 394
    return-void
.end method

.method public static trace()V
    .locals 2

    .prologue
    .line 254
    sget-object v0, Landroid/hardware/contextaware/utilbundle/logger/CaLogger$Level;->TRACE:Landroid/hardware/contextaware/utilbundle/logger/CaLogger$Level;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger$Level;->consoleLogging(Ljava/lang/String;)V

    .line 255
    sget-object v0, Landroid/hardware/contextaware/utilbundle/logger/CaLogger$Level;->TRACE:Landroid/hardware/contextaware/utilbundle/logger/CaLogger$Level;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger$Level;->fileLogging(Ljava/lang/String;)V

    .line 256
    return-void
.end method

.method public static warning(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 287
    sget-object v0, Landroid/hardware/contextaware/utilbundle/logger/CaLogger$Level;->WARN:Landroid/hardware/contextaware/utilbundle/logger/CaLogger$Level;

    invoke-virtual {v0, p0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger$Level;->consoleLogging(Ljava/lang/String;)V

    .line 288
    sget-object v0, Landroid/hardware/contextaware/utilbundle/logger/CaLogger$Level;->WARN:Landroid/hardware/contextaware/utilbundle/logger/CaLogger$Level;

    invoke-virtual {v0, p0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger$Level;->fileLogging(Ljava/lang/String;)V

    .line 289
    return-void
.end method
