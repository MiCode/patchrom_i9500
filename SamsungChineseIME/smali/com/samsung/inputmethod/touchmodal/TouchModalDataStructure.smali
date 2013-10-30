.class public Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;
.super Ljava/lang/Object;
.source "TouchModalDataStructure.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure$TCentre;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final FIXED_REGION_SIZE:I = 0x5

.field private static final NOP:I = 0xa

.field private static final TAG:Ljava/lang/String;

.field public static count:I


# instance fields
.field private final DB_DIR:Ljava/lang/String;

.field private IS_HD:Z

.field private IS_KORMODE:Z

.field public grid:[[I

.field public initGridCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

.field private mKBHeight:I

.field private mKBWidth:I

.field public mKeyCentre:[Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure$TCentre;

.field mSimeSkbSoftKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

.field public softKeys:[Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-class v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->TAG:Ljava/lang/String;

    .line 113
    const/4 v0, 0x0

    sput v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->count:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v0, v1

    .line 97
    check-cast v0, [[I

    iput-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->grid:[[I

    .line 99
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->initGridCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 107
    iput-object v1, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKeyCentre:[Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure$TCentre;

    .line 127
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    .line 133
    const-string v0, "grids"

    iput-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->DB_DIR:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public dump(ZLjava/lang/String;IIII[[I)V
    .locals 14
    .parameter "isLandscape"
    .parameter "language"
    .parameter "mode"
    .parameter "width"
    .parameter "height"
    .parameter "nKeys"
    .parameter "gridArray"

    .prologue
    .line 335
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "grid_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p4

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p5

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p6

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".db"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 339
    .local v1, FILENAME:Ljava/lang/String;
    if-nez p7, :cond_1

    .line 425
    :cond_0
    :goto_0
    return-void

    .line 343
    :cond_1
    new-instance v6, Ljava/io/File;

    iget-object v11, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    invoke-virtual {v11}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v11

    const-string v12, "grids"

    invoke-direct {v6, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 347
    .local v6, gridDirectory:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_2

    .line 349
    invoke-virtual {v6}, Ljava/io/File;->mkdir()Z

    .line 355
    :cond_2
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v6, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 357
    .local v3, file:Ljava/io/File;
    const-string v10, "\n"

    .line 359
    .local v10, newline:Ljava/lang/String;
    const/4 v4, 0x0

    .line 361
    .local v4, fos:Ljava/io/FileOutputStream;
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 365
    .local v9, mBuffer:Ljava/lang/StringBuffer;
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .line 371
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .local v5, fos:Ljava/io/FileOutputStream;
    const/4 v8, 0x0

    .local v8, k:I
    :goto_1
    move/from16 v0, p5

    if-ge v8, v0, :cond_4

    .line 373
    const/4 v7, 0x0

    .local v7, j:I
    :goto_2
    move/from16 v0, p4

    if-ge v7, v0, :cond_3

    .line 375
    :try_start_1
    aget-object v11, p7, v7

    aget v11, v11, v8

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 377
    const-string v11, "\n"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 373
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 381
    :cond_3
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/io/FileOutputStream;->write([B)V

    .line 383
    const/4 v11, 0x0

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->length()I

    move-result v12

    invoke-virtual {v9, v11, v12}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8

    .line 371
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 405
    .end local v7           #j:I
    :cond_4
    if-eqz v5, :cond_7

    .line 409
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    .line 411
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v4, v5

    .line 419
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 413
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    .line 417
    .local v2, e:Ljava/io/IOException;
    sget-object v11, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->TAG:Ljava/lang/String;

    const-string v12, "Error in Function dump()"

    invoke-static {v11, v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v4, v5

    .line 419
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 387
    .end local v2           #e:Ljava/io/IOException;
    .end local v8           #k:I
    :catch_1
    move-exception v2

    .line 389
    .local v2, e:Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_3
    sget-object v11, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->TAG:Ljava/lang/String;

    const-string v12, "Error in Function dump()"

    invoke-static {v11, v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 405
    if-eqz v4, :cond_0

    .line 409
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 411
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 413
    :catch_2
    move-exception v2

    .line 417
    .local v2, e:Ljava/io/IOException;
    sget-object v11, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->TAG:Ljava/lang/String;

    const-string v12, "Error in Function dump()"

    invoke-static {v11, v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 391
    .end local v2           #e:Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 393
    .local v2, e:Ljava/lang/OutOfMemoryError;
    :goto_4
    :try_start_5
    sget-object v11, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->TAG:Ljava/lang/String;

    const-string v12, "Error in Function dump()- out of memory"

    invoke-static {v11, v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 395
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 397
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 405
    :cond_5
    if-eqz v4, :cond_0

    .line 409
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 411
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_0

    .line 413
    :catch_4
    move-exception v2

    .line 417
    .local v2, e:Ljava/io/IOException;
    sget-object v11, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->TAG:Ljava/lang/String;

    const-string v12, "Error in Function dump()"

    invoke-static {v11, v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 399
    .end local v2           #e:Ljava/io/IOException;
    :catch_5
    move-exception v2

    .line 401
    .restart local v2       #e:Ljava/io/IOException;
    :goto_5
    :try_start_7
    sget-object v11, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->TAG:Ljava/lang/String;

    const-string v12, "Error in Function dump()"

    invoke-static {v11, v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 405
    if-eqz v4, :cond_0

    .line 409
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 411
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto/16 :goto_0

    .line 413
    :catch_6
    move-exception v2

    .line 417
    sget-object v11, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->TAG:Ljava/lang/String;

    const-string v12, "Error in Function dump()"

    invoke-static {v11, v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 405
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v11

    :goto_6
    if-eqz v4, :cond_6

    .line 409
    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 411
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 419
    :cond_6
    :goto_7
    throw v11

    .line 413
    :catch_7
    move-exception v2

    .line 417
    .restart local v2       #e:Ljava/io/IOException;
    sget-object v12, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->TAG:Ljava/lang/String;

    const-string v13, "Error in Function dump()"

    invoke-static {v12, v13, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 405
    .end local v2           #e:Ljava/io/IOException;
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    .restart local v7       #j:I
    .restart local v8       #k:I
    :catchall_1
    move-exception v11

    move-object v4, v5

    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    goto :goto_6

    .line 399
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    :catch_8
    move-exception v2

    move-object v4, v5

    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    goto :goto_5

    .line 391
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    :catch_9
    move-exception v2

    move-object v4, v5

    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    goto :goto_4

    .line 387
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    :catch_a
    move-exception v2

    move-object v4, v5

    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    goto :goto_3

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .end local v7           #j:I
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    :cond_7
    move-object v4, v5

    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    goto/16 :goto_0
.end method

.method public getBaseIndex(II)I
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 263
    iget-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->grid:[[I

    aget-object v0, v0, p1

    aget v0, v0, p2

    const/high16 v1, -0x1000

    and-int/2addr v0, v1

    const/high16 v1, -0x8000

    if-ne v0, v1, :cond_0

    .line 265
    const/4 v0, -0x1

    .line 267
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->grid:[[I

    aget-object v0, v0, p1

    aget v0, v0, p2

    const v1, 0xfff000

    and-int/2addr v0, v1

    ushr-int/lit8 v0, v0, 0xc

    goto :goto_0
.end method

.method public getKeyIndex(II)I
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v0, -0x1

    .line 221
    sget v1, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->count:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->count:I

    .line 223
    iget v1, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBWidth:I

    add-int/lit8 v1, v1, -0x1

    if-gt p1, v1, :cond_0

    iget v1, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBHeight:I

    add-int/lit8 v1, v1, -0x1

    if-le p2, v1, :cond_1

    .line 235
    :cond_0
    :goto_0
    return v0

    .line 229
    :cond_1
    iget-object v1, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->grid:[[I

    aget-object v1, v1, p1

    aget v1, v1, p2

    const/high16 v2, -0x1000

    and-int/2addr v1, v2

    const/high16 v2, -0x8000

    if-eq v1, v2, :cond_0

    .line 235
    iget-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->grid:[[I

    aget-object v0, v0, p1

    aget v0, v0, p2

    and-int/lit16 v0, v0, 0xfff

    goto :goto_0
.end method

.method getValue(Ljava/lang/Object;)V
    .locals 0
    .parameter "temp"

    .prologue
    .line 315
    return-void
.end method

.method getValue(Ljava/lang/String;)V
    .locals 0
    .parameter "temp"

    .prologue
    .line 307
    return-void
.end method

.method public increaseBL(III)V
    .locals 14
    .parameter "currentIndex"
    .parameter "touchX"
    .parameter "touchY"

    .prologue
    .line 1059
    const/4 v6, 0x1

    .line 1063
    .local v6, needIncrease:Z
    move/from16 v1, p2

    .line 1065
    .local v1, boundX:I
    move/from16 v2, p3

    .line 1067
    .local v2, boundY:I
    add-int/lit8 v1, p2, -0xa

    :goto_0
    add-int/lit8 v11, p2, 0xa

    if-gt v1, v11, :cond_0

    .line 1069
    move v7, v1

    .line 1071
    .local v7, nextX:I
    move/from16 v8, p3

    .line 1073
    .local v8, nextY:I
    if-ltz v7, :cond_0

    iget v11, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBWidth:I

    add-int/lit8 v11, v11, -0x1

    if-gt v7, v11, :cond_0

    if-ltz v8, :cond_0

    iget v11, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBHeight:I

    add-int/lit8 v11, v11, -0x1

    if-le v8, v11, :cond_4

    .line 1129
    .end local v7           #nextX:I
    .end local v8           #nextY:I
    :cond_0
    const/4 v6, 0x1

    .line 1131
    move/from16 v1, p2

    .line 1133
    move/from16 v2, p3

    .line 1135
    add-int/lit8 v2, p3, -0xa

    :goto_1
    add-int/lit8 v11, p3, 0xa

    if-gt v2, v11, :cond_1

    .line 1137
    move/from16 v7, p2

    .line 1139
    .restart local v7       #nextX:I
    move v8, v2

    .line 1141
    .restart local v8       #nextY:I
    if-ltz v7, :cond_1

    iget v11, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBWidth:I

    add-int/lit8 v11, v11, -0x1

    if-gt v7, v11, :cond_1

    if-ltz v8, :cond_1

    iget v11, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBHeight:I

    add-int/lit8 v11, v11, -0x1

    if-le v8, v11, :cond_c

    .line 1197
    .end local v7           #nextX:I
    .end local v8           #nextY:I
    :cond_1
    add-int/lit8 v9, p2, 0xa

    .local v9, x:I
    :goto_2
    move/from16 v0, p2

    if-lt v9, v0, :cond_14

    .line 1199
    add-int/lit8 v10, p3, -0xa

    .local v10, y:I
    :goto_3
    move/from16 v0, p3

    if-gt v10, v0, :cond_13

    .line 1201
    iget v11, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBWidth:I

    if-ge v9, v11, :cond_2

    if-ltz v10, :cond_2

    .line 1203
    invoke-virtual {p0, v9, v10, p1}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->setKeyIndex(III)V

    .line 1199
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 1093
    .end local v9           #x:I
    .end local v10           #y:I
    .restart local v7       #nextX:I
    .restart local v8       #nextY:I
    :cond_3
    add-int/lit8 v8, v8, 0x1

    .line 1079
    :cond_4
    invoke-virtual {p0, v7, v8}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->getKeyIndex(II)I

    move-result v11

    if-ne v11, p1, :cond_6

    .line 1081
    move v2, v8

    .line 1083
    if-lez v2, :cond_5

    iget v11, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBHeight:I

    add-int/lit8 v11, v11, -0x1

    if-ge v2, v11, :cond_5

    if-lez v1, :cond_5

    iget v11, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBWidth:I

    add-int/lit8 v11, v11, -0x1

    if-lt v1, v11, :cond_3

    .line 1087
    :cond_5
    const/4 v6, 0x0

    .line 1097
    :cond_6
    sub-int v11, p3, v2

    sub-int v12, p3, v2

    mul-int/2addr v11, v12

    sub-int v12, p2, v1

    sub-int v13, p2, v1

    mul-int/2addr v12, v13

    add-int/2addr v11, v12

    int-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    double-to-int v3, v11

    .line 1105
    .local v3, distance:I
    rsub-int/lit8 v11, v3, 0xa

    if-gez v11, :cond_8

    const/4 v5, 0x0

    .line 1107
    .local v5, iter:I
    :goto_4
    if-eqz v6, :cond_7

    .line 1109
    const/4 v4, 0x0

    .local v4, i:I
    :goto_5
    if-gt v4, v5, :cond_7

    .line 1111
    add-int v11, v2, v4

    iget v12, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBHeight:I

    add-int/lit8 v12, v12, -0x1

    if-le v11, v12, :cond_9

    .line 1067
    .end local v4           #i:I
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1105
    .end local v5           #iter:I
    :cond_8
    rsub-int/lit8 v5, v3, 0xa

    goto :goto_4

    .line 1115
    .restart local v4       #i:I
    .restart local v5       #iter:I
    :cond_9
    add-int v11, v2, v4

    invoke-virtual {p0, v1, v11}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->isFixed(II)Z

    move-result v11

    if-nez v11, :cond_a

    .line 1117
    add-int v11, v2, v4

    invoke-virtual {p0, v1, v11, p1}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->setKeyIndex(III)V

    .line 1109
    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 1161
    .end local v3           #distance:I
    .end local v4           #i:I
    .end local v5           #iter:I
    :cond_b
    add-int/lit8 v7, v7, -0x1

    .line 1147
    :cond_c
    invoke-virtual {p0, v7, v8}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->getKeyIndex(II)I

    move-result v11

    if-ne v11, p1, :cond_e

    .line 1149
    move v1, v7

    .line 1151
    if-lez v2, :cond_d

    iget v11, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBHeight:I

    add-int/lit8 v11, v11, -0x1

    if-ge v2, v11, :cond_d

    if-lez v1, :cond_d

    iget v11, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBWidth:I

    add-int/lit8 v11, v11, -0x1

    if-lt v1, v11, :cond_b

    .line 1155
    :cond_d
    const/4 v6, 0x0

    .line 1167
    :cond_e
    sub-int v11, p3, v2

    sub-int v12, p3, v2

    mul-int/2addr v11, v12

    sub-int v12, p2, v1

    sub-int v13, p2, v1

    mul-int/2addr v12, v13

    add-int/2addr v11, v12

    int-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    double-to-int v3, v11

    .line 1173
    .restart local v3       #distance:I
    rsub-int/lit8 v11, v3, 0xa

    if-gez v11, :cond_10

    const/4 v5, 0x0

    .line 1175
    .restart local v5       #iter:I
    :goto_6
    if-eqz v6, :cond_f

    .line 1177
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_7
    if-gt v4, v5, :cond_f

    .line 1179
    sub-int v11, v1, v4

    if-gez v11, :cond_11

    .line 1135
    .end local v4           #i:I
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 1173
    .end local v5           #iter:I
    :cond_10
    rsub-int/lit8 v5, v3, 0xa

    goto :goto_6

    .line 1183
    .restart local v4       #i:I
    .restart local v5       #iter:I
    :cond_11
    sub-int v11, v1, v4

    invoke-virtual {p0, v11, v2}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->isFixed(II)Z

    move-result v11

    if-nez v11, :cond_12

    .line 1185
    sub-int v11, v1, v4

    invoke-virtual {p0, v11, v2, p1}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->setKeyIndex(III)V

    .line 1177
    :cond_12
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 1197
    .end local v3           #distance:I
    .end local v4           #i:I
    .end local v5           #iter:I
    .end local v7           #nextX:I
    .end local v8           #nextY:I
    .restart local v9       #x:I
    .restart local v10       #y:I
    :cond_13
    add-int/lit8 v9, v9, -0x1

    goto/16 :goto_2

    .line 1209
    .end local v10           #y:I
    :cond_14
    return-void
.end method

.method public increaseBR(III)V
    .locals 14
    .parameter "currentIndex"
    .parameter "touchX"
    .parameter "touchY"

    .prologue
    .line 1389
    const/4 v6, 0x1

    .line 1393
    .local v6, needIncrease:Z
    move/from16 v1, p2

    .line 1395
    .local v1, boundX:I
    move/from16 v2, p3

    .line 1397
    .local v2, boundY:I
    add-int/lit8 v1, p2, -0xa

    :goto_0
    add-int/lit8 v11, p2, 0xa

    if-gt v1, v11, :cond_0

    .line 1399
    move v7, v1

    .line 1401
    .local v7, nextX:I
    move/from16 v8, p3

    .line 1403
    .local v8, nextY:I
    if-ltz v7, :cond_0

    iget v11, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBWidth:I

    add-int/lit8 v11, v11, -0x1

    if-gt v7, v11, :cond_0

    if-ltz v8, :cond_0

    iget v11, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBHeight:I

    add-int/lit8 v11, v11, -0x1

    if-le v8, v11, :cond_4

    .line 1461
    .end local v7           #nextX:I
    .end local v8           #nextY:I
    :cond_0
    const/4 v6, 0x1

    .line 1463
    move/from16 v1, p2

    .line 1465
    move/from16 v2, p3

    .line 1467
    add-int/lit8 v2, p3, -0xa

    :goto_1
    add-int/lit8 v11, p3, 0xa

    if-gt v2, v11, :cond_1

    .line 1469
    move/from16 v7, p2

    .line 1471
    .restart local v7       #nextX:I
    move v8, v2

    .line 1473
    .restart local v8       #nextY:I
    if-ltz v7, :cond_1

    iget v11, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBWidth:I

    add-int/lit8 v11, v11, -0x1

    if-gt v7, v11, :cond_1

    if-ltz v8, :cond_1

    iget v11, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBHeight:I

    add-int/lit8 v11, v11, -0x1

    if-le v8, v11, :cond_c

    .line 1529
    .end local v7           #nextX:I
    .end local v8           #nextY:I
    :cond_1
    add-int/lit8 v9, p2, -0xa

    .local v9, x:I
    :goto_2
    move/from16 v0, p2

    if-gt v9, v0, :cond_14

    .line 1531
    add-int/lit8 v10, p3, -0xa

    .local v10, y:I
    :goto_3
    move/from16 v0, p3

    if-gt v10, v0, :cond_13

    .line 1533
    if-ltz v9, :cond_2

    if-ltz v10, :cond_2

    .line 1535
    invoke-virtual {p0, v9, v10, p1}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->setKeyIndex(III)V

    .line 1531
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 1423
    .end local v9           #x:I
    .end local v10           #y:I
    .restart local v7       #nextX:I
    .restart local v8       #nextY:I
    :cond_3
    add-int/lit8 v8, v8, 0x1

    .line 1409
    :cond_4
    invoke-virtual {p0, v7, v8}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->getKeyIndex(II)I

    move-result v11

    if-ne v11, p1, :cond_6

    .line 1411
    move v2, v8

    .line 1413
    if-lez v2, :cond_5

    iget v11, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBHeight:I

    add-int/lit8 v11, v11, -0x1

    if-ge v2, v11, :cond_5

    if-lez v1, :cond_5

    iget v11, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBWidth:I

    add-int/lit8 v11, v11, -0x1

    if-lt v1, v11, :cond_3

    .line 1417
    :cond_5
    const/4 v6, 0x0

    .line 1427
    :cond_6
    sub-int v11, p3, v2

    sub-int v12, p3, v2

    mul-int/2addr v11, v12

    sub-int v12, p2, v1

    sub-int v13, p2, v1

    mul-int/2addr v12, v13

    add-int/2addr v11, v12

    int-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    double-to-int v3, v11

    .line 1435
    .local v3, distance:I
    rsub-int/lit8 v11, v3, 0xa

    if-gez v11, :cond_8

    const/4 v5, 0x0

    .line 1437
    .local v5, iter:I
    :goto_4
    if-eqz v6, :cond_7

    .line 1439
    const/4 v4, 0x0

    .local v4, i:I
    :goto_5
    if-gt v4, v5, :cond_7

    .line 1441
    add-int v11, v2, v4

    iget v12, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBHeight:I

    add-int/lit8 v12, v12, -0x1

    if-le v11, v12, :cond_9

    .line 1397
    .end local v4           #i:I
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1435
    .end local v5           #iter:I
    :cond_8
    rsub-int/lit8 v5, v3, 0xa

    goto :goto_4

    .line 1445
    .restart local v4       #i:I
    .restart local v5       #iter:I
    :cond_9
    add-int v11, v2, v4

    invoke-virtual {p0, v1, v11}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->isFixed(II)Z

    move-result v11

    if-nez v11, :cond_a

    .line 1447
    add-int v11, v2, v4

    invoke-virtual {p0, v1, v11, p1}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->setKeyIndex(III)V

    .line 1439
    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 1493
    .end local v3           #distance:I
    .end local v4           #i:I
    .end local v5           #iter:I
    :cond_b
    add-int/lit8 v7, v7, 0x1

    .line 1479
    :cond_c
    invoke-virtual {p0, v7, v8}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->getKeyIndex(II)I

    move-result v11

    if-ne v11, p1, :cond_e

    .line 1481
    move v1, v7

    .line 1483
    if-lez v2, :cond_d

    iget v11, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBHeight:I

    add-int/lit8 v11, v11, -0x1

    if-ge v2, v11, :cond_d

    if-lez v1, :cond_d

    iget v11, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBWidth:I

    add-int/lit8 v11, v11, -0x1

    if-lt v1, v11, :cond_b

    .line 1487
    :cond_d
    const/4 v6, 0x0

    .line 1497
    :cond_e
    sub-int v11, p3, v2

    sub-int v12, p3, v2

    mul-int/2addr v11, v12

    sub-int v12, p2, v1

    sub-int v13, p2, v1

    mul-int/2addr v12, v13

    add-int/2addr v11, v12

    int-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    double-to-int v3, v11

    .line 1505
    .restart local v3       #distance:I
    rsub-int/lit8 v11, v3, 0xa

    if-gez v11, :cond_10

    const/4 v5, 0x0

    .line 1507
    .restart local v5       #iter:I
    :goto_6
    if-eqz v6, :cond_f

    .line 1509
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_7
    if-gt v4, v5, :cond_f

    .line 1511
    add-int v11, v1, v4

    iget v12, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBWidth:I

    add-int/lit8 v12, v12, -0x1

    if-le v11, v12, :cond_11

    .line 1467
    .end local v4           #i:I
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 1505
    .end local v5           #iter:I
    :cond_10
    rsub-int/lit8 v5, v3, 0xa

    goto :goto_6

    .line 1515
    .restart local v4       #i:I
    .restart local v5       #iter:I
    :cond_11
    add-int v11, v1, v4

    invoke-virtual {p0, v11, v2}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->isFixed(II)Z

    move-result v11

    if-nez v11, :cond_12

    .line 1517
    add-int v11, v1, v4

    invoke-virtual {p0, v11, v2, p1}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->setKeyIndex(III)V

    .line 1509
    :cond_12
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 1529
    .end local v3           #distance:I
    .end local v4           #i:I
    .end local v5           #iter:I
    .end local v7           #nextX:I
    .end local v8           #nextY:I
    .restart local v9       #x:I
    .restart local v10       #y:I
    :cond_13
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    .line 1541
    .end local v10           #y:I
    :cond_14
    return-void
.end method

.method public increaseTL(III)V
    .locals 14
    .parameter "currentIndex"
    .parameter "touchX"
    .parameter "touchY"

    .prologue
    .line 893
    const/4 v6, 0x1

    .line 897
    .local v6, needIncrease:Z
    move/from16 v1, p2

    .line 899
    .local v1, boundX:I
    move/from16 v2, p3

    .line 901
    .local v2, boundY:I
    add-int/lit8 v1, p2, -0xa

    :goto_0
    add-int/lit8 v11, p2, 0xa

    if-gt v1, v11, :cond_0

    .line 903
    move v7, v1

    .line 905
    .local v7, nextX:I
    move/from16 v8, p3

    .line 907
    .local v8, nextY:I
    if-ltz v7, :cond_0

    iget v11, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBWidth:I

    add-int/lit8 v11, v11, -0x1

    if-gt v7, v11, :cond_0

    if-ltz v8, :cond_0

    iget v11, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBHeight:I

    add-int/lit8 v11, v11, -0x1

    if-le v8, v11, :cond_4

    .line 965
    .end local v7           #nextX:I
    .end local v8           #nextY:I
    :cond_0
    const/4 v6, 0x1

    .line 967
    move/from16 v1, p2

    .line 969
    move/from16 v2, p3

    .line 971
    add-int/lit8 v2, p3, -0xa

    :goto_1
    add-int/lit8 v11, p3, 0xa

    if-gt v2, v11, :cond_1

    .line 973
    move/from16 v7, p2

    .line 975
    .restart local v7       #nextX:I
    move v8, v2

    .line 977
    .restart local v8       #nextY:I
    if-ltz v7, :cond_1

    iget v11, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBWidth:I

    add-int/lit8 v11, v11, -0x1

    if-gt v7, v11, :cond_1

    if-ltz v8, :cond_1

    iget v11, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBHeight:I

    add-int/lit8 v11, v11, -0x1

    if-le v8, v11, :cond_c

    .line 1033
    .end local v7           #nextX:I
    .end local v8           #nextY:I
    :cond_1
    add-int/lit8 v9, p2, 0xa

    .local v9, x:I
    :goto_2
    move/from16 v0, p2

    if-lt v9, v0, :cond_14

    .line 1035
    add-int/lit8 v10, p3, 0xa

    .local v10, y:I
    :goto_3
    move/from16 v0, p3

    if-lt v10, v0, :cond_13

    .line 1037
    iget v11, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBWidth:I

    if-ge v9, v11, :cond_2

    iget v11, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBHeight:I

    if-ge v10, v11, :cond_2

    .line 1039
    invoke-virtual {p0, v9, v10, p1}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->setKeyIndex(III)V

    .line 1035
    :cond_2
    add-int/lit8 v10, v10, -0x1

    goto :goto_3

    .line 927
    .end local v9           #x:I
    .end local v10           #y:I
    .restart local v7       #nextX:I
    .restart local v8       #nextY:I
    :cond_3
    add-int/lit8 v8, v8, -0x1

    .line 913
    :cond_4
    invoke-virtual {p0, v7, v8}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->getKeyIndex(II)I

    move-result v11

    if-ne v11, p1, :cond_6

    .line 915
    move v2, v8

    .line 917
    if-lez v2, :cond_5

    iget v11, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBHeight:I

    add-int/lit8 v11, v11, -0x1

    if-ge v2, v11, :cond_5

    if-lez v1, :cond_5

    iget v11, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBWidth:I

    add-int/lit8 v11, v11, -0x1

    if-lt v1, v11, :cond_3

    .line 921
    :cond_5
    const/4 v6, 0x0

    .line 931
    :cond_6
    sub-int v11, p3, v2

    sub-int v12, p3, v2

    mul-int/2addr v11, v12

    sub-int v12, p2, v1

    sub-int v13, p2, v1

    mul-int/2addr v12, v13

    add-int/2addr v11, v12

    int-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    double-to-int v3, v11

    .line 939
    .local v3, distance:I
    rsub-int/lit8 v11, v3, 0xa

    if-gez v11, :cond_8

    const/4 v5, 0x0

    .line 941
    .local v5, iter:I
    :goto_4
    if-eqz v6, :cond_7

    .line 943
    const/4 v4, 0x0

    .local v4, i:I
    :goto_5
    if-gt v4, v5, :cond_7

    .line 945
    sub-int v11, v2, v4

    if-gez v11, :cond_9

    .line 901
    .end local v4           #i:I
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 939
    .end local v5           #iter:I
    :cond_8
    rsub-int/lit8 v5, v3, 0xa

    goto :goto_4

    .line 949
    .restart local v4       #i:I
    .restart local v5       #iter:I
    :cond_9
    sub-int v11, v2, v4

    invoke-virtual {p0, v1, v11}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->isFixed(II)Z

    move-result v11

    if-nez v11, :cond_a

    .line 951
    sub-int v11, v2, v4

    invoke-virtual {p0, v1, v11, p1}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->setKeyIndex(III)V

    .line 943
    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 997
    .end local v3           #distance:I
    .end local v4           #i:I
    .end local v5           #iter:I
    :cond_b
    add-int/lit8 v7, v7, -0x1

    .line 983
    :cond_c
    invoke-virtual {p0, v7, v8}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->getKeyIndex(II)I

    move-result v11

    if-ne v11, p1, :cond_e

    .line 985
    move v1, v7

    .line 987
    if-lez v2, :cond_d

    iget v11, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBHeight:I

    add-int/lit8 v11, v11, -0x1

    if-ge v2, v11, :cond_d

    if-lez v1, :cond_d

    iget v11, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBWidth:I

    add-int/lit8 v11, v11, -0x1

    if-lt v1, v11, :cond_b

    .line 991
    :cond_d
    const/4 v6, 0x0

    .line 1001
    :cond_e
    sub-int v11, p3, v2

    sub-int v12, p3, v2

    mul-int/2addr v11, v12

    sub-int v12, p2, v1

    sub-int v13, p2, v1

    mul-int/2addr v12, v13

    add-int/2addr v11, v12

    int-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    double-to-int v3, v11

    .line 1009
    .restart local v3       #distance:I
    rsub-int/lit8 v11, v3, 0xa

    if-gez v11, :cond_10

    const/4 v5, 0x0

    .line 1011
    .restart local v5       #iter:I
    :goto_6
    if-eqz v6, :cond_f

    .line 1013
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_7
    if-gt v4, v5, :cond_f

    .line 1015
    sub-int v11, v1, v4

    if-gez v11, :cond_11

    .line 971
    .end local v4           #i:I
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 1009
    .end local v5           #iter:I
    :cond_10
    rsub-int/lit8 v5, v3, 0xa

    goto :goto_6

    .line 1019
    .restart local v4       #i:I
    .restart local v5       #iter:I
    :cond_11
    sub-int v11, v1, v4

    invoke-virtual {p0, v11, v2}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->isFixed(II)Z

    move-result v11

    if-nez v11, :cond_12

    .line 1021
    sub-int v11, v1, v4

    invoke-virtual {p0, v11, v2, p1}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->setKeyIndex(III)V

    .line 1013
    :cond_12
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 1033
    .end local v3           #distance:I
    .end local v4           #i:I
    .end local v5           #iter:I
    .end local v7           #nextX:I
    .end local v8           #nextY:I
    .restart local v9       #x:I
    .restart local v10       #y:I
    :cond_13
    add-int/lit8 v9, v9, -0x1

    goto/16 :goto_2

    .line 1045
    .end local v10           #y:I
    :cond_14
    return-void
.end method

.method public increaseTR(III)V
    .locals 14
    .parameter "currentIndex"
    .parameter "touchX"
    .parameter "touchY"

    .prologue
    .line 1223
    const/4 v6, 0x1

    .line 1227
    .local v6, needIncrease:Z
    move/from16 v1, p2

    .line 1229
    .local v1, boundX:I
    move/from16 v2, p3

    .line 1231
    .local v2, boundY:I
    add-int/lit8 v1, p2, -0xa

    :goto_0
    add-int/lit8 v11, p2, 0xa

    if-gt v1, v11, :cond_0

    .line 1233
    move v7, v1

    .line 1235
    .local v7, nextX:I
    move/from16 v8, p3

    .line 1237
    .local v8, nextY:I
    if-ltz v7, :cond_0

    iget v11, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBWidth:I

    add-int/lit8 v11, v11, -0x1

    if-gt v7, v11, :cond_0

    if-ltz v8, :cond_0

    iget v11, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBHeight:I

    add-int/lit8 v11, v11, -0x1

    if-le v8, v11, :cond_4

    .line 1295
    .end local v7           #nextX:I
    .end local v8           #nextY:I
    :cond_0
    const/4 v6, 0x1

    .line 1297
    move/from16 v1, p2

    .line 1299
    move/from16 v2, p3

    .line 1301
    add-int/lit8 v2, p3, -0xa

    :goto_1
    add-int/lit8 v11, p3, 0xa

    if-gt v2, v11, :cond_1

    .line 1303
    move/from16 v7, p2

    .line 1305
    .restart local v7       #nextX:I
    move v8, v2

    .line 1307
    .restart local v8       #nextY:I
    if-ltz v7, :cond_1

    iget v11, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBWidth:I

    add-int/lit8 v11, v11, -0x1

    if-gt v7, v11, :cond_1

    if-ltz v8, :cond_1

    iget v11, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBHeight:I

    add-int/lit8 v11, v11, -0x1

    if-le v8, v11, :cond_c

    .line 1363
    .end local v7           #nextX:I
    .end local v8           #nextY:I
    :cond_1
    add-int/lit8 v9, p2, -0xa

    .local v9, x:I
    :goto_2
    move/from16 v0, p2

    if-gt v9, v0, :cond_14

    .line 1365
    add-int/lit8 v10, p3, 0xa

    .local v10, y:I
    :goto_3
    move/from16 v0, p3

    if-lt v10, v0, :cond_13

    .line 1367
    if-ltz v9, :cond_2

    iget v11, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBHeight:I

    if-ge v10, v11, :cond_2

    .line 1369
    invoke-virtual {p0, v9, v10, p1}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->setKeyIndex(III)V

    .line 1365
    :cond_2
    add-int/lit8 v10, v10, -0x1

    goto :goto_3

    .line 1257
    .end local v9           #x:I
    .end local v10           #y:I
    .restart local v7       #nextX:I
    .restart local v8       #nextY:I
    :cond_3
    add-int/lit8 v8, v8, -0x1

    .line 1243
    :cond_4
    invoke-virtual {p0, v7, v8}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->getKeyIndex(II)I

    move-result v11

    if-ne v11, p1, :cond_6

    .line 1245
    move v2, v8

    .line 1247
    if-lez v2, :cond_5

    iget v11, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBHeight:I

    add-int/lit8 v11, v11, -0x1

    if-ge v2, v11, :cond_5

    if-lez v1, :cond_5

    iget v11, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBWidth:I

    add-int/lit8 v11, v11, -0x1

    if-lt v1, v11, :cond_3

    .line 1251
    :cond_5
    const/4 v6, 0x0

    .line 1261
    :cond_6
    sub-int v11, p3, v2

    sub-int v12, p3, v2

    mul-int/2addr v11, v12

    sub-int v12, p2, v1

    sub-int v13, p2, v1

    mul-int/2addr v12, v13

    add-int/2addr v11, v12

    int-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    double-to-int v3, v11

    .line 1269
    .local v3, distance:I
    rsub-int/lit8 v11, v3, 0xa

    if-gez v11, :cond_8

    const/4 v5, 0x0

    .line 1271
    .local v5, iter:I
    :goto_4
    if-eqz v6, :cond_7

    .line 1273
    const/4 v4, 0x0

    .local v4, i:I
    :goto_5
    if-gt v4, v5, :cond_7

    .line 1275
    sub-int v11, v2, v4

    if-gez v11, :cond_9

    .line 1231
    .end local v4           #i:I
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1269
    .end local v5           #iter:I
    :cond_8
    rsub-int/lit8 v5, v3, 0xa

    goto :goto_4

    .line 1279
    .restart local v4       #i:I
    .restart local v5       #iter:I
    :cond_9
    sub-int v11, v2, v4

    invoke-virtual {p0, v1, v11}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->isFixed(II)Z

    move-result v11

    if-nez v11, :cond_a

    .line 1281
    sub-int v11, v2, v4

    invoke-virtual {p0, v1, v11, p1}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->setKeyIndex(III)V

    .line 1273
    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 1327
    .end local v3           #distance:I
    .end local v4           #i:I
    .end local v5           #iter:I
    :cond_b
    add-int/lit8 v7, v7, 0x1

    .line 1313
    :cond_c
    invoke-virtual {p0, v7, v8}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->getKeyIndex(II)I

    move-result v11

    if-ne v11, p1, :cond_e

    .line 1315
    move v1, v7

    .line 1317
    if-lez v2, :cond_d

    iget v11, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBHeight:I

    add-int/lit8 v11, v11, -0x1

    if-ge v2, v11, :cond_d

    if-lez v1, :cond_d

    iget v11, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBWidth:I

    add-int/lit8 v11, v11, -0x1

    if-lt v1, v11, :cond_b

    .line 1321
    :cond_d
    const/4 v6, 0x0

    .line 1331
    :cond_e
    sub-int v11, p3, v2

    sub-int v12, p3, v2

    mul-int/2addr v11, v12

    sub-int v12, p2, v1

    sub-int v13, p2, v1

    mul-int/2addr v12, v13

    add-int/2addr v11, v12

    int-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    double-to-int v3, v11

    .line 1339
    .restart local v3       #distance:I
    rsub-int/lit8 v11, v3, 0xa

    if-gez v11, :cond_10

    const/4 v5, 0x0

    .line 1341
    .restart local v5       #iter:I
    :goto_6
    if-eqz v6, :cond_f

    .line 1343
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_7
    if-gt v4, v5, :cond_f

    .line 1345
    add-int v11, v1, v4

    iget v12, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBWidth:I

    add-int/lit8 v12, v12, -0x1

    if-le v11, v12, :cond_11

    .line 1301
    .end local v4           #i:I
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 1339
    .end local v5           #iter:I
    :cond_10
    rsub-int/lit8 v5, v3, 0xa

    goto :goto_6

    .line 1349
    .restart local v4       #i:I
    .restart local v5       #iter:I
    :cond_11
    add-int v11, v1, v4

    invoke-virtual {p0, v11, v2}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->isFixed(II)Z

    move-result v11

    if-nez v11, :cond_12

    .line 1351
    add-int v11, v1, v4

    invoke-virtual {p0, v11, v2, p1}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->setKeyIndex(III)V

    .line 1343
    :cond_12
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 1363
    .end local v3           #distance:I
    .end local v4           #i:I
    .end local v5           #iter:I
    .end local v7           #nextX:I
    .end local v8           #nextY:I
    .restart local v9       #x:I
    .restart local v10       #y:I
    :cond_13
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    .line 1375
    .end local v10           #y:I
    :cond_14
    return-void
.end method

.method public initialize(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;ILjava/lang/String;IIIZI)Z
    .locals 21
    .parameter "keyboard"
    .parameter "windowWidth"
    .parameter "language"
    .parameter "mode"
    .parameter "keyboardWidth"
    .parameter "keyboardHeight"
    .parameter "orientation"
    .parameter "nKeys"

    .prologue
    .line 597
    const/4 v3, 0x0

    new-array v3, v3, [Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->softKeys:[Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    .line 601
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->getKeys()Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->softKeys:[Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->softKeys:[Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    .line 603
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->softKeys:[Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    array-length v15, v3

    .line 605
    .local v15, length:I
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->getSkbCoreWidth()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBWidth:I

    .line 607
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->getSkbCoreHeight()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBHeight:I

    .line 609
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    :goto_0
    move/from16 v0, p7

    if-ne v3, v0, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->getSkbCoreWidth()I

    move-result v3

    move/from16 v0, p5

    if-ne v3, v0, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->getSkbCoreHeight()I

    move-result v3

    move/from16 v0, p6

    if-ne v3, v0, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->getKeys()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v3

    array-length v3, v3

    move/from16 v0, p8

    if-ne v3, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->initGridCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_2

    .line 619
    :cond_0
    const/4 v3, 0x0

    check-cast v3, [[I

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->grid:[[I

    .line 621
    const/4 v3, 0x0

    .line 867
    :goto_1
    return v3

    .line 609
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 625
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->softKeys:[Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    array-length v3, v3

    add-int/lit8 v3, v3, 0x1

    new-array v3, v3, [Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure$TCentre;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKeyCentre:[Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure$TCentre;

    .line 627
    const/4 v11, 0x1

    .local v11, i:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->softKeys:[Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    array-length v3, v3

    add-int/lit8 v3, v3, 0x1

    if-ge v11, v3, :cond_4

    .line 629
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKeyCentre:[Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure$TCentre;

    aget-object v3, v3, v11

    if-nez v3, :cond_3

    .line 631
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKeyCentre:[Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure$TCentre;

    new-instance v4, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure$TCentre;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure$TCentre;-><init>(Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;)V

    aput-object v4, v3, v11

    .line 633
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKeyCentre:[Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure$TCentre;

    aget-object v3, v3, v11

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->softKeys:[Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    add-int/lit8 v5, v11, -0x1

    aget-object v4, v4, v5

    iget v4, v4, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mLeft:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->softKeys:[Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    add-int/lit8 v6, v11, -0x1

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->width()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iput v4, v3, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure$TCentre;->x:I

    .line 635
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKeyCentre:[Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure$TCentre;

    aget-object v3, v3, v11

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->softKeys:[Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    add-int/lit8 v5, v11, -0x1

    aget-object v4, v4, v5

    iget v4, v4, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTop:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->softKeys:[Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    add-int/lit8 v6, v11, -0x1

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->height()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iput v4, v3, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure$TCentre;->y:I

    .line 627
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 645
    :cond_4
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_6

    const/4 v3, 0x1

    :goto_3
    move/from16 v0, p7

    if-ne v3, v0, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->getSkbCoreWidth()I

    move-result v3

    move/from16 v0, p5

    if-ne v3, v0, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->getSkbCoreHeight()I

    move-result v3

    move/from16 v0, p6

    if-ne v3, v0, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->getKeys()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v3

    array-length v3, v3

    move/from16 v0, p8

    if-ne v3, v0, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->initGridCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_7

    .line 653
    :cond_5
    const/4 v3, 0x0

    check-cast v3, [[I

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->grid:[[I

    .line 655
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 645
    :cond_6
    const/4 v3, 0x0

    goto :goto_3

    .line 659
    :cond_7
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBHeight:I

    filled-new-array {v3, v4}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[I

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->grid:[[I

    .line 661
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_9

    const/4 v3, 0x1

    :goto_4
    move/from16 v0, p7

    if-ne v3, v0, :cond_8

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->getSkbCoreWidth()I

    move-result v3

    move/from16 v0, p5

    if-ne v3, v0, :cond_8

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->getSkbCoreHeight()I

    move-result v3

    move/from16 v0, p6

    if-ne v3, v0, :cond_8

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->getKeys()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v3

    array-length v3, v3

    move/from16 v0, p8

    if-ne v3, v0, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->initGridCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_a

    .line 669
    :cond_8
    const/4 v3, 0x0

    check-cast v3, [[I

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->grid:[[I

    .line 671
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 661
    :cond_9
    const/4 v3, 0x0

    goto :goto_4

    :cond_a
    move-object/from16 v3, p0

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p7

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p1

    move/from16 v10, p8

    .line 675
    invoke-virtual/range {v3 .. v10}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->readGrid(Ljava/lang/String;IZIILcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;I)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 687
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 701
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->grid:[[I

    if-nez v3, :cond_c

    .line 703
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 733
    :cond_c
    const/4 v14, 0x1

    .local v14, key:I
    :goto_5
    add-int/lit8 v3, v15, 0x1

    if-ge v14, v3, :cond_13

    .line 735
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->softKeys:[Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    add-int/lit8 v4, v14, -0x1

    aget-object v3, v3, v4

    iget v3, v3, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTop:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->softKeys:[Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    add-int/lit8 v5, v14, -0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->height()I

    move-result v4

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->softKeys:[Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    add-int/lit8 v5, v14, -0x1

    aget-object v4, v4, v5

    iget v4, v4, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mBottomMargin:F

    float-to-int v4, v4

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->softKeys:[Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    add-int/lit8 v5, v14, -0x1

    aget-object v4, v4, v5

    iget v4, v4, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTopMargin:F

    float-to-int v4, v4

    add-int v17, v3, v4

    .line 737
    .local v17, limity:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->softKeys:[Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    add-int/lit8 v4, v14, -0x1

    aget-object v3, v3, v4

    iget v3, v3, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mLeft:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->softKeys:[Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    add-int/lit8 v5, v14, -0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->width()I

    move-result v4

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->softKeys:[Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    add-int/lit8 v5, v14, -0x1

    aget-object v4, v4, v5

    iget v4, v4, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mLeftMargin:F

    float-to-int v4, v4

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->softKeys:[Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    add-int/lit8 v5, v14, -0x1

    aget-object v4, v4, v5

    iget v4, v4, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mRightMargin:F

    float-to-int v4, v4

    add-int v16, v3, v4

    .line 739
    .local v16, limitx:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->softKeys:[Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    add-int/lit8 v4, v14, -0x1

    aget-object v3, v3, v4

    iget v3, v3, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTop:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->softKeys:[Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    add-int/lit8 v5, v14, -0x1

    aget-object v4, v4, v5

    iget v4, v4, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTopMargin:F

    float-to-int v4, v4

    sub-int v19, v3, v4

    .local v19, n:I
    :goto_6
    move/from16 v0, v19

    move/from16 v1, v17

    if-gt v0, v1, :cond_12

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBHeight:I

    move/from16 v0, v19

    if-ge v0, v3, :cond_12

    if-ltz v19, :cond_12

    .line 741
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->softKeys:[Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    add-int/lit8 v4, v14, -0x1

    aget-object v3, v3, v4

    iget v3, v3, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mLeft:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->softKeys:[Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    add-int/lit8 v5, v14, -0x1

    aget-object v4, v4, v5

    iget v4, v4, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mLeftMargin:F

    float-to-int v4, v4

    sub-int v18, v3, v4

    .local v18, m:I
    :goto_7
    move/from16 v0, v18

    move/from16 v1, v16

    if-gt v0, v1, :cond_11

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBWidth:I

    move/from16 v0, v18

    if-ge v0, v3, :cond_11

    if-ltz v18, :cond_11

    .line 743
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_e

    const/4 v3, 0x1

    :goto_8
    move/from16 v0, p7

    if-ne v3, v0, :cond_d

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->getSkbCoreWidth()I

    move-result v3

    move/from16 v0, p5

    if-ne v3, v0, :cond_d

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->getSkbCoreHeight()I

    move-result v3

    move/from16 v0, p6

    if-ne v3, v0, :cond_d

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->getKeys()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v3

    array-length v3, v3

    move/from16 v0, p8

    if-ne v3, v0, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->initGridCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_f

    .line 751
    :cond_d
    const/4 v3, 0x0

    check-cast v3, [[I

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->grid:[[I

    .line 753
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 743
    :cond_e
    const/4 v3, 0x0

    goto :goto_8

    .line 759
    :cond_f
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2, v14}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->setBaseIndex(III)V

    .line 761
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2, v14}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->setKeyIndex(III)V

    .line 765
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->softKeys:[Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    add-int/lit8 v4, v14, -0x1

    aget-object v3, v3, v4

    iget v3, v3, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mLeft:I

    add-int/lit8 v3, v3, 0x5

    move/from16 v0, v18

    if-le v0, v3, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->softKeys:[Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    add-int/lit8 v4, v14, -0x1

    aget-object v3, v3, v4

    iget v3, v3, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mLeft:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->softKeys:[Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    add-int/lit8 v5, v14, -0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->width()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x5

    move/from16 v0, v18

    if-ge v0, v3, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->softKeys:[Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    add-int/lit8 v4, v14, -0x1

    aget-object v3, v3, v4

    iget v3, v3, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTop:I

    add-int/lit8 v3, v3, 0x5

    move/from16 v0, v19

    if-le v0, v3, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->softKeys:[Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    add-int/lit8 v4, v14, -0x1

    aget-object v3, v3, v4

    iget v3, v3, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTop:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->softKeys:[Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    add-int/lit8 v5, v14, -0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->height()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x5

    move/from16 v0, v19

    if-ge v0, v3, :cond_10

    .line 773
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->setFixed(IIZ)V

    .line 741
    :goto_9
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_7

    .line 777
    :cond_10
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->setFixed(IIZ)V

    goto :goto_9

    .line 739
    :cond_11
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_6

    .line 733
    .end local v18           #m:I
    :cond_12
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_5

    .line 791
    .end local v16           #limitx:I
    .end local v17           #limity:I
    .end local v19           #n:I
    :cond_13
    const/4 v13, 0x0

    .local v13, k:I
    :goto_a
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBHeight:I

    if-ge v13, v3, :cond_1f

    .line 793
    const/4 v12, 0x0

    .local v12, j:I
    :goto_b
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBWidth:I

    if-ge v12, v3, :cond_1e

    .line 795
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_15

    const/4 v3, 0x1

    :goto_c
    move/from16 v0, p7

    if-ne v3, v0, :cond_14

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->getSkbCoreWidth()I

    move-result v3

    move/from16 v0, p5

    if-ne v3, v0, :cond_14

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->getSkbCoreHeight()I

    move-result v3

    move/from16 v0, p6

    if-ne v3, v0, :cond_14

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->getKeys()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v3

    array-length v3, v3

    move/from16 v0, p8

    if-ne v3, v0, :cond_14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->initGridCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_16

    .line 803
    :cond_14
    const/4 v3, 0x0

    check-cast v3, [[I

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->grid:[[I

    .line 805
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 795
    :cond_15
    const/4 v3, 0x0

    goto :goto_c

    .line 809
    :cond_16
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->getKeyIndex(II)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_17

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->getKeyIndex(II)I

    move-result v3

    if-nez v3, :cond_1a

    .line 813
    :cond_17
    const/16 v20, -0x1

    .line 815
    .local v20, temp:I
    const/4 v14, 0x1

    :goto_d
    add-int/lit8 v3, v15, 0x1

    if-ge v14, v3, :cond_18

    .line 817
    add-int/lit8 v20, v20, 0x1

    .line 819
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->softKeys:[Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    add-int/lit8 v4, v14, -0x1

    aget-object v3, v3, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mapToKey(II)Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 821
    add-int/lit8 v20, v20, 0x1

    .line 831
    :cond_18
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v12, v13, v1}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->setBaseIndex(III)V

    .line 833
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v12, v13, v1}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->setKeyIndex(III)V

    .line 837
    const/4 v3, -0x1

    move/from16 v0, v20

    if-eq v0, v3, :cond_19

    if-nez v20, :cond_1c

    .line 839
    :cond_19
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v3}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->setFixed(IIZ)V

    .line 793
    .end local v20           #temp:I
    :cond_1a
    :goto_e
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_b

    .line 815
    .restart local v20       #temp:I
    :cond_1b
    add-int/lit8 v14, v14, 0x1

    goto :goto_d

    .line 843
    :cond_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->softKeys:[Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    add-int/lit8 v4, v20, -0x1

    aget-object v3, v3, v4

    iget v3, v3, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mLeft:I

    add-int/lit8 v3, v3, 0x5

    if-le v12, v3, :cond_1d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->softKeys:[Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    add-int/lit8 v4, v20, -0x1

    aget-object v3, v3, v4

    iget v3, v3, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mLeft:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->softKeys:[Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    add-int/lit8 v5, v20, -0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->width()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x5

    if-ge v12, v3, :cond_1d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->softKeys:[Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    add-int/lit8 v4, v20, -0x1

    aget-object v3, v3, v4

    iget v3, v3, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTop:I

    add-int/lit8 v3, v3, 0x5

    if-le v13, v3, :cond_1d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->softKeys:[Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    add-int/lit8 v4, v20, -0x1

    aget-object v3, v3, v4

    iget v3, v3, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTop:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->softKeys:[Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    add-int/lit8 v5, v20, -0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->height()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x5

    if-ge v13, v3, :cond_1d

    .line 851
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v3}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->setFixed(IIZ)V

    goto :goto_e

    .line 855
    :cond_1d
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v3}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->setFixed(IIZ)V

    goto :goto_e

    .line 791
    .end local v20           #temp:I
    :cond_1e
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_a

    .line 867
    .end local v12           #j:I
    :cond_1f
    const/4 v3, 0x1

    goto/16 :goto_1
.end method

.method public isFixed(II)Z
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 297
    iget-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->grid:[[I

    aget-object v0, v0, p1

    aget v0, v0, p2

    const/high16 v1, 0xf00

    and-int/2addr v0, v1

    const/high16 v1, 0x100

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readGrid(Ljava/lang/String;IZIILcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;I)Z
    .locals 17
    .parameter "language"
    .parameter "mode"
    .parameter "isLandscape"
    .parameter "keyboardWidth"
    .parameter "keyboardHeight"
    .parameter "keyboard"
    .parameter "nKeys"

    .prologue
    .line 445
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "grid_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p4

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p5

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p7

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".db"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 451
    .local v1, FILENAME:Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    invoke-virtual {v14}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v14

    const-string v15, "grids"

    invoke-direct {v6, v14, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 455
    .local v6, gridDirectory:Ljava/io/File;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v6, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 457
    .local v3, file:Ljava/io/File;
    const/4 v10, 0x0

    .line 461
    .local v10, returnvalue:Z
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_1

    .line 463
    const/4 v14, 0x0

    .line 567
    :cond_0
    :goto_0
    return v14

    .line 467
    :cond_1
    const/4 v4, 0x0

    .line 471
    .local v4, fis:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_4

    .line 473
    .end local v4           #fis:Ljava/io/FileInputStream;
    .local v5, fis:Ljava/io/FileInputStream;
    const/4 v11, -0x1

    .local v11, size:I
    const/4 v7, 0x0

    .local v7, i:I
    const/4 v8, 0x0

    .local v8, j:I
    const/4 v13, 0x0

    .line 475
    .local v13, value:I
    mul-int v14, p4, p5

    mul-int/lit8 v14, v14, 0x8

    :try_start_1
    new-array v12, v14, [B

    .line 479
    .local v12, tempbuffer:[B
    :cond_2
    invoke-virtual {v5, v12}, Ljava/io/FileInputStream;->read([B)I

    move-result v11

    .line 481
    const/4 v9, 0x0

    .local v9, k:I
    :goto_1
    if-ge v9, v11, :cond_6

    .line 483
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v14

    invoke-virtual {v14}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v14

    iget v14, v14, Landroid/content/res/Configuration;->orientation:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_4

    const/4 v14, 0x1

    :goto_2
    move/from16 v0, p3

    if-ne v14, v0, :cond_3

    invoke-virtual/range {p6 .. p6}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->getSkbCoreWidth()I

    move-result v14

    move/from16 v0, p4

    if-ne v14, v0, :cond_3

    invoke-virtual/range {p6 .. p6}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->getSkbCoreHeight()I

    move-result v14

    move/from16 v0, p5

    if-ne v14, v0, :cond_3

    invoke-virtual/range {p6 .. p6}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->getKeys()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v14

    array-length v14, v14

    move/from16 v0, p7

    if-ne v14, v0, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->initGridCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v14

    const/4 v15, 0x1

    if-le v14, v15, :cond_5

    .line 491
    :cond_3
    const/4 v14, 0x0

    check-cast v14, [[I

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->grid:[[I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_7

    .line 493
    const/4 v14, 0x0

    .line 551
    if-eqz v5, :cond_0

    .line 555
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 557
    :catch_0
    move-exception v2

    .line 559
    .local v2, e:Ljava/io/IOException;
    sget-object v15, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->TAG:Ljava/lang/String;

    const-string v16, "Error in closing the stream"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 483
    .end local v2           #e:Ljava/io/IOException;
    :cond_4
    const/4 v14, 0x0

    goto :goto_2

    .line 497
    :cond_5
    :try_start_3
    aget-byte v14, v12, v9

    const/16 v15, 0xa

    if-ne v14, v15, :cond_9

    .line 499
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->grid:[[I

    aget-object v14, v14, v7

    aput v13, v14, v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_7

    .line 501
    const/4 v13, 0x0

    .line 503
    add-int/lit8 v9, v9, 0x1

    .line 505
    add-int/lit8 v14, p4, -0x1

    if-ne v7, v14, :cond_8

    .line 507
    add-int/lit8 v8, v8, 0x1

    .line 509
    const/4 v7, 0x0

    .line 515
    :goto_3
    if-lt v9, v11, :cond_9

    .line 525
    :cond_6
    const/4 v14, -0x1

    if-ne v11, v14, :cond_2

    .line 527
    const/4 v10, 0x1

    .line 551
    if-eqz v5, :cond_c

    .line 555
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v4, v5

    .end local v5           #fis:Ljava/io/FileInputStream;
    .end local v7           #i:I
    .end local v8           #j:I
    .end local v9           #k:I
    .end local v11           #size:I
    .end local v12           #tempbuffer:[B
    .end local v13           #value:I
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :cond_7
    :goto_4
    move v14, v10

    .line 567
    goto/16 :goto_0

    .line 513
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    .restart local v7       #i:I
    .restart local v8       #j:I
    .restart local v9       #k:I
    .restart local v11       #size:I
    .restart local v12       #tempbuffer:[B
    .restart local v13       #value:I
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 521
    :cond_9
    mul-int/lit8 v14, v13, 0xa

    :try_start_5
    aget-byte v15, v12, v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_7

    add-int/lit8 v15, v15, -0x30

    add-int v13, v14, v15

    .line 481
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 557
    :catch_1
    move-exception v2

    .line 559
    .restart local v2       #e:Ljava/io/IOException;
    sget-object v14, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->TAG:Ljava/lang/String;

    const-string v15, "Error in closing the stream"

    invoke-static {v14, v15, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v4, v5

    .line 561
    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    goto :goto_4

    .line 529
    .end local v2           #e:Ljava/io/IOException;
    .end local v7           #i:I
    .end local v8           #j:I
    .end local v9           #k:I
    .end local v11           #size:I
    .end local v12           #tempbuffer:[B
    .end local v13           #value:I
    :catch_2
    move-exception v2

    .line 531
    .restart local v2       #e:Ljava/io/IOException;
    :goto_5
    :try_start_6
    sget-object v14, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->TAG:Ljava/lang/String;

    const-string v15, "Error in Function readGrid()"

    invoke-static {v14, v15, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 533
    const/4 v10, 0x0

    .line 551
    if-eqz v4, :cond_7

    .line 555
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_4

    .line 557
    :catch_3
    move-exception v2

    .line 559
    sget-object v14, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->TAG:Ljava/lang/String;

    const-string v15, "Error in closing the stream"

    invoke-static {v14, v15, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 535
    .end local v2           #e:Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 537
    .local v2, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :goto_6
    :try_start_8
    sget-object v14, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->TAG:Ljava/lang/String;

    const-string v15, "!@ArrayIndexOutOfBoundsException: File corrupted, deleting now."

    invoke-static {v14, v15, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 543
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_a

    .line 545
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 547
    :cond_a
    const/4 v10, 0x0

    .line 551
    if-eqz v4, :cond_7

    .line 555
    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_4

    .line 557
    :catch_5
    move-exception v2

    .line 559
    .local v2, e:Ljava/io/IOException;
    sget-object v14, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->TAG:Ljava/lang/String;

    const-string v15, "Error in closing the stream"

    invoke-static {v14, v15, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 551
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v14

    :goto_7
    if-eqz v4, :cond_b

    .line 555
    :try_start_a
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 561
    :cond_b
    :goto_8
    throw v14

    .line 557
    :catch_6
    move-exception v2

    .line 559
    .restart local v2       #e:Ljava/io/IOException;
    sget-object v15, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->TAG:Ljava/lang/String;

    const-string v16, "Error in closing the stream"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 551
    .end local v2           #e:Ljava/io/IOException;
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    .restart local v7       #i:I
    .restart local v8       #j:I
    .restart local v11       #size:I
    .restart local v13       #value:I
    :catchall_1
    move-exception v14

    move-object v4, v5

    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    goto :goto_7

    .line 535
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    :catch_7
    move-exception v2

    move-object v4, v5

    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    goto :goto_6

    .line 529
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    :catch_8
    move-exception v2

    move-object v4, v5

    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    goto :goto_5

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    .restart local v9       #k:I
    .restart local v12       #tempbuffer:[B
    :cond_c
    move-object v4, v5

    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    goto :goto_4
.end method

.method public release(III)V
    .locals 6
    .parameter "prevTouchX"
    .parameter "prevTouchY"
    .parameter "releaseTo"

    .prologue
    .line 1623
    invoke-virtual {p0, p1, p2}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->getKeyIndex(II)I

    move-result v2

    .line 1627
    .local v2, releaseFrom:I
    const/4 v5, -0x1

    if-ne v2, v5, :cond_1

    .line 1759
    :cond_0
    :goto_0
    return-void

    .line 1635
    :cond_1
    move v3, p1

    .local v3, x:I
    move v0, p1

    .local v0, px:I
    move v4, p2

    .local v4, y:I
    move v1, p2

    .line 1643
    .local v1, py:I
    :cond_2
    invoke-virtual {p0, v3, v4}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->getKeyIndex(II)I

    move-result v5

    if-ne v5, v2, :cond_3

    invoke-virtual {p0, v3, v4}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->getBaseIndex(II)I

    move-result v5

    if-ne v5, p3, :cond_3

    .line 1647
    invoke-virtual {p0, v3, v4}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->getBaseIndex(II)I

    move-result v5

    invoke-virtual {p0, v3, v4, v5}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->setKeyIndex(III)V

    .line 1649
    :cond_3
    add-int/lit8 v3, v3, -0x1

    .line 1653
    if-ltz v3, :cond_4

    invoke-virtual {p0, v3, v4}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->isFixed(II)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1659
    :cond_4
    move v3, v0

    .line 1663
    :cond_5
    invoke-virtual {p0, v3, v4}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->getKeyIndex(II)I

    move-result v5

    if-ne v5, v2, :cond_6

    invoke-virtual {p0, v3, v4}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->getBaseIndex(II)I

    move-result v5

    if-ne v5, p3, :cond_6

    .line 1667
    invoke-virtual {p0, v3, v4}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->getBaseIndex(II)I

    move-result v5

    invoke-virtual {p0, v3, v4, v5}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->setKeyIndex(III)V

    .line 1669
    :cond_6
    add-int/lit8 v3, v3, 0x1

    .line 1673
    iget v5, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBWidth:I

    add-int/lit8 v5, v5, -0x1

    if-gt v3, v5, :cond_7

    invoke-virtual {p0, v3, v4}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->isFixed(II)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1679
    :cond_7
    add-int/lit8 v1, v1, -0x1

    .line 1681
    move v3, v0

    .line 1683
    move v4, v1

    .line 1685
    if-ltz v4, :cond_8

    invoke-virtual {p0, v3, v4}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->isFixed(II)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1693
    :cond_8
    move v3, p1

    move v0, p1

    .line 1703
    move v4, p2

    move v1, p2

    .line 1709
    :cond_9
    invoke-virtual {p0, v3, v4}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->getKeyIndex(II)I

    move-result v5

    if-ne v5, v2, :cond_a

    invoke-virtual {p0, v3, v4}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->getBaseIndex(II)I

    move-result v5

    if-ne v5, p3, :cond_a

    .line 1713
    invoke-virtual {p0, v3, v4}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->getBaseIndex(II)I

    move-result v5

    invoke-virtual {p0, v3, v4, v5}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->setKeyIndex(III)V

    .line 1715
    :cond_a
    add-int/lit8 v3, v3, -0x1

    .line 1719
    if-ltz v3, :cond_b

    invoke-virtual {p0, v3, v4}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->isFixed(II)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1725
    :cond_b
    move v3, v0

    .line 1729
    :cond_c
    invoke-virtual {p0, v3, v4}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->getKeyIndex(II)I

    move-result v5

    if-ne v5, v2, :cond_d

    invoke-virtual {p0, v3, v4}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->getBaseIndex(II)I

    move-result v5

    if-ne v5, p3, :cond_d

    .line 1733
    invoke-virtual {p0, v3, v4}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->getBaseIndex(II)I

    move-result v5

    invoke-virtual {p0, v3, v4, v5}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->setKeyIndex(III)V

    .line 1735
    :cond_d
    add-int/lit8 v3, v3, 0x1

    .line 1739
    iget v5, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBWidth:I

    add-int/lit8 v5, v5, -0x1

    if-gt v3, v5, :cond_e

    invoke-virtual {p0, v3, v4}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->isFixed(II)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1745
    :cond_e
    add-int/lit8 v1, v1, 0x1

    .line 1747
    move v3, v0

    .line 1749
    move v4, v1

    .line 1751
    iget v5, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBHeight:I

    add-int/lit8 v5, v5, -0x1

    if-gt v4, v5, :cond_0

    invoke-virtual {p0, v3, v4}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->isFixed(II)Z

    move-result v5

    if-eqz v5, :cond_9

    goto/16 :goto_0
.end method

.method public removeAllDB()Z
    .locals 10

    .prologue
    .line 1767
    const/4 v2, 0x1

    .line 1773
    .local v2, bRetVal:Z
    :try_start_0
    new-instance v5, Ljava/io/File;

    iget-object v8, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    invoke-virtual {v8}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    const-string v9, "grids"

    invoke-direct {v5, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1775
    .local v5, gridDirectory:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1777
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 1781
    .local v0, allFiles:[Ljava/io/File;
    move-object v1, v0

    .local v1, arr$:[Ljava/io/File;
    array-length v7, v1

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_0
    if-ge v6, v7, :cond_0

    aget-object v3, v1, v6

    .line 1783
    .local v3, delAllDir:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1781
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1789
    .end local v0           #allFiles:[Ljava/io/File;
    .end local v1           #arr$:[Ljava/io/File;
    .end local v3           #delAllDir:Ljava/io/File;
    .end local v5           #gridDirectory:Ljava/io/File;
    .end local v6           #i$:I
    .end local v7           #len$:I
    :catch_0
    move-exception v4

    .line 1791
    .local v4, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 1799
    .end local v4           #e:Ljava/lang/Exception;
    :cond_0
    return v2
.end method

.method public restore(II)V
    .locals 7
    .parameter "prevTouchX"
    .parameter "prevTouchY"

    .prologue
    .line 1559
    invoke-virtual {p0, p1, p2}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->getKeyIndex(II)I

    move-result v4

    .line 1563
    .local v4, releaseFrom:I
    const/4 v6, -0x1

    if-ne v4, v6, :cond_1

    .line 1615
    :cond_0
    return-void

    .line 1569
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->getBaseIndex(II)I

    move-result v5

    .line 1571
    .local v5, releaseTo:I
    invoke-virtual {p0, p1, p2}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->isFixed(II)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1577
    if-eq v4, v5, :cond_2

    .line 1579
    invoke-virtual {p0, p1, p2, v5}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->release(III)V

    .line 1587
    :cond_2
    add-int/lit8 v2, p1, 0xa

    .local v2, limiti:I
    add-int/lit8 v3, p2, 0xa

    .line 1589
    .local v3, limitj:I
    add-int/lit8 v1, p2, -0xa

    .local v1, j:I
    :goto_0
    if-gt v1, v3, :cond_0

    .line 1591
    add-int/lit8 v0, p1, -0xa

    .local v0, i:I
    :goto_1
    if-gt v0, v2, :cond_4

    .line 1593
    if-ltz v0, :cond_3

    if-ltz v1, :cond_3

    iget v6, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBWidth:I

    add-int/lit8 v6, v6, -0x1

    if-gt v0, v6, :cond_3

    iget v6, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->mKBHeight:I

    add-int/lit8 v6, v6, -0x1

    if-gt v1, v6, :cond_3

    .line 1597
    invoke-virtual {p0, v0, v1}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->getKeyIndex(II)I

    move-result v6

    if-ne v6, v4, :cond_3

    invoke-virtual {p0, v0, v1}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->getBaseIndex(II)I

    move-result v6

    if-eq v6, v4, :cond_3

    .line 1601
    invoke-virtual {p0, v0, v1}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->getBaseIndex(II)I

    move-result v5

    .line 1603
    invoke-virtual {p0, p1, p2, v5}, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->release(III)V

    .line 1591
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1589
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setBaseIndex(III)V
    .locals 3
    .parameter "x"
    .parameter "y"
    .parameter "value"

    .prologue
    .line 275
    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->grid:[[I

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->grid:[[I

    aget-object v1, v1, p1

    aget v1, v1, p2

    and-int/lit8 v1, v1, 0x0

    const/high16 v2, -0x8000

    or-int/2addr v1, v2

    aput v1, v0, p2

    .line 289
    :goto_0
    return-void

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->grid:[[I

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->grid:[[I

    aget-object v1, v1, p1

    aget v1, v1, p2

    const v2, -0xfff001

    and-int/2addr v1, v2

    aput v1, v0, p2

    .line 283
    iget-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->grid:[[I

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->grid:[[I

    aget-object v1, v1, p1

    aget v1, v1, p2

    shl-int/lit8 v2, p3, 0xc

    or-int/2addr v1, v2

    aput v1, v0, p2

    .line 285
    iget-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->grid:[[I

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->grid:[[I

    aget-object v1, v1, p1

    aget v1, v1, p2

    const v2, 0xfffffff

    and-int/2addr v1, v2

    aput v1, v0, p2

    goto :goto_0
.end method

.method public setFixed(IIZ)V
    .locals 3
    .parameter "x"
    .parameter "y"
    .parameter "value"

    .prologue
    .line 321
    iget-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->grid:[[I

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->grid:[[I

    aget-object v1, v1, p1

    aget v1, v1, p2

    const v2, -0xf000001

    and-int/2addr v1, v2

    aput v1, v0, p2

    .line 323
    iget-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->grid:[[I

    aget-object v1, v0, p1

    iget-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->grid:[[I

    aget-object v0, v0, p1

    aget v2, v0, p2

    if-eqz p3, :cond_0

    const/high16 v0, 0x100

    :goto_0
    or-int/2addr v0, v2

    aput v0, v1, p2

    .line 325
    return-void

    .line 323
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setKeyIndex(III)V
    .locals 3
    .parameter "x"
    .parameter "y"
    .parameter "value"

    .prologue
    .line 243
    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->grid:[[I

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->grid:[[I

    aget-object v1, v1, p1

    aget v1, v1, p2

    and-int/lit8 v1, v1, 0x0

    const/high16 v2, -0x8000

    or-int/2addr v1, v2

    aput v1, v0, p2

    .line 257
    :goto_0
    return-void

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->grid:[[I

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->grid:[[I

    aget-object v1, v1, p1

    aget v1, v1, p2

    and-int/lit16 v1, v1, -0x1000

    aput v1, v0, p2

    .line 251
    iget-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->grid:[[I

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->grid:[[I

    aget-object v1, v1, p1

    aget v1, v1, p2

    or-int/2addr v1, p3

    aput v1, v0, p2

    .line 253
    iget-object v0, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->grid:[[I

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/samsung/inputmethod/touchmodal/TouchModalDataStructure;->grid:[[I

    aget-object v1, v1, p1

    aget v1, v1, p2

    const v2, 0xfffffff

    and-int/2addr v1, v2

    aput v1, v0, p2

    goto :goto_0
.end method
