.class public Lcom/sec/android/glview/TwGLByteArrayTexture;
.super Lcom/sec/android/glview/TwGLTexture;
.source "TwGLByteArrayTexture.java"


# instance fields
.field private mBitmapData:[B

.field private mSampleSize:I


# direct methods
.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFF[B)V
    .locals 1
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"
    .parameter "data"

    .prologue
    .line 61
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 31
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/glview/TwGLByteArrayTexture;->mSampleSize:I

    .line 63
    iput-object p6, p0, Lcom/sec/android/glview/TwGLByteArrayTexture;->mBitmapData:[B

    .line 64
    iget-object v0, p0, Lcom/sec/android/glview/TwGLByteArrayTexture;->mBitmapData:[B

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 67
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFF[BZ)V
    .locals 1
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"
    .parameter "data"
    .parameter "highCompress"

    .prologue
    .line 81
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 31
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/glview/TwGLByteArrayTexture;->mSampleSize:I

    .line 83
    iput-object p6, p0, Lcom/sec/android/glview/TwGLByteArrayTexture;->mBitmapData:[B

    .line 84
    iget-object v0, p0, Lcom/sec/android/glview/TwGLByteArrayTexture;->mBitmapData:[B

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 88
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FF[B)V
    .locals 1
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "data"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/glview/TwGLTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 31
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/glview/TwGLByteArrayTexture;->mSampleSize:I

    .line 44
    iput-object p4, p0, Lcom/sec/android/glview/TwGLByteArrayTexture;->mBitmapData:[B

    .line 45
    iget-object v0, p0, Lcom/sec/android/glview/TwGLByteArrayTexture;->mBitmapData:[B

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 48
    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 94
    invoke-super {p0}, Lcom/sec/android/glview/TwGLTexture;->clear()V

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLByteArrayTexture;->mBitmapData:[B

    .line 97
    return-void
.end method

.method protected loadBitmap()Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 108
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 109
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    iget v2, p0, Lcom/sec/android/glview/TwGLByteArrayTexture;->mSampleSize:I

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 110
    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 111
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 113
    iget-object v2, p0, Lcom/sec/android/glview/TwGLByteArrayTexture;->mBitmapData:[B

    iget-object v3, p0, Lcom/sec/android/glview/TwGLByteArrayTexture;->mBitmapData:[B

    array-length v3, v3

    invoke-static {v2, v4, v3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 114
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/glview/TwGLByteArrayTexture;->mBitmapData:[B

    .line 116
    return-object v0
.end method

.method public setSampleSize(I)V
    .locals 0
    .parameter "sampleSize"

    .prologue
    .line 100
    iput p1, p0, Lcom/sec/android/glview/TwGLByteArrayTexture;->mSampleSize:I

    .line 101
    return-void
.end method
