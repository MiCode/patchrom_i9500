.class public abstract Lcom/sec/android/glview/TwGLAniTexture;
.super Lcom/sec/android/glview/TwGLTexture;
.source "TwGLAniTexture.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TwGLAniTexture"


# instance fields
.field protected GRID_SIZE:I


# direct methods
.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FF)V
    .locals 1
    .parameter "glContext"
    .parameter "left"
    .parameter "top"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/glview/TwGLTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 33
    const/4 v0, 0x6

    iput v0, p0, Lcom/sec/android/glview/TwGLAniTexture;->GRID_SIZE:I

    .line 44
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFF)V
    .locals 1
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 56
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 33
    const/4 v0, 0x6

    iput v0, p0, Lcom/sec/android/glview/TwGLAniTexture;->GRID_SIZE:I

    .line 57
    return-void
.end method


# virtual methods
.method protected declared-synchronized initBuffers()V
    .locals 2

    .prologue
    .line 64
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->clearBuffers()V

    .line 66
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mIndices:[B

    invoke-static {v0}, Lcom/sec/android/glview/TwGLUtil;->getByteBufferFromByteArray([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mIndexBuffer:Ljava/nio/ByteBuffer;

    .line 68
    iget v0, p0, Lcom/sec/android/glview/TwGLAniTexture;->GRID_SIZE:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/sec/android/glview/TwGLAniTexture;->GRID_SIZE:I

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x20

    div-int/lit8 v0, v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTexCoordBuffer:Ljava/nio/ByteBuffer;

    .line 69
    iget v0, p0, Lcom/sec/android/glview/TwGLAniTexture;->GRID_SIZE:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/sec/android/glview/TwGLAniTexture;->GRID_SIZE:I

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x20

    div-int/lit8 v0, v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTexFlipCoordBuffer:Ljava/nio/ByteBuffer;

    .line 71
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTexCoordBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 72
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTexFlipCoordBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    monitor-exit p0

    return-void

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized initCoordBuffer()V
    .locals 8

    .prologue
    .line 126
    monitor-enter p0

    const/4 v0, 0x0

    .line 128
    .local v0, offset:I
    const/4 v5, 0x0

    .local v5, y:I
    :goto_0
    :try_start_0
    iget v6, p0, Lcom/sec/android/glview/TwGLAniTexture;->GRID_SIZE:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gt v5, v6, :cond_1

    .line 129
    const/4 v4, 0x0

    .local v4, x:I
    move v1, v0

    .end local v0           #offset:I
    .local v1, offset:I
    :goto_1
    :try_start_1
    iget v6, p0, Lcom/sec/android/glview/TwGLAniTexture;->GRID_SIZE:I

    if-gt v4, v6, :cond_0

    .line 131
    int-to-float v6, v4

    iget v7, p0, Lcom/sec/android/glview/TwGLAniTexture;->GRID_SIZE:I

    int-to-float v7, v7

    div-float v2, v6, v7

    .line 132
    .local v2, u:F
    int-to-float v6, v5

    iget v7, p0, Lcom/sec/android/glview/TwGLAniTexture;->GRID_SIZE:I

    int-to-float v7, v7

    div-float v3, v6, v7

    .line 134
    .local v3, v:F
    iget-object v6, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/lit8 v0, v1, 0x1

    .end local v1           #offset:I
    .restart local v0       #offset:I
    :try_start_2
    aput v2, v6, v1

    .line 135
    iget-object v6, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v1, v0, 0x1

    .end local v0           #offset:I
    .restart local v1       #offset:I
    :try_start_3
    aput v3, v6, v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 129
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 128
    .end local v2           #u:F
    .end local v3           #v:F
    :cond_0
    add-int/lit8 v5, v5, 0x1

    move v0, v1

    .end local v1           #offset:I
    .restart local v0       #offset:I
    goto :goto_0

    .line 139
    .end local v4           #x:I
    :cond_1
    :try_start_4
    iget-object v6, p0, Lcom/sec/android/glview/TwGLTexture;->mTexCoordBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    invoke-virtual {v6, v7}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 141
    const/4 v0, 0x0

    .line 143
    const/4 v5, 0x0

    :goto_2
    iget v6, p0, Lcom/sec/android/glview/TwGLAniTexture;->GRID_SIZE:I

    if-gt v5, v6, :cond_3

    .line 144
    iget v4, p0, Lcom/sec/android/glview/TwGLAniTexture;->GRID_SIZE:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .restart local v4       #x:I
    move v1, v0

    .end local v0           #offset:I
    .restart local v1       #offset:I
    :goto_3
    if-ltz v4, :cond_2

    .line 146
    int-to-float v6, v4

    :try_start_5
    iget v7, p0, Lcom/sec/android/glview/TwGLAniTexture;->GRID_SIZE:I

    int-to-float v7, v7

    div-float v2, v6, v7

    .line 147
    .restart local v2       #u:F
    int-to-float v6, v5

    iget v7, p0, Lcom/sec/android/glview/TwGLAniTexture;->GRID_SIZE:I

    int-to-float v7, v7

    div-float v3, v6, v7

    .line 149
    .restart local v3       #v:F
    iget-object v6, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    add-int/lit8 v0, v1, 0x1

    .end local v1           #offset:I
    .restart local v0       #offset:I
    :try_start_6
    aput v2, v6, v1

    .line 150
    iget-object v6, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    add-int/lit8 v1, v0, 0x1

    .end local v0           #offset:I
    .restart local v1       #offset:I
    :try_start_7
    aput v3, v6, v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 144
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 143
    .end local v2           #u:F
    .end local v3           #v:F
    :cond_2
    add-int/lit8 v5, v5, 0x1

    move v0, v1

    .end local v1           #offset:I
    .restart local v0       #offset:I
    goto :goto_2

    .line 154
    .end local v4           #x:I
    :cond_3
    :try_start_8
    iget-object v6, p0, Lcom/sec/android/glview/TwGLTexture;->mTexFlipCoordBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    invoke-virtual {v6, v7}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 155
    monitor-exit p0

    return-void

    .line 126
    :catchall_0
    move-exception v6

    :goto_4
    monitor-exit p0

    throw v6

    .end local v0           #offset:I
    .restart local v1       #offset:I
    .restart local v4       #x:I
    :catchall_1
    move-exception v6

    move v0, v1

    .end local v1           #offset:I
    .restart local v0       #offset:I
    goto :goto_4
.end method

.method public declared-synchronized onDraw()V
    .locals 6

    .prologue
    .line 162
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTextures:[I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTextureLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 189
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 166
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTexFlipCoordBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTexCoordBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mIndexBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_3

    .line 167
    :cond_2
    const-string v0, "TwGLAniTexture"

    const-string v1, "init buffers on onDraw"

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLAniTexture;->setVertices()V

    .line 169
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLAniTexture;->initBuffers()V

    .line 172
    :cond_3
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 173
    const/16 v0, 0xde1

    iget-object v1, p0, Lcom/sec/android/glview/TwGLTexture;->mTextures:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 175
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mObjTextureCoord:Lcom/sec/android/glview/TwGLProgram$NameIndexerObj;

    iget v0, v0, Lcom/sec/android/glview/TwGLProgram$NameIndexerObj;->mHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 177
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLTexture;->mFlip:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 178
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mObjTextureCoord:Lcom/sec/android/glview/TwGLProgram$NameIndexerObj;

    iget v0, v0, Lcom/sec/android/glview/TwGLProgram$NameIndexerObj;->mHandle:I

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/glview/TwGLTexture;->mTexFlipCoordBuffer:Ljava/nio/ByteBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 182
    :goto_1
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTextureReloaded:Z

    if-eqz v0, :cond_4

    .line 183
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->loadGLTexture()V

    .line 184
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTextureReloaded:Z

    .line 187
    :cond_4
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/sec/android/glview/TwGLTexture;->mIndices:[B

    array-length v1, v1

    const/16 v2, 0x1401

    iget-object v3, p0, Lcom/sec/android/glview/TwGLTexture;->mIndexBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 188
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mObjTextureCoord:Lcom/sec/android/glview/TwGLProgram$NameIndexerObj;

    iget v0, v0, Lcom/sec/android/glview/TwGLProgram$NameIndexerObj;->mHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 180
    :cond_5
    :try_start_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mObjTextureCoord:Lcom/sec/android/glview/TwGLProgram$NameIndexerObj;

    iget v0, v0, Lcom/sec/android/glview/TwGLProgram$NameIndexerObj;->mHandle:I

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/glview/TwGLTexture;->mTexCoordBuffer:Ljava/nio/ByteBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method protected declared-synchronized setVertices()V
    .locals 14

    .prologue
    .line 81
    monitor-enter p0

    :try_start_0
    iget-object v12, p0, Lcom/sec/android/glview/TwGLTexture;->mIndices:[B

    if-nez v12, :cond_0

    .line 82
    iget v12, p0, Lcom/sec/android/glview/TwGLAniTexture;->GRID_SIZE:I

    iget v13, p0, Lcom/sec/android/glview/TwGLAniTexture;->GRID_SIZE:I

    mul-int/2addr v12, v13

    mul-int/lit8 v12, v12, 0x6

    new-array v12, v12, [B

    iput-object v12, p0, Lcom/sec/android/glview/TwGLTexture;->mIndices:[B

    .line 84
    :cond_0
    iget-object v12, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    if-nez v12, :cond_1

    .line 85
    iget v12, p0, Lcom/sec/android/glview/TwGLAniTexture;->GRID_SIZE:I

    add-int/lit8 v12, v12, 0x1

    iget v13, p0, Lcom/sec/android/glview/TwGLAniTexture;->GRID_SIZE:I

    add-int/lit8 v13, v13, 0x1

    mul-int/2addr v12, v13

    mul-int/lit8 v12, v12, 0x2

    new-array v12, v12, [F

    iput-object v12, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    .line 87
    :cond_1
    const/4 v2, 0x0

    .line 88
    .local v2, iPos:I
    const/4 v0, 0x0

    .line 90
    .local v0, cPos:I
    const/4 v11, 0x0

    .local v11, y:I
    :goto_0
    iget v12, p0, Lcom/sec/android/glview/TwGLAniTexture;->GRID_SIZE:I

    if-ge v11, v12, :cond_3

    .line 91
    const/4 v10, 0x0

    .local v10, x:I
    move v1, v0

    .end local v0           #cPos:I
    .local v1, cPos:I
    move v3, v2

    .end local v2           #iPos:I
    .local v3, iPos:I
    :goto_1
    iget v12, p0, Lcom/sec/android/glview/TwGLAniTexture;->GRID_SIZE:I

    if-ge v10, v12, :cond_2

    .line 93
    iget v12, p0, Lcom/sec/android/glview/TwGLAniTexture;->GRID_SIZE:I

    add-int/lit8 v12, v12, 0x1

    mul-int/2addr v12, v11

    add-int/2addr v12, v10

    int-to-byte v4, v12

    .line 94
    .local v4, idx1:B
    iget v12, p0, Lcom/sec/android/glview/TwGLAniTexture;->GRID_SIZE:I

    add-int/lit8 v12, v12, 0x1

    mul-int/2addr v12, v11

    add-int/2addr v12, v10

    add-int/lit8 v12, v12, 0x1

    int-to-byte v5, v12

    .line 95
    .local v5, idx2:B
    add-int/lit8 v12, v11, 0x1

    iget v13, p0, Lcom/sec/android/glview/TwGLAniTexture;->GRID_SIZE:I

    add-int/lit8 v13, v13, 0x1

    mul-int/2addr v12, v13

    add-int/2addr v12, v10

    int-to-byte v6, v12

    .line 96
    .local v6, idx3:B
    add-int/lit8 v12, v11, 0x1

    iget v13, p0, Lcom/sec/android/glview/TwGLAniTexture;->GRID_SIZE:I

    add-int/lit8 v13, v13, 0x1

    mul-int/2addr v12, v13

    add-int/2addr v12, v10

    add-int/lit8 v12, v12, 0x1

    int-to-byte v7, v12

    .line 98
    .local v7, idx4:B
    int-to-float v12, v10

    iget v13, p0, Lcom/sec/android/glview/TwGLAniTexture;->GRID_SIZE:I

    int-to-float v13, v13

    div-float v8, v12, v13

    .line 99
    .local v8, u:F
    int-to-float v12, v11

    iget v13, p0, Lcom/sec/android/glview/TwGLAniTexture;->GRID_SIZE:I

    int-to-float v13, v13

    div-float v9, v12, v13

    .line 101
    .local v9, v:F
    iget-object v12, p0, Lcom/sec/android/glview/TwGLTexture;->mIndices:[B

    add-int/lit8 v2, v3, 0x1

    .end local v3           #iPos:I
    .restart local v2       #iPos:I
    aput-byte v4, v12, v3

    .line 102
    iget-object v12, p0, Lcom/sec/android/glview/TwGLTexture;->mIndices:[B

    add-int/lit8 v3, v2, 0x1

    .end local v2           #iPos:I
    .restart local v3       #iPos:I
    aput-byte v5, v12, v2

    .line 103
    iget-object v12, p0, Lcom/sec/android/glview/TwGLTexture;->mIndices:[B

    add-int/lit8 v2, v3, 0x1

    .end local v3           #iPos:I
    .restart local v2       #iPos:I
    aput-byte v7, v12, v3

    .line 105
    iget-object v12, p0, Lcom/sec/android/glview/TwGLTexture;->mIndices:[B

    add-int/lit8 v3, v2, 0x1

    .end local v2           #iPos:I
    .restart local v3       #iPos:I
    aput-byte v4, v12, v2

    .line 106
    iget-object v12, p0, Lcom/sec/android/glview/TwGLTexture;->mIndices:[B

    add-int/lit8 v2, v3, 0x1

    .end local v3           #iPos:I
    .restart local v2       #iPos:I
    aput-byte v7, v12, v3

    .line 107
    iget-object v12, p0, Lcom/sec/android/glview/TwGLTexture;->mIndices:[B

    add-int/lit8 v3, v2, 0x1

    .end local v2           #iPos:I
    .restart local v3       #iPos:I
    aput-byte v6, v12, v2

    .line 109
    iget-object v12, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    add-int/lit8 v0, v1, 0x1

    .end local v1           #cPos:I
    .restart local v0       #cPos:I
    aput v8, v12, v1

    .line 110
    iget-object v12, p0, Lcom/sec/android/glview/TwGLTexture;->mCoordBuffer:[F

    add-int/lit8 v1, v0, 0x1

    .end local v0           #cPos:I
    .restart local v1       #cPos:I
    aput v9, v12, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 90
    .end local v4           #idx1:B
    .end local v5           #idx2:B
    .end local v6           #idx3:B
    .end local v7           #idx4:B
    .end local v8           #u:F
    .end local v9           #v:F
    :cond_2
    add-int/lit8 v11, v11, 0x1

    move v0, v1

    .end local v1           #cPos:I
    .restart local v0       #cPos:I
    move v2, v3

    .end local v3           #iPos:I
    .restart local v2       #iPos:I
    goto :goto_0

    .line 114
    .end local v10           #x:I
    :cond_3
    monitor-exit p0

    return-void

    .line 81
    .end local v0           #cPos:I
    .end local v2           #iPos:I
    .end local v11           #y:I
    :catchall_0
    move-exception v12

    monitor-exit p0

    throw v12
.end method
