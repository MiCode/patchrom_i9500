.class public Lcom/android/providers/settings/cloud/CloudSettingsDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "CloudSettingsDatabaseHelper.java"


# static fields
.field private static mInstance:Lcom/android/providers/settings/cloud/CloudSettingsDatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-object v0, Lcom/android/providers/settings/cloud/CloudSettingsDatabaseHelper;->mInstance:Lcom/android/providers/settings/cloud/CloudSettingsDatabaseHelper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 19
    const-string v0, "cloud_settings.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 20
    return-void
.end method

.method private createAppControlListTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 37
    const-string v0, "CREATE TABLE cloud_app_control_list(_id INTEGER PRIMARY KEY AUTOINCREMENT,data_id TEXT NOT NULL,package_name TEXT,release_key TEXT,max_version_code INTEGER,min_version_code INTEGER,attributes INTEGER,UNIQUE(data_id));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method private dropUserTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 102
    const-string v0, "DROP TABLE IF EXISTS cloud_app_control_list;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/providers/settings/cloud/CloudSettingsDatabaseHelper;
    .locals 2
    .parameter "context"

    .prologue
    .line 23
    const-class v1, Lcom/android/providers/settings/cloud/CloudSettingsDatabaseHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/providers/settings/cloud/CloudSettingsDatabaseHelper;->mInstance:Lcom/android/providers/settings/cloud/CloudSettingsDatabaseHelper;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/android/providers/settings/cloud/CloudSettingsDatabaseHelper;

    invoke-direct {v0, p0}, Lcom/android/providers/settings/cloud/CloudSettingsDatabaseHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/providers/settings/cloud/CloudSettingsDatabaseHelper;->mInstance:Lcom/android/providers/settings/cloud/CloudSettingsDatabaseHelper;

    .line 26
    :cond_0
    sget-object v0, Lcom/android/providers/settings/cloud/CloudSettingsDatabaseHelper;->mInstance:Lcom/android/providers/settings/cloud/CloudSettingsDatabaseHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 23
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public dropAndCreateAllTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/providers/settings/cloud/CloudSettingsDatabaseHelper;->dropUserTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 98
    invoke-virtual {p0, p1}, Lcom/android/providers/settings/cloud/CloudSettingsDatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 99
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 31
    const-string v0, "CloudSettingsDatabaseHelper"

    const-string v1, "create database."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-direct {p0, p1}, Lcom/android/providers/settings/cloud/CloudSettingsDatabaseHelper;->createAppControlListTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 33
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Lcom/android/providers/settings/cloud/CloudSettingsDatabaseHelper;->dropAndCreateAllTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 94
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 51
    const-string v0, "CloudSettingsDatabaseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrading database from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const-string v0, "CloudSettingsDatabaseHelper"

    const-string v1, "Destroying all old data."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-virtual {p0, p1}, Lcom/android/providers/settings/cloud/CloudSettingsDatabaseHelper;->dropAndCreateAllTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 89
    return-void
.end method
