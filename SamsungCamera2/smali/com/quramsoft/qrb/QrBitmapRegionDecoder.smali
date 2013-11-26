.class public final Lcom/quramsoft/qrb/QrBitmapRegionDecoder;
.super Ljava/lang/Object;
.source "QrBitmapRegionDecoder.java"


# instance fields
.field public mHandle:I

.field private mRecycled:Z

.field public mShared:Z


# direct methods
.method private constructor <init>(I)V
    .locals 1
    .parameter "decoder"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quramsoft/qrb/QrBitmapRegionDecoder;->mShared:Z

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quramsoft/qrb/QrBitmapRegionDecoder;->mRecycled:Z

    .line 28
    return-void
.end method

.method private checkRecycled(Ljava/lang/String;)V
    .locals 1
    .parameter "errorMessage"

    .prologue
    .line 232
    iget-boolean v0, p0, Lcom/quramsoft/qrb/QrBitmapRegionDecoder;->mRecycled:Z

    if-eqz v0, :cond_0

    .line 234
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_0
    return-void
.end method

.method public static newInstance(Ljava/io/FileDescriptor;Z)Lcom/quramsoft/qrb/QrBitmapRegionDecoder;
    .locals 1
    .parameter "fd"
    .parameter "isShareable"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    const/4 v0, 0x0

    return-object v0
.end method

.method public static newInstance(Ljava/io/InputStream;Z)Lcom/quramsoft/qrb/QrBitmapRegionDecoder;
    .locals 5
    .parameter "is"
    .parameter "isShareable"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x4000

    .line 110
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v2

    if-nez v2, :cond_0

    .line 112
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p0, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .end local p0
    .local v0, is:Ljava/io/InputStream;
    move-object p0, v0

    .line 115
    .end local v0           #is:Ljava/io/InputStream;
    .restart local p0
    :cond_0
    instance-of v2, p0, Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz v2, :cond_1

    .line 125
    :goto_0
    return-object v4

    .line 124
    :cond_1
    new-array v1, v3, [B

    .line 125
    .local v1, tempStorage:[B
    goto :goto_0
.end method

.method public static newInstance(Ljava/lang/String;Z)Lcom/quramsoft/qrb/QrBitmapRegionDecoder;
    .locals 2
    .parameter "pathName"
    .parameter "isShareable"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 148
    const/4 v0, 0x0

    .line 149
    .local v0, QrBrd:Lcom/quramsoft/qrb/QrBitmapRegionDecoder;
    if-eqz p0, :cond_0

    .line 150
    const/4 v1, 0x0

    invoke-static {p0, v1, p1}, Lcom/quramsoft/qrb/QrBitmapDecoder;->QrnativeNewInstance(Ljava/lang/String;IZ)Lcom/quramsoft/qrb/QrBitmapRegionDecoder;

    move-result-object v0

    .line 155
    :cond_0
    return-object v0
.end method

.method public static newInstance([BIIZ)Lcom/quramsoft/qrb/QrBitmapRegionDecoder;
    .locals 2
    .parameter "data"
    .parameter "offset"
    .parameter "length"
    .parameter "isShareable"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    or-int v0, p1, p2

    if-ltz v0, :cond_0

    array-length v0, p0

    add-int v1, p1, p2

    if-ge v0, v1, :cond_1

    .line 57
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 59
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lcom/quramsoft/qrb/QrBitmapDecoder;->QrnativeNewInstanceFromMemory([BIIZ)Lcom/quramsoft/qrb/QrBitmapRegionDecoder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "rect"
    .parameter "options"

    .prologue
    .line 169
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 170
    :cond_0
    const/4 v0, 0x0

    .line 178
    :goto_0
    return-object v0

    .line 172
    :cond_1
    const-string v0, "QrBitmapRegionDecoder.decodeRegion called on recycled region decoder"

    invoke-direct {p0, v0}, Lcom/quramsoft/qrb/QrBitmapRegionDecoder;->checkRecycled(Ljava/lang/String;)V

    .line 174
    iget v0, p1, Landroid/graphics/Rect;->left:I

    if-ltz v0, :cond_2

    iget v0, p1, Landroid/graphics/Rect;->top:I

    if-ltz v0, :cond_2

    iget v0, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/quramsoft/qrb/QrBitmapRegionDecoder;->getWidth()I

    move-result v1

    if-gt v0, v1, :cond_2

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Lcom/quramsoft/qrb/QrBitmapRegionDecoder;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_3

    .line 176
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "rectangle is not inside the image"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_3
    iget v0, p0, Lcom/quramsoft/qrb/QrBitmapRegionDecoder;->mHandle:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    .line 179
    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    iget v5, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    move-object v5, p2

    .line 178
    invoke-static/range {v0 .. v5}, Lcom/quramsoft/qrb/QrBitmapDecoder;->QrnativeDecodeRegion(IIIIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 243
    :try_start_0
    invoke-virtual {p0}, Lcom/quramsoft/qrb/QrBitmapRegionDecoder;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 249
    return-void

    .line 246
    :catchall_0
    move-exception v0

    .line 247
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 248
    throw v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 192
    const-string v0, "QrBitmapRegionDecoder.getHeight called on recycled region decoder"

    invoke-direct {p0, v0}, Lcom/quramsoft/qrb/QrBitmapRegionDecoder;->checkRecycled(Ljava/lang/String;)V

    .line 193
    iget v0, p0, Lcom/quramsoft/qrb/QrBitmapRegionDecoder;->mHandle:I

    invoke-static {v0}, Lcom/quramsoft/qrb/QrBitmapDecoder;->QrnativeGetHeight(I)I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 185
    const-string v0, "QrBitmapRegionDecoder.getWidth called on recycled region decoder"

    invoke-direct {p0, v0}, Lcom/quramsoft/qrb/QrBitmapRegionDecoder;->checkRecycled(Ljava/lang/String;)V

    .line 186
    iget v0, p0, Lcom/quramsoft/qrb/QrBitmapRegionDecoder;->mHandle:I

    invoke-static {v0}, Lcom/quramsoft/qrb/QrBitmapDecoder;->QrnativeGetWidth(I)I

    move-result v0

    return v0
.end method

.method public final isRecycled()Z
    .locals 1

    .prologue
    .line 223
    iget-boolean v0, p0, Lcom/quramsoft/qrb/QrBitmapRegionDecoder;->mRecycled:Z

    return v0
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/quramsoft/qrb/QrBitmapRegionDecoder;->mRecycled:Z

    if-nez v0, :cond_0

    .line 210
    iget v0, p0, Lcom/quramsoft/qrb/QrBitmapRegionDecoder;->mHandle:I

    invoke-static {v0}, Lcom/quramsoft/qrb/QrBitmapDecoder;->QrnativeClean(I)V

    .line 211
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quramsoft/qrb/QrBitmapRegionDecoder;->mRecycled:Z

    .line 213
    :cond_0
    return-void
.end method
