.class public final Lcom/android/server/ssrm/TouchBusBooster;
.super Ljava/lang/Object;
.source "TouchBusBooster.java"


# static fields
.field private static final BASE_MODEL:Ljava/lang/String; = "ja"

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final JA_BUS_INT_DVFS_PATH:Ljava/lang/String; = "/sys/class/devfreq/exynos5-busfreq-int/en_monitoring"

.field private static final JA_BUS_MIF_DVFS_PATH:Ljava/lang/String; = "/sys/class/devfreq/exynos5-busfreq-mif/en_monitoring"

.field private static final PROCESS_STATE_BACKGROUND:Ljava/lang/String; = "BACKGROUND"

.field private static final PROCESS_STATE_FOREGROUND:Ljava/lang/String; = "FOREGROUND"

.field private static TAG:Ljava/lang/String; = null

.field private static final TSP_PATH:Ljava/lang/String; = "/sys/class/sec/tsp/cmd"

.field private static final TSP_RESULT_PATH:Ljava/lang/String; = "/sys/class/sec/tsp/cmd_result"

.field private static mBusPowerSavingPackages:[Ljava/lang/String;

.field private static mInstance:Lcom/android/server/ssrm/TouchBusBooster;

.field private static mJaBusIntDvfsPath:Z

.field private static mJaBusMifDvfsPath:Z

.field private static mSIPVisible:Z

.field private static mTouchBusPowerSaving:Z

.field private static mTouchBusPowerSavingPackages:[Ljava/lang/String;

.field private static mTspPathExist:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 55
    const-string v3, "TouchBusBooster"

    sput-object v3, Lcom/android/server/ssrm/TouchBusBooster;->TAG:Ljava/lang/String;

    .line 57
    const-string v3, "eng"

    sget-object v6, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    sput-boolean v3, Lcom/android/server/ssrm/TouchBusBooster;->DEBUG:Z

    .line 59
    const/4 v3, 0x0

    sput-object v3, Lcom/android/server/ssrm/TouchBusBooster;->mInstance:Lcom/android/server/ssrm/TouchBusBooster;

    .line 67
    sput-boolean v5, Lcom/android/server/ssrm/TouchBusBooster;->mSIPVisible:Z

    .line 163
    sput-boolean v5, Lcom/android/server/ssrm/TouchBusBooster;->mTouchBusPowerSaving:Z

    .line 166
    new-array v3, v7, [Ljava/lang/String;

    const-string v6, "com.android.chrome"

    aput-object v6, v3, v5

    const-string v6, "com.sec.android.app.sbrowser"

    aput-object v6, v3, v4

    sput-object v3, Lcom/android/server/ssrm/TouchBusBooster;->mTouchBusPowerSavingPackages:[Ljava/lang/String;

    .line 171
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string v6, "com.facebook.katana"

    aput-object v6, v3, v5

    const-string v6, "com.google.android.talk"

    aput-object v6, v3, v4

    const-string v6, "com.kakao.talk"

    aput-object v6, v3, v7

    const/4 v6, 0x3

    const-string v7, "com.whatsapp"

    aput-object v7, v3, v6

    sput-object v3, Lcom/android/server/ssrm/TouchBusBooster;->mBusPowerSavingPackages:[Ljava/lang/String;

    .line 182
    sput-boolean v5, Lcom/android/server/ssrm/TouchBusBooster;->mTspPathExist:Z

    .line 183
    sput-boolean v5, Lcom/android/server/ssrm/TouchBusBooster;->mJaBusMifDvfsPath:Z

    .line 184
    sput-boolean v5, Lcom/android/server/ssrm/TouchBusBooster;->mJaBusIntDvfsPath:Z

    .line 187
    new-instance v0, Ljava/io/File;

    const-string v3, "/sys/class/sec/tsp/cmd"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 188
    .local v0, a:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v3, "/sys/class/devfreq/exynos5-busfreq-mif/en_monitoring"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 189
    .local v1, b:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/class/devfreq/exynos5-busfreq-int/en_monitoring"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 190
    .local v2, c:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    :goto_0
    sput-boolean v3, Lcom/android/server/ssrm/TouchBusBooster;->mTspPathExist:Z

    .line 191
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    :goto_1
    sput-boolean v3, Lcom/android/server/ssrm/TouchBusBooster;->mJaBusMifDvfsPath:Z

    .line 192
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_2
    sput-boolean v4, Lcom/android/server/ssrm/TouchBusBooster;->mJaBusIntDvfsPath:Z

    .line 193
    sget-object v3, Lcom/android/server/ssrm/TouchBusBooster;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "static:: mTspPathExist = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/server/ssrm/TouchBusBooster;->mTspPathExist:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/ssrm/TouchBusBooster;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    sget-object v3, Lcom/android/server/ssrm/TouchBusBooster;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "static:: mJaBusMifDvfsPath = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/server/ssrm/TouchBusBooster;->mJaBusMifDvfsPath:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/ssrm/TouchBusBooster;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    sget-object v3, Lcom/android/server/ssrm/TouchBusBooster;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "static:: mJaBusIntDvfsPath = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/server/ssrm/TouchBusBooster;->mJaBusIntDvfsPath:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/ssrm/TouchBusBooster;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    return-void

    :cond_0
    move v3, v5

    .line 190
    goto :goto_0

    :cond_1
    move v3, v5

    .line 191
    goto :goto_1

    :cond_2
    move v4, v5

    .line 192
    goto :goto_2
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/ssrm/TouchBusBooster;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/android/server/ssrm/TouchBusBooster;->mInstance:Lcom/android/server/ssrm/TouchBusBooster;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/android/server/ssrm/TouchBusBooster;

    invoke-direct {v0}, Lcom/android/server/ssrm/TouchBusBooster;-><init>()V

    sput-object v0, Lcom/android/server/ssrm/TouchBusBooster;->mInstance:Lcom/android/server/ssrm/TouchBusBooster;

    .line 64
    :cond_0
    sget-object v0, Lcom/android/server/ssrm/TouchBusBooster;->mInstance:Lcom/android/server/ssrm/TouchBusBooster;

    return-object v0
.end method

.method public static logOnAll(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 219
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    return-void
.end method

.method public static logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 223
    sget-boolean v0, Lcom/android/server/ssrm/TouchBusBooster;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 224
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_0
    return-void
.end method

.method public static readLineFromSysfs(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "path"

    .prologue
    .line 229
    const/4 v3, 0x0

    .line 230
    .local v3, strTemp:Ljava/lang/String;
    const/4 v0, 0x0

    .line 232
    .local v0, buf:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    .end local v0           #buf:Ljava/io/BufferedReader;
    .local v1, buf:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 234
    sget-object v4, Lcom/android/server/ssrm/TouchBusBooster;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readLineFromSysfs:: path = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", result = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/ssrm/TouchBusBooster;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 239
    if-eqz v1, :cond_0

    .line 240
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_0
    :goto_0
    move-object v0, v1

    .line 246
    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    :cond_1
    :goto_1
    return-object v3

    .line 235
    :catch_0
    move-exception v2

    .line 236
    .local v2, e:Ljava/io/IOException;
    :goto_2
    :try_start_3
    sget-object v4, Lcom/android/server/ssrm/TouchBusBooster;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readLineFromSysfs:: e = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/ssrm/TouchBusBooster;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 239
    if-eqz v0, :cond_1

    .line 240
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 242
    :catch_1
    move-exception v2

    .line 243
    sget-object v4, Lcom/android/server/ssrm/TouchBusBooster;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readLineFromSysfs:: e = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/ssrm/TouchBusBooster;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 238
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 239
    :goto_3
    if-eqz v0, :cond_2

    .line 240
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 238
    :cond_2
    :goto_4
    throw v4

    .line 242
    :catch_2
    move-exception v2

    .line 243
    .restart local v2       #e:Ljava/io/IOException;
    sget-object v5, Lcom/android/server/ssrm/TouchBusBooster;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readLineFromSysfs:: e = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/ssrm/TouchBusBooster;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 242
    .end local v0           #buf:Ljava/io/BufferedReader;
    .end local v2           #e:Ljava/io/IOException;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    :catch_3
    move-exception v2

    .line 243
    .restart local v2       #e:Ljava/io/IOException;
    sget-object v4, Lcom/android/server/ssrm/TouchBusBooster;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readLineFromSysfs:: e = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/ssrm/TouchBusBooster;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 238
    .end local v2           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    goto :goto_3

    .line 235
    .end local v0           #buf:Ljava/io/BufferedReader;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    :catch_4
    move-exception v2

    move-object v0, v1

    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    goto/16 :goto_2
.end method

.method protected static writeToSysfs(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "value"
    .parameter "path"

    .prologue
    .line 199
    const/4 v1, 0x0

    .line 201
    .local v1, fos:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .local v2, fos:Ljava/io/FileOutputStream;
    :try_start_1
    const-string v3, "UTF-8"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 203
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 207
    if-eqz v2, :cond_0

    .line 209
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_0
    :goto_0
    move-object v1, v2

    .line 216
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    :cond_1
    :goto_1
    return-void

    .line 204
    :catch_0
    move-exception v0

    .line 205
    .local v0, e:Ljava/io/IOException;
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 207
    if-eqz v1, :cond_1

    .line 209
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 210
    :catch_1
    move-exception v0

    .line 212
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 207
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_3
    if-eqz v1, :cond_2

    .line 209
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 207
    :cond_2
    :goto_4
    throw v3

    .line 210
    :catch_2
    move-exception v0

    .line 212
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 210
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v0

    .line 212
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 207
    .end local v0           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 204
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
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 86
    const-string v10, "PACKAGE"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 87
    .local v7, packageName:Ljava/lang/String;
    const-string v10, "PROCESS_STATE"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 88
    .local v8, processState:Ljava/lang/String;
    const-string v10, "FOREGROUND"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 90
    .local v3, isForegroundState:Z
    const/4 v4, 0x0

    .line 91
    .local v4, isPowerSavingPackage:Z
    const/4 v2, 0x0

    .line 92
    .local v2, isBusOnly:Z
    sget-object v0, Lcom/android/server/ssrm/TouchBusBooster;->mTouchBusPowerSavingPackages:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v5, :cond_2

    aget-object v9, v0, v1

    .line 93
    .local v9, psPackage:Ljava/lang/String;
    if-nez v9, :cond_1

    .line 92
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 96
    :cond_1
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 97
    const/4 v4, 0x1

    .line 102
    .end local v9           #psPackage:Ljava/lang/String;
    :cond_2
    sget-object v0, Lcom/android/server/ssrm/TouchBusBooster;->mBusPowerSavingPackages:[Ljava/lang/String;

    array-length v5, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v5, :cond_5

    aget-object v9, v0, v1

    .line 103
    .restart local v9       #psPackage:Ljava/lang/String;
    if-nez v9, :cond_4

    .line 102
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 106
    :cond_4
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 107
    const/4 v4, 0x1

    .line 108
    if-eqz v3, :cond_5

    .line 109
    const/4 v2, 0x1

    .line 116
    .end local v9           #psPackage:Ljava/lang/String;
    :cond_5
    if-eqz v3, :cond_9

    .line 117
    if-eqz v4, :cond_8

    .line 118
    const/4 v6, 0x1

    .line 135
    .local v6, newTouchBoosterPowerSaving:Z
    :goto_2
    sget-boolean v10, Lcom/android/server/ssrm/TouchBusBooster;->mTouchBusPowerSaving:Z

    if-eq v6, v10, :cond_7

    .line 136
    sput-boolean v6, Lcom/android/server/ssrm/TouchBusBooster;->mTouchBusPowerSaving:Z

    .line 137
    sget-boolean v10, Lcom/android/server/ssrm/TouchBusBooster;->mTouchBusPowerSaving:Z

    if-eqz v10, :cond_b

    .line 138
    sget-object v10, Lcom/android/server/ssrm/TouchBusBooster;->TAG:Ljava/lang/String;

    const-string v11, "TouchBusPowerSaving:: now it is enabled."

    invoke-static {v10, v11}, Lcom/android/server/ssrm/TouchBusBooster;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    sget-boolean v10, Lcom/android/server/ssrm/TouchBusBooster;->mTspPathExist:Z

    if-eqz v10, :cond_6

    if-nez v2, :cond_6

    .line 140
    const-string v10, "boost_level,1"

    const-string v11, "/sys/class/sec/tsp/cmd"

    invoke-static {v10, v11}, Lcom/android/server/ssrm/TouchBusBooster;->writeToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string v10, "/sys/class/sec/tsp/cmd_result"

    invoke-static {v10}, Lcom/android/server/ssrm/TouchBusBooster;->readLineFromSysfs(Ljava/lang/String;)Ljava/lang/String;

    .line 143
    :cond_6
    const-string v10, "ja"

    const-string v11, "ja"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    sget-boolean v10, Lcom/android/server/ssrm/TouchBusBooster;->mJaBusMifDvfsPath:Z

    if-eqz v10, :cond_7

    sget-boolean v10, Lcom/android/server/ssrm/TouchBusBooster;->mJaBusIntDvfsPath:Z

    if-eqz v10, :cond_7

    .line 144
    const-string v10, "0"

    const-string v11, "/sys/class/devfreq/exynos5-busfreq-mif/en_monitoring"

    invoke-static {v10, v11}, Lcom/android/server/ssrm/TouchBusBooster;->writeToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v10, "0"

    const-string v11, "/sys/class/devfreq/exynos5-busfreq-int/en_monitoring"

    invoke-static {v10, v11}, Lcom/android/server/ssrm/TouchBusBooster;->writeToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :cond_7
    :goto_3
    return-void

    .line 121
    .end local v6           #newTouchBoosterPowerSaving:Z
    :cond_8
    const/4 v6, 0x0

    .restart local v6       #newTouchBoosterPowerSaving:Z
    goto :goto_2

    .line 125
    .end local v6           #newTouchBoosterPowerSaving:Z
    :cond_9
    if-eqz v4, :cond_a

    .line 126
    const/4 v6, 0x0

    .restart local v6       #newTouchBoosterPowerSaving:Z
    goto :goto_2

    .line 131
    .end local v6           #newTouchBoosterPowerSaving:Z
    :cond_a
    sget-boolean v6, Lcom/android/server/ssrm/TouchBusBooster;->mTouchBusPowerSaving:Z

    .restart local v6       #newTouchBoosterPowerSaving:Z
    goto :goto_2

    .line 148
    :cond_b
    sget-object v10, Lcom/android/server/ssrm/TouchBusBooster;->TAG:Ljava/lang/String;

    const-string v11, "TouchBusPowerSaving:: now it is disabled."

    invoke-static {v10, v11}, Lcom/android/server/ssrm/TouchBusBooster;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    sget-boolean v10, Lcom/android/server/ssrm/TouchBusBooster;->mTspPathExist:Z

    if-eqz v10, :cond_c

    .line 150
    const-string v10, "boost_level,2"

    const-string v11, "/sys/class/sec/tsp/cmd"

    invoke-static {v10, v11}, Lcom/android/server/ssrm/TouchBusBooster;->writeToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v10, "/sys/class/sec/tsp/cmd_result"

    invoke-static {v10}, Lcom/android/server/ssrm/TouchBusBooster;->readLineFromSysfs(Ljava/lang/String;)Ljava/lang/String;

    .line 153
    :cond_c
    const-string v10, "ja"

    const-string v11, "ja"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    sget-boolean v10, Lcom/android/server/ssrm/TouchBusBooster;->mJaBusMifDvfsPath:Z

    if-eqz v10, :cond_7

    sget-boolean v10, Lcom/android/server/ssrm/TouchBusBooster;->mJaBusIntDvfsPath:Z

    if-eqz v10, :cond_7

    .line 154
    const-string v10, "1"

    const-string v11, "/sys/class/devfreq/exynos5-busfreq-mif/en_monitoring"

    invoke-static {v10, v11}, Lcom/android/server/ssrm/TouchBusBooster;->writeToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string v10, "1"

    const-string v11, "/sys/class/devfreq/exynos5-busfreq-int/en_monitoring"

    invoke-static {v10, v11}, Lcom/android/server/ssrm/TouchBusBooster;->writeToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public onSIPEventCallback(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 69
    sget-boolean v0, Lcom/android/server/ssrm/TouchBusBooster;->mTspPathExist:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/server/ssrm/TouchBusBooster;->mTouchBusPowerSaving:Z

    if-eqz v0, :cond_1

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    sput-boolean p1, Lcom/android/server/ssrm/TouchBusBooster;->mSIPVisible:Z

    .line 74
    sget-boolean v0, Lcom/android/server/ssrm/TouchBusBooster;->mSIPVisible:Z

    if-eqz v0, :cond_2

    .line 75
    sget-object v0, Lcom/android/server/ssrm/TouchBusBooster;->TAG:Ljava/lang/String;

    const-string v1, "onSIPEventCallback:: now touch booster level 1 is enabled."

    invoke-static {v0, v1}, Lcom/android/server/ssrm/TouchBusBooster;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v0, "boost_level,1"

    const-string v1, "/sys/class/sec/tsp/cmd"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/TouchBusBooster;->writeToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v0, "/sys/class/sec/tsp/cmd_result"

    invoke-static {v0}, Lcom/android/server/ssrm/TouchBusBooster;->readLineFromSysfs(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 79
    :cond_2
    sget-object v0, Lcom/android/server/ssrm/TouchBusBooster;->TAG:Ljava/lang/String;

    const-string v1, "onSIPEventCallback:: now touch booster level 2 is enabled."

    invoke-static {v0, v1}, Lcom/android/server/ssrm/TouchBusBooster;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v0, "boost_level,2"

    const-string v1, "/sys/class/sec/tsp/cmd"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/TouchBusBooster;->writeToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v0, "/sys/class/sec/tsp/cmd_result"

    invoke-static {v0}, Lcom/android/server/ssrm/TouchBusBooster;->readLineFromSysfs(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method
