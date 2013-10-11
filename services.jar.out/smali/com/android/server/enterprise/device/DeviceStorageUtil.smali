.class public Lcom/android/server/enterprise/device/DeviceStorageUtil;
.super Ljava/lang/Object;
.source "DeviceStorageUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DeviceStorageUtil"

.field private static mStorageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;


# instance fields
.field final ERROR:I

.field private final SIZE_INVALID:I

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "ctx"

    .prologue
    const/4 v0, -0x1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput v0, p0, Lcom/android/server/enterprise/device/DeviceStorageUtil;->ERROR:I

    .line 203
    iput v0, p0, Lcom/android/server/enterprise/device/DeviceStorageUtil;->SIZE_INVALID:I

    .line 73
    iput-object p1, p0, Lcom/android/server/enterprise/device/DeviceStorageUtil;->mContext:Landroid/content/Context;

    .line 74
    iget-object v0, p0, Lcom/android/server/enterprise/device/DeviceStorageUtil;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/device/DeviceStorageUtil;->mStorageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;

    .line 75
    return-void
.end method

.method private externalSdCardAvailable()Z
    .locals 2

    .prologue
    .line 228
    sget-object v1, Lcom/android/server/enterprise/device/DeviceStorageUtil;->mStorageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;

    invoke-virtual {v1}, Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;->getExternalSdCardState()Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, externalSdCardState:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 230
    const/4 v1, 0x0

    .line 232
    :goto_0
    return v1

    :cond_0
    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method private getExternalSdCardDirectory()Ljava/io/File;
    .locals 2

    .prologue
    .line 220
    sget-object v1, Lcom/android/server/enterprise/device/DeviceStorageUtil;->mStorageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;

    invoke-virtual {v1}, Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;->getExternalSdCardPath()Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, externalSdCardPath:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 222
    const/4 v1, 0x0

    .line 224
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getInternalSdCardDirectory()Ljava/io/File;
    .locals 2

    .prologue
    .line 236
    sget-object v1, Lcom/android/server/enterprise/device/DeviceStorageUtil;->mStorageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;

    invoke-virtual {v1}, Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;->getInternalSdCardPath()Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, internalSdCardPath:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 238
    const/4 v1, 0x0

    .line 240
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getSizeStr(J)Ljava/lang/String;
    .locals 4
    .parameter "size"

    .prologue
    .line 206
    const-wide/16 v2, -0x1

    cmp-long v2, p1, v2

    if-nez v2, :cond_0

    .line 207
    const/4 v1, 0x0

    .line 216
    :goto_0
    return-object v1

    .line 209
    :cond_0
    const/4 v1, 0x0

    .line 211
    .local v1, sizeStr:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/device/DeviceStorageUtil;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 214
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getAvailableExternalMemorySize()J
    .locals 10

    .prologue
    const-wide/16 v7, -0x1

    .line 141
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceStorageUtil;->externalSdCardAvailable()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 142
    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceStorageUtil;->getExternalSdCardDirectory()Ljava/io/File;

    move-result-object v5

    .line 143
    .local v5, path:Ljava/io/File;
    if-nez v5, :cond_1

    .line 154
    .end local v5           #path:Ljava/io/File;
    :cond_0
    :goto_0
    return-wide v7

    .line 146
    .restart local v5       #path:Ljava/io/File;
    :cond_1
    new-instance v6, Landroid/os/StatFs;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 147
    .local v6, stat:Landroid/os/StatFs;
    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSize()I

    move-result v9

    int-to-long v2, v9

    .line 148
    .local v2, blockSize:J
    invoke-virtual {v6}, Landroid/os/StatFs;->getAvailableBlocks()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    int-to-long v0, v7

    .line 149
    .local v0, availableBlocks:J
    mul-long v7, v0, v2

    goto :goto_0

    .line 151
    .end local v0           #availableBlocks:J
    .end local v2           #blockSize:J
    .end local v5           #path:Ljava/io/File;
    .end local v6           #stat:Landroid/os/StatFs;
    :catch_0
    move-exception v4

    .line 152
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getAvailableExternalMemorySizeFormated()Ljava/lang/String;
    .locals 2

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/android/server/enterprise/device/DeviceStorageUtil;->getAvailableExternalMemorySize()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/device/DeviceStorageUtil;->getSizeStr(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAvailableInternalMemorySize()J
    .locals 12

    .prologue
    const-wide/16 v9, -0x1

    .line 78
    const-wide/16 v6, 0x0

    .line 84
    .local v6, size:J
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    .line 85
    .local v5, path:Ljava/io/File;
    new-instance v8, Landroid/os/StatFs;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v11}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 86
    .local v8, stat:Landroid/os/StatFs;
    invoke-virtual {v8}, Landroid/os/StatFs;->getBlockSize()I

    move-result v11

    int-to-long v2, v11

    .line 87
    .local v2, blockSize:J
    invoke-virtual {v8}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v11

    int-to-long v0, v11

    .line 88
    .local v0, availableBlocks:J
    mul-long v6, v0, v2

    .line 91
    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceStorageUtil;->getInternalSdCardDirectory()Ljava/io/File;

    move-result-object v5

    .line 92
    if-nez v5, :cond_0

    .line 105
    .end local v0           #availableBlocks:J
    .end local v2           #blockSize:J
    .end local v5           #path:Ljava/io/File;
    .end local v8           #stat:Landroid/os/StatFs;
    :goto_0
    return-wide v9

    .line 95
    .restart local v0       #availableBlocks:J
    .restart local v2       #blockSize:J
    .restart local v5       #path:Ljava/io/File;
    .restart local v8       #stat:Landroid/os/StatFs;
    :cond_0
    new-instance v8, Landroid/os/StatFs;

    .end local v8           #stat:Landroid/os/StatFs;
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v11}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 96
    .restart local v8       #stat:Landroid/os/StatFs;
    invoke-virtual {v8}, Landroid/os/StatFs;->getBlockSize()I

    move-result v11

    int-to-long v2, v11

    .line 97
    invoke-virtual {v8}, Landroid/os/StatFs;->getAvailableBlocks()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    int-to-long v0, v9

    .line 98
    mul-long v9, v0, v2

    add-long/2addr v6, v9

    move-wide v9, v6

    .line 101
    goto :goto_0

    .line 102
    .end local v0           #availableBlocks:J
    .end local v2           #blockSize:J
    .end local v5           #path:Ljava/io/File;
    .end local v8           #stat:Landroid/os/StatFs;
    :catch_0
    move-exception v4

    .line 103
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getAvailableInternalMemorySizeFormated()Ljava/lang/String;
    .locals 2

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/android/server/enterprise/device/DeviceStorageUtil;->getAvailableInternalMemorySize()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/device/DeviceStorageUtil;->getSizeStr(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTotalExternalMemorySize()J
    .locals 10

    .prologue
    const-wide/16 v7, -0x1

    .line 159
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceStorageUtil;->externalSdCardAvailable()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 160
    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceStorageUtil;->getExternalSdCardDirectory()Ljava/io/File;

    move-result-object v3

    .line 161
    .local v3, path:Ljava/io/File;
    if-nez v3, :cond_1

    .line 172
    .end local v3           #path:Ljava/io/File;
    :cond_0
    :goto_0
    return-wide v7

    .line 164
    .restart local v3       #path:Ljava/io/File;
    :cond_1
    new-instance v4, Landroid/os/StatFs;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v9}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 165
    .local v4, stat:Landroid/os/StatFs;
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v9

    int-to-long v0, v9

    .line 166
    .local v0, blockSize:J
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    int-to-long v5, v7

    .line 167
    .local v5, totalBlocks:J
    mul-long v7, v5, v0

    goto :goto_0

    .line 169
    .end local v0           #blockSize:J
    .end local v3           #path:Ljava/io/File;
    .end local v4           #stat:Landroid/os/StatFs;
    .end local v5           #totalBlocks:J
    :catch_0
    move-exception v2

    .line 170
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getTotalExternalMemorySizeFormated()Ljava/lang/String;
    .locals 2

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/android/server/enterprise/device/DeviceStorageUtil;->getTotalExternalMemorySize()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/device/DeviceStorageUtil;->getSizeStr(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTotalInternalMemorySize()J
    .locals 12

    .prologue
    const-wide/16 v9, -0x1

    .line 109
    const-wide/16 v4, 0x0

    .line 115
    .local v4, size:J
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    .line 116
    .local v3, path:Ljava/io/File;
    new-instance v6, Landroid/os/StatFs;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v6, v11}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 117
    .local v6, stat:Landroid/os/StatFs;
    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSize()I

    move-result v11

    int-to-long v0, v11

    .line 118
    .local v0, blockSize:J
    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockCount()I

    move-result v11

    int-to-long v7, v11

    .line 119
    .local v7, totalBlocks:J
    mul-long v4, v7, v0

    .line 122
    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceStorageUtil;->getInternalSdCardDirectory()Ljava/io/File;

    move-result-object v3

    .line 123
    if-nez v3, :cond_0

    .line 136
    .end local v0           #blockSize:J
    .end local v3           #path:Ljava/io/File;
    .end local v6           #stat:Landroid/os/StatFs;
    .end local v7           #totalBlocks:J
    :goto_0
    return-wide v9

    .line 126
    .restart local v0       #blockSize:J
    .restart local v3       #path:Ljava/io/File;
    .restart local v6       #stat:Landroid/os/StatFs;
    .restart local v7       #totalBlocks:J
    :cond_0
    new-instance v6, Landroid/os/StatFs;

    .end local v6           #stat:Landroid/os/StatFs;
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v6, v11}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 127
    .restart local v6       #stat:Landroid/os/StatFs;
    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSize()I

    move-result v11

    int-to-long v0, v11

    .line 128
    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    int-to-long v7, v9

    .line 129
    mul-long v9, v7, v0

    add-long/2addr v4, v9

    move-wide v9, v4

    .line 132
    goto :goto_0

    .line 133
    .end local v0           #blockSize:J
    .end local v3           #path:Ljava/io/File;
    .end local v6           #stat:Landroid/os/StatFs;
    .end local v7           #totalBlocks:J
    :catch_0
    move-exception v2

    .line 134
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getTotalInternalMemorySizeFormated()Ljava/lang/String;
    .locals 2

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/android/server/enterprise/device/DeviceStorageUtil;->getTotalInternalMemorySize()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/device/DeviceStorageUtil;->getSizeStr(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
