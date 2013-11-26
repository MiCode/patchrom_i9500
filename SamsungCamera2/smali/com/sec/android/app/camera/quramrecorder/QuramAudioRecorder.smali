.class public Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;
.super Ljava/lang/Object;
.source "QuramAudioRecorder.java"


# static fields
.field private static QURAM_RECORDER_AUDIO_ENCODING:I = 0x0

.field private static QURAM_RECORDER_BPP:I = 0x0

.field private static QURAM_RECORDER_BUFFERSIZE:I = 0x0

.field private static QURAM_RECORDER_CHANNELS:I = 0x0

.field private static final QURAM_RECORDER_DURATION:J = 0x2328L

.field private static QURAM_RECORDER_SAMPLERATE:I = 0x0

.field private static audioThread:Ljava/lang/Thread; = null

.field private static final threadInterval:J = 0x32L

.field private static final threadSleep:J = 0xaL


# instance fields
.field private audio_window_frame:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/camera/quramrecorder/QuramAudioFrameData;",
            ">;"
        }
    .end annotation
.end field

.field private isRunning:Z

.field private qrecorder:Lcom/quramsoft/qdio/QdioRecorder;

.field private readAudioStreamBuffer:[B

.field private readAudioStreamBufferSize:I

.field private segIdx:I

.field private time_s:J

.field private time_t:J

.field private visualization:[I

.field private visualization_duration:J

.field private visualizer:Lcom/quramsoft/qdio/QdioVisualization;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 433
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->audioThread:Ljava/lang/Thread;

    .line 442
    sput v1, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->QURAM_RECORDER_BPP:I

    .line 443
    const v0, 0xac44

    sput v0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->QURAM_RECORDER_SAMPLERATE:I

    .line 444
    sput v1, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->QURAM_RECORDER_CHANNELS:I

    .line 445
    const/4 v0, 0x2

    sput v0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->QURAM_RECORDER_AUDIO_ENCODING:I

    .line 446
    const/16 v0, 0x4000

    sput v0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->QURAM_RECORDER_BUFFERSIZE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 395
    iput-object v0, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->visualization:[I

    .line 396
    iput v1, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->segIdx:I

    .line 421
    iput-object v0, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->qrecorder:Lcom/quramsoft/qdio/QdioRecorder;

    .line 423
    new-instance v0, Lcom/quramsoft/qdio/QdioVisualization;

    invoke-direct {v0}, Lcom/quramsoft/qdio/QdioVisualization;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->visualizer:Lcom/quramsoft/qdio/QdioVisualization;

    .line 428
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->audio_window_frame:Ljava/util/ArrayList;

    .line 434
    iput-boolean v1, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->isRunning:Z

    .line 448
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->visualization_duration:J

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;)Lcom/quramsoft/qdio/QdioRecorder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->qrecorder:Lcom/quramsoft/qdio/QdioRecorder;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 14
    iget-wide v0, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->visualization_duration:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->visualization:[I

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;[I)[I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->visualization:[I

    return-object p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->isRunning:Z

    return v0
.end method

.method static synthetic access$302(Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-boolean p1, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->isRunning:Z

    return p1
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 14
    iget-wide v0, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->time_t:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-wide p1, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->time_t:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 14
    iget-wide v0, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->time_s:J

    return-wide v0
.end method

.method static synthetic access$502(Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-wide p1, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->time_s:J

    return-wide p1
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget v0, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->readAudioStreamBufferSize:I

    return v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->readAudioStreamBuffer:[B

    return-object v0
.end method

.method static synthetic access$802(Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput p1, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->segIdx:I

    return p1
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->releaseRecorder()V

    return-void
.end method

.method private getVisualizationAmplitude()I
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 371
    const/4 v0, 0x0

    .line 372
    .local v0, ret:I
    iget-object v2, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->visualization:[I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->visualization:[I

    array-length v2, v2

    if-nez v2, :cond_1

    .line 387
    :cond_0
    :goto_0
    return v1

    .line 374
    :cond_1
    iget v2, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->segIdx:I

    iget-object v3, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->visualization:[I

    array-length v3, v3

    if-lt v2, v3, :cond_2

    .line 375
    iget-object v2, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->visualization:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->segIdx:I

    .line 377
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->visualization:[I

    iget v3, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->segIdx:I

    aget v0, v2, v3

    .line 379
    iget v2, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->segIdx:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->segIdx:I

    .line 380
    iget v2, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->segIdx:I

    const-wide/16 v3, 0xc8

    iget-wide v5, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->visualization_duration:J

    const-wide/16 v7, 0x2

    div-long/2addr v5, v7

    add-long/2addr v3, v5

    iget-wide v5, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->visualization_duration:J

    div-long/2addr v3, v5

    long-to-int v3, v3

    if-le v2, v3, :cond_3

    .line 382
    iget v2, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->segIdx:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->segIdx:I

    .line 385
    :cond_3
    iget v2, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->segIdx:I

    if-gtz v2, :cond_4

    .line 386
    iput v1, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->segIdx:I

    :cond_4
    move v1, v0

    .line 387
    goto :goto_0
.end method

.method private releaseRecorder()V
    .locals 2

    .prologue
    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->isRunning:Z

    .line 22
    iget-object v0, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->qrecorder:Lcom/quramsoft/qdio/QdioRecorder;

    if-eqz v0, :cond_0

    .line 24
    const-string v0, "QURAM"

    const-string v1, "recorder release start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    iget-object v0, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->qrecorder:Lcom/quramsoft/qdio/QdioRecorder;

    invoke-virtual {v0}, Lcom/quramsoft/qdio/QdioRecorder;->stop()V

    .line 26
    const-string v0, "QURAM"

    const-string v1, "recorder release end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :cond_0
    return-void
.end method

.method private writeAudioFrame()[B
    .locals 9

    .prologue
    .line 276
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 279
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->deleteOverTimeFrame()V

    .line 280
    new-instance v1, Lcom/sec/android/app/camera/quramrecorder/QuramDate;

    invoke-direct {v1}, Lcom/sec/android/app/camera/quramrecorder/QuramDate;-><init>()V

    .line 282
    .local v1, currentdate:Lcom/sec/android/app/camera/quramrecorder/QuramDate;
    iget-object v5, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->audio_window_frame:Ljava/util/ArrayList;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->audio_window_frame:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 284
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    iget-object v5, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->audio_window_frame:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 286
    iget-object v5, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->audio_window_frame:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/quramrecorder/QuramAudioFrameData;

    .line 287
    .local v3, frameData:Lcom/sec/android/app/camera/quramrecorder/QuramAudioFrameData;
    iget-wide v5, v1, Lcom/sec/android/app/camera/quramrecorder/QuramDate;->milsec:J

    iget-object v7, v3, Lcom/sec/android/app/camera/quramrecorder/QuramAudioFrameData;->frameDataEndTime:Lcom/sec/android/app/camera/quramrecorder/QuramDate;

    iget-wide v7, v7, Lcom/sec/android/app/camera/quramrecorder/QuramDate;->milsec:J

    cmp-long v5, v5, v7

    if-lez v5, :cond_0

    .line 291
    :try_start_0
    iget-object v5, v3, Lcom/sec/android/app/camera/quramrecorder/QuramAudioFrameData;->frameData:[B

    invoke-virtual {v0, v5}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 293
    :catch_0
    move-exception v2

    .line 296
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 303
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #frameData:Lcom/sec/android/app/camera/quramrecorder/QuramAudioFrameData;
    .end local v4           #i:I
    :cond_1
    const/4 v5, 0x0

    .line 306
    :goto_2
    return-object v5

    .restart local v4       #i:I
    :cond_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    goto :goto_2
.end method

.method private writeHeader([BIIII)[B
    .locals 9
    .parameter "data"
    .parameter "channels"
    .parameter "longsamplerate"
    .parameter "byterate"
    .parameter "bpp"

    .prologue
    const/16 v8, 0x20

    const/16 v7, 0x10

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 311
    const/16 v2, 0x2c

    new-array v1, v2, [B

    .line 312
    .local v1, header:[B
    array-length v2, p1

    add-int/lit8 v0, v2, 0x24

    .line 314
    .local v0, datalen:I
    const/16 v2, 0x52

    aput-byte v2, v1, v4

    .line 315
    const/16 v2, 0x49

    aput-byte v2, v1, v5

    .line 316
    const/4 v2, 0x2

    const/16 v3, 0x46

    aput-byte v3, v1, v2

    .line 317
    const/4 v2, 0x3

    const/16 v3, 0x46

    aput-byte v3, v1, v2

    .line 319
    and-int/lit16 v2, v0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v6

    .line 320
    const/4 v2, 0x5

    shr-int/lit8 v3, v0, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 321
    const/4 v2, 0x6

    shr-int/lit8 v3, v0, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 322
    const/4 v2, 0x7

    shr-int/lit8 v3, v0, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 324
    const/16 v2, 0x8

    const/16 v3, 0x57

    aput-byte v3, v1, v2

    .line 325
    const/16 v2, 0x9

    const/16 v3, 0x41

    aput-byte v3, v1, v2

    .line 326
    const/16 v2, 0xa

    const/16 v3, 0x56

    aput-byte v3, v1, v2

    .line 327
    const/16 v2, 0xb

    const/16 v3, 0x45

    aput-byte v3, v1, v2

    .line 328
    const/16 v2, 0xc

    const/16 v3, 0x66

    aput-byte v3, v1, v2

    .line 329
    const/16 v2, 0xd

    const/16 v3, 0x6d

    aput-byte v3, v1, v2

    .line 330
    const/16 v2, 0xe

    const/16 v3, 0x74

    aput-byte v3, v1, v2

    .line 331
    const/16 v2, 0xf

    aput-byte v8, v1, v2

    .line 332
    aput-byte v7, v1, v7

    .line 333
    const/16 v2, 0x11

    aput-byte v4, v1, v2

    .line 334
    const/16 v2, 0x12

    aput-byte v4, v1, v2

    .line 335
    const/16 v2, 0x13

    aput-byte v4, v1, v2

    .line 336
    const/16 v2, 0x14

    aput-byte v5, v1, v2

    .line 337
    const/16 v2, 0x15

    aput-byte v4, v1, v2

    .line 338
    const/16 v2, 0x16

    int-to-byte v3, p2

    aput-byte v3, v1, v2

    .line 339
    const/16 v2, 0x17

    aput-byte v4, v1, v2

    .line 340
    const/16 v2, 0x18

    and-int/lit16 v3, p3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 341
    const/16 v2, 0x19

    shr-int/lit8 v3, p3, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 342
    const/16 v2, 0x1a

    shr-int/lit8 v3, p3, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 343
    const/16 v2, 0x1b

    shr-int/lit8 v3, p3, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 344
    const/16 v2, 0x1c

    and-int/lit16 v3, p4, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 345
    const/16 v2, 0x1d

    shr-int/lit8 v3, p4, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 346
    const/16 v2, 0x1e

    shr-int/lit8 v3, p4, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 347
    const/16 v2, 0x1f

    shr-int/lit8 v3, p4, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 348
    aput-byte v6, v1, v8

    .line 349
    const/16 v2, 0x21

    aput-byte v4, v1, v2

    .line 350
    const/16 v2, 0x22

    int-to-byte v3, p5

    aput-byte v3, v1, v2

    .line 351
    const/16 v2, 0x23

    aput-byte v4, v1, v2

    .line 352
    const/16 v2, 0x24

    const/16 v3, 0x64

    aput-byte v3, v1, v2

    .line 353
    const/16 v2, 0x25

    const/16 v3, 0x61

    aput-byte v3, v1, v2

    .line 354
    const/16 v2, 0x26

    const/16 v3, 0x74

    aput-byte v3, v1, v2

    .line 355
    const/16 v2, 0x27

    const/16 v3, 0x61

    aput-byte v3, v1, v2

    .line 356
    const/16 v2, 0x28

    array-length v3, p1

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 357
    const/16 v2, 0x29

    array-length v3, p1

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 358
    const/16 v2, 0x2a

    array-length v3, p1

    shr-int/lit8 v3, v3, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 359
    const/16 v2, 0x2b

    array-length v3, p1

    shr-int/lit8 v3, v3, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 361
    return-object v1
.end method


# virtual methods
.method public addRecorde()V
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->readAudioStreamBuffer:[B

    iget v1, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->readAudioStreamBufferSize:I

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->addRecorde([BI)V

    .line 233
    return-void
.end method

.method public addRecorde([BI)V
    .locals 2
    .parameter "buffer"
    .parameter "size"

    .prologue
    .line 237
    new-instance v0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioFrameData;

    invoke-direct {v0}, Lcom/sec/android/app/camera/quramrecorder/QuramAudioFrameData;-><init>()V

    .line 238
    .local v0, frameData:Lcom/sec/android/app/camera/quramrecorder/QuramAudioFrameData;
    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/camera/quramrecorder/QuramAudioFrameData;->setBuffer([BI)V

    .line 240
    iget-object v1, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->audio_window_frame:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    return-void
.end method

.method public deleteAllRecorde()V
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->audio_window_frame:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 251
    return-void
.end method

.method public deleteOverTimeFrame()V
    .locals 8

    .prologue
    .line 255
    iget-object v4, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->audio_window_frame:Ljava/util/ArrayList;

    if-nez v4, :cond_1

    .line 272
    :cond_0
    return-void

    .line 260
    :cond_1
    const/4 v3, 0x0

    .line 261
    .local v3, remove_to_idx:I
    new-instance v0, Lcom/sec/android/app/camera/quramrecorder/QuramDate;

    invoke-direct {v0}, Lcom/sec/android/app/camera/quramrecorder/QuramDate;-><init>()V

    .line 262
    .local v0, currentdate:Lcom/sec/android/app/camera/quramrecorder/QuramDate;
    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->audio_window_frame:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 264
    iget-object v4, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->audio_window_frame:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/quramrecorder/QuramAudioFrameData;

    .line 265
    .local v1, framedata:Lcom/sec/android/app/camera/quramrecorder/QuramAudioFrameData;
    iget-wide v4, v0, Lcom/sec/android/app/camera/quramrecorder/QuramDate;->milsec:J

    const-wide/16 v6, 0x2328

    sub-long/2addr v4, v6

    iget-object v6, v1, Lcom/sec/android/app/camera/quramrecorder/QuramAudioFrameData;->frameDataEndTime:Lcom/sec/android/app/camera/quramrecorder/QuramDate;

    iget-wide v6, v6, Lcom/sec/android/app/camera/quramrecorder/QuramDate;->milsec:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_3

    .line 268
    .end local v1           #framedata:Lcom/sec/android/app/camera/quramrecorder/QuramAudioFrameData;
    :cond_2
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_0

    .line 270
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->deleteRecorde(I)V

    .line 268
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 262
    .end local v2           #i:I
    .restart local v1       #framedata:Lcom/sec/android/app/camera/quramrecorder/QuramAudioFrameData;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public deleteRecorde(I)V
    .locals 1
    .parameter "idx"

    .prologue
    .line 245
    iget-object v0, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->audio_window_frame:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 246
    return-void
.end method

.method public emptyBuffer()V
    .locals 0

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->deleteAllRecorde()V

    .line 145
    return-void
.end method

.method public getRecordedAudioDuration()J
    .locals 10

    .prologue
    const-wide/16 v4, 0x2328

    .line 400
    iget-object v6, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->audio_window_frame:Ljava/util/ArrayList;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->audio_window_frame:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 402
    iget-object v6, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->audio_window_frame:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioFrameData;

    .line 403
    .local v0, frameData:Lcom/sec/android/app/camera/quramrecorder/QuramAudioFrameData;
    new-instance v1, Lcom/sec/android/app/camera/quramrecorder/QuramDate;

    invoke-direct {v1}, Lcom/sec/android/app/camera/quramrecorder/QuramDate;-><init>()V

    .line 404
    .local v1, qDate:Lcom/sec/android/app/camera/quramrecorder/QuramDate;
    iget-wide v6, v1, Lcom/sec/android/app/camera/quramrecorder/QuramDate;->milsec:J

    iget-object v8, v0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioFrameData;->frameDataEndTime:Lcom/sec/android/app/camera/quramrecorder/QuramDate;

    iget-wide v8, v8, Lcom/sec/android/app/camera/quramrecorder/QuramDate;->milsec:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0xc8

    add-long v2, v6, v8

    .line 405
    .local v2, ret:J
    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    move-wide v2, v4

    .line 413
    .end local v0           #frameData:Lcom/sec/android/app/camera/quramrecorder/QuramAudioFrameData;
    .end local v1           #qDate:Lcom/sec/android/app/camera/quramrecorder/QuramDate;
    .end local v2           #ret:J
    :cond_0
    :goto_0
    return-wide v2

    :cond_1
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public getRecordedAudioStream()[B
    .locals 10

    .prologue
    .line 157
    const/4 v6, 0x0

    .line 159
    .local v6, bos:Ljava/io/ByteArrayOutputStream;
    invoke-direct {p0}, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->writeAudioFrame()[B

    move-result-object v1

    .line 161
    .local v1, soundData:[B
    if-nez v1, :cond_0

    .line 162
    const/4 v0, 0x0

    .line 181
    :goto_0
    return-object v0

    .line 164
    :cond_0
    const/4 v2, 0x1

    sget v3, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->QURAM_RECORDER_SAMPLERATE:I

    sget v0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->QURAM_RECORDER_BPP:I

    sget v4, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->QURAM_RECORDER_SAMPLERATE:I

    mul-int/2addr v0, v4

    mul-int/lit8 v4, v0, 0x1

    sget v5, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->QURAM_RECORDER_BPP:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->writeHeader([BIIII)[B

    move-result-object v9

    .line 172
    .local v9, soundHeader:[B
    :try_start_0
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    .end local v6           #bos:Ljava/io/ByteArrayOutputStream;
    .local v7, bos:Ljava/io/ByteArrayOutputStream;
    :try_start_1
    invoke-virtual {v7, v9}, Ljava/io/OutputStream;->write([B)V

    .line 174
    invoke-virtual {v7, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v6, v7

    .line 181
    .end local v7           #bos:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #bos:Ljava/io/ByteArrayOutputStream;
    :goto_1
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_0

    .line 176
    :catch_0
    move-exception v8

    .line 178
    .local v8, e:Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 176
    .end local v6           #bos:Ljava/io/ByteArrayOutputStream;
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v7       #bos:Ljava/io/ByteArrayOutputStream;
    :catch_1
    move-exception v8

    move-object v6, v7

    .end local v7           #bos:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #bos:Ljava/io/ByteArrayOutputStream;
    goto :goto_2
.end method

.method public getRecordedAudioStream(Landroid/content/res/AssetFileDescriptor;)[B
    .locals 6
    .parameter "Afd"

    .prologue
    .line 187
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 189
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    const v5, 0x57800

    :try_start_0
    new-array v4, v5, [B

    .line 190
    .local v4, soundData:[B
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 193
    .local v2, fis:Ljava/io/FileInputStream;
    :goto_0
    :try_start_1
    invoke-virtual {v2, v4}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, size:I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_0

    .line 194
    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 197
    .end local v3           #size:I
    :catchall_0
    move-exception v5

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 198
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->close()V

    throw v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 200
    .end local v2           #fis:Ljava/io/FileInputStream;
    .end local v4           #soundData:[B
    :catch_0
    move-exception v1

    .line 202
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 204
    .end local v1           #e:Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    return-object v5

    .line 197
    .restart local v2       #fis:Ljava/io/FileInputStream;
    .restart local v3       #size:I
    .restart local v4       #soundData:[B
    :cond_0
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 198
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method

.method public getVisualizationBands()[I
    .locals 2

    .prologue
    .line 366
    iget-object v0, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->visualizer:Lcom/quramsoft/qdio/QdioVisualization;

    invoke-direct {p0}, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->getVisualizationAmplitude()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/quramsoft/qdio/QdioVisualization;->getVisualizationBands(I)[I

    move-result-object v0

    return-object v0
.end method

.method public readRecorde()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 209
    iget-object v1, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->qrecorder:Lcom/quramsoft/qdio/QdioRecorder;

    if-eqz v1, :cond_0

    .line 211
    iget-object v1, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->qrecorder:Lcom/quramsoft/qdio/QdioRecorder;

    invoke-virtual {v1}, Lcom/quramsoft/qdio/QdioRecorder;->getBufferSize()I

    move-result v1

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->readAudioStreamBuffer:[B

    .line 212
    iget-object v1, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->qrecorder:Lcom/quramsoft/qdio/QdioRecorder;

    iget-object v2, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->readAudioStreamBuffer:[B

    invoke-virtual {v1, v2}, Lcom/quramsoft/qdio/QdioRecorder;->read([B)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->readAudioStreamBufferSize:I

    .line 213
    iget v1, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->readAudioStreamBufferSize:I

    if-gez v1, :cond_1

    .line 215
    const-string v1, "QURAM"

    const-string v2, "error read buffer size is zero!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iput v0, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->readAudioStreamBufferSize:I

    .line 226
    :cond_0
    :goto_0
    return v0

    .line 221
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setVisualizationDuration(J)V
    .locals 0
    .parameter "duration"

    .prologue
    .line 392
    iput-wide p1, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->visualization_duration:J

    .line 393
    return-void
.end method

.method public startRecorder()V
    .locals 4

    .prologue
    .line 31
    invoke-static {}, Lcom/quramsoft/qdio/QdioRecorder;->getInstance()Lcom/quramsoft/qdio/QdioRecorder;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->qrecorder:Lcom/quramsoft/qdio/QdioRecorder;

    .line 32
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->time_t:J

    .line 33
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->time_s:J

    .line 34
    sget-object v1, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->audioThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 36
    sget-object v1, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->audioThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->isRunning:Z

    .line 40
    :try_start_0
    sget-object v1, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->audioThread:Ljava/lang/Thread;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v2, v3}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :cond_0
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->isRunning:Z

    .line 50
    new-instance v1, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder$1;-><init>(Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;)V

    sput-object v1, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->audioThread:Ljava/lang/Thread;

    .line 139
    sget-object v1, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->audioThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 140
    return-void

    .line 41
    :catch_0
    move-exception v0

    .line 43
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public stopRecorder()V
    .locals 2

    .prologue
    .line 149
    const-string v0, "QURAM"

    const-string v1, "stopRecorder start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-boolean v0, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->isRunning:Z

    if-eqz v0, :cond_0

    .line 151
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->isRunning:Z

    .line 152
    :cond_0
    const-string v0, "QURAM"

    const-string v1, "stopRecorder end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    return-void
.end method
