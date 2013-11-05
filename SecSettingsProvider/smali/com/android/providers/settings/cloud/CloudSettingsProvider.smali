.class public Lcom/android/providers/settings/cloud/CloudSettingsProvider;
.super Landroid/content/ContentProvider;
.source "CloudSettingsProvider.java"


# static fields
.field private static final ID_PROJECTION:[Ljava/lang/String;

.field private static final URI_MATCHER:Landroid/content/UriMatcher;


# instance fields
.field private mOpenHelper:Lcom/android/providers/settings/cloud/CloudSettingsDatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 21
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/providers/settings/cloud/CloudSettingsProvider;->ID_PROJECTION:[Ljava/lang/String;

    .line 25
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/providers/settings/cloud/CloudSettingsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 27
    sget-object v0, Lcom/android/providers/settings/cloud/CloudSettingsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.android.providers.settings.cloud.CloudSettings"

    const-string v2, "cloud_app_control_list"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private bulkInsertOrUpdateAppControlList([Landroid/content/ContentValues;)I
    .locals 12
    .parameter "values"

    .prologue
    const/4 v8, -0x1

    .line 170
    const-string v9, "CloudSettingsProvider"

    const-string v10, "bulkInsertOrUpdateAppControlList"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    if-eqz p1, :cond_0

    array-length v9, p1

    if-nez v9, :cond_1

    .line 209
    :cond_0
    :goto_0
    return v8

    .line 176
    :cond_1
    :try_start_0
    iget-object v9, p0, Lcom/android/providers/settings/cloud/CloudSettingsProvider;->mOpenHelper:Lcom/android/providers/settings/cloud/CloudSettingsDatabaseHelper;

    invoke-virtual {v9}, Lcom/android/providers/settings/cloud/CloudSettingsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 181
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 183
    :try_start_1
    const-string v7, "INSERT OR REPLACE INTO cloud_app_control_list(data_id,package_name,release_key,max_version_code,min_version_code,attributes) VALUES(?,?,?,?,?,?)"

    .line 193
    .local v7, sql:Ljava/lang/String;
    invoke-virtual {v2, v7}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v5

    .line 194
    .local v5, insertOrUpdate:Landroid/database/sqlite/SQLiteStatement;
    move-object v0, p1

    .local v0, arr$:[Landroid/content/ContentValues;
    array-length v6, v0

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v6, :cond_2

    aget-object v1, v0, v4

    .line 195
    .local v1, contentValues:Landroid/content/ContentValues;
    const/4 v9, 0x1

    const-string v10, "data_id"

    invoke-virtual {v1, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 196
    const/4 v9, 0x2

    const-string v10, "package_name"

    invoke-virtual {v1, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 197
    const/4 v9, 0x3

    const-string v10, "release_key"

    invoke-virtual {v1, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 198
    const/4 v9, 0x4

    const-string v10, "max_version_code"

    invoke-virtual {v1, v10}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v5, v9, v10, v11}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 199
    const/4 v9, 0x5

    const-string v10, "min_version_code"

    invoke-virtual {v1, v10}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v5, v9, v10, v11}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 200
    const/4 v9, 0x6

    const-string v10, "attributes"

    invoke-virtual {v1, v10}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v5, v9, v10, v11}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 201
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 194
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 177
    .end local v0           #arr$:[Landroid/content/ContentValues;
    .end local v1           #contentValues:Landroid/content/ContentValues;
    .end local v2           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v4           #i$:I
    .end local v5           #insertOrUpdate:Landroid/database/sqlite/SQLiteStatement;
    .end local v6           #len$:I
    .end local v7           #sql:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 178
    .local v3, e:Landroid/database/sqlite/SQLiteException;
    const-string v9, "CloudSettingsProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ".bulkInsertOrUpdateAppControlList failed - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 203
    .end local v3           #e:Landroid/database/sqlite/SQLiteException;
    .restart local v0       #arr$:[Landroid/content/ContentValues;
    .restart local v2       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v4       #i$:I
    .restart local v5       #insertOrUpdate:Landroid/database/sqlite/SQLiteStatement;
    .restart local v6       #len$:I
    .restart local v7       #sql:Ljava/lang/String;
    :cond_2
    :try_start_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 207
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 209
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 204
    .end local v0           #arr$:[Landroid/content/ContentValues;
    .end local v4           #i$:I
    .end local v5           #insertOrUpdate:Landroid/database/sqlite/SQLiteStatement;
    .end local v6           #len$:I
    .end local v7           #sql:Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 207
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v8
.end method


# virtual methods
.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 4
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 131
    const-string v1, "CloudSettingsProvider"

    const-string v2, "bulkInsert"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    sget-object v1, Lcom/android/providers/settings/cloud/CloudSettingsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 133
    .local v0, uriMatch:I
    packed-switch v0, :pswitch_data_0

    .line 137
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown URL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 135
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/android/providers/settings/cloud/CloudSettingsProvider;->bulkInsertOrUpdateAppControlList([Landroid/content/ContentValues;)I

    move-result v1

    return v1

    .line 133
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 143
    const-string v4, "CloudSettingsProvider"

    const-string v5, "delete"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :try_start_0
    iget-object v4, p0, Lcom/android/providers/settings/cloud/CloudSettingsProvider;->mOpenHelper:Lcom/android/providers/settings/cloud/CloudSettingsDatabaseHelper;

    invoke-virtual {v4}, Lcom/android/providers/settings/cloud/CloudSettingsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 151
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v4, Lcom/android/providers/settings/cloud/CloudSettingsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    .line 152
    .local v3, uriMatch:I
    const/4 v0, 0x0

    .line 153
    .local v0, count:I
    packed-switch v3, :pswitch_data_0

    .line 158
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown URL "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 147
    .end local v0           #count:I
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v3           #uriMatch:I
    :catch_0
    move-exception v2

    .line 148
    .local v2, e:Landroid/database/sqlite/SQLiteException;
    const-string v4, "CloudSettingsProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ".delete failed - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const/4 v0, 0x0

    .line 161
    .end local v2           #e:Landroid/database/sqlite/SQLiteException;
    :pswitch_0
    return v0

    .line 153
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "uri"

    .prologue
    .line 32
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 7
    .parameter "uri"
    .parameter "values"

    .prologue
    const/4 v6, 0x0

    .line 109
    const-string v3, "CloudSettingsProvider"

    const-string v4, "insert"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :try_start_0
    iget-object v3, p0, Lcom/android/providers/settings/cloud/CloudSettingsProvider;->mOpenHelper:Lcom/android/providers/settings/cloud/CloudSettingsDatabaseHelper;

    invoke-virtual {v3}, Lcom/android/providers/settings/cloud/CloudSettingsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 117
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v3, Lcom/android/providers/settings/cloud/CloudSettingsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 118
    .local v2, uriMatch:I
    packed-switch v2, :pswitch_data_0

    .line 123
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown URL "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 113
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #uriMatch:I
    :catch_0
    move-exception v1

    .line 114
    .local v1, e:Landroid/database/sqlite/SQLiteException;
    const-string v3, "CloudSettingsProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ".insert failed - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    .end local v1           #e:Landroid/database/sqlite/SQLiteException;
    :pswitch_0
    return-object v6

    .line 118
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 38
    const-string v0, "CloudSettingsProvider"

    const-string v1, "CloudSettingsProvider onCreate."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-virtual {p0}, Lcom/android/providers/settings/cloud/CloudSettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/settings/cloud/CloudSettingsDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/settings/cloud/CloudSettingsDatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/settings/cloud/CloudSettingsProvider;->mOpenHelper:Lcom/android/providers/settings/cloud/CloudSettingsDatabaseHelper;

    .line 42
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 51
    :try_start_0
    iget-object v1, p0, Lcom/android/providers/settings/cloud/CloudSettingsProvider;->mOpenHelper:Lcom/android/providers/settings/cloud/CloudSettingsDatabaseHelper;

    invoke-virtual {v1}, Lcom/android/providers/settings/cloud/CloudSettingsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 57
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    .line 58
    .local v8, cursor:Landroid/database/Cursor;
    sget-object v1, Lcom/android/providers/settings/cloud/CloudSettingsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v10

    .line 60
    .local v10, uriMatch:I
    packed-switch v10, :pswitch_data_0

    .line 78
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown URL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 52
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v8           #cursor:Landroid/database/Cursor;
    .end local v10           #uriMatch:I
    :catch_0
    move-exception v9

    .line 53
    .local v9, e:Landroid/database/sqlite/SQLiteException;
    const-string v1, "CloudSettingsProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ".query failed - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const/4 v8, 0x0

    .line 80
    .end local v9           #e:Landroid/database/sqlite/SQLiteException;
    :goto_0
    return-object v8

    .line 63
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8       #cursor:Landroid/database/Cursor;
    .restart local v10       #uriMatch:I
    :pswitch_0
    const-string v1, "cloud_app_control_list"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 74
    goto :goto_0

    .line 60
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 85
    const-string v4, "CloudSettingsProvider"

    const-string v5, "update"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :try_start_0
    iget-object v4, p0, Lcom/android/providers/settings/cloud/CloudSettingsProvider;->mOpenHelper:Lcom/android/providers/settings/cloud/CloudSettingsDatabaseHelper;

    invoke-virtual {v4}, Lcom/android/providers/settings/cloud/CloudSettingsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 93
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x0

    .line 94
    .local v0, count:I
    sget-object v4, Lcom/android/providers/settings/cloud/CloudSettingsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    .line 96
    .local v3, uriMatch:I
    packed-switch v3, :pswitch_data_0

    .line 101
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown URL "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 89
    .end local v0           #count:I
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v3           #uriMatch:I
    :catch_0
    move-exception v2

    .line 90
    .local v2, e:Landroid/database/sqlite/SQLiteException;
    const-string v4, "CloudSettingsProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ".update failed - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const/4 v0, 0x0

    .line 104
    .end local v2           #e:Landroid/database/sqlite/SQLiteException;
    :pswitch_0
    return v0

    .line 96
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
