.class public Lcom/sec/android/app/camera/SoundShotConverter;
.super Ljava/lang/Object;
.source "SoundShotConverter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SoundShotConverter"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertToMP4(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 12
    .parameter "inFilePath"
    .parameter "context"

    .prologue
    .line 19
    new-instance v4, Lcom/samsung/app/share/via/external/NativeAccess;

    invoke-direct {v4}, Lcom/samsung/app/share/via/external/NativeAccess;-><init>()V

    .line 20
    .local v4, nativeAccess:Lcom/samsung/app/share/via/external/NativeAccess;
    new-instance v7, Lcom/samsung/app/share/via/external/ShareviaObj;

    invoke-direct {v7}, Lcom/samsung/app/share/via/external/ShareviaObj;-><init>()V

    .line 22
    .local v7, shareviaObj:Lcom/samsung/app/share/via/external/ShareviaObj;
    invoke-static {p0}, Lcom/sec/android/app/camera/SoundShotConverter;->getOutputFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 23
    .local v5, outFilePath:Ljava/lang/String;
    invoke-static {v5}, Lcom/sec/android/app/camera/SoundShotConverter;->isExist(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 24
    const-string v9, "SoundShotConverter"

    const-string v10, "Output file already exists."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    const/4 v5, 0x0

    .line 63
    .end local v5           #outFilePath:Ljava/lang/String;
    :goto_0
    return-object v5

    .line 29
    .restart local v5       #outFilePath:Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    .line 30
    .local v1, fis:Ljava/io/FileInputStream;
    const/4 v8, 0x0

    .line 31
    .local v8, start_offset:I
    const/4 v3, 0x0

    .line 33
    .local v3, length:I
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 34
    .end local v1           #fis:Ljava/io/FileInputStream;
    .local v2, fis:Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {p0}, Lcom/quramsoft/qdio/QdioJNI;->checkAudioInJPEG(Ljava/lang/String;)Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;

    move-result-object v6

    .line 36
    .local v6, qdioData:Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;
    if-eqz v6, :cond_1

    .line 37
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;->getStartOffset(I)I

    move-result v8

    .line 38
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;->getLength(I)I

    move-result v3

    .line 39
    const-string v9, "SoundShotConverter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "offset/len = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 46
    :cond_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .line 52
    .end local v2           #fis:Ljava/io/FileInputStream;
    .end local v6           #qdioData:Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    :goto_1
    invoke-virtual {v7, p0}, Lcom/samsung/app/share/via/external/ShareviaObj;->setShareViaInputFilename(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v7, v5}, Lcom/samsung/app/share/via/external/ShareviaObj;->setShareViaOutputFilename(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/samsung/app/share/via/external/ShareviaObj;->setShareViaAssetmngr(Landroid/content/res/AssetManager;)V

    .line 55
    const-string v9, "gallery_detail_ic_sound_scene.png"

    invoke-virtual {v7, v9}, Lcom/samsung/app/share/via/external/ShareviaObj;->setShareViaIconFileName(Ljava/lang/String;)V

    .line 56
    const/4 v9, 0x5

    invoke-virtual {v7, v9}, Lcom/samsung/app/share/via/external/ShareviaObj;->setShareViaOutputFileResolution(I)V

    .line 57
    invoke-virtual {v7, v8}, Lcom/samsung/app/share/via/external/ShareviaObj;->setShareViaAudioOffset(I)V

    .line 58
    invoke-virtual {v7, v3}, Lcom/samsung/app/share/via/external/ShareviaObj;->setShareViaAudioLength(I)V

    .line 59
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Lcom/samsung/app/share/via/external/ShareviaObj;->setShareViaTranscodeMode(I)V

    .line 61
    invoke-virtual {v4, v7}, Lcom/samsung/app/share/via/external/NativeAccess;->startProcessing(Lcom/samsung/app/share/via/external/ShareviaObj;)I

    goto :goto_0

    .line 47
    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    .restart local v6       #qdioData:Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;
    :catch_0
    move-exception v9

    move-object v1, v2

    .line 50
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto :goto_1

    .line 42
    .end local v6           #qdioData:Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;
    :catch_1
    move-exception v0

    .line 43
    .local v0, e:Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 46
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 47
    :catch_2
    move-exception v9

    goto :goto_1

    .line 45
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    .line 46
    :goto_3
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    .line 49
    :goto_4
    throw v9

    .line 47
    :catch_3
    move-exception v10

    goto :goto_4

    .line 45
    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v9

    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto :goto_3

    .line 42
    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method private static getOutputFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "originalPath"

    .prologue
    .line 71
    const-string v1, ".mp4"

    .line 72
    .local v1, newExtension:Ljava/lang/String;
    const-string v2, "."

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 73
    .local v0, lastDot:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 76
    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private static isExist(Ljava/lang/String;)Z
    .locals 1
    .parameter "filePath"

    .prologue
    .line 67
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method
