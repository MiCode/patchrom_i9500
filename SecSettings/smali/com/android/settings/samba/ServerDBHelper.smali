.class public Lcom/android/settings_ex/samba/ServerDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "ServerDBHelper.java"


# static fields
.field private static final DB_NAME:Ljava/lang/String; = "samba.db"


# instance fields
.field m_cursor:Landroid/database/Cursor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 3
    .parameter "context"
    .parameter "name"
    .parameter "factory"
    .parameter "version"

    .prologue
    .line 17
    const-string v0, "samba.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 18
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 22
    const-string v0, "create table serverlog (_id INTEGER PRIMARY KEY AUTOINCREMENT, intime TEXT, outtime TEXT, ip TEXT, mode TEXT, state TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .parameter "db"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 29
    return-void
.end method
