.class public Lcom/sec/android/glview/TwGLPreviewData;
.super Ljava/lang/Object;
.source "TwGLPreviewData.java"


# static fields
.field private static sGLPreview:Lcom/sec/android/glview/TwGLPreviewData;


# instance fields
.field private mFrameAvailable:Z

.field private final mGLContext:Lcom/sec/android/glview/TwGLContext;

.field private mHeight:I

.field private mInitTexture:Z

.field private mPreviewData:[B

.field private mSurfaceVUTextureID:I

.field private mSurfaceYTextureID:I

.field private mTextureHeight:I

.field private mTextureWidth:I

.field private mWidth:I

.field private mYUVBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/glview/TwGLPreviewData;->sGLPreview:Lcom/sec/android/glview/TwGLPreviewData;

    return-void
.end method

.method private constructor <init>(Lcom/sec/android/glview/TwGLContext;)V
    .locals 2
    .parameter "glContext"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLPreviewData;->mFrameAvailable:Z

    .line 13
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLPreviewData;->mInitTexture:Z

    .line 15
    iput-object v1, p0, Lcom/sec/android/glview/TwGLPreviewData;->mPreviewData:[B

    .line 26
    iput-object v1, p0, Lcom/sec/android/glview/TwGLPreviewData;->mYUVBuffer:Ljava/nio/ByteBuffer;

    .line 45
    iput-object p1, p0, Lcom/sec/android/glview/TwGLPreviewData;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    .line 47
    iput v0, p0, Lcom/sec/android/glview/TwGLPreviewData;->mWidth:I

    .line 48
    iput v0, p0, Lcom/sec/android/glview/TwGLPreviewData;->mHeight:I

    .line 50
    iput v0, p0, Lcom/sec/android/glview/TwGLPreviewData;->mTextureWidth:I

    .line 51
    iput v0, p0, Lcom/sec/android/glview/TwGLPreviewData;->mTextureHeight:I

    .line 53
    return-void
.end method

.method private declared-synchronized checkNewFrame()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 172
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLPreviewData;->mFrameAvailable:Z

    if-eqz v1, :cond_0

    .line 173
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLPreviewData;->mFrameAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    const/4 v0, 0x1

    .line 176
    :cond_0
    monitor-exit p0

    return v0

    .line 172
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private createTexture()V
    .locals 12

    .prologue
    const/high16 v11, 0x4618

    const/4 v8, 0x0

    const v10, 0x812f

    const/4 v1, 0x0

    const/16 v0, 0xde1

    .line 60
    iget-object v2, p0, Lcom/sec/android/glview/TwGLPreviewData;->mYUVBuffer:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_0

    .line 61
    iget-object v2, p0, Lcom/sec/android/glview/TwGLPreviewData;->mYUVBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    .line 62
    iput-object v8, p0, Lcom/sec/android/glview/TwGLPreviewData;->mYUVBuffer:Ljava/nio/ByteBuffer;

    .line 65
    :cond_0
    iget v2, p0, Lcom/sec/android/glview/TwGLPreviewData;->mWidth:I

    iget v3, p0, Lcom/sec/android/glview/TwGLPreviewData;->mHeight:I

    mul-int/2addr v2, v3

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/glview/TwGLPreviewData;->mYUVBuffer:Ljava/nio/ByteBuffer;

    .line 67
    const/4 v2, 0x2

    new-array v9, v2, [I

    .line 68
    .local v9, textures:[I
    const/4 v2, 0x2

    invoke-static {v2, v9, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 69
    aget v2, v9, v1

    iput v2, p0, Lcom/sec/android/glview/TwGLPreviewData;->mSurfaceYTextureID:I

    .line 70
    iget v2, p0, Lcom/sec/android/glview/TwGLPreviewData;->mSurfaceYTextureID:I

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 71
    const/16 v2, 0x2800

    invoke-static {v0, v2, v11}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 72
    const/16 v2, 0x2801

    const/16 v3, 0x2600

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 74
    const/16 v2, 0x2802

    invoke-static {v0, v2, v10}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 75
    const/16 v2, 0x2803

    invoke-static {v0, v2, v10}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 76
    const/16 v2, 0x1909

    iget v3, p0, Lcom/sec/android/glview/TwGLPreviewData;->mWidth:I

    iget v4, p0, Lcom/sec/android/glview/TwGLPreviewData;->mHeight:I

    const/16 v6, 0x1909

    const/16 v7, 0x1401

    move v5, v1

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 78
    const/4 v2, 0x1

    aget v2, v9, v2

    iput v2, p0, Lcom/sec/android/glview/TwGLPreviewData;->mSurfaceVUTextureID:I

    .line 79
    iget v2, p0, Lcom/sec/android/glview/TwGLPreviewData;->mSurfaceVUTextureID:I

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 80
    const/16 v2, 0x2800

    invoke-static {v0, v2, v11}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 81
    const/16 v2, 0x2801

    const/16 v3, 0x2600

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 83
    const/16 v2, 0x2802

    invoke-static {v0, v2, v10}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 84
    const/16 v2, 0x2803

    invoke-static {v0, v2, v10}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 85
    const/16 v2, 0x190a

    iget v3, p0, Lcom/sec/android/glview/TwGLPreviewData;->mWidth:I

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/sec/android/glview/TwGLPreviewData;->mHeight:I

    div-int/lit8 v4, v4, 0x2

    const/16 v6, 0x190a

    const/16 v7, 0x1401

    move v5, v1

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 87
    iget v0, p0, Lcom/sec/android/glview/TwGLPreviewData;->mWidth:I

    iput v0, p0, Lcom/sec/android/glview/TwGLPreviewData;->mTextureWidth:I

    .line 88
    iget v0, p0, Lcom/sec/android/glview/TwGLPreviewData;->mHeight:I

    iput v0, p0, Lcom/sec/android/glview/TwGLPreviewData;->mTextureHeight:I

    .line 89
    return-void
.end method

.method private deleteTexture()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 109
    new-array v0, v4, [I

    iget v1, p0, Lcom/sec/android/glview/TwGLPreviewData;->mSurfaceYTextureID:I

    aput v1, v0, v3

    const/4 v1, 0x1

    iget v2, p0, Lcom/sec/android/glview/TwGLPreviewData;->mSurfaceVUTextureID:I

    aput v2, v0, v1

    invoke-static {v4, v0, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 110
    return-void
.end method

.method public static declared-synchronized getInstance(Lcom/sec/android/glview/TwGLContext;)Lcom/sec/android/glview/TwGLPreviewData;
    .locals 2
    .parameter "glContext"

    .prologue
    .line 30
    const-class v1, Lcom/sec/android/glview/TwGLPreviewData;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/android/glview/TwGLPreviewData;->sGLPreview:Lcom/sec/android/glview/TwGLPreviewData;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/sec/android/glview/TwGLPreviewData;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLPreviewData;-><init>(Lcom/sec/android/glview/TwGLContext;)V

    sput-object v0, Lcom/sec/android/glview/TwGLPreviewData;->sGLPreview:Lcom/sec/android/glview/TwGLPreviewData;

    .line 33
    :cond_0
    sget-object v0, Lcom/sec/android/glview/TwGLPreviewData;->sGLPreview:Lcom/sec/android/glview/TwGLPreviewData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 115
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLPreviewData;->deleteTexture()V

    .line 117
    iget-object v0, p0, Lcom/sec/android/glview/TwGLPreviewData;->mYUVBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/sec/android/glview/TwGLPreviewData;->mYUVBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLPreviewData;->mYUVBuffer:Ljava/nio/ByteBuffer;

    .line 122
    :cond_0
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLPreviewData;->mInitTexture:Z

    .line 123
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLPreviewData;->mFrameAvailable:Z

    .line 124
    return-void
.end method

.method public static declared-synchronized releaseInstance()V
    .locals 2

    .prologue
    .line 37
    const-class v1, Lcom/sec/android/glview/TwGLPreviewData;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/android/glview/TwGLPreviewData;->sGLPreview:Lcom/sec/android/glview/TwGLPreviewData;

    if-eqz v0, :cond_0

    .line 38
    sget-object v0, Lcom/sec/android/glview/TwGLPreviewData;->sGLPreview:Lcom/sec/android/glview/TwGLPreviewData;

    invoke-direct {v0}, Lcom/sec/android/glview/TwGLPreviewData;->release()V

    .line 39
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/glview/TwGLPreviewData;->sGLPreview:Lcom/sec/android/glview/TwGLPreviewData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    :cond_0
    monitor-exit v1

    return-void

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized setNewFrame()V
    .locals 2

    .prologue
    .line 167
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLPreviewData;->mFrameAvailable:Z

    .line 168
    iget-object v0, p0, Lcom/sec/android/glview/TwGLPreviewData;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    monitor-exit p0

    return-void

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private updateTexture()V
    .locals 9

    .prologue
    const/16 v7, 0x1401

    const/16 v0, 0xde1

    const/4 v1, 0x0

    .line 93
    iget-object v2, p0, Lcom/sec/android/glview/TwGLPreviewData;->mYUVBuffer:Ljava/nio/ByteBuffer;

    if-nez v2, :cond_0

    .line 94
    iget v2, p0, Lcom/sec/android/glview/TwGLPreviewData;->mWidth:I

    iget v3, p0, Lcom/sec/android/glview/TwGLPreviewData;->mHeight:I

    mul-int/2addr v2, v3

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/glview/TwGLPreviewData;->mYUVBuffer:Ljava/nio/ByteBuffer;

    .line 97
    :cond_0
    iget-object v2, p0, Lcom/sec/android/glview/TwGLPreviewData;->mYUVBuffer:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/sec/android/glview/TwGLPreviewData;->mPreviewData:[B

    iget v4, p0, Lcom/sec/android/glview/TwGLPreviewData;->mWidth:I

    iget v5, p0, Lcom/sec/android/glview/TwGLPreviewData;->mHeight:I

    mul-int/2addr v4, v5

    invoke-virtual {v2, v3, v1, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 98
    iget v2, p0, Lcom/sec/android/glview/TwGLPreviewData;->mSurfaceYTextureID:I

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 99
    iget v4, p0, Lcom/sec/android/glview/TwGLPreviewData;->mWidth:I

    iget v5, p0, Lcom/sec/android/glview/TwGLPreviewData;->mHeight:I

    const/16 v6, 0x1909

    iget-object v8, p0, Lcom/sec/android/glview/TwGLPreviewData;->mYUVBuffer:Ljava/nio/ByteBuffer;

    move v2, v1

    move v3, v1

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 102
    iget-object v2, p0, Lcom/sec/android/glview/TwGLPreviewData;->mYUVBuffer:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/sec/android/glview/TwGLPreviewData;->mPreviewData:[B

    iget v4, p0, Lcom/sec/android/glview/TwGLPreviewData;->mWidth:I

    iget v5, p0, Lcom/sec/android/glview/TwGLPreviewData;->mHeight:I

    mul-int/2addr v4, v5

    iget v5, p0, Lcom/sec/android/glview/TwGLPreviewData;->mWidth:I

    iget v6, p0, Lcom/sec/android/glview/TwGLPreviewData;->mHeight:I

    mul-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v2, v3, v4, v5}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 103
    iget v2, p0, Lcom/sec/android/glview/TwGLPreviewData;->mSurfaceVUTextureID:I

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 104
    iget v2, p0, Lcom/sec/android/glview/TwGLPreviewData;->mWidth:I

    div-int/lit8 v4, v2, 0x2

    iget v2, p0, Lcom/sec/android/glview/TwGLPreviewData;->mHeight:I

    div-int/lit8 v5, v2, 0x2

    const/16 v6, 0x190a

    iget-object v8, p0, Lcom/sec/android/glview/TwGLPreviewData;->mYUVBuffer:Ljava/nio/ByteBuffer;

    move v2, v1

    move v3, v1

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 106
    return-void
.end method


# virtual methods
.method public declared-synchronized doUpdate()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 128
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLPreviewData;->checkNewFrame()Z

    move-result v0

    if-ne v0, v1, :cond_2

    .line 130
    iget-object v0, p0, Lcom/sec/android/glview/TwGLPreviewData;->mPreviewData:[B

    if-eqz v0, :cond_2

    .line 132
    iget v0, p0, Lcom/sec/android/glview/TwGLPreviewData;->mTextureWidth:I

    iget v1, p0, Lcom/sec/android/glview/TwGLPreviewData;->mWidth:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/glview/TwGLPreviewData;->mTextureHeight:I

    iget v1, p0, Lcom/sec/android/glview/TwGLPreviewData;->mHeight:I

    if-eq v0, v1, :cond_1

    .line 133
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLPreviewData;->deleteTexture()V

    .line 134
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLPreviewData;->createTexture()V

    .line 137
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLPreviewData;->updateTexture()V

    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLPreviewData;->mInitTexture:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    :cond_2
    monitor-exit p0

    return-void

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSurfaceCoordXOffset()F
    .locals 2

    .prologue
    .line 159
    iget v0, p0, Lcom/sec/android/glview/TwGLPreviewData;->mHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/glview/TwGLPreviewData;->mWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f80

    mul-float/2addr v0, v1

    return v0
.end method

.method public getSurfaceCoordYOffset()F
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x0

    return v0
.end method

.method public getSurfaceVUTextureID()I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lcom/sec/android/glview/TwGLPreviewData;->mSurfaceVUTextureID:I

    return v0
.end method

.method public getSurfaceYTextureID()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/sec/android/glview/TwGLPreviewData;->mSurfaceYTextureID:I

    return v0
.end method

.method public isInitTexture()Z
    .locals 1

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLPreviewData;->mInitTexture:Z

    return v0
.end method

.method public declared-synchronized setPreviewData(II[B)V
    .locals 1
    .parameter "width"
    .parameter "height"
    .parameter "data"

    .prologue
    .line 180
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/sec/android/glview/TwGLPreviewData;->mWidth:I

    .line 181
    iput p2, p0, Lcom/sec/android/glview/TwGLPreviewData;->mHeight:I

    .line 182
    iput-object p3, p0, Lcom/sec/android/glview/TwGLPreviewData;->mPreviewData:[B

    .line 183
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLPreviewData;->setNewFrame()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    monitor-exit p0

    return-void

    .line 180
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
