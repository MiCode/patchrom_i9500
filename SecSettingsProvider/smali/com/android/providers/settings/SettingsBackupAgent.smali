.class public Lcom/android/providers/settings/SettingsBackupAgent;
.super Landroid/app/backup/BackupAgentHelper;
.source "SettingsBackupAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;,
        Lcom/android/providers/settings/SettingsBackupAgent$WifiNetworkSettings;,
        Lcom/android/providers/settings/SettingsBackupAgent$Network;
    }
.end annotation


# static fields
.field private static final EMPTY_DATA:[B

.field private static final PROJECTION:[Ljava/lang/String;

.field private static final STATE_SIZES:[I

.field private static mWifiConfigFile:Ljava/lang/String;


# instance fields
.field private mSettingsHelper:Lcom/android/providers/settings/SettingsHelper;

.field private mWfm:Landroid/net/wifi/WifiManager;

.field mWifiRestore:Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 86
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/providers/settings/SettingsBackupAgent;->STATE_SIZES:[I

    .line 99
    new-array v0, v2, [B

    sput-object v0, Lcom/android/providers/settings/SettingsBackupAgent;->EMPTY_DATA:[B

    .line 106
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "value"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/settings/SettingsBackupAgent;->PROJECTION:[Ljava/lang/String;

    return-void

    .line 86
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/app/backup/BackupAgentHelper;-><init>()V

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/providers/settings/SettingsBackupAgent;->mWifiRestore:Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;

    .line 301
    return-void
.end method

.method static synthetic access$000(Lcom/android/providers/settings/SettingsBackupAgent;Z)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsBackupAgent;->enableWifi(Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/providers/settings/SettingsBackupAgent;Ljava/lang/String;[BI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/settings/SettingsBackupAgent;->restoreWifiSupplicant(Ljava/lang/String;[BI)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/android/providers/settings/SettingsBackupAgent;->mWifiConfigFile:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/providers/settings/SettingsBackupAgent;Ljava/lang/String;[BI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/settings/SettingsBackupAgent;->restoreFileData(Ljava/lang/String;[BI)V

    return-void
.end method

.method private copyWifiSupplicantTemplate(Ljava/io/BufferedWriter;)V
    .locals 6
    .parameter "bw"

    .prologue
    .line 907
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    const-string v5, "/system/etc/wifi/wpa_supplicant.conf"

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 908
    .local v0, br:Ljava/io/BufferedReader;
    const/16 v4, 0x400

    new-array v3, v4, [C

    .line 910
    .local v3, temp:[C
    :goto_0
    invoke-virtual {v0, v3}, Ljava/io/Reader;->read([C)I

    move-result v2

    .local v2, size:I
    if-lez v2, :cond_0

    .line 911
    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4, v2}, Ljava/io/BufferedWriter;->write([CII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 914
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #size:I
    .end local v3           #temp:[C
    :catch_0
    move-exception v1

    .line 915
    .local v1, ioe:Ljava/io/IOException;
    const-string v4, "SettingsBackupAgent"

    const-string v5, "Couldn\'t copy wpa_supplicant file"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    .end local v1           #ioe:Ljava/io/IOException;
    :goto_1
    return-void

    .line 913
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v2       #size:I
    .restart local v3       #temp:[C
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private enableWifi(Z)I
    .locals 3
    .parameter "enable"

    .prologue
    .line 949
    iget-object v1, p0, Lcom/android/providers/settings/SettingsBackupAgent;->mWfm:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_0

    .line 950
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/providers/settings/SettingsBackupAgent;->mWfm:Landroid/net/wifi/WifiManager;

    .line 952
    :cond_0
    iget-object v1, p0, Lcom/android/providers/settings/SettingsBackupAgent;->mWfm:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_1

    .line 953
    iget-object v1, p0, Lcom/android/providers/settings/SettingsBackupAgent;->mWfm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 954
    .local v0, state:I
    iget-object v1, p0, Lcom/android/providers/settings/SettingsBackupAgent;->mWfm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 959
    .end local v0           #state:I
    :goto_0
    return v0

    .line 957
    :cond_1
    const-string v1, "SettingsBackupAgent"

    const-string v2, "Failed to fetch WifiManager instance"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private extractRelevantValues(Landroid/database/Cursor;[Ljava/lang/String;)[B
    .locals 19
    .parameter "cursor"
    .parameter "settings"

    .prologue
    .line 706
    move-object/from16 v0, p2

    array-length v12, v0

    .line 707
    .local v12, settingsCount:I
    mul-int/lit8 v17, v12, 0x2

    move/from16 v0, v17

    new-array v0, v0, [[B

    move-object/from16 v16, v0

    .line 708
    .local v16, values:[[B
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v17

    if-nez v17, :cond_1

    .line 709
    const-string v17, "SettingsBackupAgent"

    const-string v18, "Couldn\'t read from the cursor"

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v11, v0, [B

    .line 763
    :cond_0
    return-object v11

    .line 714
    :cond_1
    const/4 v13, 0x0

    .line 715
    .local v13, totalSize:I
    const/4 v2, 0x0

    .line 716
    .local v2, backedUpSettingIndex:I
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 717
    .local v3, cachedEntries:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-ge v6, v12, :cond_5

    .line 718
    aget-object v7, p2, v6

    .line 719
    .local v7, key:Ljava/lang/String;
    invoke-interface {v3, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 722
    .local v14, value:Ljava/lang/String;
    if-nez v14, :cond_2

    .line 723
    :goto_1
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v17

    if-nez v17, :cond_2

    .line 724
    const/16 v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 725
    .local v4, cursorKey:Ljava/lang/String;
    const/16 v17, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 726
    .local v5, cursorValue:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 727
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 728
    move-object v14, v5

    .line 735
    .end local v4           #cursorKey:Ljava/lang/String;
    .end local v5           #cursorValue:Ljava/lang/String;
    :cond_2
    if-nez v14, :cond_4

    .line 717
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 731
    .restart local v4       #cursorKey:Ljava/lang/String;
    .restart local v5       #cursorValue:Ljava/lang/String;
    :cond_3
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 740
    .end local v4           #cursorKey:Ljava/lang/String;
    .end local v5           #cursorValue:Ljava/lang/String;
    :cond_4
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    .line 741
    .local v8, keyBytes:[B
    array-length v0, v8

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x4

    add-int v13, v13, v17

    .line 742
    mul-int/lit8 v17, v2, 0x2

    aput-object v8, v16, v17

    .line 744
    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    .line 745
    .local v15, valueBytes:[B
    array-length v0, v15

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x4

    add-int v13, v13, v17

    .line 746
    mul-int/lit8 v17, v2, 0x2

    add-int/lit8 v17, v17, 0x1

    aput-object v15, v16, v17

    .line 748
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 756
    .end local v7           #key:Ljava/lang/String;
    .end local v8           #keyBytes:[B
    .end local v14           #value:Ljava/lang/String;
    .end local v15           #valueBytes:[B
    :cond_5
    new-array v11, v13, [B

    .line 757
    .local v11, result:[B
    const/4 v10, 0x0

    .line 758
    .local v10, pos:I
    mul-int/lit8 v9, v2, 0x2

    .line 759
    .local v9, keyValuePairCount:I
    const/4 v6, 0x0

    :goto_3
    if-ge v6, v9, :cond_0

    .line 760
    aget-object v17, v16, v6

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v11, v10, v1}, Lcom/android/providers/settings/SettingsBackupAgent;->writeInt([BII)I

    move-result v10

    .line 761
    aget-object v17, v16, v6

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v11, v10, v1}, Lcom/android/providers/settings/SettingsBackupAgent;->writeBytes([BI[B)I

    move-result v10

    .line 759
    add-int/lit8 v6, v6, 0x1

    goto :goto_3
.end method

.method private getFileData(Ljava/lang/String;)[B
    .locals 11
    .parameter "filename"

    .prologue
    .line 767
    const/4 v4, 0x0

    .line 769
    .local v4, is:Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 770
    .local v2, file:Ljava/io/File;
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 774
    .end local v4           #is:Ljava/io/InputStream;
    .local v5, is:Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v8

    long-to-int v8, v8

    new-array v0, v8, [B

    .line 776
    .local v0, bytes:[B
    const/4 v7, 0x0

    .line 777
    .local v7, offset:I
    const/4 v6, 0x0

    .line 779
    .local v6, numRead:I
    :goto_0
    array-length v8, v0

    if-ge v7, v8, :cond_0

    array-length v8, v0

    sub-int/2addr v8, v7

    invoke-virtual {v5, v0, v7, v8}, Ljava/io/FileInputStream;->read([BII)I

    move-result v6

    if-ltz v6, :cond_0

    .line 780
    add-int/2addr v7, v6

    goto :goto_0

    .line 784
    :cond_0
    array-length v8, v0

    if-ge v7, v8, :cond_3

    .line 785
    const-string v8, "SettingsBackupAgent"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Couldn\'t backup "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    sget-object v0, Lcom/android/providers/settings/SettingsBackupAgent;->EMPTY_DATA:[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 793
    .end local v0           #bytes:[B
    if-eqz v5, :cond_1

    .line 795
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_1
    move-object v4, v5

    .line 798
    .end local v2           #file:Ljava/io/File;
    .end local v5           #is:Ljava/io/InputStream;
    .end local v6           #numRead:I
    .end local v7           #offset:I
    .restart local v4       #is:Ljava/io/InputStream;
    :cond_2
    :goto_2
    return-object v0

    .line 796
    .end local v4           #is:Ljava/io/InputStream;
    .restart local v2       #file:Ljava/io/File;
    .restart local v5       #is:Ljava/io/InputStream;
    .restart local v6       #numRead:I
    .restart local v7       #offset:I
    :catch_0
    move-exception v1

    .line 797
    .local v1, e:Ljava/io/IOException;
    const-string v8, "SettingsBackupAgent"

    const-string v9, "getFileData : is.close() error"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 793
    .end local v1           #e:Ljava/io/IOException;
    .restart local v0       #bytes:[B
    :cond_3
    if-eqz v5, :cond_4

    .line 795
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_4
    :goto_3
    move-object v4, v5

    .line 798
    .end local v5           #is:Ljava/io/InputStream;
    .restart local v4       #is:Ljava/io/InputStream;
    goto :goto_2

    .line 796
    .end local v4           #is:Ljava/io/InputStream;
    .restart local v5       #is:Ljava/io/InputStream;
    :catch_1
    move-exception v1

    .line 797
    .restart local v1       #e:Ljava/io/IOException;
    const-string v8, "SettingsBackupAgent"

    const-string v9, "getFileData : is.close() error"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 789
    .end local v0           #bytes:[B
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #file:Ljava/io/File;
    .end local v5           #is:Ljava/io/InputStream;
    .end local v6           #numRead:I
    .end local v7           #offset:I
    .restart local v4       #is:Ljava/io/InputStream;
    :catch_2
    move-exception v3

    .line 790
    .local v3, ioe:Ljava/io/IOException;
    :goto_4
    :try_start_4
    const-string v8, "SettingsBackupAgent"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Couldn\'t backup "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    sget-object v0, Lcom/android/providers/settings/SettingsBackupAgent;->EMPTY_DATA:[B
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 793
    if-eqz v4, :cond_2

    .line 795
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    .line 796
    :catch_3
    move-exception v1

    .line 797
    .restart local v1       #e:Ljava/io/IOException;
    const-string v8, "SettingsBackupAgent"

    const-string v9, "getFileData : is.close() error"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 793
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #ioe:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_5
    if-eqz v4, :cond_5

    .line 795
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 798
    :cond_5
    :goto_6
    throw v8

    .line 796
    :catch_4
    move-exception v1

    .line 797
    .restart local v1       #e:Ljava/io/IOException;
    const-string v9, "SettingsBackupAgent"

    const-string v10, "getFileData : is.close() error"

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 793
    .end local v1           #e:Ljava/io/IOException;
    .end local v4           #is:Ljava/io/InputStream;
    .restart local v2       #file:Ljava/io/File;
    .restart local v5       #is:Ljava/io/InputStream;
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5           #is:Ljava/io/InputStream;
    .restart local v4       #is:Ljava/io/InputStream;
    goto :goto_5

    .line 789
    .end local v4           #is:Ljava/io/InputStream;
    .restart local v5       #is:Ljava/io/InputStream;
    :catch_5
    move-exception v3

    move-object v4, v5

    .end local v5           #is:Ljava/io/InputStream;
    .restart local v4       #is:Ljava/io/InputStream;
    goto :goto_4
.end method

.method private getGlobalSettings()[B
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 606
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$Global;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/providers/settings/SettingsBackupAgent;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 609
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Landroid/provider/Settings$Global;->SETTINGS_TO_BACKUP:[Ljava/lang/String;

    invoke-direct {p0, v6, v0}, Lcom/android/providers/settings/SettingsBackupAgent;->extractRelevantValues(Landroid/database/Cursor;[Ljava/lang/String;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 611
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getSecureSettings()[B
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 596
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/providers/settings/SettingsBackupAgent;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 599
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Landroid/provider/Settings$Secure;->SETTINGS_TO_BACKUP:[Ljava/lang/String;

    invoke-direct {p0, v6, v0}, Lcom/android/providers/settings/SettingsBackupAgent;->extractRelevantValues(Landroid/database/Cursor;[Ljava/lang/String;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 601
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getSystemSettings()[B
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 586
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/providers/settings/SettingsBackupAgent;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 589
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Landroid/provider/Settings$System;->SETTINGS_TO_BACKUP:[Ljava/lang/String;

    invoke-direct {p0, v6, v0}, Lcom/android/providers/settings/SettingsBackupAgent;->extractRelevantValues(Landroid/database/Cursor;[Ljava/lang/String;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 591
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getWifiSupplicant(Ljava/lang/String;)[B
    .locals 11
    .parameter "filename"

    .prologue
    .line 828
    const/4 v0, 0x0

    .line 830
    .local v0, br:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 831
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 832
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6

    .line 833
    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    :try_start_1
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 834
    .local v6, relevantLines:Ljava/lang/StringBuffer;
    const/4 v7, 0x0

    .line 836
    .local v7, started:Z
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, line:Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 837
    if-nez v7, :cond_1

    const-string v8, "network"

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 838
    const/4 v7, 0x1

    .line 840
    :cond_1
    if-eqz v7, :cond_0

    .line 841
    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 852
    .end local v5           #line:Ljava/lang/String;
    .end local v6           #relevantLines:Ljava/lang/StringBuffer;
    .end local v7           #started:Z
    :catch_0
    move-exception v4

    move-object v0, v1

    .line 853
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v3           #file:Ljava/io/File;
    .restart local v0       #br:Ljava/io/BufferedReader;
    .local v4, ioe:Ljava/io/IOException;
    :goto_1
    :try_start_2
    const-string v8, "SettingsBackupAgent"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Couldn\'t backup "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    sget-object v8, Lcom/android/providers/settings/SettingsBackupAgent;->EMPTY_DATA:[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 856
    if-eqz v0, :cond_2

    .line 858
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 861
    .end local v4           #ioe:Ljava/io/IOException;
    :cond_2
    :goto_2
    return-object v8

    .line 844
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v3       #file:Ljava/io/File;
    .restart local v5       #line:Ljava/lang/String;
    .restart local v6       #relevantLines:Ljava/lang/StringBuffer;
    .restart local v7       #started:Z
    :cond_3
    :try_start_4
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    if-lez v8, :cond_5

    .line 845
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v8

    .line 856
    if-eqz v1, :cond_4

    .line 858
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_4
    :goto_3
    move-object v0, v1

    .line 861
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_2

    .line 859
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catch_1
    move-exception v2

    .line 860
    .local v2, e:Ljava/io/IOException;
    const-string v9, "SettingsBackupAgent"

    const-string v10, "getWifiSupplicant : br.close() error"

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 847
    .end local v2           #e:Ljava/io/IOException;
    :cond_5
    :try_start_6
    sget-object v8, Lcom/android/providers/settings/SettingsBackupAgent;->EMPTY_DATA:[B
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 856
    if-eqz v1, :cond_6

    .line 858
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_6
    :goto_4
    move-object v0, v1

    .line 861
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_2

    .line 859
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catch_2
    move-exception v2

    .line 860
    .restart local v2       #e:Ljava/io/IOException;
    const-string v9, "SettingsBackupAgent"

    const-string v10, "getWifiSupplicant : br.close() error"

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 850
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v2           #e:Ljava/io/IOException;
    .end local v5           #line:Ljava/lang/String;
    .end local v6           #relevantLines:Ljava/lang/StringBuffer;
    .end local v7           #started:Z
    .restart local v0       #br:Ljava/io/BufferedReader;
    :cond_7
    :try_start_8
    sget-object v8, Lcom/android/providers/settings/SettingsBackupAgent;->EMPTY_DATA:[B
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 856
    if-eqz v0, :cond_2

    .line 858
    :try_start_9
    throw v0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_2

    .line 859
    :catch_3
    move-exception v2

    .line 860
    .restart local v2       #e:Ljava/io/IOException;
    const-string v9, "SettingsBackupAgent"

    const-string v10, "getWifiSupplicant : br.close() error"

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 859
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #file:Ljava/io/File;
    .restart local v4       #ioe:Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 860
    .restart local v2       #e:Ljava/io/IOException;
    const-string v9, "SettingsBackupAgent"

    const-string v10, "getWifiSupplicant : br.close() error"

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 856
    .end local v2           #e:Ljava/io/IOException;
    .end local v4           #ioe:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_5
    if-eqz v0, :cond_8

    .line 858
    :try_start_a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 861
    :cond_8
    :goto_6
    throw v8

    .line 859
    :catch_5
    move-exception v2

    .line 860
    .restart local v2       #e:Ljava/io/IOException;
    const-string v9, "SettingsBackupAgent"

    const-string v10, "getWifiSupplicant : br.close() error"

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 856
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #e:Ljava/io/IOException;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v3       #file:Ljava/io/File;
    :catchall_1
    move-exception v8

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_5

    .line 852
    .end local v3           #file:Ljava/io/File;
    :catch_6
    move-exception v4

    goto :goto_1
.end method

.method private readInt([BI)I
    .locals 3
    .parameter "in"
    .parameter "pos"

    .prologue
    .line 940
    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v2, p2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x3

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x0

    or-int v0, v1, v2

    .line 945
    .local v0, result:I
    return v0
.end method

.method private readOldChecksums(Landroid/os/ParcelFileDescriptor;)[J
    .locals 6
    .parameter "oldState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 538
    const/4 v4, 0x6

    new-array v2, v4, [J

    .line 540
    .local v2, stateChecksums:[J
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v0, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 544
    .local v0, dataInput:Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 545
    .local v3, stateVersion:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v4, Lcom/android/providers/settings/SettingsBackupAgent;->STATE_SIZES:[I

    aget v4, v4, v3

    if-ge v1, v4, :cond_0

    .line 546
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    aput-wide v4, v2, v1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 545
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 548
    .end local v1           #i:I
    .end local v3           #stateVersion:I
    :catch_0
    move-exception v4

    .line 552
    :cond_0
    invoke-virtual {v0}, Ljava/io/FilterInputStream;->close()V

    .line 553
    return-object v2
.end method

.method private restoreFileData(Ljava/lang/String;[BI)V
    .locals 8
    .parameter "filename"
    .parameter "bytes"
    .parameter "size"

    .prologue
    .line 805
    const/4 v3, 0x0

    .line 807
    .local v3, os:Ljava/io/OutputStream;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 808
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 810
    :cond_0
    new-instance v4, Ljava/io/BufferedOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    const/4 v6, 0x1

    invoke-direct {v5, p1, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 811
    .end local v3           #os:Ljava/io/OutputStream;
    .local v4, os:Ljava/io/OutputStream;
    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {v4, p2, v5, p3}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 812
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 816
    if-eqz v4, :cond_3

    .line 818
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v3, v4

    .line 824
    .end local v1           #file:Ljava/io/File;
    .end local v4           #os:Ljava/io/OutputStream;
    .restart local v3       #os:Ljava/io/OutputStream;
    :cond_1
    :goto_0
    return-void

    .line 819
    .end local v3           #os:Ljava/io/OutputStream;
    .restart local v1       #file:Ljava/io/File;
    .restart local v4       #os:Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    .line 820
    .local v0, e:Ljava/io/IOException;
    const-string v5, "SettingsBackupAgent"

    const-string v6, "restoreFileData : os.close() error"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 821
    .end local v4           #os:Ljava/io/OutputStream;
    .restart local v3       #os:Ljava/io/OutputStream;
    goto :goto_0

    .line 813
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #file:Ljava/io/File;
    :catch_1
    move-exception v2

    .line 814
    .local v2, ioe:Ljava/io/IOException;
    :goto_1
    :try_start_3
    const-string v5, "SettingsBackupAgent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t restore "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 816
    if-eqz v3, :cond_1

    .line 818
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 819
    :catch_2
    move-exception v0

    .line 820
    .restart local v0       #e:Ljava/io/IOException;
    const-string v5, "SettingsBackupAgent"

    const-string v6, "restoreFileData : os.close() error"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 816
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #ioe:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_2
    if-eqz v3, :cond_2

    .line 818
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 821
    :cond_2
    :goto_3
    throw v5

    .line 819
    :catch_3
    move-exception v0

    .line 820
    .restart local v0       #e:Ljava/io/IOException;
    const-string v6, "SettingsBackupAgent"

    const-string v7, "restoreFileData : os.close() error"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 816
    .end local v0           #e:Ljava/io/IOException;
    .end local v3           #os:Ljava/io/OutputStream;
    .restart local v1       #file:Ljava/io/File;
    .restart local v4       #os:Ljava/io/OutputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4           #os:Ljava/io/OutputStream;
    .restart local v3       #os:Ljava/io/OutputStream;
    goto :goto_2

    .line 813
    .end local v3           #os:Ljava/io/OutputStream;
    .restart local v4       #os:Ljava/io/OutputStream;
    :catch_4
    move-exception v2

    move-object v3, v4

    .end local v4           #os:Ljava/io/OutputStream;
    .restart local v3       #os:Ljava/io/OutputStream;
    goto :goto_1

    .end local v3           #os:Ljava/io/OutputStream;
    .restart local v4       #os:Ljava/io/OutputStream;
    :cond_3
    move-object v3, v4

    .end local v4           #os:Ljava/io/OutputStream;
    .restart local v3       #os:Ljava/io/OutputStream;
    goto :goto_0
.end method

.method private restoreSettings(Landroid/app/backup/BackupDataInput;Landroid/net/Uri;Ljava/util/HashSet;)V
    .locals 4
    .parameter "data"
    .parameter "contentUri"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/backup/BackupDataInput;",
            "Landroid/net/Uri;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 617
    .local p3, movedToGlobal:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    move-result v2

    new-array v1, v2, [B

    .line 619
    .local v1, settings:[B
    const/4 v2, 0x0

    :try_start_0
    array-length v3, v1

    invoke-virtual {p1, v1, v2, v3}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 624
    array-length v2, v1

    invoke-direct {p0, v1, v2, p2, p3}, Lcom/android/providers/settings/SettingsBackupAgent;->restoreSettings([BILandroid/net/Uri;Ljava/util/HashSet;)V

    .line 625
    :goto_0
    return-void

    .line 620
    :catch_0
    move-exception v0

    .line 621
    .local v0, ioe:Ljava/io/IOException;
    const-string v2, "SettingsBackupAgent"

    const-string v3, "Couldn\'t read entity data"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private restoreSettings([BILandroid/net/Uri;Ljava/util/HashSet;)V
    .locals 18
    .parameter "settings"
    .parameter "bytes"
    .parameter "contentUri"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Landroid/net/Uri;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 634
    .local p4, movedToGlobal:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v14, 0x0

    .line 635
    .local v14, whitelist:[Ljava/lang/String;
    sget-object v15, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 636
    sget-object v14, Landroid/provider/Settings$Secure;->SETTINGS_TO_BACKUP:[Ljava/lang/String;

    .line 646
    :goto_0
    const/4 v10, 0x0

    .line 647
    .local v10, pos:I
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 648
    .local v2, cachedEntries:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Landroid/content/ContentValues;

    const/4 v15, 0x2

    invoke-direct {v3, v15}, Landroid/content/ContentValues;-><init>(I)V

    .line 649
    .local v3, contentValues:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/providers/settings/SettingsBackupAgent;->mSettingsHelper:Lcom/android/providers/settings/SettingsHelper;

    .line 651
    .local v11, settingsHelper:Lcom/android/providers/settings/SettingsHelper;
    array-length v13, v14

    .line 652
    .local v13, whiteListSize:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    if-ge v7, v13, :cond_a

    .line 653
    aget-object v8, v14, v7

    .line 654
    .local v8, key:Ljava/lang/String;
    invoke-interface {v2, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 657
    .local v12, value:Ljava/lang/String;
    if-nez v12, :cond_0

    .line 658
    :goto_2
    move/from16 v0, p2

    if-ge v10, v0, :cond_0

    .line 659
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10}, Lcom/android/providers/settings/SettingsBackupAgent;->readInt([BI)I

    move-result v9

    .line 660
    .local v9, length:I
    add-int/lit8 v10, v10, 0x4

    .line 661
    if-lez v9, :cond_5

    new-instance v4, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-direct {v4, v0, v10, v9}, Ljava/lang/String;-><init>([BII)V

    .line 662
    .local v4, dataKey:Ljava/lang/String;
    :goto_3
    add-int/2addr v10, v9

    .line 663
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10}, Lcom/android/providers/settings/SettingsBackupAgent;->readInt([BI)I

    move-result v9

    .line 664
    add-int/lit8 v10, v10, 0x4

    .line 665
    if-lez v9, :cond_6

    new-instance v5, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-direct {v5, v0, v10, v9}, Ljava/lang/String;-><init>([BII)V

    .line 666
    .local v5, dataValue:Ljava/lang/String;
    :goto_4
    add-int/2addr v10, v9

    .line 667
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 668
    move-object v12, v5

    .line 675
    .end local v4           #dataKey:Ljava/lang/String;
    .end local v5           #dataValue:Ljava/lang/String;
    .end local v9           #length:I
    :cond_0
    if-nez v12, :cond_8

    .line 652
    :cond_1
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 637
    .end local v2           #cachedEntries:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3           #contentValues:Landroid/content/ContentValues;
    .end local v7           #i:I
    .end local v8           #key:Ljava/lang/String;
    .end local v10           #pos:I
    .end local v11           #settingsHelper:Lcom/android/providers/settings/SettingsHelper;
    .end local v12           #value:Ljava/lang/String;
    .end local v13           #whiteListSize:I
    :cond_2
    sget-object v15, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 638
    sget-object v14, Landroid/provider/Settings$System;->SETTINGS_TO_BACKUP:[Ljava/lang/String;

    goto :goto_0

    .line 639
    :cond_3
    sget-object v15, Landroid/provider/Settings$Global;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 640
    sget-object v14, Landroid/provider/Settings$Global;->SETTINGS_TO_BACKUP:[Ljava/lang/String;

    goto :goto_0

    .line 642
    :cond_4
    new-instance v15, Ljava/lang/IllegalArgumentException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Unknown URI: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 661
    .restart local v2       #cachedEntries:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v3       #contentValues:Landroid/content/ContentValues;
    .restart local v7       #i:I
    .restart local v8       #key:Ljava/lang/String;
    .restart local v9       #length:I
    .restart local v10       #pos:I
    .restart local v11       #settingsHelper:Lcom/android/providers/settings/SettingsHelper;
    .restart local v12       #value:Ljava/lang/String;
    .restart local v13       #whiteListSize:I
    :cond_5
    const/4 v4, 0x0

    goto :goto_3

    .line 665
    .restart local v4       #dataKey:Ljava/lang/String;
    :cond_6
    const/4 v5, 0x0

    goto :goto_4

    .line 671
    .restart local v5       #dataValue:Ljava/lang/String;
    :cond_7
    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 679
    .end local v4           #dataKey:Ljava/lang/String;
    .end local v5           #dataValue:Ljava/lang/String;
    .end local v9           #length:I
    :cond_8
    if-eqz p4, :cond_9

    move-object/from16 v0, p4

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    sget-object v6, Landroid/provider/Settings$Global;->CONTENT_URI:Landroid/net/Uri;

    .line 684
    .local v6, destination:Landroid/net/Uri;
    :goto_6
    invoke-virtual {v11, v8, v12}, Lcom/android/providers/settings/SettingsHelper;->restoreValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 685
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 686
    const-string v15, "name"

    invoke-virtual {v3, v15, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    const-string v15, "value"

    invoke-virtual {v3, v15, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    invoke-virtual {v15, v6, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_5

    .end local v6           #destination:Landroid/net/Uri;
    :cond_9
    move-object/from16 v6, p3

    .line 679
    goto :goto_6

    .line 695
    .end local v8           #key:Ljava/lang/String;
    .end local v12           #value:Ljava/lang/String;
    :cond_a
    return-void
.end method

.method private restoreWifiSupplicant(Ljava/lang/String;[BI)V
    .locals 10
    .parameter "filename"
    .parameter "bytes"
    .parameter "size"

    .prologue
    .line 868
    :try_start_0
    new-instance v6, Lcom/android/providers/settings/SettingsBackupAgent$WifiNetworkSettings;

    invoke-direct {v6, p0}, Lcom/android/providers/settings/SettingsBackupAgent$WifiNetworkSettings;-><init>(Lcom/android/providers/settings/SettingsBackupAgent;)V

    .line 870
    .local v6, supplicantImage:Lcom/android/providers/settings/SettingsBackupAgent$WifiNetworkSettings;
    new-instance v5, Ljava/io/File;

    const-string v7, "/data/misc/wifi/wpa_supplicant.conf"

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 871
    .local v5, supplicantFile:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 873
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    const-string v8, "/data/misc/wifi/wpa_supplicant.conf"

    invoke-direct {v7, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 874
    .local v2, in:Ljava/io/BufferedReader;
    invoke-virtual {v6, v2}, Lcom/android/providers/settings/SettingsBackupAgent$WifiNetworkSettings;->readNetworks(Ljava/io/BufferedReader;)V

    .line 875
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 877
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 881
    .end local v2           #in:Ljava/io/BufferedReader;
    :cond_0
    if-lez p3, :cond_2

    .line 882
    new-array v4, p3, [C

    .line 883
    .local v4, restoredAsBytes:[C
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p3, :cond_1

    aget-byte v7, p2, v1

    int-to-char v7, v7

    aput-char v7, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 884
    :cond_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/CharArrayReader;

    invoke-direct {v7, v4}, Ljava/io/CharArrayReader;-><init>([C)V

    invoke-direct {v2, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 885
    .restart local v2       #in:Ljava/io/BufferedReader;
    invoke-virtual {v6, v2}, Lcom/android/providers/settings/SettingsBackupAgent$WifiNetworkSettings;->readNetworks(Ljava/io/BufferedReader;)V

    .line 894
    .end local v1           #i:I
    .end local v2           #in:Ljava/io/BufferedReader;
    .end local v4           #restoredAsBytes:[C
    :cond_2
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v7, Ljava/io/FileWriter;

    const-string v8, "/data/misc/wifi/wpa_supplicant.conf"

    invoke-direct {v7, v8}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 895
    .local v0, bw:Ljava/io/BufferedWriter;
    invoke-direct {p0, v0}, Lcom/android/providers/settings/SettingsBackupAgent;->copyWifiSupplicantTemplate(Ljava/io/BufferedWriter;)V

    .line 898
    invoke-virtual {v6, v0}, Lcom/android/providers/settings/SettingsBackupAgent$WifiNetworkSettings;->write(Ljava/io/Writer;)V

    .line 899
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 903
    .end local v0           #bw:Ljava/io/BufferedWriter;
    .end local v5           #supplicantFile:Ljava/io/File;
    .end local v6           #supplicantImage:Lcom/android/providers/settings/SettingsBackupAgent$WifiNetworkSettings;
    :goto_1
    return-void

    .line 900
    :catch_0
    move-exception v3

    .line 901
    .local v3, ioe:Ljava/io/IOException;
    const-string v7, "SettingsBackupAgent"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Couldn\'t restore "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private writeBytes([BI[B)I
    .locals 2
    .parameter "out"
    .parameter "pos"
    .parameter "value"

    .prologue
    .line 935
    const/4 v0, 0x0

    array-length v1, p3

    invoke-static {p3, v0, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 936
    array-length v0, p3

    add-int/2addr v0, p2

    return v0
.end method

.method private writeIfChanged(JLjava/lang/String;[BLandroid/app/backup/BackupDataOutput;)J
    .locals 4
    .parameter "oldChecksum"
    .parameter "key"
    .parameter "data"
    .parameter "output"

    .prologue
    .line 570
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 571
    .local v0, checkSummer:Ljava/util/zip/CRC32;
    invoke-virtual {v0, p4}, Ljava/util/zip/CRC32;->update([B)V

    .line 572
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    .line 573
    .local v1, newChecksum:J
    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    .line 582
    .end local p1
    :goto_0
    return-wide p1

    .line 577
    .restart local p1
    :cond_0
    :try_start_0
    array-length v3, p4

    invoke-virtual {p5, p3, v3}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 578
    array-length v3, p4

    invoke-virtual {p5, p4, v3}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-wide p1, v1

    .line 582
    goto :goto_0

    .line 579
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private writeInt([BII)I
    .locals 2
    .parameter "out"
    .parameter "pos"
    .parameter "value"

    .prologue
    .line 927
    add-int/lit8 v0, p2, 0x0

    shr-int/lit8 v1, p3, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 928
    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p3, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 929
    add-int/lit8 v0, p2, 0x2

    shr-int/lit8 v1, p3, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 930
    add-int/lit8 v0, p2, 0x3

    shr-int/lit8 v1, p3, 0x0

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 931
    add-int/lit8 v0, p2, 0x4

    return v0
.end method

.method private writeNewChecksums([JLandroid/os/ParcelFileDescriptor;)V
    .locals 4
    .parameter "checksums"
    .parameter "newState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 558
    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v0, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 561
    .local v0, dataOutput:Ljava/io/DataOutputStream;
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 562
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_0

    .line 563
    aget-wide v2, p1, v1

    invoke-virtual {v0, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 562
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 565
    :cond_0
    invoke-virtual {v0}, Ljava/io/FilterOutputStream;->close()V

    .line 566
    return-void
.end method


# virtual methods
.method initWifiRestoreIfNecessary()V
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/providers/settings/SettingsBackupAgent;->mWifiRestore:Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;

    if-nez v0, :cond_0

    .line 357
    new-instance v0, Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;

    invoke-direct {v0, p0}, Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;-><init>(Lcom/android/providers/settings/SettingsBackupAgent;)V

    iput-object v0, p0, Lcom/android/providers/settings/SettingsBackupAgent;->mWifiRestore:Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;

    .line 359
    :cond_0
    return-void
.end method

.method public onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .locals 35
    .parameter "oldState"
    .parameter "data"
    .parameter "newState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 274
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/settings/SettingsBackupAgent;->getSystemSettings()[B

    move-result-object v7

    .line 275
    .local v7, systemSettingsData:[B
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/settings/SettingsBackupAgent;->getSecureSettings()[B

    move-result-object v12

    .line 276
    .local v12, secureSettingsData:[B
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/settings/SettingsBackupAgent;->getGlobalSettings()[B

    move-result-object v17

    .line 277
    .local v17, globalSettingsData:[B
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/settings/SettingsBackupAgent;->mSettingsHelper:Lcom/android/providers/settings/SettingsHelper;

    invoke-virtual {v3}, Lcom/android/providers/settings/SettingsHelper;->getLocaleData()[B

    move-result-object v22

    .line 278
    .local v22, locale:[B
    const-string v3, "/data/misc/wifi/wpa_supplicant.conf"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/providers/settings/SettingsBackupAgent;->getWifiSupplicant(Ljava/lang/String;)[B

    move-result-object v27

    .line 279
    .local v27, wifiSupplicantData:[B
    sget-object v3, Lcom/android/providers/settings/SettingsBackupAgent;->mWifiConfigFile:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/providers/settings/SettingsBackupAgent;->getFileData(Ljava/lang/String;)[B

    move-result-object v32

    .line 281
    .local v32, wifiConfigData:[B
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/settings/SettingsBackupAgent;->readOldChecksums(Landroid/os/ParcelFileDescriptor;)[J

    move-result-object v34

    .line 283
    .local v34, stateChecksums:[J
    const/4 v9, 0x0

    const/4 v3, 0x0

    aget-wide v4, v34, v3

    const-string v6, "system"

    move-object/from16 v3, p0

    move-object/from16 v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/android/providers/settings/SettingsBackupAgent;->writeIfChanged(JLjava/lang/String;[BLandroid/app/backup/BackupDataOutput;)J

    move-result-wide v3

    aput-wide v3, v34, v9

    .line 285
    const/4 v3, 0x1

    const/4 v4, 0x1

    aget-wide v9, v34, v4

    const-string v11, "secure"

    move-object/from16 v8, p0

    move-object/from16 v13, p2

    invoke-direct/range {v8 .. v13}, Lcom/android/providers/settings/SettingsBackupAgent;->writeIfChanged(JLjava/lang/String;[BLandroid/app/backup/BackupDataOutput;)J

    move-result-wide v4

    aput-wide v4, v34, v3

    .line 287
    const/4 v3, 0x5

    const/4 v4, 0x5

    aget-wide v14, v34, v4

    const-string v16, "global"

    move-object/from16 v13, p0

    move-object/from16 v18, p2

    invoke-direct/range {v13 .. v18}, Lcom/android/providers/settings/SettingsBackupAgent;->writeIfChanged(JLjava/lang/String;[BLandroid/app/backup/BackupDataOutput;)J

    move-result-wide v4

    aput-wide v4, v34, v3

    .line 289
    const/4 v3, 0x2

    const/4 v4, 0x2

    aget-wide v19, v34, v4

    const-string v21, "locale"

    move-object/from16 v18, p0

    move-object/from16 v23, p2

    invoke-direct/range {v18 .. v23}, Lcom/android/providers/settings/SettingsBackupAgent;->writeIfChanged(JLjava/lang/String;[BLandroid/app/backup/BackupDataOutput;)J

    move-result-wide v4

    aput-wide v4, v34, v3

    .line 291
    const/4 v3, 0x3

    const/4 v4, 0x3

    aget-wide v24, v34, v4

    const-string v26, "\uffedWIFI"

    move-object/from16 v23, p0

    move-object/from16 v28, p2

    invoke-direct/range {v23 .. v28}, Lcom/android/providers/settings/SettingsBackupAgent;->writeIfChanged(JLjava/lang/String;[BLandroid/app/backup/BackupDataOutput;)J

    move-result-wide v4

    aput-wide v4, v34, v3

    .line 294
    const/4 v3, 0x4

    const/4 v4, 0x4

    aget-wide v29, v34, v4

    const-string v31, "\uffedCONFIG_WIFI"

    move-object/from16 v28, p0

    move-object/from16 v33, p2

    invoke-direct/range {v28 .. v33}, Lcom/android/providers/settings/SettingsBackupAgent;->writeIfChanged(JLjava/lang/String;[BLandroid/app/backup/BackupDataOutput;)J

    move-result-wide v4

    aput-wide v4, v34, v3

    .line 298
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/providers/settings/SettingsBackupAgent;->writeNewChecksums([JLandroid/os/ParcelFileDescriptor;)V

    .line 299
    return-void
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 263
    new-instance v1, Lcom/android/providers/settings/SettingsHelper;

    invoke-direct {v1, p0}, Lcom/android/providers/settings/SettingsHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/providers/settings/SettingsBackupAgent;->mSettingsHelper:Lcom/android/providers/settings/SettingsHelper;

    .line 264
    invoke-super {p0}, Landroid/app/backup/BackupAgent;->onCreate()V

    .line 266
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 267
    .local v0, mWfm:Landroid/net/wifi/WifiManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfigFile()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/providers/settings/SettingsBackupAgent;->mWifiConfigFile:Ljava/lang/String;

    .line 268
    :cond_0
    return-void
.end method

.method public onFullBackup(Landroid/app/backup/FullBackupDataOutput;)V
    .locals 18
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 403
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/settings/SettingsBackupAgent;->getSystemSettings()[B

    move-result-object v12

    .line 404
    .local v12, systemSettingsData:[B
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/settings/SettingsBackupAgent;->getSecureSettings()[B

    move-result-object v10

    .line 405
    .local v10, secureSettingsData:[B
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/settings/SettingsBackupAgent;->getGlobalSettings()[B

    move-result-object v5

    .line 406
    .local v5, globalSettingsData:[B
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/providers/settings/SettingsBackupAgent;->mSettingsHelper:Lcom/android/providers/settings/SettingsHelper;

    invoke-virtual {v15}, Lcom/android/providers/settings/SettingsHelper;->getLocaleData()[B

    move-result-object v6

    .line 407
    .local v6, locale:[B
    const-string v15, "/data/misc/wifi/wpa_supplicant.conf"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/providers/settings/SettingsBackupAgent;->getWifiSupplicant(Ljava/lang/String;)[B

    move-result-object v14

    .line 408
    .local v14, wifiSupplicantData:[B
    sget-object v15, Lcom/android/providers/settings/SettingsBackupAgent;->mWifiConfigFile:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/providers/settings/SettingsBackupAgent;->getFileData(Ljava/lang/String;)[B

    move-result-object v13

    .line 412
    .local v13, wifiConfigData:[B
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getFilesDir()Ljava/io/File;

    move-result-object v15

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    .line 413
    .local v9, root:Ljava/lang/String;
    new-instance v11, Ljava/io/File;

    const-string v15, "flattened-data"

    invoke-direct {v11, v9, v15}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    .local v11, stage:Ljava/io/File;
    const/4 v7, 0x0

    .line 416
    .local v7, out:Ljava/io/DataOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 417
    .local v4, filestream:Ljava/io/FileOutputStream;
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 418
    .local v2, bufstream:Ljava/io/BufferedOutputStream;
    new-instance v8, Ljava/io/DataOutputStream;

    invoke-direct {v8, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 421
    .end local v7           #out:Ljava/io/DataOutputStream;
    .local v8, out:Ljava/io/DataOutputStream;
    const/4 v15, 0x2

    :try_start_1
    invoke-virtual {v8, v15}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 424
    array-length v15, v12

    invoke-virtual {v8, v15}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 425
    invoke-virtual {v8, v12}, Ljava/io/OutputStream;->write([B)V

    .line 427
    array-length v15, v10

    invoke-virtual {v8, v15}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 428
    invoke-virtual {v8, v10}, Ljava/io/OutputStream;->write([B)V

    .line 430
    array-length v15, v5

    invoke-virtual {v8, v15}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 431
    invoke-virtual {v8, v5}, Ljava/io/OutputStream;->write([B)V

    .line 433
    array-length v15, v6

    invoke-virtual {v8, v15}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 434
    invoke-virtual {v8, v6}, Ljava/io/OutputStream;->write([B)V

    .line 436
    array-length v15, v14

    invoke-virtual {v8, v15}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 437
    invoke-virtual {v8, v14}, Ljava/io/OutputStream;->write([B)V

    .line 439
    array-length v15, v13

    invoke-virtual {v8, v15}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 440
    invoke-virtual {v8, v13}, Ljava/io/OutputStream;->write([B)V

    .line 442
    invoke-virtual {v8}, Ljava/io/DataOutputStream;->flush()V

    .line 445
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v11, v1}, Landroid/app/backup/BackupAgent;->fullBackupFile(Ljava/io/File;Landroid/app/backup/FullBackupDataOutput;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 447
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 448
    if-eqz v8, :cond_0

    .line 450
    :try_start_2
    invoke-virtual {v8}, Ljava/io/FilterOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 456
    :cond_0
    :goto_0
    return-void

    .line 451
    :catch_0
    move-exception v3

    .line 452
    .local v3, e:Ljava/io/IOException;
    const-string v15, "SettingsBackupAgent"

    const-string v16, "onFullBackup : out.close() error"

    invoke-static/range {v15 .. v16}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 447
    .end local v2           #bufstream:Ljava/io/BufferedOutputStream;
    .end local v3           #e:Ljava/io/IOException;
    .end local v4           #filestream:Ljava/io/FileOutputStream;
    .end local v8           #out:Ljava/io/DataOutputStream;
    .restart local v7       #out:Ljava/io/DataOutputStream;
    :catchall_0
    move-exception v15

    :goto_1
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 448
    if-eqz v7, :cond_1

    .line 450
    :try_start_3
    invoke-virtual {v7}, Ljava/io/FilterOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 453
    :cond_1
    :goto_2
    throw v15

    .line 451
    :catch_1
    move-exception v3

    .line 452
    .restart local v3       #e:Ljava/io/IOException;
    const-string v16, "SettingsBackupAgent"

    const-string v17, "onFullBackup : out.close() error"

    invoke-static/range {v16 .. v17}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 447
    .end local v3           #e:Ljava/io/IOException;
    .end local v7           #out:Ljava/io/DataOutputStream;
    .restart local v2       #bufstream:Ljava/io/BufferedOutputStream;
    .restart local v4       #filestream:Ljava/io/FileOutputStream;
    .restart local v8       #out:Ljava/io/DataOutputStream;
    :catchall_1
    move-exception v15

    move-object v7, v8

    .end local v8           #out:Ljava/io/DataOutputStream;
    .restart local v7       #out:Ljava/io/DataOutputStream;
    goto :goto_1
.end method

.method public onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
    .locals 8
    .parameter "data"
    .parameter "appVersionCode"
    .parameter "newState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 365
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 366
    .local v2, movedToGlobal:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {v2}, Landroid/provider/Settings$System;->getMovedKeys(Ljava/util/HashSet;)V

    .line 367
    invoke-static {v2}, Landroid/provider/Settings$Secure;->getMovedKeys(Ljava/util/HashSet;)V

    .line 369
    :goto_0
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->readNextHeader()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 370
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 371
    .local v0, key:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    move-result v3

    .line 372
    .local v3, size:I
    const-string v4, "system"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 373
    sget-object v4, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, p1, v4, v2}, Lcom/android/providers/settings/SettingsBackupAgent;->restoreSettings(Landroid/app/backup/BackupDataInput;Landroid/net/Uri;Ljava/util/HashSet;)V

    .line 374
    iget-object v4, p0, Lcom/android/providers/settings/SettingsBackupAgent;->mSettingsHelper:Lcom/android/providers/settings/SettingsHelper;

    invoke-virtual {v4}, Lcom/android/providers/settings/SettingsHelper;->applyAudioSettings()V

    goto :goto_0

    .line 375
    :cond_0
    const-string v4, "secure"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 376
    sget-object v4, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, p1, v4, v2}, Lcom/android/providers/settings/SettingsBackupAgent;->restoreSettings(Landroid/app/backup/BackupDataInput;Landroid/net/Uri;Ljava/util/HashSet;)V

    goto :goto_0

    .line 377
    :cond_1
    const-string v4, "global"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 378
    sget-object v4, Landroid/provider/Settings$Global;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-direct {p0, p1, v4, v5}, Lcom/android/providers/settings/SettingsBackupAgent;->restoreSettings(Landroid/app/backup/BackupDataInput;Landroid/net/Uri;Ljava/util/HashSet;)V

    goto :goto_0

    .line 379
    :cond_2
    const-string v4, "\uffedWIFI"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 380
    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsBackupAgent;->initWifiRestoreIfNecessary()V

    .line 381
    iget-object v4, p0, Lcom/android/providers/settings/SettingsBackupAgent;->mWifiRestore:Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;

    invoke-virtual {v4, p1}, Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;->incorporateWifiSupplicant(Landroid/app/backup/BackupDataInput;)V

    goto :goto_0

    .line 382
    :cond_3
    const-string v4, "locale"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 383
    new-array v1, v3, [B

    .line 384
    .local v1, localeData:[B
    const/4 v4, 0x0

    invoke-virtual {p1, v1, v4, v3}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    .line 385
    iget-object v4, p0, Lcom/android/providers/settings/SettingsBackupAgent;->mSettingsHelper:Lcom/android/providers/settings/SettingsHelper;

    invoke-virtual {v4, v1, v3}, Lcom/android/providers/settings/SettingsHelper;->setLocaleData([BI)V

    goto :goto_0

    .line 386
    .end local v1           #localeData:[B
    :cond_4
    const-string v4, "\uffedCONFIG_WIFI"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 387
    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsBackupAgent;->initWifiRestoreIfNecessary()V

    .line 388
    iget-object v4, p0, Lcom/android/providers/settings/SettingsBackupAgent;->mWifiRestore:Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;

    invoke-virtual {v4, p1}, Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;->incorporateWifiConfigFile(Landroid/app/backup/BackupDataInput;)V

    goto :goto_0

    .line 390
    :cond_5
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->skipEntityData()V

    goto :goto_0

    .line 396
    .end local v0           #key:Ljava/lang/String;
    .end local v3           #size:I
    :cond_6
    iget-object v4, p0, Lcom/android/providers/settings/SettingsBackupAgent;->mWifiRestore:Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;

    if-eqz v4, :cond_7

    .line 397
    new-instance v4, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v5, p0, Lcom/android/providers/settings/SettingsBackupAgent;->mWifiRestore:Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;

    const-wide/32 v6, 0xea60

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 399
    :cond_7
    return-void
.end method

.method public onRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJ)V
    .locals 11
    .parameter "data"
    .parameter "size"
    .parameter "type"
    .parameter "domain"
    .parameter "relpath"
    .parameter "mode"
    .parameter "mtime"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 466
    new-instance v2, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 467
    .local v2, instream:Ljava/io/FileInputStream;
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 469
    .local v1, in:Ljava/io/DataInputStream;
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 471
    .local v6, version:I
    const/4 v7, 0x2

    if-gt v6, v7, :cond_8

    .line 473
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 474
    .local v3, movedToGlobal:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {v3}, Landroid/provider/Settings$System;->getMovedKeys(Ljava/util/HashSet;)V

    .line 475
    invoke-static {v3}, Landroid/provider/Settings$Secure;->getMovedKeys(Ljava/util/HashSet;)V

    .line 478
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 480
    .local v4, nBytes:I
    new-array v0, v4, [B

    .line 481
    .local v0, buffer:[B
    const/4 v7, 0x0

    invoke-virtual {v1, v0, v7, v4}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 482
    sget-object v7, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v0, v4, v7, v3}, Lcom/android/providers/settings/SettingsBackupAgent;->restoreSettings([BILandroid/net/Uri;Ljava/util/HashSet;)V

    .line 485
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 487
    array-length v7, v0

    if-le v4, v7, :cond_0

    new-array v0, v4, [B

    .line 488
    :cond_0
    const/4 v7, 0x0

    invoke-virtual {v1, v0, v7, v4}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 489
    sget-object v7, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v0, v4, v7, v3}, Lcom/android/providers/settings/SettingsBackupAgent;->restoreSettings([BILandroid/net/Uri;Ljava/util/HashSet;)V

    .line 492
    const/4 v7, 0x2

    if-lt v6, v7, :cond_2

    .line 493
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 495
    array-length v7, v0

    if-le v4, v7, :cond_1

    new-array v0, v4, [B

    .line 496
    :cond_1
    const/4 v7, 0x0

    invoke-virtual {v1, v0, v7, v4}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 497
    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 498
    sget-object v7, Landroid/provider/Settings$Global;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v0, v4, v7, v3}, Lcom/android/providers/settings/SettingsBackupAgent;->restoreSettings([BILandroid/net/Uri;Ljava/util/HashSet;)V

    .line 502
    :cond_2
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 504
    array-length v7, v0

    if-le v4, v7, :cond_3

    new-array v0, v4, [B

    .line 505
    :cond_3
    const/4 v7, 0x0

    invoke-virtual {v1, v0, v7, v4}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 506
    iget-object v7, p0, Lcom/android/providers/settings/SettingsBackupAgent;->mSettingsHelper:Lcom/android/providers/settings/SettingsHelper;

    invoke-virtual {v7, v0, v4}, Lcom/android/providers/settings/SettingsHelper;->setLocaleData([BI)V

    .line 509
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 511
    array-length v7, v0

    if-le v4, v7, :cond_4

    new-array v0, v4, [B

    .line 512
    :cond_4
    const/4 v7, 0x0

    invoke-virtual {v1, v0, v7, v4}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 513
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/android/providers/settings/SettingsBackupAgent;->enableWifi(Z)I

    move-result v5

    .line 514
    .local v5, retainedWifiState:I
    const-string v7, "/data/misc/wifi/wpa_supplicant.conf"

    invoke-direct {p0, v7, v0, v4}, Lcom/android/providers/settings/SettingsBackupAgent;->restoreWifiSupplicant(Ljava/lang/String;[BI)V

    .line 515
    const-string v7, "/data/misc/wifi/wpa_supplicant.conf"

    const/16 v8, 0x1b0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v9

    const/16 v10, 0x3f2

    invoke-static {v7, v8, v9, v10}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 520
    const/4 v7, 0x3

    if-eq v5, v7, :cond_5

    const/4 v7, 0x2

    if-ne v5, v7, :cond_7

    :cond_5
    const/4 v7, 0x1

    :goto_0
    invoke-direct {p0, v7}, Lcom/android/providers/settings/SettingsBackupAgent;->enableWifi(Z)I

    .line 524
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 526
    array-length v7, v0

    if-le v4, v7, :cond_6

    new-array v0, v4, [B

    .line 527
    :cond_6
    const/4 v7, 0x0

    invoke-virtual {v1, v0, v7, v4}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 528
    sget-object v7, Lcom/android/providers/settings/SettingsBackupAgent;->mWifiConfigFile:Ljava/lang/String;

    invoke-direct {p0, v7, v0, v4}, Lcom/android/providers/settings/SettingsBackupAgent;->restoreFileData(Ljava/lang/String;[BI)V

    .line 535
    return-void

    .line 520
    :cond_7
    const/4 v7, 0x0

    goto :goto_0

    .line 532
    .end local v0           #buffer:[B
    .end local v3           #movedToGlobal:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v4           #nBytes:I
    .end local v5           #retainedWifiState:I
    :cond_8
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 533
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Invalid file schema"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
.end method
