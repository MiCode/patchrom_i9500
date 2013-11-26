.class public Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;
.super Ljava/lang/Object;
.source "QuramBitmapRegionDecoder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "QuramBitmapRegionDecoder"


# instance fields
.field public mBrd:Landroid/graphics/BitmapRegionDecoder;

.field public mBrdQuram:Lcom/quramsoft/qrb/QuramBitmapRegionDecoderInternal;

.field public mHeight:I

.field public mIsShareable:Z

.field public mIsUseQuramRegionDecoder:Z

.field public mIsUseSkia:Z

.field public mPathName:Ljava/lang/String;

.field public mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object v1, p0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;->mBrdQuram:Lcom/quramsoft/qrb/QuramBitmapRegionDecoderInternal;

    .line 20
    iput-object v1, p0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;->mBrd:Landroid/graphics/BitmapRegionDecoder;

    .line 22
    iput-boolean v0, p0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;->mIsUseQuramRegionDecoder:Z

    .line 25
    iput-boolean v0, p0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;->mIsUseSkia:Z

    .line 28
    iput-object v1, p0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;->mPathName:Ljava/lang/String;

    .line 29
    iput v2, p0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;->mWidth:I

    .line 30
    iput v2, p0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;->mHeight:I

    .line 31
    iput-boolean v0, p0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;->mIsShareable:Z

    .line 16
    return-void
.end method

.method public static newInstance(Ljava/io/FileDescriptor;Z)Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;
    .locals 3
    .parameter "fd"
    .parameter "isShareable"

    .prologue
    .line 94
    new-instance v0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;

    invoke-direct {v0}, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;-><init>()V

    .line 96
    .local v0, brdQuram:Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, v0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;->mIsUseQuramRegionDecoder:Z

    .line 98
    invoke-static {p0, p1}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/FileDescriptor;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v2

    iput-object v2, v0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;->mBrd:Landroid/graphics/BitmapRegionDecoder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_0
    return-object v0

    .line 99
    :catch_0
    move-exception v1

    .line 102
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static newInstance(Ljava/io/InputStream;Z)Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;
    .locals 3
    .parameter "is"
    .parameter "isShareable"

    .prologue
    .line 109
    new-instance v0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;

    invoke-direct {v0}, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;-><init>()V

    .line 111
    .local v0, brdQuram:Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, v0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;->mIsUseQuramRegionDecoder:Z

    .line 113
    invoke-static {p0, p1}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v2

    iput-object v2, v0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;->mBrd:Landroid/graphics/BitmapRegionDecoder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :goto_0
    return-object v0

    .line 114
    :catch_0
    move-exception v1

    .line 117
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static newInstance(Ljava/lang/String;ZLcom/quramsoft/qrb/QuramBitmapFactory$Options;)Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;
    .locals 5
    .parameter "pathName"
    .parameter "isShareable"
    .parameter "opts"

    .prologue
    const/4 v4, 0x0

    .line 34
    new-instance v0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;

    invoke-direct {v0}, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;-><init>()V

    .line 37
    .local v0, brdQuram:Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "jpg"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 38
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;->mIsUseQuramRegionDecoder:Z

    .line 44
    :goto_0
    :try_start_0
    iget-boolean v2, v0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;->mIsUseQuramRegionDecoder:Z

    if-eqz v2, :cond_2

    .line 45
    invoke-static {p0, p1, p2}, Lcom/quramsoft/qrb/QuramBitmapRegionDecoderInternal;->newInstance(Ljava/lang/String;ZLcom/quramsoft/qrb/QuramBitmapFactory$Options;)Lcom/quramsoft/qrb/QuramBitmapRegionDecoderInternal;

    move-result-object v2

    iput-object v2, v0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;->mBrdQuram:Lcom/quramsoft/qrb/QuramBitmapRegionDecoderInternal;

    .line 46
    iget-object v2, v0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;->mBrdQuram:Lcom/quramsoft/qrb/QuramBitmapRegionDecoderInternal;

    if-nez v2, :cond_0

    .line 47
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;->mIsUseQuramRegionDecoder:Z

    .line 48
    invoke-static {p0, p1}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/lang/String;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v2

    iput-object v2, v0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;->mBrd:Landroid/graphics/BitmapRegionDecoder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .end local v0           #brdQuram:Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;
    :cond_0
    :goto_1
    return-object v0

    .line 40
    .restart local v0       #brdQuram:Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;
    :cond_1
    iput-boolean v4, v0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;->mIsUseQuramRegionDecoder:Z

    goto :goto_0

    .line 51
    :cond_2
    :try_start_1
    invoke-static {p0, p1}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/lang/String;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v2

    iput-object v2, v0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;->mBrd:Landroid/graphics/BitmapRegionDecoder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 53
    :catch_0
    move-exception v1

    .line 56
    .local v1, e:Ljava/io/IOException;
    const-string v2, "QuramBitmapRegionDecoder"

    const-string v3, "newInstance : Bad Instance"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 59
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static newInstance([BIIZ)Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;
    .locals 4
    .parameter "data"
    .parameter "offset"
    .parameter "length"
    .parameter "isShareable"

    .prologue
    .line 124
    or-int v2, p1, p2

    if-ltz v2, :cond_0

    array-length v2, p0

    add-int v3, p1, p2

    if-ge v2, v3, :cond_1

    .line 126
    :cond_0
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    .line 129
    :cond_1
    new-instance v0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;

    invoke-direct {v0}, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;-><init>()V

    .line 131
    .local v0, brdQuram:Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, v0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;->mIsUseQuramRegionDecoder:Z

    .line 133
    invoke-static {p0, p1, p2, p3}, Landroid/graphics/BitmapRegionDecoder;->newInstance([BIIZ)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v2

    iput-object v2, v0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;->mBrd:Landroid/graphics/BitmapRegionDecoder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :goto_0
    return-object v0

    .line 134
    :catch_0
    move-exception v1

    .line 137
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static newInstanceWithDec(Ljava/lang/String;Landroid/graphics/Bitmap;IZLcom/quramsoft/qrb/QuramBitmapFactory$Options;)Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;
    .locals 5
    .parameter "pathName"
    .parameter "thumbnail"
    .parameter "sampleSizeOfThumbnail"
    .parameter "isShareable"
    .parameter "opts"

    .prologue
    const/4 v2, 0x0

    .line 68
    new-instance v0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;

    invoke-direct {v0}, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;-><init>()V

    .line 71
    .local v0, brdQuram:Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "jpg"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 72
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;->mIsUseQuramRegionDecoder:Z

    .line 79
    :try_start_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/quramsoft/qrb/QuramBitmapRegionDecoderInternal;->newInstanceWithDec(Ljava/lang/String;Landroid/graphics/Bitmap;IZLcom/quramsoft/qrb/QuramBitmapFactory$Options;)Lcom/quramsoft/qrb/QuramBitmapRegionDecoderInternal;

    move-result-object v3

    .line 78
    iput-object v3, v0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;->mBrdQuram:Lcom/quramsoft/qrb/QuramBitmapRegionDecoderInternal;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :goto_0
    iget-object v3, v0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;->mBrdQuram:Lcom/quramsoft/qrb/QuramBitmapRegionDecoderInternal;

    if-nez v3, :cond_0

    move-object v0, v2

    .line 90
    .end local v0           #brdQuram:Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;
    :cond_0
    :goto_1
    return-object v0

    .restart local v0       #brdQuram:Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;
    :cond_1
    move-object v0, v2

    .line 74
    goto :goto_1

    .line 81
    :catch_0
    move-exception v1

    .line 83
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public cancelDecoding()V
    .locals 1

    .prologue
    .line 199
    iget-boolean v0, p0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;->mIsUseQuramRegionDecoder:Z

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;->mBrdQuram:Lcom/quramsoft/qrb/QuramBitmapRegionDecoderInternal;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;->mBrdQuram:Lcom/quramsoft/qrb/QuramBitmapRegionDecoderInternal;

    invoke-virtual {v0}, Lcom/quramsoft/qrb/QuramBitmapRegionDecoderInternal;->cancelDecoding()V

    .line 203
    :cond_0
    return-void
.end method

.method public decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "rect"
    .parameter "options"

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;->mIsUseQuramRegionDecoder:Z

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;->mBrdQuram:Lcom/quramsoft/qrb/QuramBitmapRegionDecoderInternal;

    invoke-virtual {v0, p1, p2}, Lcom/quramsoft/qrb/QuramBitmapRegionDecoderInternal;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 168
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;->mBrd:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;->mIsUseQuramRegionDecoder:Z

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;->mBrdQuram:Lcom/quramsoft/qrb/QuramBitmapRegionDecoderInternal;

    invoke-virtual {v0}, Lcom/quramsoft/qrb/QuramBitmapRegionDecoderInternal;->getHeight()I

    move-result v0

    .line 157
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;->mBrd:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;->mIsUseQuramRegionDecoder:Z

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;->mBrdQuram:Lcom/quramsoft/qrb/QuramBitmapRegionDecoderInternal;

    invoke-virtual {v0}, Lcom/quramsoft/qrb/QuramBitmapRegionDecoderInternal;->getWidth()I

    move-result v0

    .line 148
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;->mBrd:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v0

    goto :goto_0
.end method

.method public isRecycled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 187
    iget-boolean v1, p0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;->mIsUseQuramRegionDecoder:Z

    if-eqz v1, :cond_1

    .line 188
    iget-object v1, p0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;->mBrdQuram:Lcom/quramsoft/qrb/QuramBitmapRegionDecoderInternal;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;->mBrdQuram:Lcom/quramsoft/qrb/QuramBitmapRegionDecoderInternal;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;->mBrdQuram:Lcom/quramsoft/qrb/QuramBitmapRegionDecoderInternal;

    invoke-virtual {v1}, Lcom/quramsoft/qrb/QuramBitmapRegionDecoderInternal;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 195
    :cond_0
    :goto_0
    return v0

    .line 191
    :cond_1
    iget-object v1, p0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;->mBrd:Landroid/graphics/BitmapRegionDecoder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;->mBrd:Landroid/graphics/BitmapRegionDecoder;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;->mBrd:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v1}, Landroid/graphics/BitmapRegionDecoder;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 195
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public recycle()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 173
    iget-boolean v0, p0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;->mIsUseQuramRegionDecoder:Z

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;->mBrdQuram:Lcom/quramsoft/qrb/QuramBitmapRegionDecoderInternal;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;->mBrdQuram:Lcom/quramsoft/qrb/QuramBitmapRegionDecoderInternal;

    invoke-virtual {v0}, Lcom/quramsoft/qrb/QuramBitmapRegionDecoderInternal;->recycle()V

    .line 176
    iput-object v1, p0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;->mBrdQuram:Lcom/quramsoft/qrb/QuramBitmapRegionDecoderInternal;

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;->mBrd:Landroid/graphics/BitmapRegionDecoder;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;->mBrd:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    .line 181
    iput-object v1, p0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;->mBrd:Landroid/graphics/BitmapRegionDecoder;

    goto :goto_0
.end method
