.class public Lcom/sec/android/glview/TwGLSurfaceTexture;
.super Lcom/sec/android/glview/TwGLTexture;
.source "TwGLSurfaceTexture.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TwGLSurfaceTexture"


# instance fields
.field private mEffectID:I

.field private mIsFrontCamera:Z


# direct methods
.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFIZ)V
    .locals 1
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "effectID"
    .parameter "isFrontCamera"

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/glview/TwGLTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 34
    iput v0, p0, Lcom/sec/android/glview/TwGLSurfaceTexture;->mEffectID:I

    .line 35
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLSurfaceTexture;->mIsFrontCamera:Z

    .line 46
    iput-boolean p5, p0, Lcom/sec/android/glview/TwGLSurfaceTexture;->mIsFrontCamera:Z

    .line 48
    packed-switch p4, :pswitch_data_0

    .line 122
    :pswitch_0
    iput v0, p0, Lcom/sec/android/glview/TwGLSurfaceTexture;->mEffectID:I

    .line 126
    :goto_0
    return-void

    .line 50
    :pswitch_1
    iput v0, p0, Lcom/sec/android/glview/TwGLSurfaceTexture;->mEffectID:I

    goto :goto_0

    .line 53
    :pswitch_2
    const/16 v0, 0x8

    iput v0, p0, Lcom/sec/android/glview/TwGLSurfaceTexture;->mEffectID:I

    goto :goto_0

    .line 56
    :pswitch_3
    const/4 v0, 0x7

    iput v0, p0, Lcom/sec/android/glview/TwGLSurfaceTexture;->mEffectID:I

    goto :goto_0

    .line 59
    :pswitch_4
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/glview/TwGLSurfaceTexture;->mEffectID:I

    goto :goto_0

    .line 62
    :pswitch_5
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/glview/TwGLSurfaceTexture;->mEffectID:I

    goto :goto_0

    .line 65
    :pswitch_6
    iput v0, p0, Lcom/sec/android/glview/TwGLSurfaceTexture;->mEffectID:I

    goto :goto_0

    .line 68
    :pswitch_7
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/glview/TwGLSurfaceTexture;->mEffectID:I

    goto :goto_0

    .line 71
    :pswitch_8
    const/16 v0, 0x9

    iput v0, p0, Lcom/sec/android/glview/TwGLSurfaceTexture;->mEffectID:I

    goto :goto_0

    .line 74
    :pswitch_9
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/glview/TwGLSurfaceTexture;->mEffectID:I

    goto :goto_0

    .line 77
    :pswitch_a
    const/4 v0, 0x6

    iput v0, p0, Lcom/sec/android/glview/TwGLSurfaceTexture;->mEffectID:I

    goto :goto_0

    .line 80
    :pswitch_b
    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/glview/TwGLSurfaceTexture;->mEffectID:I

    goto :goto_0

    .line 83
    :pswitch_c
    const/16 v0, 0xa

    iput v0, p0, Lcom/sec/android/glview/TwGLSurfaceTexture;->mEffectID:I

    goto :goto_0

    .line 86
    :pswitch_d
    const/16 v0, 0xb

    iput v0, p0, Lcom/sec/android/glview/TwGLSurfaceTexture;->mEffectID:I

    goto :goto_0

    .line 89
    :pswitch_e
    const/16 v0, 0xc

    iput v0, p0, Lcom/sec/android/glview/TwGLSurfaceTexture;->mEffectID:I

    goto :goto_0

    .line 92
    :pswitch_f
    const/16 v0, 0xd

    iput v0, p0, Lcom/sec/android/glview/TwGLSurfaceTexture;->mEffectID:I

    goto :goto_0

    .line 95
    :pswitch_10
    const/16 v0, 0xe

    iput v0, p0, Lcom/sec/android/glview/TwGLSurfaceTexture;->mEffectID:I

    goto :goto_0

    .line 98
    :pswitch_11
    const/16 v0, 0xf

    iput v0, p0, Lcom/sec/android/glview/TwGLSurfaceTexture;->mEffectID:I

    goto :goto_0

    .line 101
    :pswitch_12
    const/16 v0, 0x10

    iput v0, p0, Lcom/sec/android/glview/TwGLSurfaceTexture;->mEffectID:I

    goto :goto_0

    .line 104
    :pswitch_13
    const/16 v0, 0x11

    iput v0, p0, Lcom/sec/android/glview/TwGLSurfaceTexture;->mEffectID:I

    goto :goto_0

    .line 107
    :pswitch_14
    const/16 v0, 0x12

    iput v0, p0, Lcom/sec/android/glview/TwGLSurfaceTexture;->mEffectID:I

    goto :goto_0

    .line 110
    :pswitch_15
    const/16 v0, 0x13

    iput v0, p0, Lcom/sec/android/glview/TwGLSurfaceTexture;->mEffectID:I

    goto :goto_0

    .line 113
    :pswitch_16
    const/16 v0, 0x14

    iput v0, p0, Lcom/sec/android/glview/TwGLSurfaceTexture;->mEffectID:I

    goto :goto_0

    .line 116
    :pswitch_17
    const/16 v0, 0x15

    iput v0, p0, Lcom/sec/android/glview/TwGLSurfaceTexture;->mEffectID:I

    goto :goto_0

    .line 119
    :pswitch_18
    const/16 v0, 0x16

    iput v0, p0, Lcom/sec/android/glview/TwGLSurfaceTexture;->mEffectID:I

    goto :goto_0

    .line 48
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_18
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
    .end packed-switch
.end method


# virtual methods
.method public clearTexture()V
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTextures:[I

    .line 139
    return-void
.end method

.method public declared-synchronized initSize()V
    .locals 2

    .prologue
    .line 133
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    monitor-exit p0

    return-void

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected loadBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 209
    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized onDraw()V
    .locals 14

    .prologue
    .line 170
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTextures:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 205
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 174
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getGLPreviewData()Lcom/sec/android/glview/TwGLPreviewData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLPreviewData;->isInitTexture()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTextures:[I

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLContext;->getGLPreviewData()Lcom/sec/android/glview/TwGLPreviewData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLPreviewData;->getSurfaceYTextureID()I

    move-result v2

    aput v2, v0, v1

    .line 178
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTextures:[I

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLContext;->getGLPreviewData()Lcom/sec/android/glview/TwGLPreviewData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLPreviewData;->getSurfaceVUTextureID()I

    move-result v2

    aput v2, v0, v1

    .line 180
    const/high16 v0, 0x3f80

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getGLPreviewData()Lcom/sec/android/glview/TwGLPreviewData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLPreviewData;->getSurfaceCoordXOffset()F

    move-result v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x4000

    div-float v13, v0, v1

    .line 182
    .local v13, mXOffset:F
    move v10, v13

    .line 183
    .local v10, mSurfaceCoordLeft:F
    const v12, 0x3ca3d70a

    .line 184
    .local v12, mSurfaceCoordTop:F
    const/high16 v0, 0x3f80

    sub-float v11, v0, v13

    .line 185
    .local v11, mSurfaceCoordRight:F
    const v9, 0x3f7ae148

    .line 187
    .local v9, mSurfaceCoordBottom:F
    const/4 v0, 0x4

    new-array v8, v0, [F

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v1

    aput v1, v8, v0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v1

    aput v1, v8, v0

    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v1

    aput v1, v8, v0

    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v1

    aput v1, v8, v0

    .line 188
    .local v8, mRect:[F
    const/16 v0, 0x8

    new-array v6, v0, [F

    const/4 v0, 0x0

    aput v11, v6, v0

    const/4 v0, 0x1

    aput v12, v6, v0

    const/4 v0, 0x2

    aput v10, v6, v0

    const/4 v0, 0x3

    aput v12, v6, v0

    const/4 v0, 0x4

    aput v10, v6, v0

    const/4 v0, 0x5

    aput v9, v6, v0

    const/4 v0, 0x6

    aput v11, v6, v0

    const/4 v0, 0x7

    aput v9, v6, v0

    .line 189
    .local v6, mCoord:[F
    const/16 v0, 0x8

    new-array v7, v0, [F

    const/4 v0, 0x0

    aput v10, v7, v0

    const/4 v0, 0x1

    aput v12, v7, v0

    const/4 v0, 0x2

    aput v11, v7, v0

    const/4 v0, 0x3

    aput v12, v7, v0

    const/4 v0, 0x4

    aput v11, v7, v0

    const/4 v0, 0x5

    aput v9, v7, v0

    const/4 v0, 0x6

    aput v10, v7, v0

    const/4 v0, 0x7

    aput v9, v7, v0

    .line 191
    .local v7, mCoordFrontCamera:[F
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mViewMatrix:[F

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLContext;->getProjMatrix()[F

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getMatrix()[F

    move-result-object v4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 193
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getAlpha()F

    move-result v5

    .line 194
    .local v5, modifiedAlpha:F
    const/high16 v0, 0x3f00

    cmpl-float v0, v5, v0

    if-lez v0, :cond_2

    .line 195
    const/high16 v5, 0x3f80

    .line 199
    :goto_1
    iget v0, p0, Lcom/sec/android/glview/TwGLSurfaceTexture;->mEffectID:I

    invoke-static {v0}, Lcom/sec/android/app/camera/SecCameraEffectLib;->setCurrentEffect(I)V

    .line 200
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLSurfaceTexture;->mIsFrontCamera:Z

    if-eqz v0, :cond_3

    .line 201
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mViewMatrix:[F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLTexture;->mTextures:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mTextures:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    move-object v3, v8

    move-object v4, v7

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/camera/SecCameraEffectLib;->drawTexture([FII[F[FF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 170
    .end local v5           #modifiedAlpha:F
    .end local v6           #mCoord:[F
    .end local v7           #mCoordFrontCamera:[F
    .end local v8           #mRect:[F
    .end local v9           #mSurfaceCoordBottom:F
    .end local v10           #mSurfaceCoordLeft:F
    .end local v11           #mSurfaceCoordRight:F
    .end local v12           #mSurfaceCoordTop:F
    .end local v13           #mXOffset:F
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 197
    .restart local v5       #modifiedAlpha:F
    .restart local v6       #mCoord:[F
    .restart local v7       #mCoordFrontCamera:[F
    .restart local v8       #mRect:[F
    .restart local v9       #mSurfaceCoordBottom:F
    .restart local v10       #mSurfaceCoordLeft:F
    .restart local v11       #mSurfaceCoordRight:F
    .restart local v12       #mSurfaceCoordTop:F
    .restart local v13       #mXOffset:F
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 203
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mViewMatrix:[F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLTexture;->mTextures:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture;->mTextures:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    move-object v3, v8

    move-object v4, v6

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/camera/SecCameraEffectLib;->drawTexture([FII[F[FF)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method protected declared-synchronized onLoad()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 147
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTextures:[I

    if-nez v0, :cond_0

    .line 148
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTextures:[I

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTextures:[I

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLContext;->getGLPreviewData()Lcom/sec/android/glview/TwGLPreviewData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLPreviewData;->getSurfaceYTextureID()I

    move-result v2

    aput v2, v0, v1

    .line 151
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTextures:[I

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLContext;->getGLPreviewData()Lcom/sec/android/glview/TwGLPreviewData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLPreviewData;->getSurfaceVUTextureID()I

    move-result v2

    aput v2, v0, v1

    .line 153
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLSurfaceTexture;->initSize()V

    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLTexture;->mTextureLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    monitor-exit p0

    return v3

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized reLoad()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 161
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    monitor-exit p0

    return v2

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
