.class public Lcom/quramsoft/qdio/QdioJNI;
.super Ljava/lang/Object;
.source "QdioJNI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 17
    :try_start_0
    const-string v1, "Qdio"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .local v0, e:Ljava/lang/Exception;
    :goto_0
    return-void

    .line 19
    .end local v0           #e:Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 21
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "QURAMSOFT"

    const-string v2, "Qdio load fail"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native AddSoundInQdioFile(Ljava/lang/String;[BI)I
.end method

.method private static native ParseQdioFile(Ljava/lang/String;)[I
.end method

.method public static checkAudioInJPEG(Ljava/lang/String;)Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;
    .locals 7
    .parameter "filename"

    .prologue
    const/4 v3, 0x0

    .line 55
    const/4 v2, 0x0

    .local v2, qjData:Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;
    move-object v0, v3

    .line 56
    check-cast v0, [I

    .line 58
    .local v0, getParsedData:[I
    invoke-static {p0}, Lcom/quramsoft/qdio/QdioJNI;->checkFileString(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 60
    const-string v4, "QURAM"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "checkAudioInJPEG input parameter is null : filename = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_0
    :goto_0
    return-object v3

    .line 64
    :cond_1
    invoke-static {p0}, Lcom/quramsoft/qdio/QdioJNI;->ParseQdioFile(Ljava/lang/String;)[I

    move-result-object v0

    .line 65
    if-eqz v0, :cond_0

    .line 70
    array-length v4, v0

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_2

    .line 72
    const-string v4, "QURAM"

    const-string v5, "Some Sound Data is broken"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 76
    :cond_2
    new-instance v2, Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;

    .end local v2           #qjData:Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;
    invoke-direct {v2}, Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;-><init>()V

    .line 78
    .restart local v2       #qjData:Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v4, v0

    div-int/lit8 v4, v4, 0x2

    if-lt v1, v4, :cond_3

    move-object v3, v2

    .line 91
    goto :goto_0

    .line 80
    :cond_3
    aget v4, v0, v1

    if-lez v4, :cond_4

    add-int/lit8 v4, v1, 0x1

    aget v4, v0, v4

    if-gtz v4, :cond_5

    .line 82
    :cond_4
    const-string v4, "QURAM"

    const-string v5, "Some Sound Data stream is broken"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 85
    :cond_5
    #getter for: Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;->startOffset:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;->access$0(Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;)Ljava/util/ArrayList;

    move-result-object v4

    aget v5, v0, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    #getter for: Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;->endOffset:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;->access$1(Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;)Ljava/util/ArrayList;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    aget v5, v0, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    #getter for: Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;->audio_count:I
    invoke-static {v2}, Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;->access$2(Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    #setter for: Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;->audio_count:I
    invoke-static {v2, v4}, Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;->access$3(Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;I)V

    .line 88
    #setter for: Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;->filename:Ljava/lang/String;
    invoke-static {v2, p0}, Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;->access$4(Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;Ljava/lang/String;)V

    .line 78
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static checkFileString(Ljava/lang/String;)Z
    .locals 1
    .parameter "filename"

    .prologue
    .line 28
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 30
    :cond_0
    const/4 v0, 0x0

    .line 32
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static copyAdioInJPEGtoPNG(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "srcFilename"
    .parameter "dstFilename"

    .prologue
    .line 151
    invoke-static {p0}, Lcom/quramsoft/qdio/QdioJNI;->checkFileString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/quramsoft/qdio/QdioJNI;->checkFileString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 152
    :cond_0
    const/4 v0, 0x0

    .line 153
    :goto_0
    return v0

    :cond_1
    invoke-static {p0, p1}, Lcom/quramsoft/qdio/QdioJNI;->copyAudioData(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private static native copyAudioData(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static getAudioStreamBuffer(Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;I)[B
    .locals 9
    .parameter "qdioJpegData"
    .parameter "index"

    .prologue
    const/4 v5, 0x0

    .line 96
    move-object v3, v5

    check-cast v3, [B

    .line 98
    .local v3, ret:[B
    if-nez p0, :cond_0

    .line 100
    const-string v6, "QURAM"

    const-string v7, "qdioJpegData is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :goto_0
    return-object v5

    .line 104
    :cond_0
    #getter for: Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;->audio_count:I
    invoke-static {p0}, Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;->access$2(Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;)I

    move-result v6

    if-gt v6, p1, :cond_1

    .line 106
    const-string v6, "QURAM"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "invalid index. file : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;->getFileName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    #getter for: Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;->audio_count:I
    invoke-static {p0}, Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;->access$2(Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " audio streams but index = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 112
    :cond_1
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 114
    .local v2, fis:Ljava/io/FileInputStream;
    invoke-virtual {p0, p1}, Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;->getStartOffset(I)I

    move-result v4

    .line 115
    .local v4, startOffset:I
    invoke-virtual {p0, p1}, Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;->getLength(I)I

    move-result v6

    add-int v1, v4, v6

    .line 116
    .local v1, endOffset:I
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v6

    if-ge v6, v1, :cond_2

    .line 118
    const-string v6, "QURAM"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "fis.available is smaller then audio stream end : fileLen = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", audio strema end on "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 130
    .end local v1           #endOffset:I
    .end local v2           #fis:Ljava/io/FileInputStream;
    .end local v4           #startOffset:I
    :catch_0
    move-exception v0

    .line 132
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .end local v0           #e:Ljava/lang/Exception;
    :goto_1
    move-object v5, v3

    .line 135
    goto :goto_0

    .line 122
    .restart local v1       #endOffset:I
    .restart local v2       #fis:Ljava/io/FileInputStream;
    .restart local v4       #startOffset:I
    :cond_2
    :try_start_1
    const-string v5, "QURAM"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "fis.avaliable = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const-string v5, "QURAM"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "s = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    sub-int v5, v1, v4

    new-array v3, v5, [B

    .line 125
    int-to-long v5, v4

    invoke-virtual {v2, v5, v6}, Ljava/io/FileInputStream;->skip(J)J

    .line 126
    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    .line 128
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private static native getNativeVersion()I
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 211
    invoke-static {}, Lcom/quramsoft/qdio/QdioJNI;->getNativeVersion()I

    move-result v0

    .line 212
    .local v0, native_version:I
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "1.01f_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static isJPEG(Ljava/lang/String;)I
    .locals 4
    .parameter "filename"

    .prologue
    const/4 v0, -0x1

    .line 140
    invoke-static {p0}, Lcom/quramsoft/qdio/QdioJNI;->checkFileString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 142
    const-string v1, "QURAM"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isJPEG input parameter is null : filename = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Lcom/quramsoft/qdio/QdioJNI;->isQdioFile(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static native isQdioFile(Ljava/lang/String;)I
.end method

.method public static saveAudioJPEG(Ljava/lang/String;[B)I
    .locals 3
    .parameter "filename"
    .parameter "audioStream"

    .prologue
    .line 37
    invoke-static {p0}, Lcom/quramsoft/qdio/QdioJNI;->checkFileString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_2

    .line 39
    :cond_0
    const-string v0, "QURAM"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "saveAudioJPEG input parameter is null : filename = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    if-eqz p1, :cond_1

    .line 42
    const-string v0, "QURAM"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "saveAudioJPEG input parameter is null : audioStream = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", audioStream.length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :goto_0
    const/4 v0, 0x0

    .line 50
    :goto_1
    return v0

    .line 46
    :cond_1
    const-string v0, "QURAM"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "saveAudioJPEG input prameter is null : audioStream = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 50
    :cond_2
    array-length v0, p1

    invoke-static {p0, p1, v0}, Lcom/quramsoft/qdio/QdioJNI;->AddSoundInQdioFile(Ljava/lang/String;[BI)I

    move-result v0

    goto :goto_1
.end method
