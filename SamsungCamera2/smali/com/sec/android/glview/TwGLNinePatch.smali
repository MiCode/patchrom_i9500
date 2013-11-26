.class public Lcom/sec/android/glview/TwGLNinePatch;
.super Lcom/sec/android/glview/TwGLView;
.source "TwGLNinePatch.java"


# instance fields
.field private mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;


# direct methods
.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V
    .locals 7
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"
    .parameter "resId"

    .prologue
    const/4 v2, 0x0

    .line 67
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 68
    if-eqz p6, :cond_0

    .line 69
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatchTexture;

    move-object v1, p1

    move v3, v2

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatchTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-nez v0, :cond_2

    .line 81
    :cond_1
    :goto_0
    return-void

    .line 75
    :cond_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 77
    cmpl-float v0, p4, v2

    if-eqz v0, :cond_3

    cmpl-float v0, p5, v2

    if-nez v0, :cond_1

    .line 78
    :cond_3
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->setSize(FF)V

    .line 79
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFFIF)V
    .locals 7
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"
    .parameter "resId"
    .parameter "alpha"

    .prologue
    const/4 v2, 0x0

    .line 95
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 97
    if-eqz p6, :cond_0

    .line 98
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatchTexture;

    move-object v1, p1

    move v3, v2

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatchTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-nez v0, :cond_1

    .line 111
    :goto_0
    return-void

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 106
    cmpl-float v0, p4, v2

    if-eqz v0, :cond_2

    cmpl-float v0, p5, v2

    if-nez v0, :cond_3

    .line 107
    :cond_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->setSize(FF)V

    .line 108
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    .line 110
    :cond_3
    invoke-virtual {p0, p7}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFI)V
    .locals 3
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "resId"

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 43
    if-eqz p4, :cond_0

    .line 44
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-direct {v0, p1, v1, v1, p4}, Lcom/sec/android/glview/TwGLNinePatchTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-nez v0, :cond_1

    .line 54
    :goto_0
    return-void

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 52
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->setSize(FF)V

    .line 53
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->clear()V

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    .line 134
    :cond_0
    invoke-super {p0}, Lcom/sec/android/glview/TwGLView;->clear()V

    .line 135
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getLoaded()Z
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->getLoaded()Z

    move-result v0

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getMinimumHeight()I

    move-result v0

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getMinimumWidth()I

    move-result v0

    return v0
.end method

.method public getPaddings()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getPaddings()Landroid/graphics/Rect;

    move-result-object v0

    .line 122
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    goto :goto_0
.end method

.method public initSize()V
    .locals 3

    .prologue
    .line 225
    const/4 v1, 0x0

    .local v1, width:F
    const/4 v0, 0x0

    .line 227
    .local v0, height:F
    iget-object v2, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v2, :cond_0

    .line 228
    iget-object v2, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    cmpl-float v2, v2, v1

    if-lez v2, :cond_1

    .line 229
    iget-object v2, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    .line 233
    :goto_0
    iget-object v2, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    cmpl-float v2, v2, v0

    if-lez v2, :cond_2

    .line 234
    iget-object v2, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v0

    .line 239
    :cond_0
    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    .line 240
    return-void

    .line 231
    :cond_1
    iget-object v2, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getIntrinsicWidth()I

    move-result v2

    int-to-float v1, v2

    goto :goto_0

    .line 236
    :cond_2
    iget-object v2, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getIntrinsicHeight()I

    move-result v2

    int-to-float v0, v2

    goto :goto_1
.end method

.method protected onAlphaUpdated()V
    .locals 1

    .prologue
    .line 179
    invoke-super {p0}, Lcom/sec/android/glview/TwGLView;->onAlphaUpdated()V

    .line 180
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->onAlphaUpdated()V

    .line 183
    :cond_0
    return-void
.end method

.method protected onDraw()V
    .locals 3

    .prologue
    .line 161
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->draw([FLandroid/graphics/Rect;)V

    .line 164
    :cond_0
    return-void
.end method

.method protected onLayoutUpdated()V
    .locals 1

    .prologue
    .line 171
    invoke-super {p0}, Lcom/sec/android/glview/TwGLView;->onLayoutUpdated()V

    .line 172
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->onLayoutUpdated()V

    .line 175
    :cond_0
    return-void
.end method

.method protected onLoad()Z
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->load()Z

    move-result v0

    .line 145
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onReset()V
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->reset()V

    .line 272
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 217
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized setHeight(F)V
    .locals 1
    .parameter "height"

    .prologue
    .line 206
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLView;->setHeight(F)V

    .line 207
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLNinePatchTexture;->setHeight(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    :cond_0
    monitor-exit p0

    return-void

    .line 206
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSize(FF)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 190
    invoke-super {p0, p1, p2}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    .line 191
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->setSize(FF)V

    .line 194
    :cond_0
    return-void
.end method

.method public declared-synchronized setWidth(F)V
    .locals 1
    .parameter "width"

    .prologue
    .line 198
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLView;->setWidth(F)V

    .line 199
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLNinePatchTexture;->setWidth(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    :cond_0
    monitor-exit p0

    return-void

    .line 198
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
