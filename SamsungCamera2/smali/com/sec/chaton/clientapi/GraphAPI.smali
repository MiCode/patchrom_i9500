.class public Lcom/sec/chaton/clientapi/GraphAPI;
.super Ljava/lang/Object;
.source "GraphAPI.java"


# static fields
.field protected static final ACCESS_TOKEN_PROVIDER_URI:Landroid/net/Uri; = null

.field public static final BUDDY_NAME:Ljava/lang/String; = "buddy_name"

.field public static final BUDDY_NO:Ljava/lang/String; = "buddy_no"

.field public static final BUDDY_STATUS_MESSAGE:Ljava/lang/String; = "buddy_status_message"

.field protected static final BUDDY_URI:Landroid/net/Uri; = null

.field protected static final CHATON_ACTION_ADD_BUDDY:Ljava/lang/String; = "com.sec.chaton.action.ADD_BUDDY"

.field protected static final CHATON_ACTION_ADD_BUDDY_BACKGROUND:Ljava/lang/String; = "com.sec.chaton.api.background.ADD_BUDDY"

.field protected static final DATA_PREFIX:Ljava/lang/String; = "chaton://"

.field protected static final EXTRA_KEY_API_VER:Ljava/lang/String; = "apiVer"

.field protected static final EXTRA_KEY_EXCEPT:Ljava/lang/String; = "except"

.field protected static final EXTRA_KEY_ID:Ljava/lang/String; = "id"

.field protected static final EXTRA_KEY_MAX_COUNT:Ljava/lang/String; = "max"

.field protected static final EXTRA_KEY_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field protected static final EXTRA_KEY_REQUEST_ID:Ljava/lang/String; = "request_id"

.field protected static final EXTRA_KEY_REQUIRE:Ljava/lang/String; = "require"

.field protected static final EXTRA_KEY_SINGLE:Ljava/lang/String; = "single"

.field public static final ME_COUNTRY_ISO_CODE:Ljava/lang/String; = "country_iso_code"

.field public static final ME_COUNTRY_NUM:Ljava/lang/String; = "country_num"

.field public static final ME_ID:Ljava/lang/String; = "id"

.field public static final ME_NAME:Ljava/lang/String; = "name"

.field protected static final ME_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "content://com.sec.chaton.access_token.provider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/chaton/clientapi/GraphAPI;->ACCESS_TOKEN_PROVIDER_URI:Landroid/net/Uri;

    .line 37
    const-string v0, "content://com.sec.chaton.provider/buddy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/chaton/clientapi/GraphAPI;->BUDDY_URI:Landroid/net/Uri;

    .line 101
    const-string v0, "content://com.sec.chaton.provider/me"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/chaton/clientapi/GraphAPI;->ME_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addBuddy(Landroid/content/Context;Ljava/lang/String;)I
    .locals 9
    .parameter "context"
    .parameter "id"
    .annotation runtime Lcom/sec/chaton/clientapi/API;
        description = "1.10.3"
        versionCode = 0xa7dcbd
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 188
    const-class v4, Lcom/sec/chaton/clientapi/GraphAPI;

    const-string v5, "addBuddy"

    new-array v6, v2, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v3

    invoke-static {p0, v4, v5, v6}, Lcom/sec/chaton/clientapi/UtilityAPI;->isAvailableAPI(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 216
    :goto_0
    return v2

    .line 193
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0x64

    if-le v2, v4, :cond_2

    .line 194
    :cond_1
    const/4 v2, 0x7

    goto :goto_0

    .line 199
    :cond_2
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.chaton.action.ADD_BUDDY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 201
    .local v1, i:Landroid/content/Intent;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 202
    const-string v2, "id"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    invoke-static {p0, v1}, Lcom/sec/chaton/clientapi/GraphAPI;->addPassword(Landroid/content/Context;Landroid/content/Intent;)V

    .line 206
    :cond_3
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move v2, v3

    .line 208
    goto :goto_0

    .line 210
    .end local v1           #i:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 211
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 212
    const/4 v2, 0x4

    goto :goto_0

    .line 214
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v0

    .line 215
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 216
    const/4 v2, 0x3

    goto :goto_0
.end method

.method public static addBuddyBackground(Landroid/content/Context;JLjava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "requestId"
    .parameter "buddyId"
    .annotation runtime Lcom/sec/chaton/clientapi/API;
        description = "2.0.1"
        versionCode = 0x1312db1
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/chaton/clientapi/exception/NotActivatedClientAPIException;,
            Lcom/sec/chaton/clientapi/exception/NotAvailableClientAPIException;,
            Lcom/sec/chaton/clientapi/exception/IllegalArgumentClientAPIException;
        }
    .end annotation

    .prologue
    .line 228
    invoke-static {p0}, Lcom/sec/chaton/clientapi/UtilityAPI;->isChatONActivated(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 229
    new-instance v1, Lcom/sec/chaton/clientapi/exception/NotActivatedClientAPIException;

    invoke-direct {v1}, Lcom/sec/chaton/clientapi/exception/NotActivatedClientAPIException;-><init>()V

    throw v1

    .line 231
    :cond_0
    const-class v1, Lcom/sec/chaton/clientapi/GraphAPI;

    const-string v2, "addBuddyBackground"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {p0, v1, v2, v3}, Lcom/sec/chaton/clientapi/UtilityAPI;->isAvailableAPI(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 232
    new-instance v1, Lcom/sec/chaton/clientapi/exception/NotAvailableClientAPIException;

    invoke-direct {v1}, Lcom/sec/chaton/clientapi/exception/NotAvailableClientAPIException;-><init>()V

    throw v1

    .line 234
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 235
    new-instance v1, Lcom/sec/chaton/clientapi/exception/IllegalArgumentClientAPIException;

    const-string v2, "buddyId\'s length must be greater than or equals to 1."

    invoke-direct {v1, v2}, Lcom/sec/chaton/clientapi/exception/IllegalArgumentClientAPIException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 236
    :cond_2
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x64

    if-le v1, v2, :cond_3

    .line 237
    new-instance v1, Lcom/sec/chaton/clientapi/exception/IllegalArgumentClientAPIException;

    const-string v2, "buddyId\'s length must not be more than 100"

    invoke-direct {v1, v2}, Lcom/sec/chaton/clientapi/exception/IllegalArgumentClientAPIException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 240
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.chaton.api.background.ADD_BUDDY"

    const-string v2, "chaton://"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 242
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "packageName"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    const-string v1, "apiVer"

    const-string v2, "1.0"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    const-string v1, "request_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 249
    const-string v1, "id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    invoke-static {p0, v0}, Lcom/sec/chaton/clientapi/GraphAPI;->addPassword(Landroid/content/Context;Landroid/content/Intent;)V

    .line 252
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 253
    return-void
.end method

.method protected static addPassword(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sec/chaton/clientapi/GraphAPI;->ACCESS_TOKEN_PROVIDER_URI:Landroid/net/Uri;

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 34
    .local v0, returnUri:Landroid/net/Uri;
    const-string v1, "password"

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    return-void
.end method

.method public static getBuddyList(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "context"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"
    .annotation runtime Lcom/sec/chaton/clientapi/API;
        description = "1.10.3"
        versionCode = 0xa7dcbd
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/chaton/clientapi/exception/NotAvailableClientAPIException;,
            Lcom/sec/chaton/clientapi/exception/NotActivatedClientAPIException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 46
    invoke-static {p0}, Lcom/sec/chaton/clientapi/UtilityAPI;->isChatONActivated(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/sec/chaton/clientapi/exception/NotActivatedClientAPIException;

    const-string v1, "ChatON isn\'t activated."

    invoke-direct {v0, v1}, Lcom/sec/chaton/clientapi/exception/NotActivatedClientAPIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_0
    const-class v0, Lcom/sec/chaton/clientapi/GraphAPI;

    const-string v1, "getBuddyList"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v5

    const-class v3, [Ljava/lang/String;

    aput-object v3, v2, v6

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v7

    invoke-static {p0, v0, v1, v2}, Lcom/sec/chaton/clientapi/UtilityAPI;->isAvailableAPI(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 50
    new-instance v0, Lcom/sec/chaton/clientapi/exception/NotAvailableClientAPIException;

    const-string v1, "API isn\'t availble. please check your ChatON version."

    invoke-direct {v0, v1}, Lcom/sec/chaton/clientapi/exception/NotAvailableClientAPIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/chaton/clientapi/GraphAPI;->BUDDY_URI:Landroid/net/Uri;

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "buddy_no"

    aput-object v3, v2, v4

    const-string v3, "buddy_name"

    aput-object v3, v2, v5

    const-string v3, "buddy_status_message"

    aput-object v3, v2, v6

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static getBuddyProfileImage(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "context"
    .parameter "buddyNo"
    .annotation runtime Lcom/sec/chaton/clientapi/API;
        description = "1.10.3"
        versionCode = 0xa7dcbd
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/chaton/clientapi/exception/IllegalArgumentClientAPIException;,
            Lcom/sec/chaton/clientapi/exception/NotAvailableClientAPIException;,
            Lcom/sec/chaton/clientapi/exception/NotActivatedClientAPIException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-static {p0}, Lcom/sec/chaton/clientapi/UtilityAPI;->isChatONActivated(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 62
    new-instance v3, Lcom/sec/chaton/clientapi/exception/NotActivatedClientAPIException;

    const-string v4, "ChatON isn\'t activated."

    invoke-direct {v3, v4}, Lcom/sec/chaton/clientapi/exception/NotActivatedClientAPIException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 64
    :cond_0
    const-class v3, Lcom/sec/chaton/clientapi/GraphAPI;

    const-string v4, "getBuddyProfileImage"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {p0, v3, v4, v5}, Lcom/sec/chaton/clientapi/UtilityAPI;->isAvailableAPI(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 65
    new-instance v3, Lcom/sec/chaton/clientapi/exception/NotAvailableClientAPIException;

    const-string v4, "API isn\'t availble. please check your ChatON version."

    invoke-direct {v3, v4}, Lcom/sec/chaton/clientapi/exception/NotAvailableClientAPIException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 69
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 70
    new-instance v3, Lcom/sec/chaton/clientapi/exception/IllegalArgumentClientAPIException;

    const-string v4, "buddyNo\'s length must be greater than or equals to 1."

    invoke-direct {v3, v4}, Lcom/sec/chaton/clientapi/exception/IllegalArgumentClientAPIException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 71
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x64

    if-le v3, v4, :cond_3

    .line 72
    new-instance v3, Lcom/sec/chaton/clientapi/exception/IllegalArgumentClientAPIException;

    const-string v4, "buddyNo\'s length must not be more than 100"

    invoke-direct {v3, v4}, Lcom/sec/chaton/clientapi/exception/IllegalArgumentClientAPIException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 76
    :cond_3
    const/4 v0, 0x0

    .line 77
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 79
    .local v2, pfdInput:Landroid/os/ParcelFileDescriptor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/sec/chaton/clientapi/GraphAPI;->BUDDY_URI:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "buddy_no/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "r"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 80
    if-eqz v2, :cond_4

    .line 81
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 89
    :cond_4
    if-eqz v2, :cond_5

    .line 91
    :try_start_1
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 98
    :cond_5
    :goto_0
    return-object v0

    .line 92
    :catch_0
    move-exception v1

    .line 94
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 84
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 86
    .local v1, e:Ljava/io/FileNotFoundException;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 89
    if-eqz v2, :cond_5

    .line 91
    :try_start_3
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 92
    :catch_2
    move-exception v1

    .line 94
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 89
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_6

    .line 91
    :try_start_4
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 95
    :cond_6
    :goto_1
    throw v3

    .line 92
    :catch_3
    move-exception v1

    .line 94
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public static getMyProfile(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 9
    .parameter "context"
    .annotation runtime Lcom/sec/chaton/clientapi/API;
        description = "1.10.3"
        versionCode = 0xa7dcbd
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/chaton/clientapi/exception/NotAvailableClientAPIException;,
            Lcom/sec/chaton/clientapi/exception/NotActivatedClientAPIException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 111
    const-class v0, Lcom/sec/chaton/clientapi/GraphAPI;

    const-string v1, "getMyProfile"

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v2, v4

    invoke-static {p0, v0, v1, v2}, Lcom/sec/chaton/clientapi/UtilityAPI;->isAvailableAPI(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Lcom/sec/chaton/clientapi/exception/NotAvailableClientAPIException;

    const-string v1, "API isn\'t availble. please check your ChatON version."

    invoke-direct {v0, v1}, Lcom/sec/chaton/clientapi/exception/NotAvailableClientAPIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_0
    const/4 v6, 0x0

    .line 117
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/chaton/clientapi/GraphAPI;->ME_URI:Landroid/net/Uri;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "name"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "country_num"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "country_iso_code"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 122
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 123
    :cond_1
    new-instance v0, Lcom/sec/chaton/clientapi/exception/NotActivatedClientAPIException;

    const-string v1, "ChatON isn\'t activated."

    invoke-direct {v0, v1}, Lcom/sec/chaton/clientapi/exception/NotActivatedClientAPIException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/sec/chaton/clientapi/exception/NotActivatedClientAPIException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 138
    :catch_0
    move-exception v7

    .line 139
    .local v7, e:Lcom/sec/chaton/clientapi/exception/NotActivatedClientAPIException;
    if-eqz v6, :cond_2

    .line 140
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 142
    :cond_2
    throw v7

    .line 126
    .end local v7           #e:Lcom/sec/chaton/clientapi/exception/NotActivatedClientAPIException;
    :cond_3
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 127
    const-string v0, "id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 129
    .local v8, id:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 130
    new-instance v0, Lcom/sec/chaton/clientapi/exception/NotActivatedClientAPIException;

    const-string v1, "ChatON isn\'t activated."

    invoke-direct {v0, v1}, Lcom/sec/chaton/clientapi/exception/NotActivatedClientAPIException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lcom/sec/chaton/clientapi/exception/NotActivatedClientAPIException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 144
    .end local v8           #id:Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 145
    .local v7, e:Ljava/lang/RuntimeException;
    if-eqz v6, :cond_4

    .line 146
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 148
    :cond_4
    throw v7

    .line 135
    .end local v7           #e:Ljava/lang/RuntimeException;
    :cond_5
    :try_start_2
    new-instance v0, Lcom/sec/chaton/clientapi/exception/NotActivatedClientAPIException;

    const-string v1, "ChatON isn\'t activated."

    invoke-direct {v0, v1}, Lcom/sec/chaton/clientapi/exception/NotActivatedClientAPIException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Lcom/sec/chaton/clientapi/exception/NotActivatedClientAPIException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 132
    .restart local v8       #id:Ljava/lang/String;
    :cond_6
    return-object v6
.end method

.method public static pickBuddy(Landroid/content/Context;[Ljava/lang/String;I)Landroid/content/Intent;
    .locals 7
    .parameter "context"
    .parameter "exceptBuddies"
    .parameter "maxCount"
    .annotation runtime Lcom/sec/chaton/clientapi/API;
        description = "1.10.3"
        versionCode = 0xa7dcbd
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/chaton/clientapi/exception/NotAvailableClientAPIException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 160
    const-class v1, Lcom/sec/chaton/clientapi/GraphAPI;

    const-string v2, "pickBuddy"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v6

    const/4 v4, 0x1

    const-class v5, [Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-static {p0, v1, v2, v3}, Lcom/sec/chaton/clientapi/UtilityAPI;->isAvailableAPI(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 161
    new-instance v1, Lcom/sec/chaton/clientapi/exception/NotAvailableClientAPIException;

    const-string v2, "API isn\'t availble. please check your ChatON version."

    invoke-direct {v1, v2}, Lcom/sec/chaton/clientapi/exception/NotAvailableClientAPIException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 163
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    const-string v2, "chaton://"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 165
    .local v0, i:Landroid/content/Intent;
    if-lez p2, :cond_1

    .line 166
    const-string v1, "max"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 169
    :cond_1
    const-string v1, "single"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 175
    if-eqz p1, :cond_2

    array-length v1, p1

    if-lez v1, :cond_2

    .line 176
    const-string v1, "except"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    :cond_2
    return-object v0
.end method
