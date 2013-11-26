.class public Lcom/quramsoft/qrb/QuramBitmapRegionDecoderNative;
.super Ljava/lang/Object;
.source "QuramBitmapRegionDecoderNative.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "QuramBitmapRegionDecoderNative"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 15
    :try_start_0
    const-string v1, "XIVCoder"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .local v0, e:Ljava/lang/Exception;
    :goto_0
    return-void

    .line 17
    .end local v0           #e:Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 18
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "QuramBitmapRegionDecoderNative"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Library load fail : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native nativeClean(I)V
.end method

.method public static nativeDecodeRegion(IIIIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 18
    .parameter "handle"
    .parameter "start_x"
    .parameter "start_y"
    .parameter "width"
    .parameter "height"
    .parameter "options"

    .prologue
    .line 28
    const/4 v8, 0x0

    .line 30
    .local v8, dst_format:I
    move-object/from16 v0, p5

    iget v15, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 32
    .local v15, sampleSize:I
    move-object/from16 v0, p5

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/16 v9, 0x8

    if-le v3, v9, :cond_0

    .line 33
    const/16 v3, 0x8

    move-object/from16 v0, p5

    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 35
    :cond_0
    move-object/from16 v0, p5

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int v4, p1, v3

    .line 36
    .local v4, x:I
    move-object/from16 v0, p5

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int v5, p2, v3

    .line 37
    .local v5, y:I
    move-object/from16 v0, p5

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int v6, p3, v3

    .line 38
    .local v6, w:I
    move-object/from16 v0, p5

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int v7, p4, v3

    .line 42
    .local v7, h:I
    if-lez v6, :cond_1

    if-gtz v7, :cond_3

    .line 43
    :cond_1
    const/4 v2, 0x0

    .line 76
    :cond_2
    :goto_0
    return-object v2

    .line 46
    :cond_3
    move-object/from16 v0, p5

    iget-object v3, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v3, v9, :cond_4

    .line 48
    const/4 v8, 0x0

    .line 62
    :goto_1
    move-object/from16 v0, p5

    iget-object v3, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 64
    .local v2, bitmap:Landroid/graphics/Bitmap;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    .line 65
    .local v13, ietStart:J
    move-object/from16 v0, p5

    iget v9, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    move/from16 v3, p0

    invoke-static/range {v2 .. v9}, Lcom/quramsoft/qrb/QuramBitmapRegionDecoderNative;->nativeDoDecodeRegion(Landroid/graphics/Bitmap;IIIIIII)I

    .line 66
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    .line 67
    .local v11, ietEnd:J
    const-string v3, "amouse"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v16, "Qr Region Decoder : "

    move-object/from16 v0, v16

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v16, v11, v13

    move-wide/from16 v0, v16

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    move-object/from16 v0, p5

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-ge v3, v15, :cond_2

    .line 71
    move-object/from16 v0, p5

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/2addr v3, v6

    div-int/2addr v3, v15

    move-object/from16 v0, p5

    iget v9, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/2addr v9, v7

    div-int/2addr v9, v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v2, v3, v9, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 72
    .local v10, bm:Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 73
    move-object v2, v10

    .line 74
    move-object/from16 v0, p5

    iput v15, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_0

    .line 50
    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    .end local v10           #bm:Landroid/graphics/Bitmap;
    .end local v11           #ietEnd:J
    .end local v13           #ietStart:J
    :cond_4
    move-object/from16 v0, p5

    iget-object v3, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    sget-object v9, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-ne v3, v9, :cond_5

    .line 52
    const/4 v8, 0x1

    goto :goto_1

    .line 56
    :cond_5
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, p5

    iput-object v3, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 57
    const/4 v8, 0x0

    goto :goto_1
.end method

.method public static native nativeDoDecodeRegion(Landroid/graphics/Bitmap;IIIIIII)I
.end method

.method public static native nativeGetHeight(I)I
.end method

.method public static native nativeGetWidth(I)I
.end method

.method public static native nativeNewInstance(Ljava/lang/String;ZLcom/quramsoft/qrb/QuramBitmapFactory$Options;)Lcom/quramsoft/qrb/QuramBitmapRegionDecoderInternal;
.end method

.method public static native nativeNewInstanceWithDec(Ljava/lang/String;Landroid/graphics/Bitmap;IZLcom/quramsoft/qrb/QuramBitmapFactory$Options;)Lcom/quramsoft/qrb/QuramBitmapRegionDecoderInternal;
.end method
