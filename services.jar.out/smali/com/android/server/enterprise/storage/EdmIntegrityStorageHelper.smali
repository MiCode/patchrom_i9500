.class public Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;
.super Ljava/lang/Object;
.source "EdmIntegrityStorageHelper.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "EdmIntegrityStorageHelper"

.field static mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper; = null

.field static mInstance:Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper; = null

.field static final mTAG:Ljava/lang/String; = "EDM"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 52
    sput-object v1, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;->mInstance:Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;

    .line 53
    sput-object v1, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    .line 55
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;->DBG:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-static {p1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/storage/EdmStorageHelper;

    move-result-object v2

    sput-object v2, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    .line 71
    :try_start_0
    sget-object v2, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 72
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->enableWriteAheadLogging()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    return-void

    .line 73
    :catch_0
    move-exception v1

    .line 74
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "EdmIntegrityStorageHelper"

    const-string v3, "Failed to get the database instance"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;
    .locals 2
    .parameter "context"

    .prologue
    .line 58
    const-class v1, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;->mInstance:Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;->mInstance:Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;

    .line 61
    :cond_0
    sget-object v0, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;->mInstance:Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public clearFingerPrint()Z
    .locals 5

    .prologue
    .line 111
    sget-boolean v2, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "EDM"

    const-string v3, "clearFingerPrint...."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_0
    sget-object v2, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 116
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string v2, "UPDATE EnterpriseIslFpTable SET fpCurrent = NULL ,fpDirty=0 , fpNewRow=0"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    const/4 v2, 0x1

    .line 125
    :goto_0
    return v2

    .line 122
    :catch_0
    move-exception v1

    .line 123
    .local v1, e:Ljava/lang/Exception;
    sget-boolean v2, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "EdmIntegrityStorageHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EnterpriseIslFpTableclearFingerPrint failed  EX: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public commitFingerPrint()Z
    .locals 5

    .prologue
    .line 84
    sget-boolean v2, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "EDM"

    const-string v3, "commitFingerPrint...."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_0
    sget-object v2, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 89
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string v2, "UPDATE EnterpriseIslFpTable SET fpBaseLined = fpCurrent WHERE fpDirty = 1 OR fpDirty = 2"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 96
    const-string v2, "DELETE FROM EnterpriseIslFpTable WHERE fpDirty=3"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    const/4 v2, 0x1

    .line 102
    :goto_0
    return v2

    .line 99
    :catch_0
    move-exception v1

    .line 100
    .local v1, e:Ljava/lang/Exception;
    sget-boolean v2, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "EdmIntegrityStorageHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EnterpriseIslFpTablebaselineFingerPrint commit failed  EX: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method readFingerPrint(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)[B
    .locals 16
    .parameter "sTableName"
    .parameter "sColumns"
    .parameter "sValues"
    .parameter "ReturnColumns"

    .prologue
    .line 172
    sget-object v1, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 173
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-boolean v1, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "EDM"

    const-string v2, "readFingerPrint...."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_0
    const/4 v3, 0x0

    .line 175
    .local v3, where:Ljava/lang/String;
    const/4 v9, 0x0

    .line 176
    .local v9, buf:Ljava/lang/StringBuffer;
    const/4 v12, 0x0

    .line 178
    .local v12, cursor:Landroid/database/Cursor;
    if-eqz p2, :cond_1

    if-nez p3, :cond_3

    .line 179
    :cond_1
    const/16 p3, 0x0

    .line 187
    :goto_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v4, p3

    :try_start_0
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 189
    if-eqz v12, :cond_8

    .line 190
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 191
    const/4 v1, 0x0

    aget-object v1, p4, v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 198
    if-eqz v12, :cond_2

    .line 199
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 202
    :cond_2
    :goto_1
    return-object v1

    .line 181
    :cond_3
    :try_start_1
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 182
    .end local v9           #buf:Ljava/lang/StringBuffer;
    .local v10, buf:Ljava/lang/StringBuffer;
    move-object/from16 v8, p2

    .local v8, arr$:[Ljava/lang/String;
    :try_start_2
    array-length v15, v8

    .local v15, len$:I
    const/4 v14, 0x0

    .local v14, i$:I
    :goto_2
    if-ge v14, v15, :cond_4

    aget-object v11, v8, v14

    .line 183
    .local v11, column:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "= ? AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 182
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 185
    .end local v11           #column:Ljava/lang/String;
    :cond_4
    const/4 v1, 0x0

    const-string v2, " AND "

    invoke-virtual {v10, v2}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v10, v1, v2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v3

    move-object v9, v10

    .end local v10           #buf:Ljava/lang/StringBuffer;
    .restart local v9       #buf:Ljava/lang/StringBuffer;
    goto :goto_0

    .line 195
    .end local v8           #arr$:[Ljava/lang/String;
    .end local v14           #i$:I
    .end local v15           #len$:I
    :catch_0
    move-exception v13

    .line 196
    .local v13, e:Ljava/lang/Exception;
    :goto_3
    :try_start_3
    sget-boolean v1, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;->DBG:Z

    if-eqz v1, :cond_5

    const-string v1, "EdmIntegrityStorageHelper"

    const-string v2, "could not execute readFingerPrint"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 198
    :cond_5
    if-eqz v12, :cond_6

    .line 199
    .end local v13           #e:Ljava/lang/Exception;
    :goto_4
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 202
    :cond_6
    const/4 v1, 0x0

    goto :goto_1

    .line 198
    :catchall_0
    move-exception v1

    :goto_5
    if-eqz v12, :cond_7

    .line 199
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 198
    :cond_7
    throw v1

    :cond_8
    if-eqz v12, :cond_6

    goto :goto_4

    .end local v9           #buf:Ljava/lang/StringBuffer;
    .restart local v8       #arr$:[Ljava/lang/String;
    .restart local v10       #buf:Ljava/lang/StringBuffer;
    :catchall_1
    move-exception v1

    move-object v9, v10

    .end local v10           #buf:Ljava/lang/StringBuffer;
    .restart local v9       #buf:Ljava/lang/StringBuffer;
    goto :goto_5

    .line 195
    .end local v9           #buf:Ljava/lang/StringBuffer;
    .restart local v10       #buf:Ljava/lang/StringBuffer;
    :catch_1
    move-exception v13

    move-object v9, v10

    .end local v10           #buf:Ljava/lang/StringBuffer;
    .restart local v9       #buf:Ljava/lang/StringBuffer;
    goto :goto_3
.end method

.method public rollbackFingerPrint()Z
    .locals 5

    .prologue
    .line 134
    sget-boolean v2, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "EDM"

    const-string v3, "rollbackFingerPrint...."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_0
    sget-object v2, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 141
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string v2, "DELETE FROM EnterpriseIslFpTable WHERE fpNewRow=1"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 151
    const-string v2, "UPDATE EnterpriseIslFpTable SET fpCurrent = NULL ,fpDirty = 0,fpNewRow=0"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    const/4 v2, 0x1

    .line 160
    :goto_0
    return v2

    .line 157
    :catch_0
    move-exception v1

    .line 158
    .local v1, e:Ljava/lang/Exception;
    sget-boolean v2, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "EdmIntegrityStorageHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EnterpriseIslFpTableclearFingerPrint failed  EX: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method updateFingerPrint(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z
    .locals 18
    .parameter "sTableName"
    .parameter "sColumns"
    .parameter "sValues"
    .parameter "cv"

    .prologue
    .line 266
    :try_start_0
    sget-object v15, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    .line 267
    .local v8, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v15, 0x1

    new-array v13, v15, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "fpDirty"

    aput-object v16, v13, v15

    .line 268
    .local v13, sReturnColumns:[Ljava/lang/String;
    const/4 v9, 0x0

    .line 272
    .local v9, dirty_flag:I
    sget-object v15, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v15, v0, v1, v2, v13}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 273
    .local v6, cvList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v6, :cond_2

    .line 274
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ContentValues;

    .line 275
    .local v7, cvflag:Landroid/content/ContentValues;
    const-string v15, "fpDirty"

    invoke-virtual {v7, v15}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v9

    goto :goto_0

    .line 279
    .end local v7           #cvflag:Landroid/content/ContentValues;
    :cond_0
    const/4 v15, 0x3

    if-ne v9, v15, :cond_2

    .line 281
    sget-boolean v15, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;->DBG:Z

    if-eqz v15, :cond_1

    const-string v15, "EdmIntegrityStorageHelper"

    const-string v16, "Trying to update a Item marked for delete"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_1
    const/4 v15, 0x0

    .line 304
    .end local v6           #cvList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v8           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v9           #dirty_flag:I
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v13           #sReturnColumns:[Ljava/lang/String;
    :goto_1
    return v15

    .line 286
    .restart local v6       #cvList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v8       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v9       #dirty_flag:I
    .restart local v13       #sReturnColumns:[Ljava/lang/String;
    :cond_2
    if-eqz p2, :cond_5

    if-eqz p3, :cond_5

    .line 287
    const/4 v14, 0x0

    .line 288
    .local v14, where:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 289
    .local v4, buf:Ljava/lang/StringBuffer;
    move-object/from16 v3, p2

    .local v3, arr$:[Ljava/lang/String;
    array-length v12, v3

    .local v12, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_2
    if-ge v11, v12, :cond_3

    aget-object v5, v3, v11

    .line 290
    .local v5, column:Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "= ? AND "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 289
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 292
    .end local v5           #column:Ljava/lang/String;
    :cond_3
    const/4 v15, 0x0

    const-string v16, " AND "

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 293
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p3

    invoke-virtual {v8, v0, v1, v14, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v15

    if-lez v15, :cond_4

    .line 294
    const/4 v15, 0x1

    goto :goto_1

    .line 297
    :cond_4
    const/4 v15, 0x0

    goto :goto_1

    .line 300
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v4           #buf:Ljava/lang/StringBuffer;
    .end local v6           #cvList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v8           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v9           #dirty_flag:I
    .end local v11           #i$:I
    .end local v12           #len$:I
    .end local v13           #sReturnColumns:[Ljava/lang/String;
    .end local v14           #where:Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 301
    .local v10, e:Ljava/lang/Exception;
    sget-boolean v15, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;->DBG:Z

    if-eqz v15, :cond_5

    const-string v15, "EdmIntegrityStorageHelper"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "could not execute updateFingerPrint"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    .end local v10           #e:Ljava/lang/Exception;
    :cond_5
    const/4 v15, 0x0

    goto :goto_1
.end method

.method writeFingerPrint(Ljava/lang/String;Landroid/content/ContentValues;)Z
    .locals 21
    .parameter "sTableName"
    .parameter "cv"

    .prologue
    .line 212
    :try_start_0
    sget-object v17, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual/range {v17 .. v17}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    .line 215
    .local v8, db:Landroid/database/sqlite/SQLiteDatabase;
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v13, v0, [Ljava/lang/String;

    const/16 v17, 0x0

    const-string v18, "adminUid"

    aput-object v18, v13, v17

    const/16 v17, 0x1

    const-string v18, "packageName"

    aput-object v18, v13, v17

    .line 216
    .local v13, sColumns:[Ljava/lang/String;
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v15, v0, [Ljava/lang/String;

    const/16 v17, 0x0

    const-string v18, "adminUid"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v15, v17

    const/16 v17, 0x1

    const-string v18, "packageName"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v15, v17

    .line 217
    .local v15, sValues:[Ljava/lang/String;
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v14, v0, [Ljava/lang/String;

    const/16 v17, 0x0

    const-string v18, "fpDirty"

    aput-object v18, v14, v17

    .line 218
    .local v14, sReturnColumns:[Ljava/lang/String;
    const/16 v16, 0x0

    .line 219
    .local v16, where:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 220
    .local v4, buf:Ljava/lang/StringBuffer;
    const/4 v9, 0x0

    .line 222
    .local v9, dirty_flag:I
    move-object v3, v13

    .local v3, arr$:[Ljava/lang/String;
    array-length v12, v3

    .local v12, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_0
    if-ge v11, v12, :cond_0

    aget-object v5, v3, v11

    .line 223
    .local v5, column:Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "= ? AND "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 222
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 225
    .end local v5           #column:Ljava/lang/String;
    :cond_0
    const/16 v17, 0x0

    const-string v18, " AND "

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 227
    sget-object v17, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v13, v15, v14}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 228
    .local v6, cvList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-lez v17, :cond_5

    .line 229
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ContentValues;

    .line 230
    .local v7, cvflag:Landroid/content/ContentValues;
    const-string v17, "fpDirty"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 231
    sget-boolean v17, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;->DBG:Z

    if-eqz v17, :cond_1

    const-string v17, "EdmIntegrityStorageHelper"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Trying to update a Item marked "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 253
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v4           #buf:Ljava/lang/StringBuffer;
    .end local v6           #cvList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v7           #cvflag:Landroid/content/ContentValues;
    .end local v8           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v9           #dirty_flag:I
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v12           #len$:I
    .end local v13           #sColumns:[Ljava/lang/String;
    .end local v14           #sReturnColumns:[Ljava/lang/String;
    .end local v15           #sValues:[Ljava/lang/String;
    .end local v16           #where:Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 254
    .local v10, e:Ljava/lang/Exception;
    sget-boolean v17, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;->DBG:Z

    if-eqz v17, :cond_2

    const-string v17, "EdmIntegrityStorageHelper"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "could not execute writeFingerPrint"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_2
    const/16 v17, 0x0

    .end local v10           #e:Ljava/lang/Exception;
    :goto_2
    return v17

    .line 235
    .restart local v3       #arr$:[Ljava/lang/String;
    .restart local v4       #buf:Ljava/lang/StringBuffer;
    .restart local v6       #cvList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v8       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v9       #dirty_flag:I
    .restart local v11       #i$:Ljava/util/Iterator;
    .restart local v12       #len$:I
    .restart local v13       #sColumns:[Ljava/lang/String;
    .restart local v14       #sReturnColumns:[Ljava/lang/String;
    .restart local v15       #sValues:[Ljava/lang/String;
    .restart local v16       #where:Ljava/lang/String;
    :cond_3
    const/16 v17, 0x3

    move/from16 v0, v17

    if-ne v9, v0, :cond_4

    .line 237
    :try_start_1
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v16

    invoke-virtual {v8, v0, v1, v2, v15}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v17

    if-lez v17, :cond_5

    .line 238
    const/16 v17, 0x1

    goto :goto_2

    .line 241
    :cond_4
    const/16 v17, 0x0

    goto :goto_2

    .line 246
    .end local v11           #i$:Ljava/util/Iterator;
    :cond_5
    const-string v17, "fpNewRow"

    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 248
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, p2

    invoke-virtual {v8, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v17

    const-wide/16 v19, -0x1

    cmp-long v17, v17, v19

    if-eqz v17, :cond_6

    .line 249
    const/16 v17, 0x1

    goto :goto_2

    .line 252
    :cond_6
    const/16 v17, 0x0

    goto :goto_2
.end method
