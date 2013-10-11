.class public final Lcom/android/server/ssrm/AmoledAdjustTimer;
.super Ljava/lang/Object;
.source "AmoledAdjustTimer.java"


# static fields
.field private static final INPUT_PATH:Ljava/lang/String; = "/sys/class/power_supply/battery/temp"

.field private static final OUTPUT_PATH:Ljava/lang/String; = "/sys/class/lcd/panel/temperature"

.field private static final TAG:Ljava/lang/String; = "AmoledAdjustTimer"

.field private static TEMP_TABLE:[I

.field private static currTemp:I

.field static currentTempFile:Ljava/io/File;

.field private static lastValue:I

.field private static mInputPathExist:Z

.field private static mOutputPathExist:Z

.field private static mService:Lcom/android/server/ssrm/AmoledAdjustTimer;

.field private static prevTemp:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0xc8

    const/4 v0, 0x0

    .line 27
    sput-object v2, Lcom/android/server/ssrm/AmoledAdjustTimer;->mService:Lcom/android/server/ssrm/AmoledAdjustTimer;

    .line 35
    sput-boolean v0, Lcom/android/server/ssrm/AmoledAdjustTimer;->mInputPathExist:Z

    .line 36
    sput-boolean v0, Lcom/android/server/ssrm/AmoledAdjustTimer;->mOutputPathExist:Z

    .line 96
    sput-object v2, Lcom/android/server/ssrm/AmoledAdjustTimer;->TEMP_TABLE:[I

    .line 126
    sput v1, Lcom/android/server/ssrm/AmoledAdjustTimer;->prevTemp:I

    .line 127
    sput v1, Lcom/android/server/ssrm/AmoledAdjustTimer;->currTemp:I

    .line 129
    const/16 v0, 0x64

    sput v0, Lcom/android/server/ssrm/AmoledAdjustTimer;->lastValue:I

    .line 183
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/power_supply/battery/temp"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/ssrm/AmoledAdjustTimer;->currentTempFile:Ljava/io/File;

    return-void
.end method

.method private constructor <init>()V
    .locals 12

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/io/File;

    const-string v9, "/sys/class/power_supply/battery/temp"

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 43
    .local v0, a:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v9, "/sys/class/lcd/panel/temperature"

    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 45
    .local v1, b:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v9

    if-eqz v9, :cond_2

    move v9, v10

    :goto_0
    sput-boolean v9, Lcom/android/server/ssrm/AmoledAdjustTimer;->mInputPathExist:Z

    .line 46
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v9

    if-eqz v9, :cond_3

    :goto_1
    sput-boolean v10, Lcom/android/server/ssrm/AmoledAdjustTimer;->mOutputPathExist:Z

    .line 48
    sget-boolean v9, Lcom/android/server/ssrm/AmoledAdjustTimer;->mInputPathExist:Z

    if-eqz v9, :cond_0

    sget-boolean v9, Lcom/android/server/ssrm/AmoledAdjustTimer;->mOutputPathExist:Z

    if-nez v9, :cond_4

    .line 49
    :cond_0
    const-string v9, "AmoledAdjustTimer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mInputPathExist = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-boolean v11, Lcom/android/server/ssrm/AmoledAdjustTimer;->mInputPathExist:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    const-string v9, "AmoledAdjustTimer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mOutputPathExist = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-boolean v11, Lcom/android/server/ssrm/AmoledAdjustTimer;->mOutputPathExist:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_1
    :goto_2
    return-void

    :cond_2
    move v9, v11

    .line 45
    goto :goto_0

    :cond_3
    move v10, v11

    .line 46
    goto :goto_1

    .line 55
    :cond_4
    const/4 v4, 0x0

    .line 56
    .local v4, in:Ljava/io/BufferedReader;
    const/4 v7, 0x0

    .line 58
    .local v7, str:Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    const-string v10, "/sys/class/lcd/panel/temperature"

    invoke-direct {v9, v10}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 59
    .end local v4           #in:Ljava/io/BufferedReader;
    .local v5, in:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .line 60
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 66
    if-eqz v5, :cond_5

    .line 68
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    :cond_5
    :goto_3
    move-object v4, v5

    .line 75
    .end local v5           #in:Ljava/io/BufferedReader;
    .restart local v4       #in:Ljava/io/BufferedReader;
    :cond_6
    :goto_4
    if-eqz v7, :cond_7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-gtz v9, :cond_9

    .line 76
    :cond_7
    const-string v9, "AmoledAdjustTimer"

    const-string v10, "failed to read /sys/class/lcd/panel/temperature"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    sput-boolean v11, Lcom/android/server/ssrm/AmoledAdjustTimer;->mOutputPathExist:Z

    goto :goto_2

    .line 61
    :catch_0
    move-exception v2

    .line 62
    .local v2, e:Ljava/io/FileNotFoundException;
    :goto_5
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 66
    if-eqz v4, :cond_6

    .line 68
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    .line 69
    :catch_1
    move-exception v2

    .line 70
    .local v2, e:Ljava/io/IOException;
    :goto_6
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 63
    .end local v2           #e:Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 64
    .restart local v2       #e:Ljava/io/IOException;
    :goto_7
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 66
    if-eqz v4, :cond_6

    .line 68
    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_4

    .line 69
    :catch_3
    move-exception v2

    goto :goto_6

    .line 66
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v9

    :goto_8
    if-eqz v4, :cond_8

    .line 68
    :try_start_7
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 66
    :cond_8
    :goto_9
    throw v9

    .line 82
    :cond_9
    const/4 v6, 0x0

    .line 83
    .local v6, len:I
    new-instance v8, Ljava/util/StringTokenizer;

    const-string v9, ", "

    invoke-direct {v8, v7, v9}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .local v8, tokens:Ljava/util/StringTokenizer;
    :goto_a
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 85
    add-int/lit8 v6, v6, 0x1

    .line 86
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    goto :goto_a

    .line 88
    :cond_a
    new-array v9, v6, [I

    sput-object v9, Lcom/android/server/ssrm/AmoledAdjustTimer;->TEMP_TABLE:[I

    .line 89
    new-instance v8, Ljava/util/StringTokenizer;

    .end local v8           #tokens:Ljava/util/StringTokenizer;
    const-string v9, ", "

    invoke-direct {v8, v7, v9}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .restart local v8       #tokens:Ljava/util/StringTokenizer;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_b
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 91
    sget-object v9, Lcom/android/server/ssrm/AmoledAdjustTimer;->TEMP_TABLE:[I

    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    aput v10, v9, v3

    .line 92
    const-string v9, "AmoledAdjustTimer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "TEMP_TABLE["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/android/server/ssrm/AmoledAdjustTimer;->TEMP_TABLE:[I

    aget v11, v11, v3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 69
    .end local v3           #i:I
    .end local v6           #len:I
    .end local v8           #tokens:Ljava/util/StringTokenizer;
    :catch_4
    move-exception v2

    .line 70
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_9

    .line 69
    .end local v2           #e:Ljava/io/IOException;
    .end local v4           #in:Ljava/io/BufferedReader;
    .restart local v5       #in:Ljava/io/BufferedReader;
    :catch_5
    move-exception v2

    .line 70
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_3

    .line 66
    .end local v2           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v9

    move-object v4, v5

    .end local v5           #in:Ljava/io/BufferedReader;
    .restart local v4       #in:Ljava/io/BufferedReader;
    goto :goto_8

    .line 63
    .end local v4           #in:Ljava/io/BufferedReader;
    .restart local v5       #in:Ljava/io/BufferedReader;
    :catch_6
    move-exception v2

    move-object v4, v5

    .end local v5           #in:Ljava/io/BufferedReader;
    .restart local v4       #in:Ljava/io/BufferedReader;
    goto :goto_7

    .line 61
    .end local v4           #in:Ljava/io/BufferedReader;
    .restart local v5       #in:Ljava/io/BufferedReader;
    :catch_7
    move-exception v2

    move-object v4, v5

    .end local v5           #in:Ljava/io/BufferedReader;
    .restart local v4       #in:Ljava/io/BufferedReader;
    goto/16 :goto_5
.end method

.method private getCurrentTemp()I
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 185
    sget-object v5, Lcom/android/server/ssrm/AmoledAdjustTimer;->currentTempFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 208
    :cond_0
    :goto_0
    return v4

    .line 189
    :cond_1
    const/4 v0, 0x0

    .line 192
    .local v0, buf:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    const-string v6, "/sys/class/power_supply/battery/temp"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 193
    .end local v0           #buf:Ljava/io/BufferedReader;
    .local v1, buf:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 194
    .local v3, str:Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 195
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    move-result v4

    .line 201
    if-eqz v1, :cond_0

    .line 202
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 204
    :catch_0
    move-exception v2

    .line 205
    .end local v1           #buf:Ljava/io/BufferedReader;
    .end local v3           #str:Ljava/lang/String;
    .local v2, e:Ljava/io/IOException;
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 201
    .end local v2           #e:Ljava/io/IOException;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    .restart local v3       #str:Ljava/lang/String;
    :cond_2
    if-eqz v1, :cond_3

    .line 202
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    :cond_3
    :goto_2
    move-object v0, v1

    .line 207
    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    goto :goto_0

    .line 197
    .end local v3           #str:Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 198
    .restart local v2       #e:Ljava/io/IOException;
    :goto_3
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 201
    if-eqz v0, :cond_0

    .line 202
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 204
    :catch_2
    move-exception v2

    goto :goto_1

    .line 200
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 201
    :goto_4
    if-eqz v0, :cond_4

    .line 202
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 200
    :cond_4
    :goto_5
    throw v4

    .line 204
    :catch_3
    move-exception v2

    .line 205
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    .line 204
    .end local v0           #buf:Ljava/io/BufferedReader;
    .end local v2           #e:Ljava/io/IOException;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    .restart local v3       #str:Ljava/lang/String;
    :catch_4
    move-exception v2

    .line 205
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 200
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #str:Ljava/lang/String;
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    goto :goto_4

    .line 197
    .end local v0           #buf:Ljava/io/BufferedReader;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    :catch_5
    move-exception v2

    move-object v0, v1

    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    goto :goto_3
.end method

.method public static getInstance()Lcom/android/server/ssrm/AmoledAdjustTimer;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/android/server/ssrm/AmoledAdjustTimer;->mService:Lcom/android/server/ssrm/AmoledAdjustTimer;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/android/server/ssrm/AmoledAdjustTimer;

    invoke-direct {v0}, Lcom/android/server/ssrm/AmoledAdjustTimer;-><init>()V

    sput-object v0, Lcom/android/server/ssrm/AmoledAdjustTimer;->mService:Lcom/android/server/ssrm/AmoledAdjustTimer;

    .line 32
    :cond_0
    sget-object v0, Lcom/android/server/ssrm/AmoledAdjustTimer;->mService:Lcom/android/server/ssrm/AmoledAdjustTimer;

    return-object v0
.end method

.method private static writeToSysfs(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "value"
    .parameter "path"

    .prologue
    .line 164
    const/4 v1, 0x0

    .line 166
    .local v1, fos:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .local v2, fos:Ljava/io/FileOutputStream;
    :try_start_1
    const-string v3, "UTF-8"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 168
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 172
    if-eqz v2, :cond_0

    .line 174
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_0
    :goto_0
    move-object v1, v2

    .line 181
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    :cond_1
    :goto_1
    return-void

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, e:Ljava/io/IOException;
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 172
    if-eqz v1, :cond_1

    .line 174
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 175
    :catch_1
    move-exception v0

    .line 177
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 172
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_3
    if-eqz v1, :cond_2

    .line 174
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 172
    :cond_2
    :goto_4
    throw v3

    .line 175
    :catch_2
    move-exception v0

    .line 177
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 175
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v0

    .line 177
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 172
    .end local v0           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 169
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_2
.end method


# virtual methods
.method getStepByTemp(I)I
    .locals 2
    .parameter "temp"

    .prologue
    .line 100
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/android/server/ssrm/AmoledAdjustTimer;->TEMP_TABLE:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 101
    sget-object v1, Lcom/android/server/ssrm/AmoledAdjustTimer;->TEMP_TABLE:[I

    aget v1, v1, v0

    mul-int/lit8 v1, v1, 0xa

    if-ge p1, v1, :cond_1

    .line 105
    :cond_0
    return v0

    .line 100
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method getStepByTemp2(I)I
    .locals 2
    .parameter "temp"

    .prologue
    .line 110
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/android/server/ssrm/AmoledAdjustTimer;->TEMP_TABLE:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 111
    sget-object v1, Lcom/android/server/ssrm/AmoledAdjustTimer;->TEMP_TABLE:[I

    aget v1, v1, v0

    mul-int/lit8 v1, v1, 0xa

    if-gt p1, v1, :cond_1

    .line 115
    :cond_0
    return v0

    .line 110
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method getTempByStep(I)I
    .locals 1
    .parameter "step"

    .prologue
    .line 119
    sget-object v0, Lcom/android/server/ssrm/AmoledAdjustTimer;->TEMP_TABLE:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    .line 120
    const/4 v0, 0x0

    .line 122
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/android/server/ssrm/AmoledAdjustTimer;->TEMP_TABLE:[I

    aget v0, v0, p1

    goto :goto_0
.end method

.method public update()V
    .locals 6

    .prologue
    .line 133
    sget-boolean v3, Lcom/android/server/ssrm/AmoledAdjustTimer;->mInputPathExist:Z

    if-eqz v3, :cond_0

    sget-boolean v3, Lcom/android/server/ssrm/AmoledAdjustTimer;->mOutputPathExist:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/ssrm/AmoledAdjustTimer;->TEMP_TABLE:[I

    if-nez v3, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    invoke-direct {p0}, Lcom/android/server/ssrm/AmoledAdjustTimer;->getCurrentTemp()I

    move-result v3

    sput v3, Lcom/android/server/ssrm/AmoledAdjustTimer;->currTemp:I

    .line 139
    sget v3, Lcom/android/server/ssrm/AmoledAdjustTimer;->prevTemp:I

    invoke-virtual {p0, v3}, Lcom/android/server/ssrm/AmoledAdjustTimer;->getStepByTemp(I)I

    move-result v2

    .line 140
    .local v2, prevStep:I
    sget v3, Lcom/android/server/ssrm/AmoledAdjustTimer;->currTemp:I

    invoke-virtual {p0, v3}, Lcom/android/server/ssrm/AmoledAdjustTimer;->getStepByTemp(I)I

    move-result v0

    .line 142
    .local v0, currStep:I
    const-string v3, "AmoledAdjustTimer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "prevTemp = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/server/ssrm/AmoledAdjustTimer;->prevTemp:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", currTemp = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/server/ssrm/AmoledAdjustTimer;->currTemp:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", prevStep = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", currStep = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    if-le v2, v0, :cond_4

    .line 145
    sget v3, Lcom/android/server/ssrm/AmoledAdjustTimer;->currTemp:I

    invoke-virtual {p0, v3}, Lcom/android/server/ssrm/AmoledAdjustTimer;->getStepByTemp2(I)I

    move-result v0

    .line 147
    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/AmoledAdjustTimer;->getTempByStep(I)I

    move-result v1

    .line 148
    .local v1, newValue:I
    sget v3, Lcom/android/server/ssrm/AmoledAdjustTimer;->lastValue:I

    if-eq v3, v1, :cond_2

    .line 149
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/sys/class/lcd/panel/temperature"

    invoke-static {v3, v4}, Lcom/android/server/ssrm/AmoledAdjustTimer;->writeToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :cond_2
    sput v1, Lcom/android/server/ssrm/AmoledAdjustTimer;->lastValue:I

    .line 160
    .end local v1           #newValue:I
    :cond_3
    :goto_1
    sget v3, Lcom/android/server/ssrm/AmoledAdjustTimer;->currTemp:I

    sput v3, Lcom/android/server/ssrm/AmoledAdjustTimer;->prevTemp:I

    goto :goto_0

    .line 152
    :cond_4
    if-ge v2, v0, :cond_3

    .line 153
    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v3}, Lcom/android/server/ssrm/AmoledAdjustTimer;->getTempByStep(I)I

    move-result v1

    .line 154
    .restart local v1       #newValue:I
    sget v3, Lcom/android/server/ssrm/AmoledAdjustTimer;->lastValue:I

    if-eq v3, v1, :cond_5

    .line 155
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/sys/class/lcd/panel/temperature"

    invoke-static {v3, v4}, Lcom/android/server/ssrm/AmoledAdjustTimer;->writeToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :cond_5
    sput v1, Lcom/android/server/ssrm/AmoledAdjustTimer;->lastValue:I

    goto :goto_1
.end method
