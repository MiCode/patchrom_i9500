.class public Lcom/samsung/inputmethod/handwriting/BeautifyManager;
.super Ljava/lang/Object;
.source "BeautifyManager.java"


# static fields
.field public static final CB_STYLE_ID_BA:I = 0x10

.field public static final CB_STYLE_ID_CURSIVE:I = 0xa

.field public static final CB_STYLE_ID_CURSIVE_LM:I = 0xb

.field public static final CB_STYLE_ID_DAO:I = 0x8

.field public static final CB_STYLE_ID_HAND_PRINTED:I = 0x16

.field public static final CB_STYLE_ID_HUAI:I = 0xc

.field public static final CB_STYLE_ID_HUANG:I = 0x5

.field public static final CB_STYLE_ID_HUI:I = 0x6

.field public static final CB_STYLE_ID_ITALIC:I = 0x17

.field public static final CB_STYLE_ID_KNA:I = 0xe

.field public static final CB_STYLE_ID_KNA_LM:I = 0xf

.field public static final CB_STYLE_ID_KOREAN1:I = 0x11

.field public static final CB_STYLE_ID_KOREAN2:I = 0x12

.field public static final CB_STYLE_ID_KOREAN3:I = 0x13

.field public static final CB_STYLE_ID_KOREAN4:I = 0x14

.field public static final CB_STYLE_ID_KOREAN5:I = 0x15

.field public static final CB_STYLE_ID_LIANG:I = 0x9

.field public static final CB_STYLE_ID_LIU:I = 0xd

.field public static final CB_STYLE_ID_ROUND:I = 0x18

.field public static final CB_STYLE_ID_RUNNING_HAND_S:I = 0x1

.field public static final CB_STYLE_ID_RUNNING_HAND_T:I = 0x2

.field public static final CB_STYLE_ID_SU:I = 0x4

.field public static final CB_STYLE_ID_TTH_DEFAULT:I = 0x19

.field public static final CB_STYLE_ID_WANG:I = 0x3

.field public static final CB_STYLE_ID_ZUI:I = 0x7

.field public static final CB_TTH_BEAUTIFY_FLAG_HTH:I = 0x1

.field private static DEBUG:Z = false

.field public static final STYLE_PARAM_INDEX_BM:I = 0x1

.field public static final STYLE_PARAM_INDEX_CS:I = 0x0

.field public static final STYLE_PARAM_INDEX_FB:I = 0x6

.field public static final STYLE_PARAM_INDEX_KD:I = 0x4

.field public static final STYLE_PARAM_INDEX_LM:I = 0x3

.field public static final STYLE_PARAM_INDEX_QB:I = 0x2

.field public static final STYLE_PARAM_INDEX_STR:I = 0x7

.field public static final STYLE_PARAM_INDEX_YY:I = 0x5

.field private static TAG:Ljava/lang/String;

.field private static mBeautifyFontStyle:I

.field private static mIme:Lcom/samsung/inputmethod/SamsungIME;

.field private static mInstance:Lcom/samsung/inputmethod/handwriting/BeautifyManager;


# instance fields
.field public mContourNum:I

.field public mContourResult:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    const-string v0, "BeautifyManager"

    sput-object v0, Lcom/samsung/inputmethod/handwriting/BeautifyManager;->TAG:Ljava/lang/String;

    .line 29
    sput-boolean v1, Lcom/samsung/inputmethod/handwriting/BeautifyManager;->DEBUG:Z

    .line 31
    sput v1, Lcom/samsung/inputmethod/handwriting/BeautifyManager;->mBeautifyFontStyle:I

    return-void
.end method

.method private constructor <init>(Lcom/samsung/inputmethod/SamsungIME;)V
    .locals 1
    .parameter "ime"

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/inputmethod/handwriting/BeautifyManager;->mContourResult:[I

    .line 200
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/inputmethod/handwriting/BeautifyManager;->mContourNum:I

    .line 95
    sput-object p1, Lcom/samsung/inputmethod/handwriting/BeautifyManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    .line 96
    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .prologue
    .line 27
    invoke-static {}, Lcom/samsung/inputmethod/handwriting/BeautifyManager;->initEngine()V

    return-void
.end method

.method private static closeEngine()V
    .locals 0

    .prologue
    .line 152
    invoke-static {}, Lcom/samsung/inputmethod/service/handwritingbeautify/SimeHWCBService;->cbCloseEngine()V

    .line 153
    return-void
.end method

.method public static getByteFromInputStream(Ljava/io/InputStream;I)[B
    .locals 6
    .parameter "is"
    .parameter "len"

    .prologue
    .line 431
    const/4 v2, 0x0

    .line 432
    .local v2, ret:I
    new-array v0, p1, [B

    .line 434
    .local v0, buffer:[B
    if-nez p0, :cond_0

    .line 435
    const/4 v0, 0x0

    .line 458
    .end local v0           #buffer:[B
    :goto_0
    return-object v0

    .line 440
    .restart local v0       #buffer:[B
    :cond_0
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 441
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 449
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 450
    const/4 p0, 0x0

    .line 456
    :goto_1
    sget-object v3, Lcom/samsung/inputmethod/handwriting/BeautifyManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[getByteFromInputStream] byte lenght:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 451
    :catch_0
    move-exception v1

    .line 453
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 445
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 446
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 449
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 450
    const/4 p0, 0x0

    goto :goto_1

    .line 451
    :catch_2
    move-exception v1

    .line 453
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 448
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 449
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 450
    const/4 p0, 0x0

    .line 454
    :goto_2
    throw v3

    .line 451
    :catch_3
    move-exception v1

    .line 453
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public static getInstance(Lcom/samsung/inputmethod/SamsungIME;)Lcom/samsung/inputmethod/handwriting/BeautifyManager;
    .locals 2
    .parameter "ime"

    .prologue
    .line 99
    sget-object v1, Lcom/samsung/inputmethod/handwriting/BeautifyManager;->mInstance:Lcom/samsung/inputmethod/handwriting/BeautifyManager;

    if-nez v1, :cond_0

    .line 100
    new-instance v1, Lcom/samsung/inputmethod/handwriting/BeautifyManager;

    invoke-direct {v1, p0}, Lcom/samsung/inputmethod/handwriting/BeautifyManager;-><init>(Lcom/samsung/inputmethod/SamsungIME;)V

    sput-object v1, Lcom/samsung/inputmethod/handwriting/BeautifyManager;->mInstance:Lcom/samsung/inputmethod/handwriting/BeautifyManager;

    .line 101
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/inputmethod/handwriting/BeautifyManager$1;

    invoke-direct {v1}, Lcom/samsung/inputmethod/handwriting/BeautifyManager$1;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 108
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 110
    .end local v0           #thread:Ljava/lang/Thread;
    :cond_0
    sget-object v1, Lcom/samsung/inputmethod/handwriting/BeautifyManager;->mInstance:Lcom/samsung/inputmethod/handwriting/BeautifyManager;

    return-object v1
.end method

.method private static initEngine()V
    .locals 11

    .prologue
    .line 122
    invoke-static {}, Lcom/samsung/inputmethod/service/handwritingbeautify/SimeHWCBService;->cbInitEngine()I

    .line 124
    sget-object v9, Lcom/samsung/inputmethod/handwriting/BeautifyManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v9}, Lcom/samsung/inputmethod/SamsungIME;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 127
    .local v1, am:Landroid/content/res/AssetManager;
    :try_start_0
    const-string v9, "cbdb/ChnTrial.pdb"

    invoke-virtual {v1, v9}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    check-cast v0, Landroid/content/res/AssetManager$AssetInputStream;

    .line 130
    .local v0, aisPdb:Landroid/content/res/AssetManager$AssetInputStream;
    invoke-virtual {v0}, Landroid/content/res/AssetManager$AssetInputStream;->available()I

    move-result v9

    invoke-static {v0, v9}, Lcom/samsung/inputmethod/handwriting/BeautifyManager;->getByteFromInputStream(Ljava/io/InputStream;I)[B

    move-result-object v7

    .line 132
    .local v7, pdb:[B
    array-length v9, v7

    invoke-static {v9, v7}, Lcom/samsung/inputmethod/service/handwritingbeautify/SimeHWCBService;->cbLoadPDB(I[B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    .end local v0           #aisPdb:Landroid/content/res/AssetManager$AssetInputStream;
    .end local v7           #pdb:[B
    :goto_0
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v4

    .line 143
    .local v4, env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    invoke-virtual {v4}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenWidth()I

    move-result v8

    .line 144
    .local v8, width:I
    invoke-virtual {v4}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenHeight()I

    move-result v5

    .line 145
    .local v5, height:I
    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    .line 146
    .local v6, metrics:Landroid/util/DisplayMetrics;
    sget-object v9, Lcom/samsung/inputmethod/handwriting/BeautifyManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v9}, Lcom/samsung/inputmethod/SamsungIME;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    .line 147
    iget v2, v6, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 148
    .local v2, dpi:I
    int-to-float v9, v2

    const v10, 0x40228f5c

    div-float/2addr v9, v10

    float-to-int v9, v9

    invoke-static {v8, v5, v9}, Lcom/samsung/inputmethod/service/handwritingbeautify/SimeHWCBService;->cbSetRect(III)I

    .line 149
    return-void

    .line 135
    .end local v2           #dpi:I
    .end local v4           #env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    .end local v5           #height:I
    .end local v6           #metrics:Landroid/util/DisplayMetrics;
    .end local v8           #width:I
    :catch_0
    move-exception v3

    .line 136
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private readUnicodeArrayFromTextfile(Ljava/lang/String;)[I
    .locals 10
    .parameter "filePath"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, -0x1

    const/4 v4, 0x0

    .line 371
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 396
    :cond_0
    :goto_0
    return-object v4

    .line 375
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 376
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 377
    sget-object v5, Lcom/samsung/inputmethod/handwriting/BeautifyManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readUnicodeArrayFromTextfile(); Can\'t find TTH input file:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 381
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v5

    long-to-int v5, v5

    new-array v3, v5, [B

    .line 383
    .local v3, textBuffer:[B
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 384
    .local v2, is:Ljava/io/FileInputStream;
    :cond_3
    invoke-virtual {v2, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    if-ne v5, v7, :cond_3

    .line 386
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    .end local v2           #is:Ljava/io/FileInputStream;
    :goto_1
    aget-byte v5, v3, v8

    if-ne v5, v7, :cond_4

    aget-byte v5, v3, v9

    const/4 v6, -0x2

    if-eq v5, v6, :cond_5

    .line 393
    :cond_4
    sget-object v5, Lcom/samsung/inputmethod/handwriting/BeautifyManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readUnicodeArrayFromTextfile(); This is not unicode text:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-byte v7, v3, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-byte v7, v3, v9

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 388
    :catch_0
    move-exception v0

    .line 389
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 396
    .end local v0           #e:Ljava/lang/Exception;
    :cond_5
    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/handwriting/BeautifyManager;->unicodeByteArrayToIntArray([B)[I

    move-result-object v4

    goto :goto_0
.end method

.method public static releaseInstance()V
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lcom/samsung/inputmethod/handwriting/BeautifyManager;->mInstance:Lcom/samsung/inputmethod/handwriting/BeautifyManager;

    if-eqz v0, :cond_0

    .line 115
    invoke-static {}, Lcom/samsung/inputmethod/handwriting/BeautifyManager;->closeEngine()V

    .line 116
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/inputmethod/handwriting/BeautifyManager;->mInstance:Lcom/samsung/inputmethod/handwriting/BeautifyManager;

    .line 118
    :cond_0
    return-void
.end method


# virtual methods
.method public createBmpFromPath(Landroid/graphics/Path;Landroid/graphics/Paint;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "path"
    .parameter "paint"

    .prologue
    .line 462
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 463
    .local v3, rectF:Landroid/graphics/RectF;
    const/4 v5, 0x1

    invoke-virtual {p1, v3, v5}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 465
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    .line 467
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v5

    float-to-int v4, v5

    .line 468
    .local v4, width:I
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v5

    float-to-int v2, v5

    .line 469
    .local v2, height:I
    sget-object v5, Lcom/samsung/inputmethod/handwriting/BeautifyManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Width = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", Heigth = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 474
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    .end local v1           #canvas:Landroid/graphics/Canvas;
    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 475
    .restart local v1       #canvas:Landroid/graphics/Canvas;
    iget v5, v3, Landroid/graphics/RectF;->left:F

    neg-float v5, v5

    iget v6, v3, Landroid/graphics/RectF;->top:F

    neg-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Path;->offset(FF)V

    .line 476
    invoke-virtual {v1, p1, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 478
    return-object v0
.end method

.method public createHTHPathFromPointArray([I)Landroid/graphics/Path;
    .locals 10
    .parameter "data"

    .prologue
    .line 233
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    .line 234
    .local v3, resultPath:Landroid/graphics/Path;
    const/4 v6, -0x1

    .line 236
    .local v6, ret:I
    sget-object v7, Lcom/samsung/inputmethod/handwriting/BeautifyManager;->TAG:Ljava/lang/String;

    const-string v8, "call in the createHTHPathFromPointArray"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    array-length v7, p1

    div-int/lit8 v2, v7, 0x2

    .line 239
    .local v2, pointNum:I
    const/high16 v7, 0x1

    new-array v1, v7, [I

    .line 241
    .local v1, contourResult:[I
    const/high16 v0, 0x1

    .line 242
    .local v0, contourNum:I
    sget-object v7, Lcom/samsung/inputmethod/handwriting/BeautifyManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[createHandwritePathFromPointArray] pointNum is="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    if-nez v2, :cond_0

    move-object v4, v3

    .line 265
    .end local v3           #resultPath:Landroid/graphics/Path;
    .local v4, resultPath:Ljava/lang/Object;
    :goto_0
    return-object v4

    .line 247
    .end local v4           #resultPath:Ljava/lang/Object;
    .restart local v3       #resultPath:Landroid/graphics/Path;
    :cond_0
    const/4 v5, 0x0

    .line 248
    .local v5, resultobject:Lcom/samsung/inputmethod/handwriting/ReturnInfo;
    invoke-static {p1, v2, v1, v0}, Lcom/samsung/inputmethod/service/handwritingbeautify/SimeHWCBService;->cbBeautifyStrokes([II[II)Lcom/samsung/inputmethod/handwriting/ReturnInfo;

    move-result-object v5

    .line 250
    if-eqz v5, :cond_1

    .line 251
    iget v6, v5, Lcom/samsung/inputmethod/handwriting/ReturnInfo;->resultValue:I

    .line 252
    sget-object v7, Lcom/samsung/inputmethod/handwriting/BeautifyManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[createHTHPathFromPointArray]resultValue = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget v0, v5, Lcom/samsung/inputmethod/handwriting/ReturnInfo;->contourNum:I

    .line 254
    sget-object v7, Lcom/samsung/inputmethod/handwriting/BeautifyManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[createHTHPathFromPointArray]contourNum = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_1
    if-nez v6, :cond_2

    .line 260
    invoke-virtual {p0, v1, v0}, Lcom/samsung/inputmethod/handwriting/BeautifyManager;->getPathFromContourData([II)Landroid/graphics/Path;

    move-result-object v3

    .line 261
    iput-object v1, p0, Lcom/samsung/inputmethod/handwriting/BeautifyManager;->mContourResult:[I

    .line 262
    iput v0, p0, Lcom/samsung/inputmethod/handwriting/BeautifyManager;->mContourNum:I

    :cond_2
    move-object v4, v3

    .line 265
    .restart local v4       #resultPath:Ljava/lang/Object;
    goto :goto_0
.end method

.method public createRealTimePathFromPointArray([I)Landroid/graphics/Path;
    .locals 9
    .parameter "data"

    .prologue
    .line 202
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    .line 203
    .local v3, resultPath:Landroid/graphics/Path;
    const/4 v5, -0x1

    .line 204
    .local v5, ret:I
    const-string v6, "liangdas"

    const-string v7, "call in the realtime"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    array-length v6, p1

    div-int/lit8 v2, v6, 0x2

    .line 207
    .local v2, pointNum:I
    const/high16 v6, 0x1

    new-array v1, v6, [I

    .line 209
    .local v1, contourResult:[I
    const/high16 v0, 0x1

    .line 211
    .local v0, contourNum:I
    const/4 v4, 0x0

    .line 212
    .local v4, resultobject:Lcom/samsung/inputmethod/handwriting/ReturnInfo;
    invoke-static {p1, v2, v1, v0}, Lcom/samsung/inputmethod/service/handwritingbeautify/SimeHWCBService;->cbRealtimeDraw([II[II)Lcom/samsung/inputmethod/handwriting/ReturnInfo;

    move-result-object v4

    .line 214
    if-eqz v4, :cond_0

    .line 215
    iget v5, v4, Lcom/samsung/inputmethod/handwriting/ReturnInfo;->resultValue:I

    .line 216
    sget-object v6, Lcom/samsung/inputmethod/handwriting/BeautifyManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[createHTHPathFromPointArray]resultValue = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget v0, v4, Lcom/samsung/inputmethod/handwriting/ReturnInfo;->contourNum:I

    .line 218
    sget-object v6, Lcom/samsung/inputmethod/handwriting/BeautifyManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[createHTHPathFromPointArray]contourNum = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_0
    if-nez v5, :cond_1

    .line 224
    invoke-virtual {p0, v1, v0}, Lcom/samsung/inputmethod/handwriting/BeautifyManager;->getPathFromContourData([II)Landroid/graphics/Path;

    move-result-object v3

    .line 225
    iput-object v1, p0, Lcom/samsung/inputmethod/handwriting/BeautifyManager;->mContourResult:[I

    .line 226
    iput v0, p0, Lcom/samsung/inputmethod/handwriting/BeautifyManager;->mContourNum:I

    .line 229
    :cond_1
    return-object v3
.end method

.method public createTTHPathFromUnicodeArray([I)Landroid/graphics/Path;
    .locals 17
    .parameter "unicodeArray"

    .prologue
    .line 269
    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    .line 270
    .local v8, resultPath:Landroid/graphics/Path;
    const/4 v11, -0x1

    .line 271
    .local v11, ret:I
    if-nez p1, :cond_0

    move-object v9, v8

    .line 305
    .end local v8           #resultPath:Landroid/graphics/Path;
    .local v9, resultPath:Ljava/lang/Object;
    :goto_0
    return-object v9

    .line 274
    .end local v9           #resultPath:Ljava/lang/Object;
    .restart local v8       #resultPath:Landroid/graphics/Path;
    :cond_0
    const/high16 v1, 0x4

    new-array v6, v1, [I

    .line 275
    .local v6, contourResult:[I
    const/high16 v7, 0x4

    .line 277
    .local v7, contourNum:I
    move-object/from16 v0, p1

    array-length v2, v0

    .line 279
    .local v2, unicodeNumber:I
    const/16 v4, 0x38

    .line 280
    .local v4, dispOffsetX:I
    const/16 v5, 0x38

    .line 281
    .local v5, dispOffsetY:I
    const/4 v3, 0x1

    .line 282
    .local v3, flags:I
    const/4 v10, 0x0

    .local v10, resultobject:Lcom/samsung/inputmethod/handwriting/ReturnInfo;
    move-object/from16 v1, p1

    .line 284
    invoke-static/range {v1 .. v7}, Lcom/samsung/inputmethod/service/handwritingbeautify/SimeHWCBService;->cbBeautifyText([IIIII[II)Lcom/samsung/inputmethod/handwriting/ReturnInfo;

    move-result-object v10

    .line 289
    if-eqz v10, :cond_1

    .line 290
    iget v11, v10, Lcom/samsung/inputmethod/handwriting/ReturnInfo;->resultValue:I

    .line 291
    sget-object v1, Lcom/samsung/inputmethod/handwriting/BeautifyManager;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[beautifyText]resultValue = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v1, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget v7, v10, Lcom/samsung/inputmethod/handwriting/ReturnInfo;->contourNum:I

    .line 293
    sget-object v1, Lcom/samsung/inputmethod/handwriting/BeautifyManager;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[beautifyText]contourNum = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v1, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-short v14, v10, Lcom/samsung/inputmethod/handwriting/ReturnInfo;->retUnicodeNum:S

    .line 295
    .local v14, retUnicodeNum:S
    sget-object v1, Lcom/samsung/inputmethod/handwriting/BeautifyManager;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[beautifyText]retUnicodeNum = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v1, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-short v12, v10, Lcom/samsung/inputmethod/handwriting/ReturnInfo;->retOffsetX:S

    .line 297
    .local v12, retOffsetX:S
    iget-short v13, v10, Lcom/samsung/inputmethod/handwriting/ReturnInfo;->retOffsetY:S

    .line 298
    .local v13, retOffsetY:S
    sget-object v1, Lcom/samsung/inputmethod/handwriting/BeautifyManager;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[beautifyText]retOffsetX = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", retOffsetY = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v1, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    .end local v12           #retOffsetX:S
    .end local v13           #retOffsetY:S
    .end local v14           #retUnicodeNum:S
    :cond_1
    if-nez v11, :cond_2

    .line 302
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/samsung/inputmethod/handwriting/BeautifyManager;->getPathFromContourData([II)Landroid/graphics/Path;

    move-result-object v8

    :cond_2
    move-object v9, v8

    .line 305
    .restart local v9       #resultPath:Ljava/lang/Object;
    goto/16 :goto_0
.end method

.method public getDataFromPointArray(Ljava/util/Vector;)[I
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Float;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 184
    .local p1, pointArray:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Float;>;"
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v4

    new-array v0, v4, [I

    .line 186
    .local v0, data:[I
    sget-object v4, Lcom/samsung/inputmethod/handwriting/BeautifyManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[getDataFromPointArray] pointNum is="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 188
    invoke-virtual {p1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->intValue()I

    move-result v4

    aput v4, v0, v2

    .line 187
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 191
    :cond_0
    sget-boolean v4, Lcom/samsung/inputmethod/handwriting/BeautifyManager;->DEBUG:Z

    if-eqz v4, :cond_1

    .line 192
    array-length v4, v0

    div-int/lit8 v1, v4, 0x2

    .line 193
    .local v1, dataNum:I
    const/4 v3, 0x0

    .local v3, j:I
    :goto_1
    if-ge v3, v1, :cond_1

    .line 194
    sget-object v4, Lcom/samsung/inputmethod/handwriting/BeautifyManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "data["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]= ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    mul-int/lit8 v6, v3, 0x2

    aget v6, v0, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    mul-int/lit8 v6, v3, 0x2

    add-int/lit8 v6, v6, 0x1

    aget v6, v0, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 197
    .end local v1           #dataNum:I
    .end local v3           #j:I
    :cond_1
    return-object v0
.end method

.method public getPathFromContourData([II)Landroid/graphics/Path;
    .locals 12
    .parameter "contourData"
    .parameter "contourNum"

    .prologue
    .line 309
    array-length v5, p1

    .line 311
    .local v5, num:I
    const/4 v3, 0x0

    .line 312
    .local v3, j:I
    move v2, p2

    .line 313
    .local v2, contourPointsNum:I
    const/4 v8, 0x1

    .line 317
    .local v8, runBeautify:Z
    sget-object v9, Lcom/samsung/inputmethod/handwriting/BeautifyManager;->TAG:Ljava/lang/String;

    const-string v10, "Enter into the getPathFromContourData"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    sget-object v9, Lcom/samsung/inputmethod/handwriting/BeautifyManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[getPathFromContourData] contourPointsNum="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    new-array v1, v2, [Landroid/graphics/Point;

    .line 322
    .local v1, contourPoints:[Landroid/graphics/Point;
    sget-object v9, Lcom/samsung/inputmethod/handwriting/BeautifyManager;->TAG:Ljava/lang/String;

    const-string v10, "create contourPoints"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    const/4 v4, 0x0

    .local v4, k1:I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 325
    new-instance v9, Landroid/graphics/Point;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11}, Landroid/graphics/Point;-><init>(II)V

    aput-object v9, v1, v4

    .line 323
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 327
    :cond_0
    sget-object v9, Lcom/samsung/inputmethod/handwriting/BeautifyManager;->TAG:Ljava/lang/String;

    const-string v10, "End the contourPoints"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    .line 329
    .local v6, pathResult:Landroid/graphics/Path;
    sget-object v9, Lcom/samsung/inputmethod/handwriting/BeautifyManager;->TAG:Ljava/lang/String;

    const-string v10, "create pathResult"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    invoke-virtual {v6}, Landroid/graphics/Path;->rewind()V

    .line 331
    sget-object v9, Lcom/samsung/inputmethod/handwriting/BeautifyManager;->TAG:Ljava/lang/String;

    const-string v10, "[getPathFromContourData] Begin to enter the while"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :goto_1
    if-eqz v8, :cond_4

    .line 334
    new-instance v0, Lcom/samsung/inputmethod/handwriting/BasicBezier;

    invoke-direct {v0}, Lcom/samsung/inputmethod/handwriting/BasicBezier;-><init>()V

    .line 335
    .local v0, bb:Lcom/samsung/inputmethod/handwriting/BasicBezier;
    const/4 v7, 0x0

    .line 337
    .local v7, pointnum:I
    :goto_2
    add-int/lit8 v9, v3, 0x1

    if-lt v9, v5, :cond_1

    .line 338
    const/4 v8, 0x0

    .line 339
    goto :goto_1

    .line 341
    :cond_1
    aget v9, p1, v3

    const v10, 0xffff

    if-ne v9, v10, :cond_2

    add-int/lit8 v9, v3, 0x1

    aget v9, p1, v9

    const v10, 0xffff

    if-ne v9, v10, :cond_2

    .line 343
    const/4 v8, 0x0

    .line 344
    goto :goto_1

    .line 347
    :cond_2
    aget v9, p1, v3

    const v10, 0xffff

    if-ne v9, v10, :cond_3

    add-int/lit8 v9, v3, 0x1

    aget v9, p1, v9

    if-nez v9, :cond_3

    .line 349
    invoke-virtual {v0}, Lcom/samsung/inputmethod/handwriting/BasicBezier;->clearPath()V

    .line 353
    invoke-virtual {v0, v1, v7}, Lcom/samsung/inputmethod/handwriting/BasicBezier;->setBezierContour([Landroid/graphics/Point;I)V

    .line 354
    invoke-virtual {v0}, Lcom/samsung/inputmethod/handwriting/BasicBezier;->getPath()Landroid/graphics/Path;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 355
    add-int/lit8 v3, v3, 0x2

    .line 356
    const/4 v7, 0x0

    .line 357
    goto :goto_1

    .line 359
    :cond_3
    aget-object v9, v1, v7

    aget v10, p1, v3

    add-int/lit8 v11, v3, 0x1

    aget v11, p1, v11

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Point;->set(II)V

    .line 360
    add-int/lit8 v7, v7, 0x1

    .line 361
    add-int/lit8 v3, v3, 0x2

    goto :goto_2

    .line 366
    .end local v0           #bb:Lcom/samsung/inputmethod/handwriting/BasicBezier;
    .end local v7           #pointnum:I
    :cond_4
    return-object v6
.end method

.method public readUnicodeArrayFromString(Ljava/lang/String;)[I
    .locals 5
    .parameter "str"

    .prologue
    .line 400
    sget-object v2, Lcom/samsung/inputmethod/handwriting/BeautifyManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[readUnicodeArrayFromString] str = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    const/4 v0, 0x0

    .line 404
    .local v0, bytes:[B
    :try_start_0
    const-string v2, "UTF-16"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 409
    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/handwriting/BeautifyManager;->unicodeByteArrayToIntArray([B)[I

    move-result-object v2

    return-object v2

    .line 405
    :catch_0
    move-exception v1

    .line 407
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public setBeautifyLineStyle()I
    .locals 5

    .prologue
    .line 482
    sget-boolean v2, Lcom/samsung/inputmethod/handwriting/BeautifyManager;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/samsung/inputmethod/handwriting/BeautifyManager;->TAG:Ljava/lang/String;

    const-string v3, "setBeautifyPaintLineStyle"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    :cond_0
    const/4 v1, -0x1

    .line 499
    .local v1, ret:I
    sget v2, Lcom/samsung/inputmethod/handwriting/BeautifyManager;->mBeautifyFontStyle:I

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getHandwritingStyle()I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 501
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getHandwritingStyle()I

    move-result v2

    sput v2, Lcom/samsung/inputmethod/handwriting/BeautifyManager;->mBeautifyFontStyle:I

    .line 502
    sget-boolean v2, Lcom/samsung/inputmethod/handwriting/BeautifyManager;->DEBUG:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/samsung/inputmethod/handwriting/BeautifyManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setBeautifyLineStyle mLineFillStyle = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/samsung/inputmethod/handwriting/BeautifyManager;->mBeautifyFontStyle:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    :cond_1
    sget v2, Lcom/samsung/inputmethod/handwriting/BeautifyManager;->mBeautifyFontStyle:I

    packed-switch v2, :pswitch_data_0

    .line 523
    const/16 v2, 0x19

    invoke-static {v2}, Lcom/samsung/inputmethod/service/handwritingbeautify/SimeHWCBService;->cbSetStyle(I)I

    move-result v1

    .line 528
    :cond_2
    :goto_0
    :pswitch_0
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 529
    .local v0, mLineProperty:[I
    invoke-static {v0}, Lcom/samsung/inputmethod/setting/SimeSetting;->getHandwriteLine([I)V

    .line 530
    const/4 v2, 0x4

    const/4 v3, 0x0

    aget v3, v0, v3

    mul-int/lit8 v3, v3, 0x2

    div-int/lit8 v3, v3, 0x3

    invoke-static {v2, v3}, Lcom/samsung/inputmethod/service/handwritingbeautify/SimeHWCBService;->cbSetStyleParam(II)I

    move-result v1

    .line 531
    return v1

    .line 508
    .end local v0           #mLineProperty:[I
    :pswitch_1
    const/4 v2, 0x6

    invoke-static {v2}, Lcom/samsung/inputmethod/service/handwritingbeautify/SimeHWCBService;->cbSetStyle(I)I

    move-result v1

    .line 509
    goto :goto_0

    .line 511
    :pswitch_2
    const/4 v2, 0x5

    invoke-static {v2}, Lcom/samsung/inputmethod/service/handwritingbeautify/SimeHWCBService;->cbSetStyle(I)I

    move-result v1

    .line 512
    goto :goto_0

    .line 514
    :pswitch_3
    const/4 v2, 0x3

    invoke-static {v2}, Lcom/samsung/inputmethod/service/handwritingbeautify/SimeHWCBService;->cbSetStyle(I)I

    move-result v1

    .line 515
    goto :goto_0

    .line 517
    :pswitch_4
    const/16 v2, 0xc

    invoke-static {v2}, Lcom/samsung/inputmethod/service/handwritingbeautify/SimeHWCBService;->cbSetStyle(I)I

    move-result v1

    .line 518
    goto :goto_0

    .line 520
    :pswitch_5
    const/16 v2, 0xb

    invoke-static {v2}, Lcom/samsung/inputmethod/service/handwritingbeautify/SimeHWCBService;->cbSetStyle(I)I

    move-result v1

    .line 521
    goto :goto_0

    .line 503
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public setBeautifyTextLayout(II)V
    .locals 20
    .parameter "charHeight"
    .parameter "charWidth"

    .prologue
    .line 156
    move/from16 v0, p2

    int-to-double v1, v0

    const-wide/high16 v18, 0x3fc0

    mul-double v1, v1, v18

    double-to-int v3, v1

    .line 158
    .local v3, charSpace:I
    move/from16 v4, p1

    .line 159
    .local v4, lineHeight:I
    move/from16 v0, p1

    int-to-double v1, v0

    const-wide/high16 v18, 0x3fc0

    mul-double v1, v1, v18

    double-to-int v5, v1

    .line 161
    .local v5, lineSpace:I
    move/from16 v0, p1

    int-to-double v1, v0

    const-wide v18, 0x3fd3333333333333L

    mul-double v1, v1, v18

    double-to-int v6, v1

    .line 163
    .local v6, paragraphSpace:I
    move/from16 v7, p2

    .line 164
    .local v7, PageMarginLeft:I
    move/from16 v8, p1

    .line 165
    .local v8, PageMarginTop:I
    move/from16 v9, p2

    .line 166
    .local v9, PageMarginRight:I
    move/from16 v10, p1

    .line 168
    .local v10, PageMarginBottom:I
    const/4 v11, 0x0

    .line 169
    .local v11, DispLeft:I
    const/4 v12, 0x0

    .line 170
    .local v12, DispTop:I
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v17

    .line 171
    .local v17, env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    invoke-virtual/range {v17 .. v17}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenWidth()I

    move-result v13

    .line 172
    .local v13, DispRight:I
    invoke-virtual/range {v17 .. v17}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenHeight()I

    move-result v14

    .line 174
    .local v14, DispBottom:I
    const/4 v15, 0x0

    .line 175
    .local v15, LayoutDir:I
    const/16 v16, 0x0

    .local v16, WriteDir:I
    move/from16 v1, p1

    move/from16 v2, p2

    .line 177
    invoke-static/range {v1 .. v16}, Lcom/samsung/inputmethod/service/handwritingbeautify/SimeHWCBService;->cbSetLayout(IIIIIIIIIIIIIIII)I

    .line 180
    return-void
.end method

.method public unicodeByteArrayToIntArray([B)[I
    .locals 10
    .parameter "bytes"

    .prologue
    .line 413
    sget-object v4, Lcom/samsung/inputmethod/handwriting/BeautifyManager;->TAG:Ljava/lang/String;

    const-string v5, "[unicodeByteArrayToIntArray] begin to call unicodeByteArrayToIntArray"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    if-nez p1, :cond_0

    .line 415
    sget-object v4, Lcom/samsung/inputmethod/handwriting/BeautifyManager;->TAG:Ljava/lang/String;

    const-string v5, "[unicodeByteArrayToIntArray] bytes is null"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :cond_0
    array-length v4, p1

    add-int/lit8 v4, v4, -0x2

    div-int/lit8 v1, v4, 0x2

    .line 417
    .local v1, intLen:I
    new-array v2, v1, [I

    .line 418
    .local v2, ints:[I
    sget-object v4, Lcom/samsung/inputmethod/handwriting/BeautifyManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[unicodeByteArrayToIntArray] intLen:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    const/4 v0, 0x0

    .local v0, i1:I
    :goto_0
    if-ge v0, v1, :cond_3

    .line 420
    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x3

    aget-byte v4, p1, v4

    if-gez v4, :cond_1

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x3

    aget-byte v4, p1, v4

    add-int/lit16 v4, v4, 0x100

    :goto_1
    mul-int/lit16 v5, v4, 0x100

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x2

    aget-byte v4, p1, v4

    if-gez v4, :cond_2

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x2

    aget-byte v4, p1, v4

    add-int/lit16 v4, v4, 0x100

    :goto_2
    add-int/2addr v4, v5

    aput v4, v2, v0

    .line 419
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 420
    :cond_1
    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x3

    aget-byte v4, p1, v4

    goto :goto_1

    :cond_2
    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x2

    aget-byte v4, p1, v4

    goto :goto_2

    .line 424
    :cond_3
    const/4 v3, 0x0

    .local v3, t1:I
    :goto_3
    if-ge v3, v1, :cond_4

    .line 425
    sget-object v4, Lcom/samsung/inputmethod/handwriting/BeautifyManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[unicodeByteArrayToIntArray] UnicodeIntArray["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "0x%x"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aget v9, v2, v3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 427
    :cond_4
    return-object v2
.end method
