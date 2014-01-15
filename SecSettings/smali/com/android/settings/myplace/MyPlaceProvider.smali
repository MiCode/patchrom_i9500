.class public Lcom/android/settings_ex/myplace/MyPlaceProvider;
.super Landroid/content/ContentProvider;
.source "MyPlaceProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/myplace/MyPlaceProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field public static final BT_DEVICE_NAME:Ljava/lang/String; = "bt_device_name"

.field public static final BT_MAC_ADDRESS:Ljava/lang/String; = "bt_mac_address"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field private static final DATABASE_NAME:Ljava/lang/String; = "myplace.db"

.field private static final DATABASE_TABLE:Ljava/lang/String; = "registerinfo"

.field private static final DATABASE_VERSION:I = 0x1

.field public static final GPS_LATITUDE:Ljava/lang/String; = "gps_latitude"

.field public static final GPS_LOCATION:Ljava/lang/String; = "gps_location"

.field public static final GPS_LONGITUDE:Ljava/lang/String; = "gps_longitude"

.field public static final GPS_MAP:Ljava/lang/String; = "gps_map"

.field public static final KEY_ID:Ljava/lang/String; = "_id"

.field public static final METHOD_TYPE:Ljava/lang/String; = "type"

.field public static final PROFILE_NAME:Ljava/lang/String; = "profile_name"

.field public static final PROVIDER_NAME:Ljava/lang/String; = "com.android.settings_ex.myplace.MyPlaceProvider"

.field private static final REGISTERINFO:I = 0x1

.field private static final REGISTERINFO_ID:I = 0x2

.field private static final TABLE_CREATE:Ljava/lang/String; = "CREATE TABLE registerinfo (_id INTEGER PRIMARY KEY  AUTOINCREMENT  NOT NULL , type INTEGER ,profile_name VARCHAR NOT NULL , timestamp VARCHAR , gps_location VARCHAR , gps_latitude INTEGER , gps_longitude INTEGER , gps_map BLOB , wifi_ap_name VARCHAR , wifi_bssid VARCHAR , wifi_frequency INTEGER , wifi_auto_connect INTEGER , bt_device_name VARCHAR , bt_mac_address VARCHAR)"

.field private static final TAG:Ljava/lang/String; = "MyPlaceProvider"

.field public static final TIMESTAMP:Ljava/lang/String; = "timestamp"

.field public static final WIFI_AP_AUTO_CONNECT:Ljava/lang/String; = "wifi_auto_connect"

.field public static final WIFI_AP_BSSID:Ljava/lang/String; = "wifi_bssid"

.field public static final WIFI_AP_FREQUENCY:Ljava/lang/String; = "wifi_frequency"

.field public static final WIFI_AP_NAME:Ljava/lang/String; = "wifi_ap_name"

.field private static final uriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mDB:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 28
    const-string v0, "content://com.android.settings.myplace.MyPlaceProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/myplace/MyPlaceProvider;->CONTENT_URI:Landroid/net/Uri;

    .line 61
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/settings_ex/myplace/MyPlaceProvider;->uriMatcher:Landroid/content/UriMatcher;

    .line 62
    sget-object v0, Lcom/android/settings_ex/myplace/MyPlaceProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.settings_ex.myplace.MyPlaceProvider"

    const-string v2, ""

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 63
    sget-object v0, Lcom/android/settings_ex/myplace/MyPlaceProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.settings_ex.myplace.MyPlaceProvider"

    const-string v2, "#"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 64
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 66
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 179
    iget-object v1, p0, Lcom/android/settings_ex/myplace/MyPlaceProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "registerinfo"

    invoke-virtual {v1, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 195
    .local v0, count:I
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 196
    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "uri"

    .prologue
    .line 159
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 5
    .parameter "uri"
    .parameter "values"

    .prologue
    const/4 v4, 0x0

    .line 165
    iget-object v2, p0, Lcom/android/settings_ex/myplace/MyPlaceProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "registerinfo"

    invoke-virtual {v2, v3, v4, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 167
    .local v0, keyID:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 168
    sget-object v2, Lcom/android/settings_ex/myplace/MyPlaceProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 169
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 170
    return-object p1

    .line 172
    :cond_0
    new-instance v2, Landroid/database/SQLException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to insert row into "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onCreate()Z
    .locals 3

    .prologue
    .line 117
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 118
    .local v0, context:Landroid/content/Context;
    new-instance v1, Lcom/android/settings_ex/myplace/MyPlaceProvider$DatabaseHelper;

    invoke-direct {v1, v0}, Lcom/android/settings_ex/myplace/MyPlaceProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 119
    .local v1, dbHelper:Lcom/android/settings_ex/myplace/MyPlaceProvider$DatabaseHelper;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/myplace/MyPlaceProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 121
    iget-object v2, p0, Lcom/android/settings_ex/myplace/MyPlaceProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v5, 0x0

    .line 127
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 129
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v1, "registerinfo"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 131
    sget-object v1, Lcom/android/settings_ex/myplace/MyPlaceProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 144
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    const-string v7, "_id"

    .line 150
    .local v7, orderBy:Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/myplace/MyPlaceProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 151
    .local v8, c:Landroid/database/Cursor;
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-interface {v8, v1, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 153
    .end local v7           #orderBy:Ljava/lang/String;
    :goto_1
    return-object v8

    .line 134
    .end local v8           #c:Landroid/database/Cursor;
    :pswitch_0
    const-string v1, "MyPlaceProvider"

    const-string v2, "query with REGISTERINFO_ID"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v1, p0, Lcom/android/settings_ex/myplace/MyPlaceProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, p2

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 137
    .restart local v8       #c:Landroid/database/Cursor;
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-interface {v8, v1, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto :goto_1

    .line 147
    .end local v8           #c:Landroid/database/Cursor;
    :cond_0
    move-object v7, p5

    .restart local v7       #orderBy:Ljava/lang/String;
    goto :goto_0

    .line 131
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 202
    const/4 v0, 0x0

    .line 203
    .local v0, count:I
    const-string v1, "MyPlaceProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uri : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", selection : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", values : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v1, p0, Lcom/android/settings_ex/myplace/MyPlaceProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "registerinfo"

    invoke-virtual {v1, v2, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 206
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 207
    return v0
.end method
