.class public Lcom/nuance/swype/connect/sqlite/ReportingDataSource;
.super Lcom/nuance/swype/connect/sqlite/SQLDataSource;
.source "ReportingDataSource.java"


# static fields
.field private static final AGGREGATE_TABLE:Ljava/lang/String; = "aa"

.field private static final DATAPOINT_TABLE:Ljava/lang/String; = "ab"

.field private static final EXTRA_DELIMITER:Ljava/lang/String; = ", "

.field private static final FIELD_AGG_POINT_COUNT:Ljava/lang/String; = "f"

.field private static final FIELD_AGG_POINT_INTERVAL:Ljava/lang/String; = "e"

.field private static final FIELD_AGG_POINT_VALUE:Ljava/lang/String; = "d"

.field private static final FIELD_EXTRA:Ljava/lang/String; = "g"

.field private static final FIELD_ID:Ljava/lang/String; = "a"

.field private static final FIELD_NAME:Ljava/lang/String; = "b"

.field private static final FIELD_START_TIME:Ljava/lang/String; = "h"

.field private static final FIELD_TIMESTAMP:Ljava/lang/String; = "j"

.field private static final FIELD_UPDATED_TIME:Ljava/lang/String; = "i"

.field private static final FIELD_VALUE:Ljava/lang/String; = "c"

.field private static final NAME_LIST:Ljava/lang/String; = "NAME_LIST"


# instance fields
.field private helper:Lcom/nuance/swype/connect/sqlite/ReportingSQLiteHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/sqlite/SQLDataSource;-><init>(Landroid/content/Context;)V

    .line 45
    new-instance v0, Lcom/nuance/swype/connect/sqlite/ReportingSQLiteHelper;

    invoke-direct {v0, p1}, Lcom/nuance/swype/connect/sqlite/ReportingSQLiteHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/swype/connect/sqlite/ReportingDataSource;->helper:Lcom/nuance/swype/connect/sqlite/ReportingSQLiteHelper;

    .line 46
    return-void
.end method

.method private generateAggregatePoint(Landroid/content/ContentValues;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 8
    .parameter "values"
    .parameter "current"

    .prologue
    .line 401
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 402
    .local v4, nameObj:Lorg/json/JSONObject;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 403
    .local v2, idObj:Lorg/json/JSONObject;
    const/4 v1, 0x0

    .line 405
    .local v1, exists:Z
    const-string v5, "b"

    const-string v6, "b"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/nuance/swype/connect/sqlite/ReportingDataSource;->decryptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 408
    .local v3, name:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 409
    const/4 v1, 0x1

    .line 415
    :goto_0
    if-nez v1, :cond_0

    .line 416
    :try_start_1
    const-string v5, "NAME_LIST"

    invoke-virtual {p2, v5, v3}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 417
    const-string v5, "63"

    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 420
    :cond_0
    const-string v5, "15"

    const-string v6, "a"

    const-string v7, "a"

    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/nuance/swype/connect/sqlite/ReportingDataSource;->decryptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 422
    const-string v5, "23"

    const-string v6, "g"

    const-string v7, "g"

    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/nuance/swype/connect/sqlite/ReportingDataSource;->decryptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 424
    const-string v5, "26"

    const-string v6, "h"

    const-string v7, "h"

    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/nuance/swype/connect/sqlite/ReportingDataSource;->decryptFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v6

    float-to-double v6, v6

    invoke-virtual {v2, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 428
    const-string v5, "27"

    const-string v6, "i"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 429
    const-string v5, "37"

    const-string v6, "f"

    const-string v7, "f"

    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/nuance/swype/connect/sqlite/ReportingDataSource;->decryptInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 433
    const-string v5, "22"

    const-string v6, "d"

    const-string v7, "d"

    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/nuance/swype/connect/sqlite/ReportingDataSource;->decryptDouble(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v6

    invoke-virtual {v2, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 437
    const-string v5, "24"

    const-string v6, "e"

    const-string v7, "e"

    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/nuance/swype/connect/sqlite/ReportingDataSource;->decryptDouble(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v6

    invoke-virtual {v2, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 443
    const-string v5, "16"

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 444
    const-string v5, "25"

    const-string v6, "SUM"

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 445
    const-string v5, "63"

    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 446
    invoke-virtual {p2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 451
    :goto_1
    return-object p2

    .line 410
    :catch_0
    move-exception v0

    .line 411
    .local v0, ex:Lorg/json/JSONException;
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 447
    .end local v0           #ex:Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 448
    .restart local v0       #ex:Lorg/json/JSONException;
    const-string v5, "Error generating point."

    invoke-static {v5}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private generateIndividualPoint(Landroid/content/ContentValues;)Lorg/json/JSONObject;
    .locals 5
    .parameter "values"

    .prologue
    .line 458
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 461
    .local v1, obj:Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "15"

    const-string v3, "a"

    const-string v4, "a"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/nuance/swype/connect/sqlite/ReportingDataSource;->decryptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 463
    const-string v2, "16"

    const-string v3, "b"

    const-string v4, "b"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/nuance/swype/connect/sqlite/ReportingDataSource;->decryptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 465
    const-string v2, "22"

    const-string v3, "c"

    const-string v4, "c"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/nuance/swype/connect/sqlite/ReportingDataSource;->decryptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 467
    const-string v2, "23"

    const-string v3, "g"

    const-string v4, "g"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/nuance/swype/connect/sqlite/ReportingDataSource;->decryptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 469
    const-string v2, "1"

    const-string v3, "j"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 471
    const-string v2, "15"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, "22"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-nez v2, :cond_1

    .line 474
    :cond_0
    const/4 v1, 0x0

    .line 480
    .end local v1           #obj:Lorg/json/JSONObject;
    :cond_1
    :goto_0
    return-object v1

    .line 476
    .restart local v1       #obj:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 477
    .local v0, ex:Lorg/json/JSONException;
    const-string v2, "Error generating individual point."

    invoke-static {v2}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private makePlaceholders(I)Ljava/lang/String;
    .locals 3
    .parameter "length"

    .prologue
    .line 488
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 490
    .local v1, sb:Ljava/lang/StringBuilder;
    add-int/lit8 p1, p1, -0x1

    .line 491
    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 494
    const-string v2, ", ?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 497
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public clearAggregate(J)Z
    .locals 7
    .parameter "timestamp"

    .prologue
    .line 501
    const/4 v0, 0x0

    .line 502
    .local v0, cleared:Z
    const-string v4, "i <= ?"

    .line 503
    .local v4, whereClause:Ljava/lang/String;
    const/4 v5, 0x1

    new-array v3, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    .line 504
    .local v3, whereArgs:[Ljava/lang/String;
    const/4 v2, 0x0

    .line 507
    .local v2, rowsEffected:I
    :try_start_0
    iget-object v5, p0, Lcom/nuance/swype/connect/sqlite/ReportingDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "aa"

    invoke-virtual {v5, v6, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 513
    :goto_0
    if-lez v2, :cond_0

    .line 514
    const/4 v0, 0x1

    .line 517
    :cond_0
    return v0

    .line 509
    :catch_0
    move-exception v1

    .line 510
    .local v1, ex:Landroid/database/sqlite/SQLiteException;
    const-string v5, "Issue clearing data points."

    invoke-static {v5}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public clearIndividual(J)Z
    .locals 7
    .parameter "timestamp"

    .prologue
    .line 522
    const/4 v0, 0x0

    .line 523
    .local v0, cleared:Z
    const-string v4, "j <= ?"

    .line 524
    .local v4, whereClause:Ljava/lang/String;
    const/4 v5, 0x1

    new-array v3, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    .line 525
    .local v3, whereArgs:[Ljava/lang/String;
    const/4 v2, 0x0

    .line 528
    .local v2, rowsEffected:I
    :try_start_0
    iget-object v5, p0, Lcom/nuance/swype/connect/sqlite/ReportingDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "ab"

    invoke-virtual {v5, v6, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 534
    :goto_0
    if-lez v2, :cond_0

    .line 535
    const/4 v0, 0x1

    .line 538
    :cond_0
    return v0

    .line 530
    :catch_0
    move-exception v1

    .line 531
    .local v1, ex:Landroid/database/sqlite/SQLiteException;
    const-string v5, "Issue clearing individual data points."

    invoke-static {v5}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/nuance/swype/connect/sqlite/ReportingDataSource;->helper:Lcom/nuance/swype/connect/sqlite/ReportingSQLiteHelper;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/sqlite/ReportingSQLiteHelper;->close()V

    .line 54
    return-void
.end method

.method public createAggregatePoint(Ljava/lang/String;Ljava/lang/String;DDLjava/lang/String;J)Z
    .locals 32
    .parameter "key"
    .parameter "name"
    .parameter "pointValue"
    .parameter "pointInterval"
    .parameter "extra"
    .parameter "timestamp"

    .prologue
    .line 152
    const/16 v22, 0x0

    .line 154
    .local v22, processed:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/connect/sqlite/ReportingDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 156
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    .local v25, searchString:Ljava/lang/StringBuilder;
    const/4 v3, 0x2

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "a"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v4, v1}, Lcom/nuance/swype/connect/sqlite/ReportingDataSource;->encryptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v3

    const/4 v3, 0x1

    const-string v4, "b"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v4, v1}, Lcom/nuance/swype/connect/sqlite/ReportingDataSource;->encryptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v3

    .line 161
    .local v7, searchArgs:[Ljava/lang/String;
    const-string v3, "a"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    const-string v3, " = ? AND "

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    const-string v3, "b"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    const-string v3, " = ?"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    const/4 v3, 0x5

    :try_start_0
    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "a"

    aput-object v4, v5, v3

    const/4 v3, 0x1

    const-string v4, "d"

    aput-object v4, v5, v3

    const/4 v3, 0x2

    const-string v4, "e"

    aput-object v4, v5, v3

    const/4 v3, 0x3

    const-string v4, "f"

    aput-object v4, v5, v3

    const/4 v3, 0x4

    const-string v4, "g"

    aput-object v4, v5, v3

    .line 170
    .local v5, columnArgs:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/connect/sqlite/ReportingDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "aa"

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v24

    .line 173
    .local v24, searchCursor:Landroid/database/Cursor;
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_3

    .line 174
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->moveToFirst()Z

    .line 177
    const-string v3, "d"

    const-string v4, "d"

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/nuance/swype/connect/sqlite/ReportingDataSource;->decryptDouble(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v17

    .line 180
    .local v17, existingValue:D
    const-string v3, "e"

    const-string v4, "e"

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/nuance/swype/connect/sqlite/ReportingDataSource;->decryptDouble(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v15

    .line 184
    .local v15, existingInterval:D
    const-string v3, "f"

    const-string v4, "f"

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/nuance/swype/connect/sqlite/ReportingDataSource;->decryptInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 187
    .local v13, existingCount:I
    const-string v3, "g"

    const-string v4, "g"

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/nuance/swype/connect/sqlite/ReportingDataSource;->decryptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 191
    .local v14, existingExtra:Ljava/lang/String;
    add-double v28, v17, p3

    .line 192
    .local v28, totalValue:D
    add-double v26, v15, p5

    .line 193
    .local v26, totalInterval:D
    add-int/lit8 v11, v13, 0x1

    .line 195
    .local v11, count:I
    move-object/from16 v21, v14

    .line 197
    .local v21, newExtra:Ljava/lang/String;
    if-eqz p7, :cond_0

    move-object/from16 v0, p7

    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 199
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p7

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 202
    :cond_0
    new-instance v30, Landroid/content/ContentValues;

    invoke-direct/range {v30 .. v30}, Landroid/content/ContentValues;-><init>()V

    .line 203
    .local v30, updateValues:Landroid/content/ContentValues;
    const-string v3, "d"

    const-string v4, "d"

    move-object/from16 v0, p0

    move-wide/from16 v1, v28

    invoke-virtual {v0, v4, v1, v2}, Lcom/nuance/swype/connect/sqlite/ReportingDataSource;->encryptString(Ljava/lang/String;D)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string v3, "e"

    const-string v4, "e"

    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    invoke-virtual {v0, v4, v1, v2}, Lcom/nuance/swype/connect/sqlite/ReportingDataSource;->encryptString(Ljava/lang/String;D)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string v3, "f"

    const-string v4, "f"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v11}, Lcom/nuance/swype/connect/sqlite/ReportingDataSource;->encryptString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const-string v3, "g"

    const-string v4, "g"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v4, v1}, Lcom/nuance/swype/connect/sqlite/ReportingDataSource;->encryptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const-string v3, "i"

    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 213
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/connect/sqlite/ReportingDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "aa"

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v30

    invoke-virtual {v3, v4, v0, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v23

    .line 216
    .local v23, rowsAffected:I
    const/4 v3, 0x1

    move/from16 v0, v23

    if-ne v0, v3, :cond_1

    .line 217
    const/16 v22, 0x1

    .line 219
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/connect/sqlite/ReportingDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 253
    .end local v11           #count:I
    .end local v13           #existingCount:I
    .end local v14           #existingExtra:Ljava/lang/String;
    .end local v15           #existingInterval:D
    .end local v17           #existingValue:D
    .end local v21           #newExtra:Ljava/lang/String;
    .end local v23           #rowsAffected:I
    .end local v26           #totalInterval:D
    .end local v28           #totalValue:D
    .end local v30           #updateValues:Landroid/content/ContentValues;
    :goto_0
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    .end local v5           #columnArgs:[Ljava/lang/String;
    .end local v24           #searchCursor:Landroid/database/Cursor;
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/connect/sqlite/ReportingDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 261
    return v22

    .line 220
    .restart local v5       #columnArgs:[Ljava/lang/String;
    .restart local v11       #count:I
    .restart local v13       #existingCount:I
    .restart local v14       #existingExtra:Ljava/lang/String;
    .restart local v15       #existingInterval:D
    .restart local v17       #existingValue:D
    .restart local v21       #newExtra:Ljava/lang/String;
    .restart local v23       #rowsAffected:I
    .restart local v24       #searchCursor:Landroid/database/Cursor;
    .restart local v26       #totalInterval:D
    .restart local v28       #totalValue:D
    .restart local v30       #updateValues:Landroid/content/ContentValues;
    :cond_1
    if-nez v23, :cond_2

    .line 221
    :try_start_1
    const-string v3, "Error writing aggregate data point, unable to save data change."

    invoke-static {v3}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    .line 222
    const/16 v22, 0x0

    goto :goto_0

    .line 224
    :cond_2
    const-string v3, "Error updating aggregate, we effected more then one row"

    invoke-static {v3}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    .line 225
    const/16 v22, 0x1

    goto :goto_0

    .line 229
    .end local v11           #count:I
    .end local v13           #existingCount:I
    .end local v14           #existingExtra:Ljava/lang/String;
    .end local v15           #existingInterval:D
    .end local v17           #existingValue:D
    .end local v21           #newExtra:Ljava/lang/String;
    .end local v23           #rowsAffected:I
    .end local v26           #totalInterval:D
    .end local v28           #totalValue:D
    .end local v30           #updateValues:Landroid/content/ContentValues;
    :cond_3
    new-instance v31, Landroid/content/ContentValues;

    invoke-direct/range {v31 .. v31}, Landroid/content/ContentValues;-><init>()V

    .line 230
    .local v31, values:Landroid/content/ContentValues;
    const-string v3, "a"

    const-string v4, "a"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v4, v1}, Lcom/nuance/swype/connect/sqlite/ReportingDataSource;->encryptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string v3, "b"

    const-string v4, "b"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v4, v1}, Lcom/nuance/swype/connect/sqlite/ReportingDataSource;->encryptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const-string v3, "f"

    const-string v4, "f"

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Lcom/nuance/swype/connect/sqlite/ReportingDataSource;->encryptString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v3, "e"

    const-string v4, "e"

    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    invoke-virtual {v0, v4, v1, v2}, Lcom/nuance/swype/connect/sqlite/ReportingDataSource;->encryptString(Ljava/lang/String;D)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const-string v3, "d"

    const-string v4, "d"

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-virtual {v0, v4, v1, v2}, Lcom/nuance/swype/connect/sqlite/ReportingDataSource;->encryptString(Ljava/lang/String;D)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const-string v3, "g"

    const-string v4, "g"

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-virtual {v0, v4, v1}, Lcom/nuance/swype/connect/sqlite/ReportingDataSource;->encryptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const-string v3, "h"

    const-string v4, "h"

    move-object/from16 v0, p0

    move-wide/from16 v1, p8

    invoke-virtual {v0, v4, v1, v2}, Lcom/nuance/swype/connect/sqlite/ReportingDataSource;->encryptString(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const-string v3, "i"

    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 243
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/connect/sqlite/ReportingDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "aa"

    const/4 v6, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v3, v4, v6, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v19

    .line 244
    .local v19, insertId:J
    const-wide/16 v3, 0x0

    cmp-long v3, v19, v3

    if-lez v3, :cond_4

    .line 245
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/connect/sqlite/ReportingDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 246
    const/16 v22, 0x1

    goto/16 :goto_0

    .line 248
    :cond_4
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 255
    .end local v5           #columnArgs:[Ljava/lang/String;
    .end local v19           #insertId:J
    .end local v24           #searchCursor:Landroid/database/Cursor;
    .end local v31           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v12

    .line 256
    .local v12, ex:Landroid/database/SQLException;
    const-string v3, "Error creating aggregate point."

    invoke-static {v3}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public createIndividualPoint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 8
    .parameter "key"
    .parameter "name"
    .parameter "value"
    .parameter "extra"
    .parameter "timestamp"

    .prologue
    const/4 v5, 0x0

    .line 87
    const/4 v3, 0x0

    .line 89
    .local v3, processed:Z
    iget-object v6, p0, Lcom/nuance/swype/connect/sqlite/ReportingDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 91
    if-nez p1, :cond_0

    .line 92
    const-string v6, "Creating Individual Point without a key"

    invoke-static {v6}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    .line 126
    :goto_0
    return v5

    .line 96
    :cond_0
    if-nez p3, :cond_1

    .line 97
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Creating Individual Point without a value: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 101
    :cond_1
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 102
    .local v4, values:Landroid/content/ContentValues;
    const-string v5, "a"

    const-string v6, "a"

    invoke-virtual {p0, v6, p1}, Lcom/nuance/swype/connect/sqlite/ReportingDataSource;->encryptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v5, "b"

    const-string v6, "b"

    invoke-virtual {p0, v6, p2}, Lcom/nuance/swype/connect/sqlite/ReportingDataSource;->encryptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v5, "c"

    const-string v6, "c"

    invoke-virtual {p0, v6, p3}, Lcom/nuance/swype/connect/sqlite/ReportingDataSource;->encryptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v5, "g"

    const-string v6, "g"

    invoke-virtual {p0, v6, p4}, Lcom/nuance/swype/connect/sqlite/ReportingDataSource;->encryptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v5, "j"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 109
    :try_start_0
    iget-object v5, p0, Lcom/nuance/swype/connect/sqlite/ReportingDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "ab"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 112
    .local v1, insertId:J
    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-lez v5, :cond_2

    .line 113
    iget-object v5, p0, Lcom/nuance/swype/connect/sqlite/ReportingDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    const/4 v3, 0x1

    .line 124
    .end local v1           #insertId:J
    :goto_1
    iget-object v5, p0, Lcom/nuance/swype/connect/sqlite/ReportingDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move v5, v3

    .line 126
    goto :goto_0

    .line 116
    .restart local v1       #insertId:J
    :cond_2
    :try_start_1
    const-string v5, "Error writing individual data point, unable to save data change."

    invoke-static {v5}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 117
    const/4 v3, 0x0

    goto :goto_1

    .line 119
    .end local v1           #insertId:J
    :catch_0
    move-exception v0

    .line 120
    .local v0, ex:Landroid/database/SQLException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error writing individual data point: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    .line 121
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getAggregatePoints([Ljava/lang/String;J)Lorg/json/JSONArray;
    .locals 20
    .parameter "validPoints"
    .parameter "lastAggregateTime"

    .prologue
    .line 269
    new-instance v11, Lorg/json/JSONArray;

    invoke-direct {v11}, Lorg/json/JSONArray;-><init>()V

    .line 270
    .local v11, data:Lorg/json/JSONArray;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    .line 271
    .local v19, whereClause:Ljava/lang/StringBuilder;
    const-string v10, "i DESC"

    .line 274
    .local v10, orderBy:Ljava/lang/String;
    const-string v3, "i"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    const-string v3, " <="

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    move-object/from16 v0, v19

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 278
    if-eqz p1, :cond_2

    .line 279
    move-object/from16 v0, p1

    array-length v3, v0

    if-nez v3, :cond_1

    .line 333
    :cond_0
    :goto_0
    return-object v11

    .line 283
    :cond_1
    const-string v3, " AND "

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    const-string v3, "a"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    const-string v3, " in ("

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    move-object/from16 v0, p1

    array-length v3, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/nuance/swype/connect/sqlite/ReportingDataSource;->makePlaceholders(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    const-string v3, ")"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    :cond_2
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/connect/sqlite/ReportingDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "aa"

    const/4 v5, 0x0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v7, p1

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v18

    .line 298
    .local v18, searchCursor:Landroid/database/Cursor;
    :goto_1
    if-eqz v18, :cond_4

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_4

    .line 299
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    .line 300
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    .line 303
    .local v12, dataMap:Lorg/json/JSONObject;
    :try_start_1
    const-string v3, "NAME_LIST"

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v12, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3

    .line 307
    :goto_2
    const/4 v14, 0x0

    .local v14, i:I
    :goto_3
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-ge v14, v3, :cond_3

    .line 308
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 309
    .local v15, map:Landroid/content/ContentValues;
    move-object/from16 v0, v18

    invoke-static {v0, v15}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 310
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v12}, Lcom/nuance/swype/connect/sqlite/ReportingDataSource;->generateAggregatePoint(Landroid/content/ContentValues;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v12

    .line 311
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    .line 307
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 293
    .end local v12           #dataMap:Lorg/json/JSONObject;
    .end local v14           #i:I
    .end local v15           #map:Landroid/content/ContentValues;
    .end local v18           #searchCursor:Landroid/database/Cursor;
    :catch_0
    move-exception v13

    .line 294
    .local v13, ex:Landroid/database/SQLException;
    const/16 v18, 0x0

    .line 295
    .restart local v18       #searchCursor:Landroid/database/Cursor;
    const-string v3, "Issue mapping values when generating aggregate values."

    invoke-static {v3}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 315
    .end local v13           #ex:Landroid/database/SQLException;
    .restart local v12       #dataMap:Lorg/json/JSONObject;
    .restart local v14       #i:I
    :cond_3
    :try_start_2
    const-string v3, "NAME_LIST"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v17

    .line 317
    .local v17, nameList:Lorg/json/JSONArray;
    const/4 v14, 0x0

    :goto_4
    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v14, v3, :cond_4

    .line 318
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 319
    .local v16, name:Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v11, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 317
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 321
    .end local v16           #name:Ljava/lang/String;
    .end local v17           #nameList:Lorg/json/JSONArray;
    :catch_1
    move-exception v13

    .line 322
    .local v13, ex:Lorg/json/JSONException;
    const-string v3, "Issue mapping values when generating aggregate value."

    invoke-static {v3}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 326
    .end local v12           #dataMap:Lorg/json/JSONObject;
    .end local v13           #ex:Lorg/json/JSONException;
    .end local v14           #i:I
    :cond_4
    if-eqz v18, :cond_0

    .line 328
    :try_start_3
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 329
    :catch_2
    move-exception v3

    goto/16 :goto_0

    .line 304
    .restart local v12       #dataMap:Lorg/json/JSONObject;
    :catch_3
    move-exception v3

    goto :goto_2
.end method

.method public getIndividualPoints([Ljava/lang/String;J)Lorg/json/JSONArray;
    .locals 18
    .parameter "validPoints"
    .parameter "lastIndividualTime"

    .prologue
    .line 338
    new-instance v11, Lorg/json/JSONArray;

    invoke-direct {v11}, Lorg/json/JSONArray;-><init>()V

    .line 340
    .local v11, data:Lorg/json/JSONArray;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 341
    .local v17, whereClause:Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    .line 342
    .local v7, validPointsEncrypted:[Ljava/lang/String;
    const-string v10, "j DESC"

    .line 344
    .local v10, orderBy:Ljava/lang/String;
    const-string v3, "j"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    const-string v3, " <="

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    move-object/from16 v0, v17

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 348
    if-eqz p1, :cond_1

    .line 349
    move-object/from16 v0, p1

    array-length v3, v0

    if-nez v3, :cond_0

    .line 393
    :goto_0
    return-object v11

    .line 354
    :cond_0
    const-string v3, " AND "

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    const-string v3, "a"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    const-string v3, " in ("

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    move-object/from16 v0, p1

    array-length v3, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/nuance/swype/connect/sqlite/ReportingDataSource;->makePlaceholders(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    const-string v3, ")"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    move-object/from16 v0, p1

    array-length v3, v0

    new-array v7, v3, [Ljava/lang/String;

    .line 361
    const/4 v13, 0x0

    .local v13, i:I
    :goto_1
    move-object/from16 v0, p1

    array-length v3, v0

    if-ge v13, v3, :cond_1

    .line 362
    const-string v3, ""

    aget-object v4, p1, v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/nuance/swype/connect/sqlite/ReportingDataSource;->encryptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v13

    .line 361
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 368
    .end local v13           #i:I
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/connect/sqlite/ReportingDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "ab"

    const/4 v5, 0x0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 372
    .local v16, searchCursor:Landroid/database/Cursor;
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_3

    .line 373
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    .line 375
    const/4 v13, 0x0

    .restart local v13       #i:I
    :goto_2
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-ge v13, v3, :cond_3

    .line 376
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 377
    .local v15, map:Landroid/content/ContentValues;
    move-object/from16 v0, v16

    invoke-static {v0, v15}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 378
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/nuance/swype/connect/sqlite/ReportingDataSource;->generateIndividualPoint(Landroid/content/ContentValues;)Lorg/json/JSONObject;

    move-result-object v14

    .line 379
    .local v14, json:Lorg/json/JSONObject;
    if-nez v14, :cond_2

    .line 380
    const-string v3, "attempting to load an invalid point."

    invoke-static {v3}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    .line 384
    :goto_3
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    .line 375
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 382
    :cond_2
    invoke-virtual {v11, v14}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 389
    .end local v13           #i:I
    .end local v14           #json:Lorg/json/JSONObject;
    .end local v15           #map:Landroid/content/ContentValues;
    .end local v16           #searchCursor:Landroid/database/Cursor;
    :catch_0
    move-exception v12

    .line 390
    .local v12, ex:Landroid/database/sqlite/SQLiteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error generating individual points: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 388
    .end local v12           #ex:Landroid/database/sqlite/SQLiteException;
    .restart local v16       #searchCursor:Landroid/database/Cursor;
    :cond_3
    :try_start_1
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public getLastAggregatePoint()J
    .locals 14

    .prologue
    const/4 v1, 0x0

    .line 650
    const-wide/16 v11, -0x1

    .line 651
    .local v11, lastPointTimestamp:J
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "i"

    aput-object v0, v2, v1

    .line 652
    .local v2, columnArgs:[Ljava/lang/String;
    const-string v7, "i DESC"

    .line 655
    .local v7, orderBy:Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/nuance/swype/connect/sqlite/ReportingDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "aa"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v8, "1"

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 658
    .local v9, aggregateLastCursor:Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 659
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 660
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 661
    .local v13, value:Ljava/lang/String;
    invoke-static {v13}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 664
    .end local v13           #value:Ljava/lang/String;
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 669
    .end local v9           #aggregateLastCursor:Landroid/database/Cursor;
    :goto_0
    return-wide v11

    .line 665
    :catch_0
    move-exception v10

    .line 666
    .local v10, ex:Landroid/database/SQLException;
    const-string v0, "Problem getting last point."

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getLastIndividualPoint()J
    .locals 14

    .prologue
    const/4 v1, 0x0

    .line 673
    const-wide/16 v11, -0x1

    .line 674
    .local v11, lastPointTimestamp:J
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "j"

    aput-object v0, v2, v1

    .line 675
    .local v2, columnArgs:[Ljava/lang/String;
    const-string v7, "j DESC"

    .line 678
    .local v7, orderBy:Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/nuance/swype/connect/sqlite/ReportingDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ab"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v8, "1"

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 681
    .local v10, individualLastCursor:Landroid/database/Cursor;
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 682
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 683
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 684
    .local v13, value:Ljava/lang/String;
    invoke-static {v13}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 687
    .end local v13           #value:Ljava/lang/String;
    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 692
    .end local v10           #individualLastCursor:Landroid/database/Cursor;
    :goto_0
    return-wide v11

    .line 688
    :catch_0
    move-exception v9

    .line 689
    .local v9, ex:Landroid/database/SQLException;
    const-string v0, "Problem getting last individual point."

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public hasAggregate()Z
    .locals 12

    .prologue
    .line 696
    const/4 v11, 0x0

    .line 697
    .local v11, recordsExist:Z
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "i"

    aput-object v1, v2, v0

    .line 700
    .local v2, columnArgs:[Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/nuance/swype/connect/sqlite/ReportingDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "aa"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "1"

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 703
    .local v9, aggregateLastCursor:Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 704
    const/4 v11, 0x1

    .line 707
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 712
    .end local v9           #aggregateLastCursor:Landroid/database/Cursor;
    :goto_0
    return v11

    .line 708
    :catch_0
    move-exception v10

    .line 709
    .local v10, ex:Landroid/database/SQLException;
    const-string v0, "individual has no records."

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public hasIndividual()Z
    .locals 12

    .prologue
    .line 716
    const/4 v11, 0x0

    .line 717
    .local v11, recordsExist:Z
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "j"

    aput-object v1, v2, v0

    .line 720
    .local v2, columnArgs:[Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/nuance/swype/connect/sqlite/ReportingDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ab"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "1"

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 723
    .local v10, individualLastCursor:Landroid/database/Cursor;
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 724
    const/4 v11, 0x1

    .line 727
    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 732
    .end local v10           #individualLastCursor:Landroid/database/Cursor;
    :goto_0
    return v11

    .line 728
    :catch_0
    move-exception v9

    .line 729
    .local v9, ex:Ljava/lang/Exception;
    const-string v0, "aggregate has no records."

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public limitAggregate(I)Z
    .locals 18
    .parameter "number"

    .prologue
    .line 582
    const/4 v11, 0x0

    .line 583
    .local v11, cleared:Z
    const-wide/16 v14, 0x0

    .line 586
    .local v14, lastPointTimestamp:J
    const/4 v1, 0x1

    :try_start_0
    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "i"

    aput-object v2, v3, v1

    .line 587
    .local v3, columnArgs:[Ljava/lang/String;
    const-string v8, "i DESC"

    .line 588
    .local v8, orderBy:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/connect/sqlite/ReportingDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "aa"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 592
    .local v10, aggregateLastCursor:Landroid/database/Cursor;
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 593
    invoke-interface {v10}, Landroid/database/Cursor;->moveToLast()Z

    .line 594
    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 595
    .local v16, value:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 598
    .end local v16           #value:Ljava/lang/String;
    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 600
    const-wide/16 v1, 0x0

    cmp-long v1, v14, v1

    if-lez v1, :cond_1

    .line 601
    const/4 v1, 0x1

    new-array v12, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v12, v1

    .line 603
    .local v12, deleteArgs:[Ljava/lang/String;
    const-string v17, "i < ?"

    .line 604
    .local v17, whereClause:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/connect/sqlite/ReportingDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "aa"

    move-object/from16 v0, v17

    invoke-virtual {v1, v2, v0, v12}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 607
    .end local v12           #deleteArgs:[Ljava/lang/String;
    .end local v17           #whereClause:Ljava/lang/String;
    :cond_1
    const/4 v11, 0x1

    .line 612
    .end local v3           #columnArgs:[Ljava/lang/String;
    .end local v8           #orderBy:Ljava/lang/String;
    .end local v10           #aggregateLastCursor:Landroid/database/Cursor;
    :goto_0
    return v11

    .line 608
    :catch_0
    move-exception v13

    .line 609
    .local v13, ex:Landroid/database/SQLException;
    const-string v1, "Error limiting points."

    invoke-static {v1}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public limitIndividual(I)Z
    .locals 18
    .parameter "number"

    .prologue
    .line 616
    const/4 v10, 0x0

    .line 617
    .local v10, cleared:Z
    const-wide/16 v14, 0x0

    .line 620
    .local v14, lastPointTimestamp:J
    const/4 v1, 0x1

    :try_start_0
    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "j"

    aput-object v2, v3, v1

    .line 621
    .local v3, columnArgs:[Ljava/lang/String;
    const-string v8, "j DESC"

    .line 622
    .local v8, orderBy:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/connect/sqlite/ReportingDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "ab"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 626
    .local v13, individualLastCursor:Landroid/database/Cursor;
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 627
    invoke-interface {v13}, Landroid/database/Cursor;->moveToLast()Z

    .line 628
    const/4 v1, 0x0

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 629
    .local v16, value:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 632
    .end local v16           #value:Ljava/lang/String;
    :cond_0
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 634
    const-wide/16 v1, 0x0

    cmp-long v1, v14, v1

    if-lez v1, :cond_1

    .line 635
    const/4 v1, 0x1

    new-array v11, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v1

    .line 637
    .local v11, deleteArgs:[Ljava/lang/String;
    const-string v17, "j < ?"

    .line 638
    .local v17, whereClause:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/connect/sqlite/ReportingDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "ab"

    move-object/from16 v0, v17

    invoke-virtual {v1, v2, v0, v11}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 641
    .end local v11           #deleteArgs:[Ljava/lang/String;
    .end local v17           #whereClause:Ljava/lang/String;
    :cond_1
    const/4 v10, 0x1

    .line 646
    .end local v3           #columnArgs:[Ljava/lang/String;
    .end local v8           #orderBy:Ljava/lang/String;
    .end local v13           #individualLastCursor:Landroid/database/Cursor;
    :goto_0
    return v10

    .line 642
    :catch_0
    move-exception v12

    .line 643
    .local v12, ex:Landroid/database/SQLException;
    const-string v1, "Error limiting individual points."

    invoke-static {v1}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public numAggregate()I
    .locals 6

    .prologue
    .line 542
    const/4 v2, 0x0

    .line 545
    .local v2, num:I
    :try_start_0
    iget-object v3, p0, Lcom/nuance/swype/connect/sqlite/ReportingDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "SELECT count(*) FROM aa"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 548
    .local v0, aggregateCountCursor:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 549
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 550
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 553
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 558
    .end local v0           #aggregateCountCursor:Landroid/database/Cursor;
    :goto_0
    return v2

    .line 554
    :catch_0
    move-exception v1

    .line 555
    .local v1, ex:Landroid/database/SQLException;
    const-string v3, "Problem getting data count."

    invoke-static {v3}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public numIndividual()I
    .locals 6

    .prologue
    .line 562
    const/4 v2, 0x0

    .line 565
    .local v2, num:I
    :try_start_0
    iget-object v3, p0, Lcom/nuance/swype/connect/sqlite/ReportingDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "SELECT count(*) FROM ab"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 568
    .local v1, individualCountCursor:Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 569
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 570
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 573
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 578
    .end local v1           #individualCountCursor:Landroid/database/Cursor;
    :goto_0
    return v2

    .line 574
    :catch_0
    move-exception v0

    .line 575
    .local v0, ex:Landroid/database/SQLException;
    const-string v3, "Problem getting individual data count."

    invoke-static {v3}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public open()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/nuance/swype/connect/sqlite/ReportingDataSource;->helper:Lcom/nuance/swype/connect/sqlite/ReportingSQLiteHelper;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/sqlite/ReportingSQLiteHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/connect/sqlite/ReportingDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 50
    return-void
.end method

.method public verifyDatabase()V
    .locals 3

    .prologue
    .line 58
    iget-object v0, p0, Lcom/nuance/swype/connect/sqlite/ReportingDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    .line 59
    iget-object v0, p0, Lcom/nuance/swype/connect/sqlite/ReportingDataSource;->helper:Lcom/nuance/swype/connect/sqlite/ReportingSQLiteHelper;

    iget-object v1, p0, Lcom/nuance/swype/connect/sqlite/ReportingDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "aa"

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/connect/sqlite/ReportingSQLiteHelper;->validateTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/nuance/swype/connect/sqlite/ReportingDataSource;->helper:Lcom/nuance/swype/connect/sqlite/ReportingSQLiteHelper;

    iget-object v1, p0, Lcom/nuance/swype/connect/sqlite/ReportingDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "aa"

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/connect/sqlite/ReportingSQLiteHelper;->onInvalid(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/connect/sqlite/ReportingDataSource;->helper:Lcom/nuance/swype/connect/sqlite/ReportingSQLiteHelper;

    iget-object v1, p0, Lcom/nuance/swype/connect/sqlite/ReportingDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "ab"

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/connect/sqlite/ReportingSQLiteHelper;->validateTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/nuance/swype/connect/sqlite/ReportingDataSource;->helper:Lcom/nuance/swype/connect/sqlite/ReportingSQLiteHelper;

    iget-object v1, p0, Lcom/nuance/swype/connect/sqlite/ReportingDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "ab"

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/connect/sqlite/ReportingSQLiteHelper;->onInvalid(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 67
    :cond_1
    return-void
.end method
