.class public Lcom/quramsoft/qrb/QrBitmapDecoder;
.super Ljava/lang/Object;
.source "QrBitmapDecoder.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    :try_start_0
    const-string v0, "Qjpeg"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    :goto_0
    return-void

    .line 18
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native QrnativeClean(I)V
.end method

.method public static QrnativeDecodeRegion(IIIIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 21
    .parameter "handle"
    .parameter "start_x"
    .parameter "start_y"
    .parameter "width"
    .parameter "height"
    .parameter "options"

    .prologue
    .line 29
    const/4 v8, 0x0

    .line 30
    .local v8, dst_format:I
    move-object/from16 v0, p5

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    move/from16 v16, v0

    .line 32
    .local v16, orgSampleSize:I
    div-int v11, p1, v16

    .line 33
    .local v11, x:I
    div-int v12, p2, v16

    .line 34
    .local v12, y:I
    div-int v13, p3, v16

    .line 35
    .local v13, w:I
    div-int v14, p4, v16

    .line 39
    .local v14, h:I
    if-lez v13, :cond_0

    if-gtz v14, :cond_1

    .line 40
    :cond_0
    const/16 v17, 0x0

    .line 88
    :goto_0
    return-object v17

    .line 43
    :cond_1
    move-object/from16 v0, p5

    iget-object v3, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v3, v4, :cond_2

    .line 45
    const/4 v8, 0x0

    .line 57
    :goto_1
    move-object/from16 v0, p5

    iget-object v3, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {v13, v14, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 58
    .local v17, bitmap:Landroid/graphics/Bitmap;
    if-nez v17, :cond_4

    .line 59
    const/16 v17, 0x0

    goto :goto_0

    .line 47
    .end local v17           #bitmap:Landroid/graphics/Bitmap;
    :cond_2
    move-object/from16 v0, p5

    iget-object v3, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-ne v3, v4, :cond_3

    .line 49
    const/4 v8, 0x1

    goto :goto_1

    .line 54
    :cond_3
    const/16 v17, 0x0

    goto :goto_0

    .line 61
    .restart local v17       #bitmap:Landroid/graphics/Bitmap;
    :cond_4
    const/16 v3, 0x10

    move/from16 v0, v16

    if-lt v0, v3, :cond_6

    .line 63
    const/16 v19, 0x8

    .line 64
    .local v19, newSampleSize:I
    div-int/lit8 v20, v16, 0x8

    .line 65
    .local v20, ratioSampleSize:I
    mul-int v6, v13, v20

    .line 66
    .local v6, newWidth:I
    mul-int v7, v14, v20

    .line 68
    .local v7, newHeight:I
    move-object/from16 v0, p5

    iget-object v3, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 69
    .local v2, newBitmap:Landroid/graphics/Bitmap;
    if-nez v2, :cond_5

    .line 70
    const/16 v17, 0x0

    goto :goto_0

    .line 72
    :cond_5
    mul-int v4, v11, v20

    mul-int v5, v12, v20

    const/16 v9, 0x8

    move/from16 v3, p0

    invoke-static/range {v2 .. v9}, Lcom/quramsoft/qrb/QrBitmapDecoder;->QrnativeDoDecodeRegion(Landroid/graphics/Bitmap;IIIIIII)I

    .line 74
    new-instance v18, Landroid/graphics/Canvas;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 77
    .local v18, canvas:Landroid/graphics/Canvas;
    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 78
    new-instance v4, Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v9, 0x0

    invoke-direct {v4, v5, v9, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 79
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 75
    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 81
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 82
    const/4 v2, 0x0

    goto :goto_0

    .end local v2           #newBitmap:Landroid/graphics/Bitmap;
    .end local v6           #newWidth:I
    .end local v7           #newHeight:I
    .end local v18           #canvas:Landroid/graphics/Canvas;
    .end local v19           #newSampleSize:I
    .end local v20           #ratioSampleSize:I
    :cond_6
    move-object/from16 v9, v17

    move/from16 v10, p0

    move v15, v8

    .line 86
    invoke-static/range {v9 .. v16}, Lcom/quramsoft/qrb/QrBitmapDecoder;->QrnativeDoDecodeRegion(Landroid/graphics/Bitmap;IIIIIII)I

    goto :goto_0
.end method

.method public static native QrnativeDoDecodeRegion(Landroid/graphics/Bitmap;IIIIIII)I
.end method

.method public static native QrnativeGetHeight(I)I
.end method

.method public static native QrnativeGetWidth(I)I
.end method

.method public static native QrnativeNewInstance(Ljava/lang/String;IZ)Lcom/quramsoft/qrb/QrBitmapRegionDecoder;
.end method

.method public static native QrnativeNewInstanceFromMemory([BIIZ)Lcom/quramsoft/qrb/QrBitmapRegionDecoder;
.end method
