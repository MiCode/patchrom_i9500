.class public Lcom/nuance/swype/connect/sqlite/ReportingSQLiteHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "ReportingSQLiteHelper.java"


# static fields
.field protected static final DB_NAME:Ljava/lang/String; = "reporting"

.field protected static final DB_VERSION:I = 0x1

.field protected static final TABLE_AA:Ljava/lang/String; = "AA"

.field protected static final TABLE_AB:Ljava/lang/String; = "AB"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 17
    const-string v0, "reporting"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 18
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 22
    const-string v0, "CREATE table aa (a TEXT, b TEXT, d INTEGER, e INTEGER, f INTEGER, g TEXT, h DATETIME, i INTEGER);"

    .line 25
    .local v0, createAggregatePoints:Ljava/lang/String;
    const-string v1, "CREATE TABLE ab (a TEXT, b TEXT, c TEXT, g TEXT, j INTEGER);"

    .line 28
    .local v1, createDataPoints:Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public onInvalid(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 3
    .parameter "db"
    .parameter "table"

    .prologue
    .line 45
    const-string v2, "AA"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 46
    const-string v0, "CREATE table aa if not exists (a TEXT, b TEXT, d INTEGER, e INTEGER, f INTEGER, g TEXT, h DATETIME, i INTEGER);"

    .line 48
    .local v0, createAggregatePoints:Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 55
    .end local v0           #createAggregatePoints:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    const-string v2, "AB"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 50
    const-string v1, "CREATE TABLE ab if not exists (a TEXT, b TEXT, c TEXT, g TEXT, j INTEGER);"

    .line 52
    .local v1, createDataPoints:Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 34
    if-le p2, p3, :cond_0

    .line 41
    :cond_0
    return-void
.end method

.method public validateTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 9
    .parameter "db"
    .parameter "table"

    .prologue
    .line 58
    const/4 v8, 0x0

    .line 60
    .local v8, tableExists:Z
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    move-object v1, p2

    :try_start_0
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 61
    const/4 v8, 0x1

    .line 66
    :goto_0
    return v8

    .line 62
    :catch_0
    move-exception v0

    goto :goto_0

    .line 63
    :catch_1
    move-exception v0

    goto :goto_0
.end method
