.class public Lcom/android/settings_ex/nearby/MountReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MountReceiver.java"


# static fields
.field private static final DOWNLOAD_TO_PHONE:Ljava/lang/String; = "0"

.field private static final PATH_DOWNLOAD_FOLDER_NAME:Ljava/lang/String; = "/Nearby"

.field protected static mStorageManager:Landroid/os/storage/StorageManager;

.field protected static mStorageVolumes:[Landroid/os/storage/StorageVolume;


# instance fields
.field private final KEY_ALLSHARE_DOWNLOAD_TO:Ljava/lang/String;

.field private final KEY_ALLSHARE_IS_SHUTDOWN:Ljava/lang/String;

.field private final KEY_ALLSHARE_ONOFF:Ljava/lang/String;

.field private final PREFERENCE_FILE_NAME:Ljava/lang/String;

.field private final SETTINGS_SYSTEM_DOWNLOAD_PATH:Ljava/lang/String;

.field private final TAGClass:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 20
    const-string v0, "MountReceiver"

    iput-object v0, p0, Lcom/android/settings_ex/nearby/MountReceiver;->TAGClass:Ljava/lang/String;

    .line 22
    const-string v0, "pref_allshare"

    iput-object v0, p0, Lcom/android/settings_ex/nearby/MountReceiver;->PREFERENCE_FILE_NAME:Ljava/lang/String;

    .line 24
    const-string v0, "allshare_onoff"

    iput-object v0, p0, Lcom/android/settings_ex/nearby/MountReceiver;->KEY_ALLSHARE_ONOFF:Ljava/lang/String;

    .line 26
    const-string v0, "isShutdowned"

    iput-object v0, p0, Lcom/android/settings_ex/nearby/MountReceiver;->KEY_ALLSHARE_IS_SHUTDOWN:Ljava/lang/String;

    .line 28
    const-string v0, "allshare_download_to"

    iput-object v0, p0, Lcom/android/settings_ex/nearby/MountReceiver;->KEY_ALLSHARE_DOWNLOAD_TO:Ljava/lang/String;

    .line 30
    const-string v0, "NearbyDownloadTo"

    iput-object v0, p0, Lcom/android/settings_ex/nearby/MountReceiver;->SETTINGS_SYSTEM_DOWNLOAD_PATH:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 19
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 45
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, action:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    const-string v14, "MountReceiver"

    const-string v15, "onReceive"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "ACTION: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v14 .. v16}, Lcom/android/settings_ex/nearby/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :try_start_0
    const-string v14, "storage"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/storage/StorageManager;

    sput-object v14, Lcom/android/settings_ex/nearby/MountReceiver;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 53
    sget-object v14, Lcom/android/settings_ex/nearby/MountReceiver;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v14}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v14

    sput-object v14, Lcom/android/settings_ex/nearby/MountReceiver;->mStorageVolumes:[Landroid/os/storage/StorageVolume;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    const-string v14, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    const-string v14, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 63
    :cond_2
    const-string v14, "pref_allshare"

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 65
    .local v11, preference:Landroid/content/SharedPreferences;
    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 66
    .local v5, edit:Landroid/content/SharedPreferences$Editor;
    const-string v14, "allshare_download_to"

    const/4 v15, 0x0

    invoke-interface {v11, v14, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 68
    .local v12, preferenceValue:Ljava/lang/String;
    const-string v14, "isShutdowned"

    const/4 v15, 0x0

    invoke-interface {v11, v14, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    if-nez v14, :cond_0

    .line 71
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "NearbyDownloadTo"

    invoke-static {v14, v15}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 74
    .local v13, systemPath:Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lcom/android/settings_ex/nearby/MountReceiver;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    const/16 v16, 0x0

    aget-object v15, v15, v16

    invoke-virtual {v15}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/Nearby"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 76
    .local v7, internalPath:Ljava/lang/String;
    if-eqz v7, :cond_4

    const-string v14, "0"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 79
    :cond_3
    const-string v14, "MountReceiver"

    const-string v15, "onReceive"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "change path: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v14 .. v16}, Lcom/android/settings_ex/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v14, "allshare_download_to"

    const-string v15, "0"

    invoke-interface {v5, v14, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 82
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 84
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "NearbyDownloadTo"

    invoke-static {v14, v15, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 54
    .end local v5           #edit:Landroid/content/SharedPreferences$Editor;
    .end local v7           #internalPath:Ljava/lang/String;
    .end local v11           #preference:Landroid/content/SharedPreferences;
    .end local v12           #preferenceValue:Ljava/lang/String;
    .end local v13           #systemPath:Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 55
    .local v4, e:Ljava/lang/Exception;
    const-string v14, "MountReceiver"

    const-string v15, "onReceive"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "get storage info fails."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v14 .. v16}, Lcom/android/settings_ex/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 88
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v5       #edit:Landroid/content/SharedPreferences$Editor;
    .restart local v7       #internalPath:Ljava/lang/String;
    .restart local v11       #preference:Landroid/content/SharedPreferences;
    .restart local v12       #preferenceValue:Ljava/lang/String;
    .restart local v13       #systemPath:Ljava/lang/String;
    :cond_4
    const-string v14, "MountReceiver"

    const-string v15, "onReceive"

    const-string v16, "there is no need to change download path."

    invoke-static/range {v14 .. v16}, Lcom/android/settings_ex/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 91
    .end local v5           #edit:Landroid/content/SharedPreferences$Editor;
    .end local v7           #internalPath:Ljava/lang/String;
    .end local v11           #preference:Landroid/content/SharedPreferences;
    .end local v12           #preferenceValue:Ljava/lang/String;
    .end local v13           #systemPath:Ljava/lang/String;
    :cond_5
    const-string v14, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 92
    const-string v14, "pref_allshare"

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 94
    .local v10, prefAllshare:Landroid/content/SharedPreferences;
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 95
    .restart local v5       #edit:Landroid/content/SharedPreferences$Editor;
    const-string v14, "allshare_onoff"

    const/4 v15, 0x0

    invoke-interface {v5, v14, v15}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 96
    const-string v14, "isShutdowned"

    const/4 v15, 0x0

    invoke-interface {v5, v14, v15}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 97
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 100
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lcom/android/settings_ex/nearby/MountReceiver;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    const/16 v16, 0x0

    aget-object v15, v15, v16

    invoke-virtual {v15}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/Nearby"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 103
    .restart local v7       #internalPath:Ljava/lang/String;
    const-string v6, ""

    .line 104
    .local v6, externalPath:Ljava/lang/String;
    sget-object v14, Lcom/android/settings_ex/nearby/MountReceiver;->mStorageManager:Landroid/os/storage/StorageManager;

    sget-object v15, Lcom/android/settings_ex/nearby/MountReceiver;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    const/16 v16, 0x1

    aget-object v15, v15, v16

    invoke-virtual {v15}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "mounted"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 106
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lcom/android/settings_ex/nearby/MountReceiver;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    const/16 v16, 0x1

    aget-object v15, v15, v16

    invoke-virtual {v15}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/Nearby"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 110
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "NearbyDownloadTo"

    invoke-static {v14, v15}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 113
    .restart local v13       #systemPath:Ljava/lang/String;
    if-nez v13, :cond_7

    .line 114
    const-string v14, "MountReceiver"

    const-string v15, "onReceive"

    const-string v16, "DOWNLOAD systemPath  is NULL"

    invoke-static/range {v14 .. v16}, Lcom/android/settings_ex/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "NearbyDownloadTo"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v17, Lcom/android/settings_ex/nearby/MountReceiver;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    const/16 v18, 0x0

    aget-object v17, v17, v18

    invoke-virtual/range {v17 .. v17}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "/Nearby"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 118
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lcom/android/settings_ex/nearby/MountReceiver;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    const/16 v16, 0x0

    aget-object v15, v15, v16

    invoke-virtual {v15}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/Nearby"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 122
    :cond_7
    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_8

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_8

    .line 123
    const-string v14, "MountReceiver"

    const-string v15, "onReceive"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Bad system Path: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v14 .. v16}, Lcom/android/settings_ex/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string v14, "allshare_download_to"

    const-string v15, "0"

    invoke-interface {v5, v14, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 127
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 130
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "NearbyDownloadTo"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v17, Lcom/android/settings_ex/nearby/MountReceiver;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    const/16 v18, 0x0

    aget-object v17, v17, v18

    invoke-virtual/range {v17 .. v17}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "/Nearby"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 134
    const-string v14, "MountReceiver"

    const-string v15, "onReceive"

    const-string v16, "Fix to Internal Default path"

    invoke-static/range {v14 .. v16}, Lcom/android/settings_ex/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 136
    :cond_8
    const-string v14, "MountReceiver"

    const-string v15, "onReceive"

    const-string v16, "there is no need to INIT download path."

    invoke-static/range {v14 .. v16}, Lcom/android/settings_ex/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 139
    .end local v5           #edit:Landroid/content/SharedPreferences$Editor;
    .end local v6           #externalPath:Ljava/lang/String;
    .end local v7           #internalPath:Ljava/lang/String;
    .end local v10           #prefAllshare:Landroid/content/SharedPreferences;
    .end local v13           #systemPath:Ljava/lang/String;
    :cond_9
    const-string v14, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_a

    const-string v14, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 141
    :cond_a
    const-string v14, "connectivity"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    .line 143
    .local v3, connectivityManager:Landroid/net/ConnectivityManager;
    const/4 v14, 0x1

    invoke-virtual {v3, v14}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v8

    .line 144
    .local v8, netInfo:Landroid/net/NetworkInfo;
    const/16 v14, 0xd

    invoke-virtual {v3, v14}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v9

    .line 146
    .local v9, netInfoP2p:Landroid/net/NetworkInfo;
    const-string v14, "networkInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .line 149
    .local v2, changedState:Landroid/net/NetworkInfo;
    const-string v14, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 150
    move-object v8, v2

    .line 155
    :cond_b
    :goto_1
    if-eqz v8, :cond_0

    if-eqz v9, :cond_0

    .line 156
    const-string v14, "MountReceiver"

    const-string v15, "onReceive"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "STATE WIFI:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", P2P:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v14 .. v16}, Lcom/android/settings_ex/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    sget-object v14, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_d

    sget-object v14, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_d

    sget-object v14, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_d

    sget-object v14, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_d

    .line 163
    const-string v14, "MountReceiver"

    const-string v15, "onReceive"

    const-string v16, "Set preference state off"

    invoke-static/range {v14 .. v16}, Lcom/android/settings_ex/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string v14, "pref_allshare"

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 166
    .restart local v10       #prefAllshare:Landroid/content/SharedPreferences;
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 167
    .restart local v5       #edit:Landroid/content/SharedPreferences$Editor;
    const-string v14, "allshare_onoff"

    const/4 v15, 0x0

    invoke-interface {v5, v14, v15}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 168
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 151
    .end local v5           #edit:Landroid/content/SharedPreferences$Editor;
    .end local v10           #prefAllshare:Landroid/content/SharedPreferences;
    :cond_c
    const-string v14, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 152
    move-object v9, v2

    goto/16 :goto_1

    .line 170
    :cond_d
    const-string v14, "MountReceiver"

    const-string v15, "onReceive"

    const-string v16, "Keep current state"

    invoke-static/range {v14 .. v16}, Lcom/android/settings_ex/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 173
    .end local v2           #changedState:Landroid/net/NetworkInfo;
    .end local v3           #connectivityManager:Landroid/net/ConnectivityManager;
    .end local v8           #netInfo:Landroid/net/NetworkInfo;
    .end local v9           #netInfoP2p:Landroid/net/NetworkInfo;
    :cond_e
    const-string v14, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 174
    const-string v14, "pref_allshare"

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 176
    .restart local v11       #preference:Landroid/content/SharedPreferences;
    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 177
    .restart local v5       #edit:Landroid/content/SharedPreferences$Editor;
    const-string v14, "isShutdowned"

    const/4 v15, 0x1

    invoke-interface {v5, v14, v15}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 178
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0
.end method
