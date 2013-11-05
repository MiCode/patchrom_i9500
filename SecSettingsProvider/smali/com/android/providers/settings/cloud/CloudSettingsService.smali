.class public Lcom/android/providers/settings/cloud/CloudSettingsService;
.super Landroid/app/IntentService;
.source "CloudSettingsService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    const-string v0, "CloudSettingsService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method private configConnection(Lcom/android/providers/settings/cloud/network/Connection;)V
    .locals 1
    .parameter "conn"

    .prologue
    .line 142
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/providers/settings/cloud/network/Connection;->setUseGet(Z)V

    .line 143
    return-void
.end method

.method private downloadCloudAppControlList(Lcom/android/providers/settings/cloud/network/CloudAppControlDownloadInfo;)Ljava/io/File;
    .locals 7
    .parameter "downloadInfo"

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/android/providers/settings/cloud/CloudSettingsService;->getFilesDir()Ljava/io/File;

    move-result-object v3

    .line 147
    .local v3, fileDir:Ljava/io/File;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 148
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 150
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const-string v5, "cloud_app_control"

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .local v0, cloudAppControlListFile:Ljava/io/File;
    new-instance v1, Lcom/android/providers/settings/cloud/network/Connection;

    invoke-virtual {p1}, Lcom/android/providers/settings/cloud/network/CloudAppControlDownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/providers/settings/cloud/network/Connection;-><init>(Ljava/lang/String;)V

    .line 152
    .local v1, conn:Lcom/android/providers/settings/cloud/network/Connection;
    invoke-direct {p0, v1}, Lcom/android/providers/settings/cloud/CloudSettingsService;->configConnection(Lcom/android/providers/settings/cloud/network/Connection;)V

    .line 154
    :try_start_0
    invoke-virtual {v1, v0}, Lcom/android/providers/settings/cloud/network/Connection;->requestFile(Ljava/io/File;)Lcom/android/providers/settings/cloud/network/Connection$NetworkError;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :goto_0
    const-string v4, "CloudSettingsService"

    const-string v5, "download list succeed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    return-object v0

    .line 155
    :catch_0
    move-exception v2

    .line 156
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "CloudSettingsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "download list failed : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getAppControlDownloadInfo()Lcom/android/providers/settings/cloud/network/CloudAppControlDownloadInfo;
    .locals 5

    .prologue
    .line 190
    const/4 v1, 0x0

    .line 191
    .local v1, downloadInfo:Lcom/android/providers/settings/cloud/network/CloudAppControlDownloadInfo;
    new-instance v0, Lcom/android/providers/settings/cloud/network/Connection;

    sget-object v3, Lcom/android/providers/settings/cloud/Constants;->CLOUD_APP_CONTROL_COMPLETE_LIST_URL:Ljava/lang/String;

    invoke-direct {v0, v3}, Lcom/android/providers/settings/cloud/network/Connection;-><init>(Ljava/lang/String;)V

    .line 192
    .local v0, conn:Lcom/android/providers/settings/cloud/network/Connection;
    invoke-direct {p0, v0}, Lcom/android/providers/settings/cloud/CloudSettingsService;->configConnection(Lcom/android/providers/settings/cloud/network/Connection;)V

    .line 193
    invoke-virtual {v0}, Lcom/android/providers/settings/cloud/network/Connection;->requestJSON()Lcom/android/providers/settings/cloud/network/Connection$NetworkError;

    move-result-object v3

    sget-object v4, Lcom/android/providers/settings/cloud/network/Connection$NetworkError;->OK:Lcom/android/providers/settings/cloud/network/Connection$NetworkError;

    if-ne v3, v4, :cond_0

    .line 194
    invoke-virtual {v0}, Lcom/android/providers/settings/cloud/network/Connection;->getResponse()Lorg/json/JSONObject;

    move-result-object v2

    .line 195
    .local v2, mainObject:Lorg/json/JSONObject;
    invoke-direct {p0, v2}, Lcom/android/providers/settings/cloud/CloudSettingsService;->parseCloudAppControlListDownloadInfo(Lorg/json/JSONObject;)Lcom/android/providers/settings/cloud/network/CloudAppControlDownloadInfo;

    move-result-object v1

    .line 197
    .end local v2           #mainObject:Lorg/json/JSONObject;
    :cond_0
    return-object v1
.end method

.method private parseCloudAppControlListDownloadInfo(Lorg/json/JSONObject;)Lcom/android/providers/settings/cloud/network/CloudAppControlDownloadInfo;
    .locals 7
    .parameter "obj"

    .prologue
    const/4 v2, 0x0

    .line 201
    if-nez p1, :cond_1

    .line 202
    const-string v3, "CloudSettingsService"

    const-string v4, "[AppControlDownloadInfo] JSON : root is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 219
    :cond_0
    :goto_0
    return-object v1

    .line 205
    :cond_1
    new-instance v1, Lcom/android/providers/settings/cloud/network/CloudAppControlDownloadInfo;

    invoke-direct {v1}, Lcom/android/providers/settings/cloud/network/CloudAppControlDownloadInfo;-><init>()V

    .line 207
    .local v1, info:Lcom/android/providers/settings/cloud/network/CloudAppControlDownloadInfo;
    :try_start_0
    const-string v3, "host"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/providers/settings/cloud/network/CloudAppControlDownloadInfo;->mHost:Ljava/lang/String;

    .line 208
    const-string v3, "url"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/providers/settings/cloud/network/CloudAppControlDownloadInfo;->mList:Ljava/lang/String;

    .line 209
    const-string v3, "hash"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/providers/settings/cloud/network/CloudAppControlDownloadInfo;->mHash:Ljava/lang/String;

    .line 210
    const-string v3, "v"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v1, Lcom/android/providers/settings/cloud/network/CloudAppControlDownloadInfo;->mVersion:J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    iget-object v3, v1, Lcom/android/providers/settings/cloud/network/CloudAppControlDownloadInfo;->mHost:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v1, Lcom/android/providers/settings/cloud/network/CloudAppControlDownloadInfo;->mList:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v1, Lcom/android/providers/settings/cloud/network/CloudAppControlDownloadInfo;->mHash:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-wide v3, v1, Lcom/android/providers/settings/cloud/network/CloudAppControlDownloadInfo;->mVersion:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gtz v3, :cond_0

    .line 216
    :cond_2
    const-string v3, "CloudSettingsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[AppControlDownloadInfo] JSON : some string is null : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 217
    goto :goto_0

    .line 211
    :catch_0
    move-exception v0

    .local v0, e:Lorg/json/JSONException;
    move-object v1, v2

    .line 212
    goto :goto_0
.end method

.method private parseCloudAppControlListPage(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 13
    .parameter "obj"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 223
    if-nez p1, :cond_1

    .line 224
    const-string v11, "CloudSettingsService"

    const-string v12, "[CloudAppControlListPage] JSON : root is null"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v9, v10

    .line 252
    :cond_0
    :goto_0
    return-object v9

    .line 227
    :cond_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 229
    .local v9, resultList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :try_start_0
    const-string v11, "l"

    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 230
    .local v5, listString:Ljava/lang/String;
    const-string v11, "\n"

    invoke-virtual {v5, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 231
    .local v6, listStrings:[Ljava/lang/String;
    if-nez v6, :cond_2

    move-object v9, v10

    .line 232
    goto :goto_0

    .line 234
    :cond_2
    move-object v0, v6

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v8, v0, v3

    .line 235
    .local v8, recordString:Ljava/lang/String;
    const-string v11, ","

    invoke-virtual {v8, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 236
    .local v7, record:[Ljava/lang/String;
    array-length v11, v7

    const/4 v12, 0x6

    if-eq v11, v12, :cond_3

    .line 234
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 239
    :cond_3
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 240
    .local v1, contentValues:Landroid/content/ContentValues;
    const-string v11, "data_id"

    const/4 v12, 0x0

    aget-object v12, v7, v12

    invoke-virtual {v1, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const-string v11, "package_name"

    const/4 v12, 0x1

    aget-object v12, v7, v12

    invoke-virtual {v1, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string v11, "release_key"

    const/4 v12, 0x2

    aget-object v12, v7, v12

    invoke-virtual {v1, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const-string v11, "max_version_code"

    const/4 v12, 0x3

    aget-object v12, v7, v12

    invoke-virtual {v1, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string v11, "min_version_code"

    const/4 v12, 0x4

    aget-object v12, v7, v12

    invoke-virtual {v1, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const-string v11, "attributes"

    const/4 v12, 0x5

    aget-object v12, v7, v12

    invoke-virtual {v1, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 248
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #contentValues:Landroid/content/ContentValues;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #listString:Ljava/lang/String;
    .end local v6           #listStrings:[Ljava/lang/String;
    .end local v7           #record:[Ljava/lang/String;
    .end local v8           #recordString:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 249
    .local v2, e:Lorg/json/JSONException;
    const-string v11, "CloudSettingsService"

    const-string v12, "[CloudAppControlListPage] JSON : get list page string failed"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v9, v10

    .line 250
    goto :goto_0
.end method

.method private updateCloudAppControlList()V
    .locals 26

    .prologue
    .line 59
    const-string v22, "cloud_app_control_version"

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/android/providers/settings/cloud/util/Utils;->getLongPref(Ljava/lang/String;Landroid/content/Context;)J

    move-result-wide v5

    .line 61
    .local v5, cloudAppControlListVersion:J
    const-wide/16 v22, 0x0

    cmp-long v22, v5, v22

    if-lez v22, :cond_3

    .line 62
    const-string v22, "last_update_list_time"

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/android/providers/settings/cloud/util/Utils;->getLongPref(Ljava/lang/String;Landroid/content/Context;)J

    move-result-wide v11

    .line 65
    .local v11, lastUpdateListTime:J
    invoke-static/range {p0 .. p0}, Lcom/android/providers/settings/cloud/util/Utils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v22

    if-nez v22, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    sub-long v22, v22, v11

    const-wide/32 v24, 0xf731400

    cmp-long v22, v22, v24

    if-gez v22, :cond_1

    .line 139
    .end local v11           #lastUpdateListTime:J
    :cond_0
    :goto_0
    return-void

    .line 70
    .restart local v11       #lastUpdateListTime:J
    :cond_1
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v17, recordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .local v18, recordListPage:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const-wide/16 v20, 0x0

    .line 73
    .local v20, version:J
    const/4 v14, 0x0

    .line 75
    .local v14, offset:I
    :cond_2
    new-instance v7, Lcom/android/providers/settings/cloud/network/Connection;

    sget-object v22, Lcom/android/providers/settings/cloud/Constants;->CLOUD_APP_CONTROL_INCREMENTAL_LIST_URL:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-direct {v7, v0}, Lcom/android/providers/settings/cloud/network/Connection;-><init>(Ljava/lang/String;)V

    .line 76
    .local v7, conn:Lcom/android/providers/settings/cloud/network/Connection;
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/providers/settings/cloud/CloudSettingsService;->configConnection(Lcom/android/providers/settings/cloud/network/Connection;)V

    .line 77
    new-instance v15, Lcom/android/providers/settings/cloud/network/Connection$Parameter;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v15, v7}, Lcom/android/providers/settings/cloud/network/Connection$Parameter;-><init>(Lcom/android/providers/settings/cloud/network/Connection;)V

    .line 78
    .local v15, param:Lcom/android/providers/settings/cloud/network/Connection$Parameter;
    const-string v22, "version"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ""

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v15, v0, v1}, Lcom/android/providers/settings/cloud/network/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/settings/cloud/network/Connection$Parameter;

    .line 79
    const-string v22, "len"

    const-string v23, "20"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v15, v0, v1}, Lcom/android/providers/settings/cloud/network/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/settings/cloud/network/Connection$Parameter;

    .line 80
    const-string v22, "offset"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ""

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v15, v0, v1}, Lcom/android/providers/settings/cloud/network/Connection$Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/settings/cloud/network/Connection$Parameter;

    .line 81
    invoke-virtual {v7}, Lcom/android/providers/settings/cloud/network/Connection;->requestJSON()Lcom/android/providers/settings/cloud/network/Connection$NetworkError;

    move-result-object v22

    sget-object v23, Lcom/android/providers/settings/cloud/network/Connection$NetworkError;->OK:Lcom/android/providers/settings/cloud/network/Connection$NetworkError;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_0

    .line 84
    invoke-virtual {v7}, Lcom/android/providers/settings/cloud/network/Connection;->getResponse()Lorg/json/JSONObject;

    move-result-object v13

    .line 86
    .local v13, obj:Lorg/json/JSONObject;
    :try_start_0
    const-string v22, "v"

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v20

    .line 90
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/providers/settings/cloud/CloudSettingsService;->parseCloudAppControlListPage(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v18

    .line 92
    const-wide/16 v22, 0x0

    cmp-long v22, v20, v22

    if-lez v22, :cond_0

    if-eqz v18, :cond_0

    .line 95
    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 96
    add-int/lit8 v14, v14, 0x14

    .line 98
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v22

    if-gtz v22, :cond_2

    .line 100
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    new-array v0, v0, [Landroid/content/ContentValues;

    move-object/from16 v16, v0

    .line 101
    .local v16, recordArray:[Landroid/content/ContentValues;
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 103
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/settings/cloud/CloudSettingsService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    sget-object v23, Lcom/android/providers/settings/cloud/Constants$CloudAppControlList;->URI_CLOUD_APP_CONTROL_LIST:Landroid/net/Uri;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v19

    .line 104
    .local v19, ret:I
    if-ltz v19, :cond_0

    .line 105
    const-string v22, "last_update_list_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    move-object/from16 v0, v22

    move-wide/from16 v1, v23

    move-object/from16 v3, p0

    invoke-static {v0, v1, v2, v3}, Lcom/android/providers/settings/cloud/util/Utils;->setLongPref(Ljava/lang/String;JLandroid/content/Context;)V

    .line 106
    const-string v22, "cloud_app_control_version"

    move-object/from16 v0, v22

    move-wide/from16 v1, v20

    move-object/from16 v3, p0

    invoke-static {v0, v1, v2, v3}, Lcom/android/providers/settings/cloud/util/Utils;->setLongPref(Ljava/lang/String;JLandroid/content/Context;)V

    goto/16 :goto_0

    .line 87
    .end local v16           #recordArray:[Landroid/content/ContentValues;
    .end local v19           #ret:I
    :catch_0
    move-exception v9

    .line 88
    .local v9, e:Lorg/json/JSONException;
    goto/16 :goto_0

    .line 110
    .end local v7           #conn:Lcom/android/providers/settings/cloud/network/Connection;
    .end local v9           #e:Lorg/json/JSONException;
    .end local v11           #lastUpdateListTime:J
    .end local v13           #obj:Lorg/json/JSONObject;
    .end local v14           #offset:I
    .end local v15           #param:Lcom/android/providers/settings/cloud/network/Connection$Parameter;
    .end local v17           #recordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v18           #recordListPage:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v20           #version:J
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/settings/cloud/CloudSettingsService;->getAppControlDownloadInfo()Lcom/android/providers/settings/cloud/network/CloudAppControlDownloadInfo;

    move-result-object v8

    .line 111
    .local v8, downloadInfo:Lcom/android/providers/settings/cloud/network/CloudAppControlDownloadInfo;
    if-nez v8, :cond_4

    .line 112
    const-string v22, "CloudSettingsService"

    const-string v23, "get list download info failed : downloadInfo null"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 116
    :cond_4
    const-string v22, "CloudSettingsService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "download list begin : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/providers/settings/cloud/CloudSettingsService;->downloadCloudAppControlList(Lcom/android/providers/settings/cloud/network/CloudAppControlDownloadInfo;)Ljava/io/File;

    move-result-object v4

    .line 120
    .local v4, cloudAppControlList:Ljava/io/File;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v22

    if-eqz v22, :cond_0

    .line 123
    invoke-static {v4}, Lcom/android/providers/settings/cloud/util/Coder;->encodeMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v10

    .line 124
    .local v10, fileHash:Ljava/lang/String;
    iget-object v0, v8, Lcom/android/providers/settings/cloud/network/CloudAppControlDownloadInfo;->mHash:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-static {v10, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 127
    const/16 v19, -0x1

    .line 129
    .restart local v19       #ret:I
    :try_start_1
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/providers/settings/cloud/CloudSettingsService;->updateDatabase(Ljava/io/File;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v19

    .line 134
    if-ltz v19, :cond_0

    .line 135
    const-string v22, "last_update_list_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    move-object/from16 v0, v22

    move-wide/from16 v1, v23

    move-object/from16 v3, p0

    invoke-static {v0, v1, v2, v3}, Lcom/android/providers/settings/cloud/util/Utils;->setLongPref(Ljava/lang/String;JLandroid/content/Context;)V

    .line 136
    const-string v22, "cloud_app_control_version"

    iget-wide v0, v8, Lcom/android/providers/settings/cloud/network/CloudAppControlDownloadInfo;->mVersion:J

    move-wide/from16 v23, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v23

    move-object/from16 v3, p0

    invoke-static {v0, v1, v2, v3}, Lcom/android/providers/settings/cloud/util/Utils;->setLongPref(Ljava/lang/String;JLandroid/content/Context;)V

    goto/16 :goto_0

    .line 130
    :catch_1
    move-exception v9

    .line 131
    .local v9, e:Ljava/lang/Exception;
    const-string v22, "CloudSettingsService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "update database for list failed : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private updateDatabase(Ljava/io/File;)I
    .locals 8
    .parameter "originalFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 165
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 166
    .local v5, recordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 169
    .local v0, br:Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, lineString:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 170
    const-string v6, ","

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 171
    .local v3, record:[Ljava/lang/String;
    array-length v6, v3

    const/4 v7, 0x6

    if-ne v6, v7, :cond_0

    .line 174
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 175
    .local v1, contentValues:Landroid/content/ContentValues;
    const-string v6, "data_id"

    const/4 v7, 0x0

    aget-object v7, v3, v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v6, "package_name"

    const/4 v7, 0x1

    aget-object v7, v3, v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string v6, "release_key"

    const/4 v7, 0x2

    aget-object v7, v3, v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string v6, "max_version_code"

    const/4 v7, 0x3

    aget-object v7, v3, v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string v6, "min_version_code"

    const/4 v7, 0x4

    aget-object v7, v3, v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const-string v6, "attributes"

    const/4 v7, 0x5

    aget-object v7, v3, v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 183
    .end local v1           #contentValues:Landroid/content/ContentValues;
    .end local v3           #record:[Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 184
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v4, v6, [Landroid/content/ContentValues;

    .line 185
    .local v4, recordArray:[Landroid/content/ContentValues;
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 186
    invoke-virtual {p0}, Lcom/android/providers/settings/cloud/CloudSettingsService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/providers/settings/cloud/Constants$CloudAppControlList;->URI_CLOUD_APP_CONTROL_LIST:Landroid/net/Uri;

    invoke-virtual {v6, v7, v4}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v6

    return v6
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 48
    const-string v1, "command"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 49
    .local v0, command:I
    packed-switch v0, :pswitch_data_0

    .line 56
    :goto_0
    return-void

    .line 51
    :pswitch_0
    invoke-direct {p0}, Lcom/android/providers/settings/cloud/CloudSettingsService;->updateCloudAppControlList()V

    goto :goto_0

    .line 49
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
