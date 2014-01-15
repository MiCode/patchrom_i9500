.class Lcom/android/settings_ex/homesync/StorageUtil;
.super Ljava/lang/Object;
.source "StorageUtil.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getBackupVolume(Landroid/content/Context;)Landroid/os/storage/StorageVolume;
    .locals 11
    .parameter "context"

    .prologue
    .line 12
    const/4 v1, -0x1

    .line 13
    .local v1, id:I
    const-string v5, ""

    .line 14
    .local v5, storagePath:Ljava/lang/String;
    const/4 v9, 0x0

    .line 16
    .local v9, usbStoragePath:Ljava/lang/String;
    const-string v10, "storage"

    invoke-virtual {p0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageManager;

    .line 19
    .local v3, mStorageManager:Landroid/os/storage/StorageManager;
    if-eqz v3, :cond_3

    .line 20
    invoke-virtual {v3}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v7

    .line 21
    .local v7, storageVolumes:[Landroid/os/storage/StorageVolume;
    array-length v2, v7

    .line 22
    .local v2, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 23
    aget-object v6, v7, v0

    .line 24
    .local v6, storageVolume:Landroid/os/storage/StorageVolume;
    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v8

    .line 25
    .local v8, subsystem:Ljava/lang/String;
    if-eqz v8, :cond_1

    .line 26
    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 27
    invoke-virtual {v3, v5}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 28
    .local v4, state:Ljava/lang/String;
    const-string v10, "usb"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 29
    const-string v10, "mounted"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 30
    if-eqz v9, :cond_0

    invoke-virtual {v9, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_1

    .line 32
    :cond_0
    move v1, v0

    .line 22
    .end local v4           #state:Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 38
    .end local v6           #storageVolume:Landroid/os/storage/StorageVolume;
    .end local v8           #subsystem:Ljava/lang/String;
    :cond_2
    if-ltz v1, :cond_3

    .line 39
    aget-object v10, v7, v1

    .line 41
    .end local v0           #i:I
    .end local v2           #length:I
    .end local v7           #storageVolumes:[Landroid/os/storage/StorageVolume;
    :goto_1
    return-object v10

    :cond_3
    const/4 v10, 0x0

    goto :goto_1
.end method

.method static isNewerFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 5
    .parameter "f1"
    .parameter "f2"

    .prologue
    .line 45
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    .line 46
    .local v0, lastModified1:J
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 47
    .local v2, lastModified2:J
    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method
