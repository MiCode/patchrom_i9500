.class public Lcom/android/settings_ex/samba/ServerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ServerReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/samba/ServerReceiver$UsbStorage;,
        Lcom/android/settings_ex/samba/ServerReceiver$OnChangeServerStatusListener;
    }
.end annotation


# static fields
.field public static final NETWORK_STATE_CHANGE:I = 0x0

.field public static final SAMBA_SERVER_RENEW:I = 0x2

.field public static final SAMBA_SERVER_STATE_DISABLED:I = 0x6

.field public static final SAMBA_SERVER_STATE_DISABLING:I = 0x5

.field public static final SAMBA_SERVER_STATE_ENABLED:I = 0x4

.field public static final SAMBA_SERVER_STATE_ENABLING:I = 0x3

.field private static final TAG:Ljava/lang/String; = "SambaReceiver"

.field public static final WIFI_STATE_CHANGED:I = 0x1

.field public static mSdCardMounted:Z

.field public static mSdCardStoragePath:Ljava/lang/String;

.field public static mUsbMounted:Z

.field public static mUsbStorage:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/samba/ServerReceiver$UsbStorage;",
            ">;"
        }
    .end annotation
.end field

.field public static mUsbStorageMount:I

.field public static mUsbStorageMounted:[Z

.field public static mUsbStoragePath:[Ljava/lang/String;


# instance fields
.field private m_OnChangeServerStatusListener:Lcom/android/settings_ex/samba/ServerReceiver$OnChangeServerStatusListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    const-string v0, ""

    sput-object v0, Lcom/android/settings_ex/samba/ServerReceiver;->mSdCardStoragePath:Ljava/lang/String;

    .line 43
    sput-boolean v1, Lcom/android/settings_ex/samba/ServerReceiver;->mUsbMounted:Z

    .line 45
    sput-boolean v1, Lcom/android/settings_ex/samba/ServerReceiver;->mSdCardMounted:Z

    .line 47
    const/4 v0, -0x1

    sput v0, Lcom/android/settings_ex/samba/ServerReceiver;->mUsbStorageMount:I

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings_ex/samba/ServerReceiver;->mUsbStorage:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/samba/ServerReceiver;->m_OnChangeServerStatusListener:Lcom/android/settings_ex/samba/ServerReceiver$OnChangeServerStatusListener;

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/samba/ServerReceiver;->m_OnChangeServerStatusListener:Lcom/android/settings_ex/samba/ServerReceiver$OnChangeServerStatusListener;

    .line 62
    return-void
.end method

.method public static isUSBMountedStateCheck(Landroid/content/Context;)V
    .locals 17
    .parameter "context"

    .prologue
    .line 119
    const-string v12, "SambaReceiver"

    const-string v13, "isUSBMountedStateCheck start"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const-string v12, "trigger_restart_min_framework"

    const-string v13, "vold.decrypt"

    const-string v14, ""

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 181
    :cond_0
    return-void

    .line 130
    :cond_1
    const-string v12, "storage"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/StorageManager;

    .line 132
    .local v5, mStorageManager:Landroid/os/storage/StorageManager;
    if-eqz v5, :cond_0

    .line 136
    invoke-virtual {v5}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v10

    .line 138
    .local v10, storageVolumes:[Landroid/os/storage/StorageVolume;
    array-length v2, v10

    .line 139
    .local v2, length:I
    const-string v7, ""

    .line 140
    .local v7, mStoragePath:Ljava/lang/String;
    const-string v6, ""

    .line 141
    .local v6, mStorageName:Ljava/lang/String;
    const-string v3, "/data/samba/var/"

    .line 142
    .local v3, mFilePath:Ljava/lang/String;
    const-string v4, ""

    .line 144
    .local v4, mRealPath:Ljava/lang/String;
    sget-object v12, Lcom/android/settings_ex/samba/ServerReceiver;->mUsbStorage:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 146
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 147
    aget-object v9, v10, v1

    .line 148
    .local v9, storageVolume:Landroid/os/storage/StorageVolume;
    invoke-virtual {v9}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v11

    .line 150
    .local v11, subsystem:Ljava/lang/String;
    if-eqz v11, :cond_3

    .line 151
    invoke-virtual {v9}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v7

    .line 152
    invoke-virtual {v5, v7}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 154
    .local v8, state:Ljava/lang/String;
    const-string v12, "usb"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 155
    sget-object v13, Lcom/android/settings_ex/samba/ServerReceiver;->mUsbStorage:Ljava/util/ArrayList;

    monitor-enter v13

    .line 156
    :try_start_0
    const-string v12, "mounted"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 157
    const-string v12, "/"

    invoke-virtual {v7, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v7, v12, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 158
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 160
    const-string v12, "SambaReceiver"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Mount mRealPath = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const-string v12, "SambaReceiver"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Mount mStoragePath = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-static {v4, v7}, Lcom/android/settings_ex/samba/FileOperation;->Write_file(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v12, "SambaReceiver"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "StateCheck Mount mRealPath ="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const-string v12, "SambaReceiver"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "StateCheck = true ::: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v7, v15}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_2
    :goto_1
    monitor-exit v13

    .line 146
    .end local v8           #state:Ljava/lang/String;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 166
    .restart local v8       #state:Ljava/lang/String;
    :cond_4
    const-string v12, "/"

    invoke-virtual {v7, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v7, v12, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 167
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 169
    const-string v12, "SambaReceiver"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unmount mRealPath = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const-string v12, "SambaReceiver"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unmount mStoragePath = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-static {v4}, Lcom/android/settings_ex/samba/FileOperation;->fileExists(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 173
    invoke-static {v4}, Lcom/android/settings_ex/samba/FileOperation;->fileRemove(Ljava/lang/String;)Z

    goto :goto_1

    .line 176
    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v12
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 115
    return-void
.end method

.method public setOnChangeServerStatusListener(Lcom/android/settings_ex/samba/ServerReceiver$OnChangeServerStatusListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/settings_ex/samba/ServerReceiver;->m_OnChangeServerStatusListener:Lcom/android/settings_ex/samba/ServerReceiver$OnChangeServerStatusListener;

    .line 66
    return-void
.end method
