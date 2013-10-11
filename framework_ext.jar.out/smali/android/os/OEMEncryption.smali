.class public Landroid/os/OEMEncryption;
.super Ljava/lang/Object;
.source "OEMEncryption.java"


# static fields
.field private static final ACTION_CANCEL:I = 0x1

.field private static final ACTION_NOTIFY:I = 0x0

.field private static final EXTERNAL_SD_CARD_PATH:Ljava/lang/String; = "/mnt/sdcard/external_sd"

.field public static final NAME:Ljava/lang/String; = "DirEncryptService"

.field private static final SD_ENC_NOTIFICATION_ID:I = 0x1

.field private static final TAG:Ljava/lang/String; = "OEMEncryption"

.field private static mSelf:Landroid/os/OEMEncryption;


# instance fields
.field private EXTERNAL_SD_STATE:Ljava/lang/String;

.field private dem:Landroid/dirEncryption/DirEncryptionManager;

.field private filter:Landroid/content/IntentFilter;

.field private final handler:Landroid/os/Handler;

.field private final mContext:Landroid/content/Context;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mSDPolicy:Z

.field mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

.field private notification:Landroid/app/Notification;

.field receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/OEMEncryption;->mSDPolicy:Z

    .line 36
    iput-object v1, p0, Landroid/os/OEMEncryption;->dem:Landroid/dirEncryption/DirEncryptionManager;

    .line 38
    iput-object v1, p0, Landroid/os/OEMEncryption;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Landroid/os/OEMEncryption;->EXTERNAL_SD_STATE:Ljava/lang/String;

    .line 45
    new-instance v0, Landroid/os/OEMEncryption$1;

    invoke-direct {v0, p0}, Landroid/os/OEMEncryption$1;-><init>(Landroid/os/OEMEncryption;)V

    iput-object v0, p0, Landroid/os/OEMEncryption;->handler:Landroid/os/Handler;

    .line 133
    new-instance v0, Landroid/os/OEMEncryption$2;

    invoke-direct {v0, p0}, Landroid/os/OEMEncryption$2;-><init>(Landroid/os/OEMEncryption;)V

    iput-object v0, p0, Landroid/os/OEMEncryption;->mStorageListener:Landroid/os/storage/StorageEventListener;

    .line 179
    new-instance v0, Landroid/os/OEMEncryption$3;

    invoke-direct {v0, p0}, Landroid/os/OEMEncryption$3;-><init>(Landroid/os/OEMEncryption;)V

    iput-object v0, p0, Landroid/os/OEMEncryption;->receiver:Landroid/content/BroadcastReceiver;

    .line 75
    iput-object p1, p0, Landroid/os/OEMEncryption;->mContext:Landroid/content/Context;

    .line 76
    iget-object v0, p0, Landroid/os/OEMEncryption;->mContext:Landroid/content/Context;

    const-string v1, "storage"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Landroid/os/OEMEncryption;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 77
    iget-object v0, p0, Landroid/os/OEMEncryption;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Landroid/os/OEMEncryption;->mNotificationManager:Landroid/app/NotificationManager;

    .line 79
    new-instance v0, Landroid/dirEncryption/DirEncryptionManager;

    iget-object v1, p0, Landroid/os/OEMEncryption;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/os/OEMEncryption;->dem:Landroid/dirEncryption/DirEncryptionManager;

    .line 81
    const-string v0, "DirEncryptService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/storage/IDirEncryptService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IDirEncryptService;

    move-result-object v0

    iput-object v0, p0, Landroid/os/OEMEncryption;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    .line 83
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Landroid/os/OEMEncryption;->filter:Landroid/content/IntentFilter;

    .line 84
    iget-object v0, p0, Landroid/os/OEMEncryption;->filter:Landroid/content/IntentFilter;

    iget-object v1, p0, Landroid/os/OEMEncryption;->dem:Landroid/dirEncryption/DirEncryptionManager;

    const-string v1, "android.intent.action.SDCARD_ENCRYPTION_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Landroid/os/OEMEncryption;->receiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Landroid/os/OEMEncryption;->filter:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 86
    iget-object v0, p0, Landroid/os/OEMEncryption;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Landroid/os/OEMEncryption;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 87
    const-string v0, "removed"

    iput-object v0, p0, Landroid/os/OEMEncryption;->EXTERNAL_SD_STATE:Ljava/lang/String;

    .line 88
    return-void
.end method

.method static synthetic access$000(Landroid/os/OEMEncryption;)Landroid/app/Notification;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Landroid/os/OEMEncryption;->notification:Landroid/app/Notification;

    return-object v0
.end method

.method static synthetic access$100(Landroid/os/OEMEncryption;)Landroid/app/NotificationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Landroid/os/OEMEncryption;->mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$200(Landroid/os/OEMEncryption;)Landroid/dirEncryption/DirEncryptionManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Landroid/os/OEMEncryption;->dem:Landroid/dirEncryption/DirEncryptionManager;

    return-object v0
.end method

.method static synthetic access$302(Landroid/os/OEMEncryption;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-object p1, p0, Landroid/os/OEMEncryption;->EXTERNAL_SD_STATE:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Landroid/os/OEMEncryption;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Landroid/os/OEMEncryption;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Landroid/os/OEMEncryption;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-boolean v0, p0, Landroid/os/OEMEncryption;->mSDPolicy:Z

    return v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Landroid/os/OEMEncryption;
    .locals 2
    .parameter "context"

    .prologue
    .line 68
    const-class v1, Landroid/os/OEMEncryption;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/os/OEMEncryption;->mSelf:Landroid/os/OEMEncryption;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Landroid/os/OEMEncryption;

    invoke-direct {v0, p0}, Landroid/os/OEMEncryption;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/os/OEMEncryption;->mSelf:Landroid/os/OEMEncryption;

    .line 71
    :cond_0
    sget-object v0, Landroid/os/OEMEncryption;->mSelf:Landroid/os/OEMEncryption;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public checkSdEncrypted()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 101
    iget-object v0, p0, Landroid/os/OEMEncryption;->EXTERNAL_SD_STATE:Ljava/lang/String;

    .line 102
    .local v0, state:Ljava/lang/String;
    const-string v2, "mounted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 103
    invoke-virtual {p0}, Landroid/os/OEMEncryption;->isCurrentSDCardEncrypted()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 108
    :cond_0
    :goto_0
    return v1

    .line 106
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 91
    const-string v0, "OEMEncryption"

    const-string v1, "clear called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/OEMEncryption;->mSDPolicy:Z

    .line 93
    iget-object v0, p0, Landroid/os/OEMEncryption;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 94
    return-void
.end method

.method public getSDPolicy()Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Landroid/os/OEMEncryption;->mSDPolicy:Z

    return v0
.end method

.method public isCurrentSDCardEncrypted()Z
    .locals 5

    .prologue
    .line 117
    const/4 v1, 0x0

    .line 120
    .local v1, sd_state:Z
    :try_start_0
    iget-object v2, p0, Landroid/os/OEMEncryption;->dem:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v2}, Landroid/dirEncryption/DirEncryptionManager;->isStorageCardEncryptionPoliciesApplied()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/os/OEMEncryption;->dem:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v2}, Landroid/dirEncryption/DirEncryptionManager;->getSDCardEncryptionPrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 122
    iget-object v2, p0, Landroid/os/OEMEncryption;->dem:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v2}, Landroid/dirEncryption/DirEncryptionManager;->getSDCardEncryptionPrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v2

    invoke-virtual {v2}, Landroid/dirEncryption/SDCardEncryptionPolicies;->getDefaultEnc()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    const/4 v1, 0x0

    .line 127
    :cond_0
    :goto_0
    const-string v2, "OEMEncryption"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Encryption state is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    return v1

    .line 122
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "OEMEncryption"

    const-string v3, "Remote exception caught in check encryption status"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setSDEncryptionPolicy(Z)V
    .locals 13
    .parameter "policy"

    .prologue
    const v12, 0x1040024

    const/4 v11, 0x0

    .line 196
    const-string v6, "OEMEncryption"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setSDEncryptionPolicy called with "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iput-boolean p1, p0, Landroid/os/OEMEncryption;->mSDPolicy:Z

    .line 201
    if-nez p1, :cond_1

    .line 202
    iget-object v6, p0, Landroid/os/OEMEncryption;->handler:Landroid/os/Handler;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    invoke-virtual {p0}, Landroid/os/OEMEncryption;->isCurrentSDCardEncrypted()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 208
    const-string v6, "OEMEncryption"

    const-string v7, "Not showing notification because current SD card is already encrypted"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 212
    :cond_2
    iget-object v5, p0, Landroid/os/OEMEncryption;->EXTERNAL_SD_STATE:Ljava/lang/String;

    .line 213
    .local v5, state:Ljava/lang/String;
    const-string v6, "unmounted"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "removed"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "bad_removal"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 215
    :cond_3
    const-string v6, "OEMEncryption"

    const-string v7, "Not showing notification because there is no SD card"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 220
    :cond_4
    iget-object v6, p0, Landroid/os/OEMEncryption;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    if-eqz v6, :cond_0

    .line 223
    if-eqz p1, :cond_5

    .line 225
    :try_start_0
    iget-object v6, p0, Landroid/os/OEMEncryption;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    const/4 v7, 0x2

    const/4 v8, 0x4

    const/4 v9, 0x7

    invoke-interface {v6, v7, v8, v9}, Landroid/os/storage/IDirEncryptService;->setStorageCardEncryptionPolicy(III)I

    move-result v4

    .line 228
    .local v4, result:I
    const-string v6, "OEMEncryption"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Result is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    .end local v4           #result:I
    :cond_5
    :goto_1
    iget-object v6, p0, Landroid/os/OEMEncryption;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 236
    .local v3, resources:Landroid/content/res/Resources;
    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.app.action.START_SDCARD_ENCRYPTION"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 238
    .local v0, encryptIntent:Landroid/content/Intent;
    iget-object v6, p0, Landroid/os/OEMEncryption;->mContext:Landroid/content/Context;

    const/high16 v7, 0x1000

    invoke-static {v6, v11, v0, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 240
    .local v1, intent:Landroid/app/PendingIntent;
    new-instance v6, Landroid/app/Notification;

    const v7, 0x108007b

    invoke-virtual {v3, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iput-object v6, p0, Landroid/os/OEMEncryption;->notification:Landroid/app/Notification;

    .line 245
    iget-object v6, p0, Landroid/os/OEMEncryption;->notification:Landroid/app/Notification;

    iget v7, v6, Landroid/app/Notification;->flags:I

    or-int/lit8 v7, v7, 0x20

    iput v7, v6, Landroid/app/Notification;->flags:I

    .line 247
    iget-object v6, p0, Landroid/os/OEMEncryption;->notification:Landroid/app/Notification;

    iget-object v7, p0, Landroid/os/OEMEncryption;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const v9, 0x1040025

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 251
    iget-object v6, p0, Landroid/os/OEMEncryption;->handler:Landroid/os/Handler;

    invoke-virtual {v6, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 229
    .end local v0           #encryptIntent:Landroid/content/Intent;
    .end local v1           #intent:Landroid/app/PendingIntent;
    .end local v3           #resources:Landroid/content/res/Resources;
    :catch_0
    move-exception v2

    .line 230
    .local v2, re:Landroid/os/RemoteException;
    const-string v6, "OEMEncryption"

    const-string v7, "Unable to communicate with DirEncryptService"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
