.class public Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;
.super Lcom/nuance/swype/connect/sqlite/SQLDataSource;
.source "DlmEventsDataSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource$DlmEventsOpenHelper;
    }
.end annotation


# static fields
.field private static final APPNAME_TABLE:Ljava/lang/String; = "ab"

.field private static final DB_NAME:Ljava/lang/String; = "dlmevents"

.field private static final DB_VERSION:I = 0x1

.field private static final EVENTS_TABLE:Ljava/lang/String; = "aa"

.field private static final FIELD_APPID:Ljava/lang/String; = "c"

.field private static final FIELD_APPNAME:Ljava/lang/String; = "e"

.field private static final FIELD_CATEGORY:Ljava/lang/String; = "a"

.field private static final FIELD_EVENT:Ljava/lang/String; = "d"

.field private static final FIELD_INPUTTYPE:Ljava/lang/String; = "f"

.field private static final FIELD_LOCALE:Ljava/lang/String; = "k"

.field private static final FIELD_LOCALEID:Ljava/lang/String; = "j"

.field private static final FIELD_LOCATION:Ljava/lang/String; = "h"

.field private static final FIELD_LOCATIONID:Ljava/lang/String; = "g"

.field private static final FIELD_TIMESTAMP:Ljava/lang/String; = "b"

.field private static final LOCALE_TABLE:Ljava/lang/String; = "ae"

.field private static final LOCATION_TABLE:Ljava/lang/String; = "ad"

.field private static final MAX_DATABASE_SIZE:I = 0x100000

.field private static final NEWWORDS_TABLE:Ljava/lang/String; = "ac"


# instance fields
.field private context:Landroid/content/Context;

.field private databaseFull:Z

.field private helper:Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource$DlmEventsOpenHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/sqlite/SQLDataSource;-><init>(Landroid/content/Context;)V

    .line 113
    iput-object p1, p0, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->context:Landroid/content/Context;

    .line 114
    new-instance v0, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource$DlmEventsOpenHelper;

    const-string v1, "dlmevents"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource$DlmEventsOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v0, p0, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->helper:Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource$DlmEventsOpenHelper;

    .line 115
    return-void
.end method

.method private clearUnusedLUEntries(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "table"
    .parameter "identifier"

    .prologue
    .line 430
    const/4 v2, 0x0

    .line 433
    .local v2, completed:Z
    invoke-virtual {p0}, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 435
    :try_start_0
    iget-object v4, p0, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 438
    const/4 v4, 0x2

    new-array v0, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v0, v4

    const/4 v4, 0x1

    aput-object p2, v0, v4

    .line 439
    .local v0, args:[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 440
    .local v1, command:Ljava/lang/StringBuilder;
    const-string v4, "DELETE FROM "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " WHERE ? NOT IN (SELECT ? FROM "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "aa"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    iget-object v4, p0, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 445
    iget-object v4, p0, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 446
    const/4 v2, 0x1

    .line 454
    iget-object v4, p0, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 458
    .end local v0           #args:[Ljava/lang/String;
    .end local v1           #command:Ljava/lang/StringBuilder;
    :cond_0
    :goto_0
    return v2

    .line 447
    :catch_0
    move-exception v3

    .line 448
    .local v3, ex:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clearUnusedLUEntries("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") failed message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 454
    iget-object v4, p0, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .line 450
    .end local v3           #ex:Landroid/database/sqlite/SQLiteException;
    :catch_1
    move-exception v3

    .line 451
    .local v3, ex:Landroid/database/SQLException;
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clearUnusedLUEntries("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") failed message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 454
    iget-object v4, p0, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .end local v3           #ex:Landroid/database/SQLException;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4
.end method

.method private getLUIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 17
    .parameter "name"
    .parameter "table"
    .parameter "idField"
    .parameter "luField"

    .prologue
    .line 147
    const-wide/16 v12, -0x1

    .line 148
    .local v12, index:J
    const/4 v14, 0x0

    .line 149
    .local v14, searchCursor:Landroid/database/Cursor;
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 151
    const/4 v3, 0x2

    :try_start_0
    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p3, v5, v3

    const/4 v3, 0x1

    aput-object p4, v5, v3

    .line 152
    .local v5, columnArgs:[Ljava/lang/String;
    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->encryptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v3

    .line 155
    .local v7, selectionArgs:[Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    .local v15, searchString:Ljava/lang/StringBuilder;
    move-object/from16 v0, p4

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = ?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v4, p2

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 160
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    .line 162
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_1

    .line 163
    move-object/from16 v0, p3

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    int-to-long v12, v3

    .line 174
    :goto_0
    if-eqz v14, :cond_0

    invoke-interface {v14}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 175
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 180
    .end local v5           #columnArgs:[Ljava/lang/String;
    .end local v7           #selectionArgs:[Ljava/lang/String;
    .end local v15           #searchString:Ljava/lang/StringBuilder;
    :cond_0
    :goto_1
    return-wide v12

    .line 166
    .restart local v5       #columnArgs:[Ljava/lang/String;
    .restart local v7       #selectionArgs:[Ljava/lang/String;
    .restart local v15       #searchString:Ljava/lang/StringBuilder;
    :cond_1
    :try_start_1
    new-instance v16, Landroid/content/ContentValues;

    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    .line 167
    .local v16, values:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->encryptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v3, v0, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v12

    goto :goto_0

    .line 170
    .end local v5           #columnArgs:[Ljava/lang/String;
    .end local v7           #selectionArgs:[Ljava/lang/String;
    .end local v15           #searchString:Ljava/lang/StringBuilder;
    .end local v16           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v11

    .line 171
    .local v11, e:Landroid/database/SQLException;
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] getIndex("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 174
    if-eqz v14, :cond_0

    invoke-interface {v14}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 175
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 174
    .end local v11           #e:Landroid/database/SQLException;
    :catchall_0
    move-exception v3

    if-eqz v14, :cond_2

    invoke-interface {v14}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_2

    .line 175
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v3
.end method

.method private printCursor(Ljava/lang/String;Landroid/database/Cursor;)V
    .locals 3
    .parameter "table"
    .parameter "c"

    .prologue
    .line 633
    const-string v0, "[DLM_EVENTS]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Num Columns: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Landroid/database/Cursor;->getColumnCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    const-string v0, "[DLM_EVENTS]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Columns Names: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    const-string v0, "[DLM_EVENTS]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Row: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Landroid/database/DatabaseUtils;->dumpCursorToString(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    return-void
.end method


# virtual methods
.method public clearEvents(IJ)V
    .locals 18
    .parameter "category"
    .parameter "timestamp"

    .prologue
    .line 465
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 467
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 470
    const/4 v2, 0x4

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "d"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "b"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string v3, "c"

    aput-object v3, v4, v2

    const/4 v2, 0x3

    const-string v3, "a"

    aput-object v3, v4, v2

    .line 474
    .local v4, columns:[Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 475
    .local v17, where:Ljava/lang/StringBuilder;
    const-string v2, "a"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 477
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "aa"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 479
    .local v10, c:Landroid/database/Cursor;
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    int-to-long v15, v2

    .line 480
    .local v15, preCount:J
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 483
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 484
    .local v11, command:Ljava/lang/StringBuilder;
    const-string v2, "DELETE FROM "

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "aa"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " WHERE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "b"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " < "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 487
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 490
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "aa"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 492
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    int-to-long v13, v2

    .line 493
    .local v13, postCount:J
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 496
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearEvents removed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sub-long v5, v15, v13

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 497
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 502
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 506
    .end local v4           #columns:[Ljava/lang/String;
    .end local v10           #c:Landroid/database/Cursor;
    .end local v11           #command:Ljava/lang/StringBuilder;
    .end local v13           #postCount:J
    .end local v15           #preCount:J
    .end local v17           #where:Ljava/lang/StringBuilder;
    :goto_0
    const-string v2, "ab"

    const-string v3, "c"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->clearUnusedLUEntries(Ljava/lang/String;Ljava/lang/String;)Z

    .line 507
    const-string v2, "ae"

    const-string v3, "k"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->clearUnusedLUEntries(Ljava/lang/String;Ljava/lang/String;)Z

    .line 508
    const-string v2, "ad"

    const-string v3, "h"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->clearUnusedLUEntries(Ljava/lang/String;Ljava/lang/String;)Z

    .line 510
    :cond_0
    return-void

    .line 498
    :catch_0
    move-exception v12

    .line 499
    .local v12, ex:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearEvents failed timestamp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 502
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .end local v12           #ex:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
.end method

.method public clearHighPriorityEvents(IJ)V
    .locals 11
    .parameter "category"
    .parameter "timestamp"

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    :try_start_0
    iget-object v0, p0, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 290
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "a"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "d"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "b"

    aput-object v1, v2, v0

    .line 292
    .local v2, columns:[Ljava/lang/String;
    iget-object v0, p0, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ac"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 295
    .local v8, c:Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 298
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 299
    .local v9, command:Ljava/lang/StringBuilder;
    const-string v0, "DELETE FROM "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ac"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "b"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " < "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 302
    iget-object v0, p0, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ac"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 308
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 313
    iget-object v0, p0, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    iget-object v0, p0, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 322
    .end local v2           #columns:[Ljava/lang/String;
    .end local v8           #c:Landroid/database/Cursor;
    .end local v9           #command:Ljava/lang/StringBuilder;
    :cond_0
    :goto_0
    return-void

    .line 314
    :catch_0
    move-exception v10

    .line 315
    .local v10, ex:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearHighPriorityEvents failed cat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 319
    iget-object v0, p0, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .end local v10           #ex:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->helper:Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource$DlmEventsOpenHelper;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource$DlmEventsOpenHelper;->close()V

    .line 123
    return-void
.end method

.method public getEventCategories()[I
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 513
    const/4 v1, 0x0

    .line 514
    .local v1, categories:[I
    const/4 v0, 0x0

    .line 515
    .local v0, catCursor:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->isOpen()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 517
    :try_start_0
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 518
    .local v4, where:Ljava/lang/StringBuffer;
    const-string v6, "SELECT DISTINCT "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, " FROM "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "aa"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 522
    iget-object v6, p0, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 524
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-gtz v6, :cond_1

    .line 539
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_0

    .line 540
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 546
    .end local v4           #where:Ljava/lang/StringBuffer;
    :cond_0
    :goto_0
    return-object v5

    .line 528
    .restart local v4       #where:Ljava/lang/StringBuffer;
    :cond_1
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    new-array v1, v5, [I

    .line 530
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 531
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 532
    const-string v5, "a"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    aput v5, v1, v3

    .line 533
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 531
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 539
    :cond_2
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_3

    .line 540
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .end local v3           #i:I
    .end local v4           #where:Ljava/lang/StringBuffer;
    :cond_3
    :goto_2
    move-object v5, v1

    .line 546
    goto :goto_0

    .line 536
    :catch_0
    move-exception v2

    .line 537
    .local v2, ex:Landroid/database/sqlite/SQLiteException;
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getEventCategories failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 539
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_3

    .line 540
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 539
    .end local v2           #ex:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v5

    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_4

    .line 540
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v5
.end method

.method public getEvents(I)Lorg/json/JSONArray;
    .locals 10
    .parameter "category"

    .prologue
    .line 362
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 363
    .local v1, data:Lorg/json/JSONArray;
    invoke-virtual {p0}, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->isOpen()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 365
    const/4 v7, 0x1

    :try_start_0
    new-array v6, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 366
    .local v6, selectionArgs:[Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 367
    .local v3, getEvents:Ljava/lang/StringBuffer;
    const-string v7, "SELECT * FROM "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "aa"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, " LEFT OUTER JOIN "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "ab"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, " ON "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "aa"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "c"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, " = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "ab"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "c"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, " LEFT OUTER JOIN "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "ad"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, " ON "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "aa"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "g"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, " = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "ad"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "g"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, " LEFT OUTER JOIN "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "ae"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, " ON "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "aa"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "j"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, " = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "ae"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "j"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, " WHERE "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "a"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, " = ?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 387
    iget-object v7, p0, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 389
    .local v0, c:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-gtz v7, :cond_1

    .line 426
    .end local v0           #c:Landroid/database/Cursor;
    .end local v3           #getEvents:Ljava/lang/StringBuffer;
    .end local v6           #selectionArgs:[Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 393
    .restart local v0       #c:Landroid/database/Cursor;
    .restart local v3       #getEvents:Ljava/lang/StringBuffer;
    .restart local v6       #selectionArgs:[Ljava/lang/String;
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 395
    :cond_2
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 396
    .local v4, map:Landroid/content/ContentValues;
    invoke-static {v0, v4}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 398
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 399
    .local v5, obj:Lorg/json/JSONObject;
    const-string v7, "1"

    const-string v8, "b"

    invoke-virtual {v4, v8}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 400
    const-string v7, "89"

    const-string v8, "d"

    const-string v9, "d"

    invoke-virtual {v4, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->decryptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 402
    const-string v7, "91"

    const-string v8, "e"

    const-string v9, "e"

    invoke-virtual {v4, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->decryptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 405
    const-string v7, "98"

    const-string v8, "k"

    const-string v9, "k"

    invoke-virtual {v4, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->decryptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 408
    const-string v7, "99"

    const-string v8, "f"

    invoke-virtual {v4, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 409
    const-string v7, "90"

    const-string v8, "h"

    const-string v9, "h"

    invoke-virtual {v4, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->decryptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 415
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 416
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-nez v7, :cond_2

    .line 418
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 419
    .end local v0           #c:Landroid/database/Cursor;
    .end local v3           #getEvents:Ljava/lang/StringBuffer;
    .end local v4           #map:Landroid/content/ContentValues;
    .end local v5           #obj:Lorg/json/JSONObject;
    .end local v6           #selectionArgs:[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 420
    .local v2, ex:Landroid/database/sqlite/SQLiteException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getEvents failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 421
    .end local v2           #ex:Landroid/database/sqlite/SQLiteException;
    :catch_1
    move-exception v2

    .line 422
    .local v2, ex:Lorg/json/JSONException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getEvents failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public getHighPriorityEvents(I)Lorg/json/JSONArray;
    .locals 13
    .parameter "category"

    .prologue
    .line 327
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    .line 328
    .local v9, data:Lorg/json/JSONArray;
    invoke-virtual {p0}, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    const/4 v0, 0x2

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "d"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "a"

    aput-object v1, v2, v0

    .line 332
    .local v2, columns:[Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    .line 333
    .local v12, where:Ljava/lang/StringBuffer;
    const-string v0, "a"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 334
    iget-object v0, p0, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ac"

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 337
    .local v8, c:Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_1

    .line 356
    .end local v2           #columns:[Ljava/lang/String;
    .end local v8           #c:Landroid/database/Cursor;
    .end local v12           #where:Ljava/lang/StringBuffer;
    :cond_0
    :goto_0
    return-object v9

    .line 341
    .restart local v2       #columns:[Ljava/lang/String;
    .restart local v8       #c:Landroid/database/Cursor;
    .restart local v12       #where:Ljava/lang/StringBuffer;
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 343
    :cond_2
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 344
    .local v11, map:Landroid/content/ContentValues;
    invoke-static {v8, v11}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 346
    const-string v0, "d"

    const-string v1, "d"

    invoke-virtual {v11, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->decryptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 348
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 350
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 351
    .end local v2           #columns:[Ljava/lang/String;
    .end local v8           #c:Landroid/database/Cursor;
    .end local v11           #map:Landroid/content/ContentValues;
    .end local v12           #where:Ljava/lang/StringBuffer;
    :catch_0
    move-exception v10

    .line 352
    .local v10, ex:Landroid/database/sqlite/SQLiteException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getHighPriorityEvents failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public insertEvent(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 15
    .parameter "event"
    .parameter "category"
    .parameter "timestamp"
    .parameter "appname"
    .parameter "location"
    .parameter "locale"
    .parameter "inputType"

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->isOpen()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->isFull()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 190
    :cond_0
    const/4 v10, 0x0

    .line 242
    :goto_0
    return v10

    .line 193
    :cond_1
    const/4 v10, 0x0

    .line 195
    .local v10, processed:Z
    :try_start_0
    iget-object v12, p0, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 196
    const-wide/16 v8, -0x1

    .line 197
    .local v8, locationId:J
    const-wide/16 v6, -0x1

    .line 198
    .local v6, localeId:J
    const-wide/16 v1, -0x1

    .line 200
    .local v1, appId:J
    if-eqz p5, :cond_2

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_2

    .line 202
    const-string v12, "ab"

    const-string v13, "c"

    const-string v14, "e"

    move-object/from16 v0, p5

    invoke-direct {p0, v0, v12, v13, v14}, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->getLUIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    .line 205
    :cond_2
    if-eqz p6, :cond_3

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_3

    .line 207
    const-string v12, "ad"

    const-string v13, "g"

    const-string v14, "h"

    move-object/from16 v0, p6

    invoke-direct {p0, v0, v12, v13, v14}, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->getLUIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v8

    .line 211
    :cond_3
    if-eqz p7, :cond_4

    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_4

    .line 213
    const-string v12, "ae"

    const-string v13, "j"

    const-string v14, "k"

    move-object/from16 v0, p7

    invoke-direct {p0, v0, v12, v13, v14}, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->getLUIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v6

    .line 216
    :cond_4
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 217
    .local v11, values:Landroid/content/ContentValues;
    const-string v12, "a"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 218
    const-string v12, "d"

    const-string v13, "d"

    move-object/from16 v0, p1

    invoke-virtual {p0, v13, v0}, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->encryptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const-string v12, "b"

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 222
    const-string v12, "c"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 223
    const-string v12, "g"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 224
    const-string v12, "j"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 225
    const-string v12, "f"

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 227
    iget-object v12, p0, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v13, "aa"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14, v11}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 228
    .local v4, index:J
    const-wide/16 v12, 0x0

    cmp-long v12, v4, v12

    if-gez v12, :cond_5

    .line 229
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "insertEvent failed to insert event: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    :goto_1
    iget-object v12, p0, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .line 231
    :cond_5
    :try_start_1
    iget-object v12, p0, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 232
    const/4 v10, 0x1

    goto :goto_1

    .line 234
    .end local v1           #appId:J
    .end local v4           #index:J
    .end local v6           #localeId:J
    .end local v8           #locationId:J
    .end local v11           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v3

    .line 235
    .local v3, e:Landroid/database/SQLException;
    :try_start_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "insertEvent failed to insert event: ("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ") SQL message"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 237
    const/4 v10, 0x0

    .line 239
    iget-object v12, p0, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v3           #e:Landroid/database/SQLException;
    :catchall_0
    move-exception v12

    iget-object v13, p0, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v12
.end method

.method public insertHighPriorityEvent(Ljava/lang/String;IJ)Z
    .locals 8
    .parameter "event"
    .parameter "category"
    .parameter "timestamp"

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->isFull()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 251
    :cond_0
    const/4 v3, 0x0

    .line 278
    :goto_0
    return v3

    .line 254
    :cond_1
    const/4 v3, 0x1

    .line 256
    .local v3, processed:Z
    :try_start_0
    iget-object v5, p0, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 258
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 259
    .local v4, values:Landroid/content/ContentValues;
    const-string v5, "a"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 260
    const-string v5, "b"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 261
    const-string v5, "d"

    const-string v6, "d"

    invoke-virtual {p0, v6, p1}, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->encryptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iget-object v5, p0, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "ac"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 264
    .local v1, index:J
    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-gez v5, :cond_2

    .line 265
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "insertHighPriorityEvents failed to insert event: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    :goto_1
    iget-object v5, p0, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .line 268
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 269
    const/4 v3, 0x1

    goto :goto_1

    .line 271
    .end local v1           #index:J
    .end local v4           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 272
    .local v0, e:Landroid/database/SQLException;
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "insertHighPriorityEvent failed to insert event: ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") SQL message"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 274
    const/4 v3, 0x0

    .line 276
    iget-object v5, p0, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v0           #e:Landroid/database/SQLException;
    :catchall_0
    move-exception v5

    iget-object v6, p0, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5
.end method

.method public isFull()Z
    .locals 7

    .prologue
    .line 550
    iget-boolean v4, p0, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->databaseFull:Z

    if-nez v4, :cond_2

    invoke-virtual {p0}, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 552
    const/4 v3, 0x0

    .line 553
    .local v3, pageSizeCur:Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 556
    .local v1, pageCountCur:Landroid/database/Cursor;
    :try_start_0
    iget-object v4, p0, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "PRAGMA page_size;"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 557
    iget-object v4, p0, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "PRAGMA page_count;"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 559
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 560
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 562
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 563
    .local v2, pageSize:I
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 565
    .local v0, pageCount:I
    const/high16 v4, 0x10

    mul-int v5, v2, v0

    if-ge v4, v5, :cond_0

    .line 566
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->databaseFull:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 574
    :cond_0
    if-eqz v3, :cond_1

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_1

    .line 575
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 577
    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_2

    .line 578
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 583
    .end local v0           #pageCount:I
    .end local v1           #pageCountCur:Landroid/database/Cursor;
    .end local v2           #pageSize:I
    .end local v3           #pageSizeCur:Landroid/database/Cursor;
    :cond_2
    iget-boolean v4, p0, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->databaseFull:Z

    return v4

    .line 574
    .restart local v1       #pageCountCur:Landroid/database/Cursor;
    .restart local v3       #pageSizeCur:Landroid/database/Cursor;
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_3

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_3

    .line 575
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 577
    :cond_3
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_4

    .line 578
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v4
.end method

.method public isOpen()Z
    .locals 2

    .prologue
    .line 126
    const/4 v0, 0x0

    .line 128
    .local v0, isOpen:Z
    iget-object v1, p0, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_0

    .line 129
    iget-object v1, p0, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    .line 131
    :cond_0
    return v0
.end method

.method public open()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->helper:Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource$DlmEventsOpenHelper;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource$DlmEventsOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 119
    return-void
.end method

.method public printDatabaseContents()V
    .locals 15

    .prologue
    const/16 v14, 0xa

    const/4 v13, 0x1

    .line 587
    const/4 v10, 0x0

    .line 588
    .local v10, row:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 590
    :try_start_0
    iget-object v0, p0, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ab"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 592
    const-string v0, "ab"

    invoke-direct {p0, v0, v10}, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->printCursor(Ljava/lang/String;Landroid/database/Cursor;)V

    .line 593
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 595
    iget-object v0, p0, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "aa"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 597
    const-string v0, "aa"

    invoke-direct {p0, v0, v10}, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->printCursor(Ljava/lang/String;Landroid/database/Cursor;)V

    .line 598
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 600
    iget-object v0, p0, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ac"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 602
    const-string v0, "ac"

    invoke-direct {p0, v0, v10}, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->printCursor(Ljava/lang/String;Landroid/database/Cursor;)V

    .line 603
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 608
    if-eqz v10, :cond_0

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 609
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 613
    :cond_0
    :goto_0
    invoke-virtual {p0, v13}, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->getHighPriorityEvents(I)Lorg/json/JSONArray;

    move-result-object v8

    .line 614
    .local v8, events:Lorg/json/JSONArray;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Add word events: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    .line 615
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-le v0, v14, :cond_1

    .line 616
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 617
    .local v11, time:J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearing add word Time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    .line 618
    invoke-virtual {p0, v13, v11, v12}, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->clearHighPriorityEvents(IJ)V

    .line 621
    .end local v11           #time:J
    :cond_1
    invoke-virtual {p0, v13}, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->getEvents(I)Lorg/json/JSONArray;

    move-result-object v8

    .line 622
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Regular events: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    .line 623
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-le v0, v14, :cond_2

    .line 624
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 625
    .restart local v11       #time:J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearing regular Time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    .line 626
    invoke-virtual {p0, v13, v11, v12}, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->clearEvents(IJ)V

    .line 630
    .end local v8           #events:Lorg/json/JSONArray;
    .end local v11           #time:J
    :cond_2
    return-void

    .line 604
    :catch_0
    move-exception v9

    .line 605
    .local v9, ex:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "printDatabaseContents failed; message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 608
    if-eqz v10, :cond_0

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 609
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 608
    .end local v9           #ex:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    if-eqz v10, :cond_3

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 609
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 139
    const-string v0, "DlmEventsDataStore.reset()"

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->v(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->close()V

    .line 141
    iget-object v0, p0, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->context:Landroid/content/Context;

    const-string v1, "dlmevents"

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/connect/sqlite/DlmEventsDataSource;->databaseFull:Z

    .line 143
    return-void
.end method

.method public verifyDatabase()V
    .locals 0

    .prologue
    .line 136
    return-void
.end method
