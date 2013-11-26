.class public Lcom/quramsoft/qdio/QdioRecorder;
.super Ljava/lang/Object;
.source "QdioRecorder.java"


# static fields
.field private static QURAM_RECORDER_AUDIO_ENCODING:I = 0x0

.field private static QURAM_RECORDER_BPP:I = 0x0

.field private static final QURAM_RECORDER_BUFFERSIZE:I = 0x4000

.field private static QURAM_RECORDER_CHANNELS:I

.field private static QURAM_RECORDER_SAMPLERATE:I

.field private static qRecorder:Lcom/quramsoft/qdio/QdioRecorder;


# instance fields
.field private bufferSize:I

.field private mAudioSource:I

.field private recorder:Landroid/media/AudioRecord;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 121
    new-instance v0, Lcom/quramsoft/qdio/QdioRecorder;

    invoke-direct {v0}, Lcom/quramsoft/qdio/QdioRecorder;-><init>()V

    sput-object v0, Lcom/quramsoft/qdio/QdioRecorder;->qRecorder:Lcom/quramsoft/qdio/QdioRecorder;

    .line 126
    sput v1, Lcom/quramsoft/qdio/QdioRecorder;->QURAM_RECORDER_BPP:I

    .line 127
    const v0, 0xac44

    sput v0, Lcom/quramsoft/qdio/QdioRecorder;->QURAM_RECORDER_SAMPLERATE:I

    .line 128
    sput v1, Lcom/quramsoft/qdio/QdioRecorder;->QURAM_RECORDER_CHANNELS:I

    .line 129
    const/4 v0, 0x2

    sput v0, Lcom/quramsoft/qdio/QdioRecorder;->QURAM_RECORDER_AUDIO_ENCODING:I

    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0x4000

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/quramsoft/qdio/QdioRecorder;->recorder:Landroid/media/AudioRecord;

    .line 124
    const/4 v0, 0x1

    iput v0, p0, Lcom/quramsoft/qdio/QdioRecorder;->mAudioSource:I

    .line 125
    iput v3, p0, Lcom/quramsoft/qdio/QdioRecorder;->bufferSize:I

    .line 12
    sget v0, Lcom/quramsoft/qdio/QdioRecorder;->QURAM_RECORDER_SAMPLERATE:I

    .line 13
    sget v1, Lcom/quramsoft/qdio/QdioRecorder;->QURAM_RECORDER_CHANNELS:I

    .line 14
    sget v2, Lcom/quramsoft/qdio/QdioRecorder;->QURAM_RECORDER_AUDIO_ENCODING:I

    .line 12
    invoke-static {v0, v1, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Lcom/quramsoft/qdio/QdioRecorder;->bufferSize:I

    .line 16
    iget v0, p0, Lcom/quramsoft/qdio/QdioRecorder;->bufferSize:I

    if-ge v0, v3, :cond_0

    .line 17
    iput v3, p0, Lcom/quramsoft/qdio/QdioRecorder;->bufferSize:I

    .line 19
    :cond_0
    const-string v0, "QURAM"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bufferSize = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/quramsoft/qdio/QdioRecorder;->bufferSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    const-string v0, "QURAM"

    const-string v1, "QURAM_RECORDER_BUFFERSIZE = 16384"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    return-void
.end method

.method public static getInstance()Lcom/quramsoft/qdio/QdioRecorder;
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lcom/quramsoft/qdio/QdioRecorder;->qRecorder:Lcom/quramsoft/qdio/QdioRecorder;

    return-object v0
.end method


# virtual methods
.method public getBufferSize()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/quramsoft/qdio/QdioRecorder;->bufferSize:I

    return v0
.end method

.method public init(I)Z
    .locals 7
    .parameter "audioSource"

    .prologue
    const/4 v6, 0x1

    .line 25
    iput p1, p0, Lcom/quramsoft/qdio/QdioRecorder;->mAudioSource:I

    .line 26
    const-string v0, "QURAM"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "recorder = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/quramsoft/qdio/QdioRecorder;->recorder:Landroid/media/AudioRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    iget-object v0, p0, Lcom/quramsoft/qdio/QdioRecorder;->recorder:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    .line 28
    const-string v0, "QURAM"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "recorder.getState() = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/quramsoft/qdio/QdioRecorder;->recorder:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/quramsoft/qdio/QdioRecorder;->recorder:Landroid/media/AudioRecord;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/quramsoft/qdio/QdioRecorder;->recorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v6

    .line 43
    :goto_0
    return v0

    .line 34
    :cond_1
    const-string v0, "QURAM"

    const-string v1, "make new Recorder"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    new-instance v0, Landroid/media/AudioRecord;

    iget v1, p0, Lcom/quramsoft/qdio/QdioRecorder;->mAudioSource:I

    .line 36
    sget v2, Lcom/quramsoft/qdio/QdioRecorder;->QURAM_RECORDER_SAMPLERATE:I

    .line 37
    sget v3, Lcom/quramsoft/qdio/QdioRecorder;->QURAM_RECORDER_CHANNELS:I

    .line 38
    sget v4, Lcom/quramsoft/qdio/QdioRecorder;->QURAM_RECORDER_AUDIO_ENCODING:I

    .line 39
    iget v5, p0, Lcom/quramsoft/qdio/QdioRecorder;->bufferSize:I

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    .line 35
    iput-object v0, p0, Lcom/quramsoft/qdio/QdioRecorder;->recorder:Landroid/media/AudioRecord;

    .line 40
    iget-object v0, p0, Lcom/quramsoft/qdio/QdioRecorder;->recorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-nez v0, :cond_2

    .line 41
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move v0, v6

    .line 43
    goto :goto_0
.end method

.method public read([B)I
    .locals 5
    .parameter "buffer"

    .prologue
    .line 87
    const/4 v0, 0x0

    .line 88
    .local v0, ret:I
    iget-object v2, p0, Lcom/quramsoft/qdio/QdioRecorder;->recorder:Landroid/media/AudioRecord;

    monitor-enter v2

    .line 90
    :try_start_0
    iget-object v1, p0, Lcom/quramsoft/qdio/QdioRecorder;->recorder:Landroid/media/AudioRecord;

    if-nez v1, :cond_0

    .line 92
    monitor-exit v2

    const/4 v1, -0x3

    .line 97
    :goto_0
    return v1

    .line 95
    :cond_0
    iget-object v1, p0, Lcom/quramsoft/qdio/QdioRecorder;->recorder:Landroid/media/AudioRecord;

    const/4 v3, 0x0

    iget v4, p0, Lcom/quramsoft/qdio/QdioRecorder;->bufferSize:I

    invoke-virtual {v1, p1, v3, v4}, Landroid/media/AudioRecord;->read([BII)I

    move-result v0

    .line 88
    monitor-exit v2

    move v1, v0

    .line 97
    goto :goto_0

    .line 88
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public start()Z
    .locals 3

    .prologue
    .line 53
    const-string v0, "QURAM"

    const-string v1, "qRecorder start start"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object v0, p0, Lcom/quramsoft/qdio/QdioRecorder;->recorder:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/quramsoft/qdio/QdioRecorder;->recorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-nez v0, :cond_0

    .line 56
    iget-object v1, p0, Lcom/quramsoft/qdio/QdioRecorder;->recorder:Landroid/media/AudioRecord;

    monitor-enter v1

    .line 58
    :try_start_0
    const-string v0, "QURAM"

    const-string v2, "stop recorder in start"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v0, p0, Lcom/quramsoft/qdio/QdioRecorder;->recorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/quramsoft/qdio/QdioRecorder;->recorder:Landroid/media/AudioRecord;

    .line 56
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    :cond_0
    iget v0, p0, Lcom/quramsoft/qdio/QdioRecorder;->mAudioSource:I

    invoke-virtual {p0, v0}, Lcom/quramsoft/qdio/QdioRecorder;->init(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 70
    const/4 v0, 0x0

    .line 82
    :goto_0
    return v0

    .line 56
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 73
    :cond_1
    iget-object v1, p0, Lcom/quramsoft/qdio/QdioRecorder;->recorder:Landroid/media/AudioRecord;

    monitor-enter v1

    .line 75
    :try_start_2
    iget-object v0, p0, Lcom/quramsoft/qdio/QdioRecorder;->recorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    .line 77
    iget-object v0, p0, Lcom/quramsoft/qdio/QdioRecorder;->recorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 78
    const-string v0, "QURAM"

    const-string v2, "record start"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 81
    const-string v0, "QURAM"

    const-string v1, "qrecorder start end"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const/4 v0, 0x1

    goto :goto_0

    .line 73
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 102
    const-string v0, "QURAM"

    const-string v1, "qRecorder stop start"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v1, p0, Lcom/quramsoft/qdio/QdioRecorder;->recorder:Landroid/media/AudioRecord;

    monitor-enter v1

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/quramsoft/qdio/QdioRecorder;->recorder:Landroid/media/AudioRecord;

    if-nez v0, :cond_0

    .line 107
    monitor-exit v1

    .line 114
    :goto_0
    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/quramsoft/qdio/QdioRecorder;->recorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 110
    iget-object v0, p0, Lcom/quramsoft/qdio/QdioRecorder;->recorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/quramsoft/qdio/QdioRecorder;->recorder:Landroid/media/AudioRecord;

    .line 103
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    const-string v0, "QURAM"

    const-string v1, "qRecorder stop end"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 103
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
