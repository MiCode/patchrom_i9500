.class public Lcom/quramsoft/qrb/QuramBitmapFactory;
.super Ljava/lang/Object;
.source "QuramBitmapFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/quramsoft/qrb/QuramBitmapFactory$Options;
    }
.end annotation


# static fields
.field public static final Quram_DECODECANCEL_SUCC:I = 0x6

.field public static final Quram_FAIL:I = 0x0

.field public static final Quram_JPEG:Ljava/lang/String; = "Quram_JPEG"

.field public static final Quram_SUCC:I = 0x1

.field private static final TAG:Ljava/lang/String; = "QuramBitmapFactory"

.field protected static final USE_AUTO_FILEMODE:I = 0x0

.field protected static final USE_POWER_PROCESS:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 22
    :try_start_0
    const-string v1, "Qjpeg"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .local v0, e:Ljava/lang/Exception;
    :goto_0
    return-void

    .line 24
    .end local v0           #e:Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 26
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "QuramBitmapFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Load fail : "

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
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native CreateDecodeInfoFromBuffer([BIILcom/quramsoft/qrb/QuramBitmapFactory$Options;)I
.end method

.method public static native CreateDecodeInfoFromFile(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;I)I
.end method

.method public static native DecodeCancel(I)V
.end method

.method public static native DecodeJPEGFromFile(ILandroid/graphics/Bitmap;III)I
.end method

.method public static native DecodeJPEGThumbnail(ILandroid/graphics/Bitmap;III)I
.end method

.method public static native DecodeJpegFromStream(Ljava/io/InputStream;ILcom/quramsoft/qrb/QuramBitmapFactory$Options;[BILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
.end method

.method public static native EncodeJPEG(Landroid/graphics/Bitmap;[BIIJ)I
.end method

.method public static native PDecodeJPEGFromFile(ILandroid/graphics/Bitmap;III)I
.end method

.method public static native PartialDecodeJPEGFromFile(ILandroid/graphics/Bitmap;IIIII)I
.end method

.method public static native PartialDecodeJPEGFromFileWithResizeInfo(ILandroid/graphics/Bitmap;IIIIII)I
.end method

.method public static native RegionMapCancel(I)V
.end method

.method public static cancelDecode(Lcom/quramsoft/qrb/QuramBitmapFactory$Options;)V
    .locals 1
    .parameter "option"

    .prologue
    .line 719
    invoke-virtual {p0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inCancelingRequested:Z

    if-eqz v0, :cond_1

    .line 723
    :cond_0
    :goto_0
    return-void

    .line 721
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inCancelingRequested:Z

    .line 722
    invoke-virtual {p0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v0

    invoke-static {v0}, Lcom/quramsoft/qrb/QuramBitmapFactory;->DecodeCancel(I)V

    goto :goto_0
.end method

.method public static cancelRegionMap(Lcom/quramsoft/qrb/QuramBitmapFactory$Options;)V
    .locals 1
    .parameter "option"

    .prologue
    .line 728
    invoke-virtual {p0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inCancelingRequested:Z

    if-eqz v0, :cond_1

    .line 733
    :cond_0
    :goto_0
    return-void

    .line 731
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inCancelingRequested:Z

    .line 732
    invoke-virtual {p0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v0

    invoke-static {v0}, Lcom/quramsoft/qrb/QuramBitmapFactory;->RegionMapCancel(I)V

    goto :goto_0
.end method

.method public static compressToByte(Landroid/graphics/Bitmap;Ljava/lang/String;[BIIJ)I
    .locals 6
    .parameter "bitmap"
    .parameter "compressFormat"
    .parameter "out"
    .parameter "out_bufsize"
    .parameter "quality"
    .parameter "orgID"

    .prologue
    .line 705
    const-string v0, "Quram_JPEG"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move-wide v4, p5

    .line 708
    invoke-static/range {v0 .. v5}, Lcom/quramsoft/qrb/QuramBitmapFactory;->EncodeJPEG(Landroid/graphics/Bitmap;[BIIJ)I

    .line 710
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static decodeByteArray([BIILcom/quramsoft/qrb/QuramBitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "data"
    .parameter "offset"
    .parameter "length"
    .parameter "option"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 187
    const/4 v1, 0x0

    .line 189
    .local v1, retBitmap:Landroid/graphics/Bitmap;
    if-gez p1, :cond_0

    .line 191
    const-string v5, "QuramBitmapFactory"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "offset is invalid value : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :goto_0
    return-object v4

    .line 195
    :cond_0
    if-gtz p2, :cond_1

    .line 197
    const-string v5, "QuramBitmapFactory"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "length must be bigger then 0 : now length = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 201
    :cond_1
    array-length v5, p0

    add-int v6, p2, p1

    if-ge v5, v6, :cond_2

    .line 203
    const-string v5, "QuramBitmapFactory"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "data buffer must be bigger then offset + length, now offset="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", now length="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", now data.lenght="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, p0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 207
    :cond_2
    invoke-virtual {p3}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v5

    if-eqz v5, :cond_3

    .line 209
    const-string v5, "QuramBitmapFactory"

    const-string v6, "option Fail"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 213
    :cond_3
    invoke-static {p0, p1, p2, p3}, Lcom/quramsoft/qrb/QuramBitmapFactory;->CreateDecodeInfoFromBuffer([BIILcom/quramsoft/qrb/QuramBitmapFactory$Options;)I

    move-result v0

    .line 214
    .local v0, ret:I
    if-nez v0, :cond_4

    .line 216
    invoke-virtual {p3, v7}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(I)V

    .line 217
    const-string v5, "IET"

    const-string v6, "Create Decode Info Failed"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 221
    :cond_4
    invoke-virtual {p3}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getWidth()I

    move-result v5

    iget v6, p3, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    div-int/2addr v5, v6

    int-to-float v5, v5

    invoke-static {v5}, Lcom/quramsoft/qrb/QuramBitmapFactory;->round(F)I

    move-result v3

    .line 222
    .local v3, sampledWidth:I
    invoke-virtual {p3}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHeight()I

    move-result v5

    iget v6, p3, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    div-int/2addr v5, v6

    int-to-float v5, v5

    invoke-static {v5}, Lcom/quramsoft/qrb/QuramBitmapFactory;->round(F)I

    move-result v2

    .line 224
    .local v2, sampledHeight:I
    iget v5, p3, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inPreferredConfig:I

    const/4 v6, 0x7

    if-ne v5, v6, :cond_7

    .line 225
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 229
    :goto_1
    iget v5, p3, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    if-nez v5, :cond_5

    .line 230
    const/4 v5, 0x1

    iput v5, p3, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    .line 232
    :cond_5
    iget v5, p3, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    const/16 v6, 0x8

    if-le v5, v6, :cond_8

    .line 234
    invoke-virtual {p3}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v5

    const/4 v6, -0x1

    invoke-static {v5, v1, v3, v2, v6}, Lcom/quramsoft/qrb/QuramBitmapFactory;->DecodeJPEGFromFile(ILandroid/graphics/Bitmap;III)I

    move-result v0

    .line 240
    :goto_2
    if-nez v0, :cond_9

    .line 242
    if-eqz v1, :cond_6

    .line 244
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 245
    const/4 v1, 0x0

    .line 248
    :cond_6
    invoke-virtual {p3, v7}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(I)V

    .line 249
    const-string v5, "QuramBitmapFactory"

    const-string v6, "Decode Fail!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 227
    :cond_7
    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_1

    .line 238
    :cond_8
    invoke-virtual {p3}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v5

    iget v6, p3, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    invoke-static {v5, v1, v3, v2, v6}, Lcom/quramsoft/qrb/QuramBitmapFactory;->DecodeJPEGFromFile(ILandroid/graphics/Bitmap;III)I

    move-result v0

    goto :goto_2

    .line 253
    :cond_9
    invoke-virtual {p3, v7}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(I)V

    move-object v4, v1

    .line 254
    goto/16 :goto_0
.end method

.method public static decodeFile(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "filename"
    .parameter "option"

    .prologue
    const/16 v8, 0xbb8

    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 375
    const/4 v1, 0x0

    .line 377
    .local v1, retBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v5

    if-eqz v5, :cond_1

    .line 379
    const-string v5, "QuramBitmapFactory"

    const-string v6, "option Fail"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    :cond_0
    :goto_0
    return-object v4

    .line 383
    :cond_1
    invoke-static {p0, p1, v7}, Lcom/quramsoft/qrb/QuramBitmapFactory;->CreateDecodeInfoFromFile(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;I)I

    move-result v0

    .line 384
    .local v0, ret:I
    if-nez v0, :cond_2

    .line 386
    invoke-virtual {p1, v7}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(I)V

    .line 387
    const-string v5, "IET"

    const-string v6, "Create Decode Info Failed"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 391
    :cond_2
    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getWidth()I

    move-result v5

    int-to-float v5, v5

    iget v6, p1, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-static {v5}, Lcom/quramsoft/qrb/QuramBitmapFactory;->round(F)I

    move-result v3

    .line 392
    .local v3, sampledWidth:I
    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget v6, p1, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-static {v5}, Lcom/quramsoft/qrb/QuramBitmapFactory;->round(F)I

    move-result v2

    .line 394
    .local v2, sampledHeight:I
    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    if-ge v3, v8, :cond_0

    if-ge v2, v8, :cond_0

    .line 397
    iget v5, p1, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inPreferredConfig:I

    const/4 v6, 0x7

    if-ne v5, v6, :cond_5

    .line 398
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 402
    :goto_1
    iget v5, p1, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    if-nez v5, :cond_3

    .line 403
    const/4 v5, 0x1

    iput v5, p1, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    .line 405
    :cond_3
    iget v5, p1, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    const/16 v6, 0x8

    if-le v5, v6, :cond_6

    .line 407
    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v5

    const/4 v6, -0x1

    invoke-static {v5, v1, v3, v2, v6}, Lcom/quramsoft/qrb/QuramBitmapFactory;->DecodeJPEGFromFile(ILandroid/graphics/Bitmap;III)I

    move-result v0

    .line 413
    :goto_2
    if-nez v0, :cond_7

    .line 415
    if-eqz v1, :cond_4

    .line 417
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 418
    const/4 v1, 0x0

    .line 421
    :cond_4
    invoke-virtual {p1, v7}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(I)V

    .line 422
    const-string v5, "QuramBitmapFactory"

    const-string v6, "Decode Fail!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 400
    :cond_5
    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_1

    .line 411
    :cond_6
    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v5

    iget v6, p1, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    invoke-static {v5, v1, v3, v2, v6}, Lcom/quramsoft/qrb/QuramBitmapFactory;->DecodeJPEGFromFile(ILandroid/graphics/Bitmap;III)I

    move-result v0

    goto :goto_2

    .line 426
    :cond_7
    invoke-virtual {p1, v7}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(I)V

    move-object v4, v1

    .line 427
    goto :goto_0
.end method

.method public static decodeFile(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;III)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "filename"
    .parameter "option"
    .parameter "width"
    .parameter "height"
    .parameter "origId"

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 115
    const/4 v1, 0x0

    .line 117
    .local v1, retBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v3

    if-eqz v3, :cond_0

    .line 119
    const-string v3, "QuramBitmapFactory"

    const-string v4, "option Fail"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :goto_0
    return-object v2

    .line 123
    :cond_0
    invoke-static {p0, p1, v5}, Lcom/quramsoft/qrb/QuramBitmapFactory;->CreateDecodeInfoFromFile(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;I)I

    move-result v0

    .line 124
    .local v0, ret:I
    if-nez v0, :cond_1

    .line 126
    invoke-virtual {p1, v5}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(I)V

    goto :goto_0

    .line 130
    :cond_1
    iget v3, p1, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inPreferredConfig:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_4

    .line 131
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 135
    :goto_1
    iget v3, p1, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    if-nez v3, :cond_2

    .line 136
    const/4 v3, 0x1

    iput v3, p1, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    .line 138
    :cond_2
    iget v3, p1, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    const/16 v4, 0x8

    if-le v3, v4, :cond_5

    .line 140
    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v3

    const/4 v4, -0x1

    invoke-static {v3, v1, p2, p3, v4}, Lcom/quramsoft/qrb/QuramBitmapFactory;->DecodeJPEGFromFile(ILandroid/graphics/Bitmap;III)I

    move-result v0

    .line 146
    :goto_2
    if-nez v0, :cond_6

    .line 148
    if-eqz v1, :cond_3

    .line 150
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 151
    const/4 v1, 0x0

    .line 154
    :cond_3
    invoke-virtual {p1, v5}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(I)V

    .line 155
    const-string v3, "QuramBitmapFactory"

    const-string v4, "Decode Fail!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 133
    :cond_4
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_1

    .line 144
    :cond_5
    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v3

    iget v4, p1, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    invoke-static {v3, v1, p2, p3, v4}, Lcom/quramsoft/qrb/QuramBitmapFactory;->DecodeJPEGFromFile(ILandroid/graphics/Bitmap;III)I

    move-result v0

    goto :goto_2

    .line 159
    :cond_6
    const/4 v2, 0x6

    if-ne v0, v2, :cond_8

    .line 163
    if-eqz v1, :cond_7

    .line 165
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 166
    const/4 v1, 0x0

    .line 169
    :cond_7
    const-string v2, "QuramBitmapFactory"

    const-string v3, "Decode Cancel Success!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_8
    invoke-virtual {p1, v5}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(I)V

    move-object v2, v1

    .line 173
    goto :goto_0
.end method

.method public static decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "fd"

    .prologue
    .line 834
    new-instance v0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;

    invoke-direct {v0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;-><init>()V

    .line 835
    .local v0, option:Lcom/quramsoft/qrb/QuramBitmapFactory$Options;
    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/quramsoft/qrb/QuramBitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "fd"
    .parameter "outpadding"
    .parameter "option"

    .prologue
    const/4 v8, 0x0

    .line 840
    const/4 v7, 0x0

    .line 841
    .local v7, retBitmap:Landroid/graphics/Bitmap;
    const/16 v1, 0x4000

    new-array v3, v1, [B

    .line 843
    .local v3, bytearray:[B
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 845
    .local v0, fis:Ljava/io/FileInputStream;
    invoke-virtual {p2}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v1

    if-eqz v1, :cond_0

    .line 847
    const-string v1, "QuramBitmapFactory"

    const-string v2, "option Fail"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    :goto_0
    return-object v8

    .line 853
    :cond_0
    :try_start_0
    iget v1, p2, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inPreferredConfig:I

    if-nez v1, :cond_2

    .line 854
    invoke-virtual {v0}, Ljava/io/FileInputStream;->available()I

    move-result v1

    iget v4, p2, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/quramsoft/qrb/QuramBitmapFactory;->DecodeJpegFromStream(Ljava/io/InputStream;ILcom/quramsoft/qrb/QuramBitmapFactory$Options;[BILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 907
    :cond_1
    :goto_1
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(I)V

    .line 909
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v8

    .line 917
    check-cast v3, [B

    move-object v8, v7

    .line 918
    goto :goto_0

    .line 855
    :cond_2
    :try_start_2
    iget v1, p2, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inPreferredConfig:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    .line 856
    invoke-virtual {v0}, Ljava/io/FileInputStream;->available()I

    move-result v1

    iget v4, p2, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/quramsoft/qrb/QuramBitmapFactory;->DecodeJpegFromStream(Ljava/io/InputStream;ILcom/quramsoft/qrb/QuramBitmapFactory$Options;[BILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v7

    goto :goto_1

    .line 859
    :catch_0
    move-exception v6

    .line 861
    .local v6, e:Ljava/lang/Exception;
    const-string v1, "QuramBitmapFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 911
    .end local v6           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v6

    .line 913
    .restart local v6       #e:Ljava/lang/Exception;
    const-string v1, "QuramBitmapFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static decodeFileFromThumbnail(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;III)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "filename"
    .parameter "option"
    .parameter "width"
    .parameter "height"
    .parameter "origId"

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 48
    const/4 v1, 0x0

    .line 50
    .local v1, retBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v3

    if-eqz v3, :cond_0

    .line 52
    const-string v3, "QuramBitmapFactory"

    const-string v4, "option Fail"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :goto_0
    return-object v2

    .line 56
    :cond_0
    invoke-static {p0, p1, v5}, Lcom/quramsoft/qrb/QuramBitmapFactory;->CreateDecodeInfoFromFile(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;I)I

    move-result v0

    .line 57
    .local v0, ret:I
    if-nez v0, :cond_1

    .line 59
    invoke-virtual {p1, v5}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(I)V

    goto :goto_0

    .line 63
    :cond_1
    iget v3, p1, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inPreferredConfig:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_4

    .line 64
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 68
    :goto_1
    iget v3, p1, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    if-nez v3, :cond_2

    .line 69
    iput v6, p1, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    .line 71
    :cond_2
    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v3

    invoke-static {v3, v1, p2, p3, v6}, Lcom/quramsoft/qrb/QuramBitmapFactory;->DecodeJPEGThumbnail(ILandroid/graphics/Bitmap;III)I

    move-result v0

    .line 73
    if-nez v0, :cond_5

    .line 75
    if-eqz v1, :cond_3

    .line 77
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 78
    const/4 v1, 0x0

    .line 81
    :cond_3
    invoke-virtual {p1, v5}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(I)V

    .line 82
    const-string v3, "QuramBitmapFactory"

    const-string v4, "Decode Fail!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 66
    :cond_4
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_1

    .line 86
    :cond_5
    const/4 v2, 0x6

    if-ne v0, v2, :cond_7

    .line 90
    if-eqz v1, :cond_6

    .line 92
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 93
    const/4 v1, 0x0

    .line 96
    :cond_6
    const-string v2, "QuramBitmapFactory"

    const-string v3, "Decode Cancel Success!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_7
    invoke-virtual {p1, v5}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(I)V

    move-object v2, v1

    .line 100
    goto :goto_0
.end method

.method public static decodeFileStream(Ljava/io/InputStream;IILcom/quramsoft/qrb/QuramBitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "inputstream"
    .parameter "width"
    .parameter "height"
    .parameter "option"

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x0

    .line 268
    const/4 v4, 0x0

    .local v4, retBitmap:Landroid/graphics/Bitmap;
    move-object v0, v5

    .line 269
    check-cast v0, [B

    .line 271
    .local v0, data:[B
    if-nez p0, :cond_0

    .line 273
    const-string v6, "QuramBitmapFactory"

    const-string v7, "inputstream is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :goto_0
    return-object v5

    .line 280
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 288
    .local v2, len:I
    :goto_1
    if-gtz v2, :cond_1

    .line 290
    const-string v6, "QuramBitmapFactory"

    const-string v7, "inpustream open fail"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 282
    .end local v2           #len:I
    :catch_0
    move-exception v1

    .line 284
    .local v1, e:Ljava/io/IOException;
    const/4 v2, 0x0

    .line 285
    .restart local v2       #len:I
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 294
    .end local v1           #e:Ljava/io/IOException;
    :cond_1
    new-array v0, v2, [B

    .line 295
    if-nez v0, :cond_2

    .line 297
    const-string v6, "QuramBitmapFactory"

    const-string v7, "data alloc failed"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 303
    :cond_2
    :try_start_1
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 311
    :goto_2
    invoke-virtual {p3}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v6

    if-eqz v6, :cond_3

    .line 313
    const-string v6, "QuramBitmapFactory"

    const-string v7, "option Fail"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 305
    :catch_1
    move-exception v1

    .restart local v1       #e:Ljava/io/IOException;
    move-object v0, v5

    .line 307
    check-cast v0, [B

    .line 308
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 317
    .end local v1           #e:Ljava/io/IOException;
    :cond_3
    invoke-static {v0, v9, v2, p3}, Lcom/quramsoft/qrb/QuramBitmapFactory;->CreateDecodeInfoFromBuffer([BIILcom/quramsoft/qrb/QuramBitmapFactory$Options;)I

    move-result v3

    .line 318
    .local v3, ret:I
    if-nez v3, :cond_4

    .line 320
    invoke-virtual {p3, v9}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(I)V

    .line 321
    const-string v6, "IET"

    const-string v7, "Create Decode Info Failed"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 328
    :cond_4
    iget v6, p3, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inPreferredConfig:I

    const/4 v7, 0x7

    if-ne v6, v7, :cond_7

    .line 329
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 333
    :goto_3
    iget v6, p3, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    if-nez v6, :cond_5

    .line 334
    const/4 v6, 0x1

    iput v6, p3, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    .line 344
    :cond_5
    const-string v6, "IET"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "decode jpeg with w = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", h = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    invoke-virtual {p3}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v6

    iget v7, p3, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    invoke-static {v6, v4, p1, p2, v7}, Lcom/quramsoft/qrb/QuramBitmapFactory;->DecodeJPEGFromFile(ILandroid/graphics/Bitmap;III)I

    move-result v3

    .line 349
    if-nez v3, :cond_8

    .line 351
    if-eqz v4, :cond_6

    .line 353
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 354
    const/4 v4, 0x0

    .line 357
    :cond_6
    invoke-virtual {p3, v9}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(I)V

    .line 358
    const-string v6, "QuramBitmapFactory"

    const-string v7, "Decode Fail!!!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 331
    :cond_7
    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_3

    .line 362
    :cond_8
    invoke-virtual {p3, v9}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(I)V

    move-object v5, v4

    .line 363
    goto/16 :goto_0
.end method

.method public static partialDecodeByteArray([BIILcom/quramsoft/qrb/QuramBitmapFactory$Options;IIII)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "data"
    .parameter "offset"
    .parameter "length"
    .parameter "option"
    .parameter "left"
    .parameter "right"
    .parameter "top"
    .parameter "bottom"

    .prologue
    .line 439
    const/4 v1, 0x0

    .line 440
    .local v1, retBitmap:Landroid/graphics/Bitmap;
    iget v10, p3, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    .line 441
    .local v10, sampleSize:I
    const/4 v11, 0x0

    .line 442
    .local v11, width:I
    const/4 v8, 0x0

    .line 444
    .local v8, height:I
    if-gez p1, :cond_0

    .line 446
    const-string v0, "QuramBitmapFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "offset is invalid value : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    const/4 v0, 0x0

    .line 514
    :goto_0
    return-object v0

    .line 450
    :cond_0
    if-gtz p2, :cond_1

    .line 452
    const-string v0, "QuramBitmapFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "length must be bigger then 0 : now length = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    const/4 v0, 0x0

    goto :goto_0

    .line 456
    :cond_1
    array-length v0, p0

    add-int v2, p2, p1

    if-ge v0, v2, :cond_2

    .line 458
    const-string v0, "QuramBitmapFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "data buffer must be bigger then offset + length, now offset="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", now length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", now data.lenght="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    const/4 v0, 0x0

    goto :goto_0

    .line 462
    :cond_2
    invoke-virtual {p3}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v0

    if-eqz v0, :cond_3

    .line 464
    const-string v0, "QuramBitmapFactory"

    const-string v2, "option Fail"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    const/4 v0, 0x0

    goto :goto_0

    .line 468
    :cond_3
    invoke-static {p0, p1, p2, p3}, Lcom/quramsoft/qrb/QuramBitmapFactory;->CreateDecodeInfoFromBuffer([BIILcom/quramsoft/qrb/QuramBitmapFactory$Options;)I

    move-result v9

    .line 469
    .local v9, ret:I
    if-nez v9, :cond_4

    .line 471
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(I)V

    .line 472
    const-string v0, "IET"

    const-string v2, "Create Decode Info Failed"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    const/4 v0, 0x0

    goto :goto_0

    .line 476
    :cond_4
    iget v0, p3, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    if-nez v0, :cond_7

    .line 477
    const/4 v0, 0x1

    iput v0, p3, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    .line 481
    :cond_5
    :goto_1
    sub-int v0, p5, p4

    iget v2, p3, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    div-int v11, v0, v2

    .line 482
    sub-int v0, p7, p6

    iget v2, p3, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    div-int v8, v0, v2

    .line 484
    iget v0, p3, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inPreferredConfig:I

    const/4 v2, 0x7

    if-ne v0, v2, :cond_8

    .line 485
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v8, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 490
    :goto_2
    invoke-virtual {p3}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v0

    sub-int v4, p5, p4

    sub-int v5, p7, p6

    iget v6, p3, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    move/from16 v2, p4

    move/from16 v3, p6

    invoke-static/range {v0 .. v6}, Lcom/quramsoft/qrb/QuramBitmapFactory;->PartialDecodeJPEGFromFile(ILandroid/graphics/Bitmap;IIIII)I

    move-result v9

    .line 492
    if-nez v9, :cond_9

    .line 494
    if-eqz v1, :cond_6

    .line 496
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 497
    const/4 v1, 0x0

    .line 500
    :cond_6
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(I)V

    .line 501
    const-string v0, "QuramBitmapFactory"

    const-string v2, "Decode Fail!!!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 478
    :cond_7
    iget v0, p3, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    const/16 v2, 0x8

    if-le v0, v2, :cond_5

    .line 479
    const/16 v0, 0x8

    iput v0, p3, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    goto :goto_1

    .line 487
    :cond_8
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v8, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_2

    .line 505
    :cond_9
    iget v0, p3, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    if-ge v0, v10, :cond_a

    .line 507
    iget v0, p3, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    mul-int/2addr v0, v11

    div-int/2addr v0, v10

    iget v2, p3, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    mul-int/2addr v2, v8

    div-int/2addr v2, v10

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 508
    .local v7, bm:Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 509
    move-object v1, v7

    .line 510
    iput v10, p3, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    .line 513
    .end local v7           #bm:Landroid/graphics/Bitmap;
    :cond_a
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(I)V

    move-object v0, v1

    .line 514
    goto/16 :goto_0
.end method

.method public static partialDecodeFile(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;IIII)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "filename"
    .parameter "option"
    .parameter "left"
    .parameter "right"
    .parameter "top"
    .parameter "bottom"

    .prologue
    .line 633
    const/4 v1, 0x0

    .line 634
    .local v1, retBitmap:Landroid/graphics/Bitmap;
    iget v10, p1, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    .line 635
    .local v10, sampleSize:I
    const/4 v11, 0x0

    .line 636
    .local v11, width:I
    const/4 v8, 0x0

    .line 638
    .local v8, height:I
    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v0

    if-eqz v0, :cond_0

    .line 640
    const-string v0, "QuramBitmapFactory"

    const-string v2, "option Fail"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    const/4 v0, 0x0

    .line 690
    :goto_0
    return-object v0

    .line 644
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/quramsoft/qrb/QuramBitmapFactory;->CreateDecodeInfoFromFile(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;I)I

    move-result v9

    .line 645
    .local v9, ret:I
    if-nez v9, :cond_1

    .line 647
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(I)V

    .line 648
    const-string v0, "IET"

    const-string v2, "Create Decode Info Failed"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    const/4 v0, 0x0

    goto :goto_0

    .line 652
    :cond_1
    iget v0, p1, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    if-nez v0, :cond_4

    .line 653
    const/4 v0, 0x1

    iput v0, p1, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    .line 657
    :cond_2
    :goto_1
    sub-int v0, p3, p2

    iget v2, p1, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    div-int v11, v0, v2

    .line 658
    sub-int v0, p5, p4

    iget v2, p1, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    div-int v8, v0, v2

    .line 660
    iget v0, p1, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inPreferredConfig:I

    const/4 v2, 0x7

    if-ne v0, v2, :cond_5

    .line 661
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v8, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 666
    :goto_2
    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v0

    sub-int v4, p3, p2

    sub-int v5, p5, p4

    iget v6, p1, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    move v2, p2

    move/from16 v3, p4

    invoke-static/range {v0 .. v6}, Lcom/quramsoft/qrb/QuramBitmapFactory;->PartialDecodeJPEGFromFile(ILandroid/graphics/Bitmap;IIIII)I

    move-result v9

    .line 668
    if-nez v9, :cond_6

    .line 670
    if-eqz v1, :cond_3

    .line 672
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 673
    const/4 v1, 0x0

    .line 676
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(I)V

    .line 677
    const-string v0, "QuramBitmapFactory"

    const-string v2, "Decode Fail!!!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    const/4 v0, 0x0

    goto :goto_0

    .line 654
    :cond_4
    iget v0, p1, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    const/16 v2, 0x8

    if-le v0, v2, :cond_2

    .line 655
    const/16 v0, 0x8

    iput v0, p1, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    goto :goto_1

    .line 663
    :cond_5
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v8, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_2

    .line 681
    :cond_6
    iget v0, p1, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    if-ge v0, v10, :cond_7

    .line 683
    iget v0, p1, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    mul-int/2addr v0, v11

    div-int/2addr v0, v10

    iget v2, p1, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    mul-int/2addr v2, v8

    div-int/2addr v2, v10

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 684
    .local v7, bm:Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 685
    move-object v1, v7

    .line 686
    iput v10, p1, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    .line 689
    .end local v7           #bm:Landroid/graphics/Bitmap;
    :cond_7
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(I)V

    move-object v0, v1

    .line 690
    goto/16 :goto_0
.end method

.method public static partialDecodeFileWithSampledInfo(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;IIIIII)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "filename"
    .parameter "option"
    .parameter "left"
    .parameter "right"
    .parameter "top"
    .parameter "bottom"
    .parameter "dstWidth"
    .parameter "dstHeight"

    .prologue
    .line 526
    const/4 v1, 0x0

    .line 527
    .local v1, retBitmap:Landroid/graphics/Bitmap;
    sub-int v4, p3, p2

    .line 528
    .local v4, width:I
    sub-int v5, p5, p4

    .line 530
    .local v5, height:I
    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v0

    if-eqz v0, :cond_0

    .line 532
    const-string v0, "QuramBitmapFactory"

    const-string v2, "option Fail"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    const/4 v0, 0x0

    .line 621
    :goto_0
    return-object v0

    .line 536
    :cond_0
    if-lez v4, :cond_1

    if-gtz v5, :cond_2

    .line 538
    :cond_1
    const-string v0, "QuramBitmapFactory"

    const-string v2, "width & height must greater then Zero!!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    const/4 v0, 0x0

    goto :goto_0

    .line 541
    :cond_2
    if-lez p6, :cond_3

    if-gtz p7, :cond_4

    .line 543
    :cond_3
    const-string v0, "QuramBitmapFactory"

    const-string v2, "dstWidth & dstHeight must greater then Zero!!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    const/4 v0, 0x0

    goto :goto_0

    .line 587
    :cond_4
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/quramsoft/qrb/QuramBitmapFactory;->CreateDecodeInfoFromFile(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;I)I

    move-result v8

    .line 588
    .local v8, ret:I
    if-nez v8, :cond_5

    .line 590
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(I)V

    .line 591
    const-string v0, "QuramBitmapFactory"

    const-string v2, "Create Decode Info Failed"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    const/4 v0, 0x0

    goto :goto_0

    .line 594
    :cond_5
    const-string v0, "amouse"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bitmap width = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    iget v0, p1, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inPreferredConfig:I

    const/4 v2, 0x7

    if-ne v0, v2, :cond_7

    .line 597
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 605
    :goto_1
    invoke-virtual {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->getHandle()I

    move-result v0

    move v2, p2

    move v3, p4

    move v6, p6

    move/from16 v7, p7

    invoke-static/range {v0 .. v7}, Lcom/quramsoft/qrb/QuramBitmapFactory;->PartialDecodeJPEGFromFileWithResizeInfo(ILandroid/graphics/Bitmap;IIIIII)I

    move-result v8

    .line 607
    if-nez v8, :cond_8

    .line 609
    if-eqz v1, :cond_6

    .line 611
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 612
    const/4 v1, 0x0

    .line 615
    :cond_6
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(I)V

    .line 616
    const-string v0, "QuramBitmapFactory"

    const-string v2, "Decode Fail!!!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    const/4 v0, 0x0

    goto :goto_0

    .line 601
    :cond_7
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_1

    .line 620
    :cond_8
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->setHandle(I)V

    move-object v0, v1

    .line 621
    goto/16 :goto_0
.end method

.method public static round(F)I
    .locals 1
    .parameter "val"

    .prologue
    .line 33
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static translateBitmapFactoryOptions(Landroid/graphics/BitmapFactory$Options;)Lcom/quramsoft/qrb/QuramBitmapFactory$Options;
    .locals 4
    .parameter "options"

    .prologue
    const/4 v3, 0x7

    .line 811
    new-instance v0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;

    invoke-direct {v0}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;-><init>()V

    .line 812
    .local v0, qrbOptions:Lcom/quramsoft/qrb/QuramBitmapFactory$Options;
    iget-object v1, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v1, v2, :cond_0

    .line 814
    iput v3, v0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inPreferredConfig:I

    .line 825
    :goto_0
    iget v1, p0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iput v1, v0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inSampleSize:I

    .line 826
    iget v1, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    #setter for: Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->mWidth:I
    invoke-static {v0, v1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->access$0(Lcom/quramsoft/qrb/QuramBitmapFactory$Options;I)V

    .line 827
    iget v1, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    #setter for: Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->mHeight:I
    invoke-static {v0, v1}, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->access$1(Lcom/quramsoft/qrb/QuramBitmapFactory$Options;I)V

    .line 829
    return-object v0

    .line 816
    :cond_0
    iget-object v1, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-ne v1, v2, :cond_1

    .line 818
    const/4 v1, 0x0

    iput v1, v0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inPreferredConfig:I

    goto :goto_0

    .line 822
    :cond_1
    iput v3, v0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inPreferredConfig:I

    goto :goto_0
.end method
