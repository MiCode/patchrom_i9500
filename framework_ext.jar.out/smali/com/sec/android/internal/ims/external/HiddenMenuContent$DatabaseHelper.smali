.class Lcom/sec/android/internal/ims/external/HiddenMenuContent$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "HiddenMenuContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/internal/ims/external/HiddenMenuContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 85
    const-string v0, "HiddenMenuContent.db"

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 86
    iput-object p1, p0, Lcom/sec/android/internal/ims/external/HiddenMenuContent$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 87
    return-void
.end method

.method private setDefaultPreferredValue()V
    .locals 5

    .prologue
    .line 304
    invoke-static {}, Lcom/sec/android/internal/ims/external/HiddenMenuContent;->access$000()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "MyContentProvider"

    const-string v4, "VOICECALL_TYPE will set default value."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_0
    const-string v0, "voicecall_type"

    .line 307
    .local v0, VOICECALL_TYPE_KEY:Ljava/lang/String;
    const/4 v2, 0x0

    .line 308
    .local v2, VOLTE_PREFERRED:I
    const/4 v1, 0x1

    .line 313
    .local v1, VOLTE_BLOCKED:I
    invoke-static {}, Lcom/sec/android/internal/ims/external/HiddenMenuContent;->access$200()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 314
    iget-object v3, p0, Lcom/sec/android/internal/ims/external/HiddenMenuContent$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v0, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 317
    :cond_1
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 93
    invoke-static {}, Lcom/sec/android/internal/ims/external/HiddenMenuContent;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "MyContentProvider"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_0
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, salesCode:Ljava/lang/String;
    const-string v1, "SKT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Lcom/sec/android/internal/ims/external/HiddenMenuContent;->access$102(Z)Z

    .line 98
    const-string v1, "LGT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Lcom/sec/android/internal/ims/external/HiddenMenuContent;->access$202(Z)Z

    .line 99
    const-string v1, "KTT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Lcom/sec/android/internal/ims/external/HiddenMenuContent;->access$302(Z)Z

    .line 102
    invoke-static {}, Lcom/sec/android/internal/ims/external/HiddenMenuContent;->access$200()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 103
    const-string v1, "Create table HiddenMenu( _id INTEGER PRIMARY KEY AUTOINCREMENT, mPrefCscfDns TEXT,mPrefCscfDnsforWiFi TEXT,mPrefCscfIp TEXT,mPrefCscfIp2 TEXT,mPrefCscfIp3 TEXT,mPrefCscfIpCnt TEXT,mPrefCscfDomain TEXT,mPrefCscfPort TEXT,mPrefCscfPortforLTE TEXT,mPrefCscfPortforWiFi TEXT,mPrefXdmDns TEXT,mPrefXdmIp TEXT,mPrefXdmIpforWiFi TEXT,mPrefAudioCodec TEXT,mPrefVideoCodec TEXT,mLoopback TEXT,mAlwaysOn TEXT,mEnableQos TEXT,mVideoProfile TEXT,mAudioFirst TEXT,mQosAware TEXT,mVTDebugging TEXT,mAutoTest TEXT,mPrefNwType TEXT,mCurrLatchedNw TEXT,mAccessNwInfo TEXT,mCurrDispFormat TEXT,mFrameRate TEXT,mBitRate TEXT,mDynamicBitRate TEXT,mAudioCodecMode TEXT,mPublicUserIdentity TEXT,mPrivateUserIdentity TEXT,mWiFiSetting TEXT,mRegisterTimer TEXT,mSubscriberTimer TEXT,mSessionExpire TEXT,mAudioPort TEXT,mVideoPort TEXT,mPDN TEXT,mImsPdnAutoCon TEXT,mPcscfType TEXT,mCommercialPcscfIP TEXT,mCodecBandwidth TEXT,mAec TEXT,mNs TEXT,mVad TEXT,mUserAgent TEXT,mAudioBitRate TEXT,mAMRBundlingRate TEXT,mAudioVideoTx TEXT,mJitterBufferSetting TEXT,mReserved1 TEXT,mReserved2 TEXT,mReserved3 TEXT,mReserved4 TEXT,mReserved5 TEXT,mReserved6 TEXT,mEnableIMSOnRoamingVal TEXT);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 241
    :goto_0
    return-void

    .line 167
    :cond_1
    const-string v1, "Create table HiddenMenu( _id INTEGER PRIMARY KEY AUTOINCREMENT, mPrefCscfDns TEXT,mPrefCscfDnsforWiFi TEXT,mPrefCscfIp TEXT,mPrefCscfDomain TEXT,mPrefCscfPort TEXT,mPrefCscfPortforLTE TEXT,mPrefCscfPortforWiFi TEXT,mPrefXdmDns TEXT,mPrefXdmIp TEXT,mPrefXdmIpforWiFi TEXT,mPrefAudioCodec TEXT,mPrefVideoCodec TEXT,mLoopback TEXT,mAlwaysOn TEXT,mEnableQos TEXT,mVideoProfile TEXT,mAudioFirst TEXT,mQosAware TEXT,mVTDebugging TEXT,mAutoTest TEXT,mPrefNwType TEXT,mCurrLatchedNw TEXT,mAccessNwInfo TEXT,mCurrDispFormat TEXT,mFrameRate TEXT,mBitRate TEXT,mDynamicBitRate TEXT,mAudioCodecMode TEXT,mPublicUserIdentity TEXT,mPrivateUserIdentity TEXT,mRegisterTimer TEXT,mSubscriberTimer TEXT,mSessionExpire TEXT,mAudioPort TEXT,mVideoPort TEXT,mPDN TEXT,mImsPdnAutoCon TEXT,mAMRBundlingRate TEXT,mAudioVideoTx TEXT,mAudioBitRate TEXT,mJitterBufferSetting TEXT,mConfigServerUrl TEXT,mEnableConfigServer TEXT,mConfigServerServiceId TEXT,mReserved1 TEXT,mReserved2 TEXT,mReserved3 TEXT,mReserved4 TEXT,mReserved5 TEXT,mReserved6 TEXT,mReserved7 TEXT,mReserved8 TEXT,mTimerA TEXT,mTimerB TEXT,mTimerC TEXT,mTimerD TEXT,mTimerE TEXT,mTimerF TEXT,mTimerG TEXT,mTimerH TEXT,mTimerI TEXT,mTimerJ TEXT,mTimerK TEXT,mTimer1 TEXT,mTimer2 TEXT,mTimer4 TEXT,mSKTPwd TEXT,mSKTRealm TEXT,mSKTUname TEXT,mEnableIMSOnRoamingVal TEXT);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 14
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 246
    invoke-static {}, Lcom/sec/android/internal/ims/external/HiddenMenuContent;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "MyContentProvider"

    const-string v3, "onUpgrade start"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_0
    const-string v2, "ro.product.name"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 251
    .local v12, product:Ljava/lang/String;
    const-string v2, "SHV-E110S"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "SHV-E120S"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "SHV-E120L"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "SHV-E160S"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "SHV-E160L"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "jaguars"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "jaguarl"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_1
    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/sec/android/internal/ims/external/HiddenMenuContent;->access$402(Z)Z

    .line 259
    invoke-static {}, Lcom/sec/android/internal/ims/external/HiddenMenuContent;->access$000()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "MyContentProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAPVTUpgrade = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/sec/android/internal/ims/external/HiddenMenuContent;->access$400()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_2
    const/4 v13, 0x0

    .line 262
    .local v13, reserved2:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/internal/ims/external/HiddenMenuContent;->access$400()Z

    move-result v2

    if-nez v2, :cond_5

    .line 263
    const-string v2, "LGT"

    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 264
    invoke-static {}, Lcom/sec/android/internal/ims/external/HiddenMenuContent;->access$000()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "MyContentProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "oldVersion = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " newVersion = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_3
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 267
    const/4 v9, 0x0

    .line 270
    .local v9, c:Landroid/database/Cursor;
    :try_start_0
    new-instance v1, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v1}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 271
    .local v1, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v2, "HiddenMenu"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 272
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "mReserved2"

    aput-object v4, v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 273
    if-eqz v9, :cond_4

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 274
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 275
    invoke-static {}, Lcom/sec/android/internal/ims/external/HiddenMenuContent;->access$000()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "MyContentProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reserved2 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_4
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 283
    if-eqz v9, :cond_5

    .line 284
    .end local v1           #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 289
    .end local v9           #c:Landroid/database/Cursor;
    :cond_5
    const-string v2, "DROP TABLE IF EXISTS HiddenMenu"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 290
    invoke-virtual {p0, p1}, Lcom/sec/android/internal/ims/external/HiddenMenuContent$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 294
    const-string v2, "LGT"

    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    if-eqz v13, :cond_6

    .line 295
    const-string v2, "SEC_AP_VTONLY"

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 296
    .local v11, isAPVTOnly:Z
    const-string v2, "VT"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    if-nez v11, :cond_6

    .line 297
    invoke-direct {p0}, Lcom/sec/android/internal/ims/external/HiddenMenuContent$DatabaseHelper;->setDefaultPreferredValue()V

    .line 300
    .end local v11           #isAPVTOnly:Z
    :cond_6
    invoke-static {}, Lcom/sec/android/internal/ims/external/HiddenMenuContent;->access$000()Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "MyContentProvider"

    const-string v3, "onUpgrade end"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_7
    return-void

    .line 251
    .end local v13           #reserved2:Ljava/lang/String;
    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 278
    .restart local v9       #c:Landroid/database/Cursor;
    .restart local v13       #reserved2:Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 279
    .local v10, e:Landroid/database/SQLException;
    :try_start_1
    invoke-static {}, Lcom/sec/android/internal/ims/external/HiddenMenuContent;->access$000()Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "MyContentProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception query for reserved attribute."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 282
    :cond_9
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 283
    if-eqz v9, :cond_5

    goto :goto_1

    .line 282
    .end local v10           #e:Landroid/database/SQLException;
    :catchall_0
    move-exception v2

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 283
    if-eqz v9, :cond_a

    .line 284
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 282
    :cond_a
    throw v2
.end method
