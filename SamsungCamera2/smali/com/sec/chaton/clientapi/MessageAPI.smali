.class public Lcom/sec/chaton/clientapi/MessageAPI;
.super Ljava/lang/Object;
.source "MessageAPI.java"


# static fields
.field protected static final MAX_LENGTH_TEXT:I = 0x7d0

.field protected static final MAX_SIZE_IMAGE_VIDEO:J = 0xa00000L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static CheckMultiMediaValidation(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 12
    .parameter "context"
    .parameter "uri"

    .prologue
    const/16 v11, 0x9

    .line 255
    const/4 v9, 0x0

    .line 256
    .local v9, fileName:Ljava/lang/String;
    const-string v0, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 257
    const/4 v10, 0x0

    .line 259
    .local v10, oCursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 260
    const/4 v6, -0x1

    .line 261
    .local v6, columnIndex:I
    if-eqz v10, :cond_2

    .line 262
    :cond_0
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 263
    const-string v0, "_data"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 264
    const/4 v0, -0x1

    if-eq v6, v0, :cond_0

    .line 265
    invoke-interface {v10, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 268
    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    .end local v6           #columnIndex:I
    .end local v10           #oCursor:Landroid/database/Cursor;
    :cond_2
    :goto_1
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 289
    .local v8, file:Ljava/io/File;
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_6

    :cond_3
    move v0, v11

    .line 298
    .end local v8           #file:Ljava/io/File;
    :goto_2
    return v0

    .line 271
    .restart local v10       #oCursor:Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 272
    .local v7, e:Ljava/lang/SecurityException;
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    .line 273
    const/4 v0, 0x3

    goto :goto_2

    .line 276
    .end local v7           #e:Ljava/lang/SecurityException;
    .end local v10           #oCursor:Landroid/database/Cursor;
    :cond_4
    const-string v0, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 281
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    :cond_5
    move v0, v11

    .line 285
    goto :goto_2

    .line 293
    .restart local v8       #file:Ljava/io/File;
    :cond_6
    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/32 v2, 0xa00000

    cmp-long v0, v0, v2

    if-lez v0, :cond_7

    .line 294
    const/16 v0, 0x8

    goto :goto_2

    .line 296
    :cond_7
    const/4 v8, 0x0

    .line 298
    const/4 v0, 0x1

    goto :goto_2
.end method

.method public static openChatRoom(Landroid/content/Context;[Ljava/lang/String;)I
    .locals 10
    .parameter "context"
    .parameter "recipients"
    .annotation runtime Lcom/sec/chaton/clientapi/API;
        description = "1.10.3"
        versionCode = 0xa7dcbd
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v4, 0x1

    .line 41
    const-class v5, Lcom/sec/chaton/clientapi/MessageAPI;

    const-string v6, "openChatRoom"

    new-array v7, v3, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v7, v8

    const-class v8, [Ljava/lang/String;

    aput-object v8, v7, v4

    invoke-static {p0, v5, v6, v7}, Lcom/sec/chaton/clientapi/UtilityAPI;->isAvailableAPI(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 70
    :goto_0
    return v3

    .line 44
    :cond_0
    new-instance v0, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;

    invoke-direct {v0}, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;-><init>()V

    .line 45
    .local v0, builder:Lcom/sec/chaton/clientapi/ChatONMessage$Builder;
    const-string v3, "open"

    invoke-virtual {v0, v3}, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->setAction(Ljava/lang/String;)Lcom/sec/chaton/clientapi/ChatONMessage$Builder;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->setContext(Landroid/content/Context;)Lcom/sec/chaton/clientapi/ChatONMessage$Builder;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->setRecipients([Ljava/lang/String;)Lcom/sec/chaton/clientapi/ChatONMessage$Builder;

    .line 50
    :try_start_0
    invoke-virtual {v0}, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->build()Lcom/sec/chaton/clientapi/ChatONMessage;

    move-result-object v2

    .line 52
    .local v2, msg:Lcom/sec/chaton/clientapi/ChatONMessage;
    invoke-virtual {v2}, Lcom/sec/chaton/clientapi/ChatONMessage;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move v3, v4

    .line 54
    goto :goto_0

    .line 56
    .end local v2           #msg:Lcom/sec/chaton/clientapi/ChatONMessage;
    :catch_0
    move-exception v1

    .line 57
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 58
    const/4 v3, 0x5

    goto :goto_0

    .line 60
    .end local v1           #e:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v1

    .line 61
    .local v1, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 62
    const/4 v3, 0x4

    goto :goto_0

    .line 64
    .end local v1           #e:Landroid/content/ActivityNotFoundException;
    :catch_2
    move-exception v1

    .line 65
    .local v1, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 66
    const/4 v3, 0x7

    goto :goto_0

    .line 68
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v1

    .line 69
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 70
    const/4 v3, 0x3

    goto :goto_0
.end method

.method public static sendAppLinkMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)I
    .locals 8
    .parameter "context"
    .parameter "text"
    .parameter "appName"
    .parameter "appVersion"
    .annotation runtime Lcom/sec/chaton/clientapi/API;
        description = "1.10.3"
        versionCode = 0xa7dcbd
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)I"
        }
    .end annotation

    .prologue
    .line 494
    .local p4, appParamInfo:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-class v3, Lcom/sec/chaton/clientapi/MessageAPI;

    const-string v4, "sendAppLinkMessage"

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-class v7, Ljava/util/List;

    aput-object v7, v5, v6

    invoke-static {p0, v3, v4, v5}, Lcom/sec/chaton/clientapi/UtilityAPI;->isAvailableAPI(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 495
    const/4 v3, 0x2

    .line 532
    :goto_0
    return v3

    .line 497
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x7d0

    if-le v3, v4, :cond_1

    .line 498
    const/4 v3, 0x6

    goto :goto_0

    .line 501
    :cond_1
    new-instance v0, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;

    invoke-direct {v0}, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;-><init>()V

    .line 502
    .local v0, builder:Lcom/sec/chaton/clientapi/ChatONMessage$Builder;
    const-string v3, "send"

    invoke-virtual {v0, v3}, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->setAction(Ljava/lang/String;)Lcom/sec/chaton/clientapi/ChatONMessage$Builder;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->setContext(Landroid/content/Context;)Lcom/sec/chaton/clientapi/ChatONMessage$Builder;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->setMsg(Ljava/lang/String;)Lcom/sec/chaton/clientapi/ChatONMessage$Builder;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->setAppName(Ljava/lang/String;)Lcom/sec/chaton/clientapi/ChatONMessage$Builder;

    move-result-object v3

    sget-object v4, Lcom/sec/chaton/clientapi/ChatONMessage$contentType;->app:Lcom/sec/chaton/clientapi/ChatONMessage$contentType;

    invoke-virtual {v3, v4}, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->setContentType(Lcom/sec/chaton/clientapi/ChatONMessage$contentType;)Lcom/sec/chaton/clientapi/ChatONMessage$Builder;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->setAppVer(Ljava/lang/String;)Lcom/sec/chaton/clientapi/ChatONMessage$Builder;

    move-result-object v3

    invoke-virtual {v3, p4}, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->setAppParamInfo(Ljava/util/List;)Lcom/sec/chaton/clientapi/ChatONMessage$Builder;

    move-result-object v3

    sget-object v4, Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;->text:Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;

    invoke-virtual {v3, v4}, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->setMimeType(Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;)Lcom/sec/chaton/clientapi/ChatONMessage$Builder;

    .line 512
    :try_start_0
    invoke-virtual {v0}, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->build()Lcom/sec/chaton/clientapi/ChatONMessage;

    move-result-object v2

    .line 514
    .local v2, msg:Lcom/sec/chaton/clientapi/ChatONMessage;
    invoke-virtual {v2}, Lcom/sec/chaton/clientapi/ChatONMessage;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 516
    const/4 v3, 0x1

    goto :goto_0

    .line 518
    .end local v2           #msg:Lcom/sec/chaton/clientapi/ChatONMessage;
    :catch_0
    move-exception v1

    .line 519
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 520
    const/4 v3, 0x5

    goto :goto_0

    .line 522
    .end local v1           #e:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v1

    .line 523
    .local v1, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 524
    const/4 v3, 0x4

    goto :goto_0

    .line 526
    .end local v1           #e:Landroid/content/ActivityNotFoundException;
    :catch_2
    move-exception v1

    .line 527
    .local v1, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 528
    const/4 v3, 0x7

    goto :goto_0

    .line 530
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v1

    .line 531
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 532
    const/4 v3, 0x3

    goto :goto_0
.end method

.method public static sendMultiMediaMessage(Landroid/content/Context;Landroid/net/Uri;Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;)I
    .locals 12
    .parameter "context"
    .parameter "uri"
    .parameter "mimeType"
    .annotation runtime Lcom/sec/chaton/clientapi/API;
        description = "1.10.3"
        versionCode = 0xa7dcbd
    .end annotation

    .prologue
    const/4 v5, 0x7

    const/4 v6, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    .line 304
    const-class v7, Lcom/sec/chaton/clientapi/MessageAPI;

    const-string v8, "sendMultiMediaMessage"

    new-array v9, v6, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Landroid/content/Context;

    aput-object v11, v9, v10

    const-class v10, Landroid/net/Uri;

    aput-object v10, v9, v4

    const-class v10, Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;

    aput-object v10, v9, v3

    invoke-static {p0, v7, v8, v9}, Lcom/sec/chaton/clientapi/UtilityAPI;->isAvailableAPI(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 344
    :cond_0
    :goto_0
    return v3

    .line 307
    :cond_1
    if-eqz p1, :cond_2

    sget-object v7, Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;->image:Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;

    if-eq p2, v7, :cond_3

    sget-object v7, Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;->video:Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;

    if-eq p2, v7, :cond_3

    :cond_2
    move v3, v5

    .line 308
    goto :goto_0

    .line 311
    :cond_3
    invoke-static {p0, p1}, Lcom/sec/chaton/clientapi/MessageAPI;->CheckMultiMediaValidation(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v3

    .line 312
    .local v3, nCheckResult:I
    if-ne v3, v4, :cond_0

    .line 316
    new-instance v0, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;

    invoke-direct {v0}, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;-><init>()V

    .line 317
    .local v0, builder:Lcom/sec/chaton/clientapi/ChatONMessage$Builder;
    const-string v7, "send"

    invoke-virtual {v0, v7}, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->setAction(Ljava/lang/String;)Lcom/sec/chaton/clientapi/ChatONMessage$Builder;

    move-result-object v7

    invoke-virtual {v7, p0}, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->setContext(Landroid/content/Context;)Lcom/sec/chaton/clientapi/ChatONMessage$Builder;

    move-result-object v7

    sget-object v8, Lcom/sec/chaton/clientapi/ChatONMessage$contentType;->multimedia:Lcom/sec/chaton/clientapi/ChatONMessage$contentType;

    invoke-virtual {v7, v8}, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->setContentType(Lcom/sec/chaton/clientapi/ChatONMessage$contentType;)Lcom/sec/chaton/clientapi/ChatONMessage$Builder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->setUri(Ljava/lang/String;)Lcom/sec/chaton/clientapi/ChatONMessage$Builder;

    move-result-object v7

    invoke-virtual {v7, p2}, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->setMimeType(Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;)Lcom/sec/chaton/clientapi/ChatONMessage$Builder;

    .line 324
    :try_start_0
    invoke-virtual {v0}, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->build()Lcom/sec/chaton/clientapi/ChatONMessage;

    move-result-object v2

    .line 326
    .local v2, msg:Lcom/sec/chaton/clientapi/ChatONMessage;
    invoke-virtual {v2}, Lcom/sec/chaton/clientapi/ChatONMessage;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {p0, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move v3, v4

    .line 328
    goto :goto_0

    .line 330
    .end local v2           #msg:Lcom/sec/chaton/clientapi/ChatONMessage;
    :catch_0
    move-exception v1

    .line 331
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 332
    const/4 v3, 0x5

    goto :goto_0

    .line 334
    .end local v1           #e:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v1

    .line 335
    .local v1, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 336
    const/4 v3, 0x4

    goto :goto_0

    .line 338
    .end local v1           #e:Landroid/content/ActivityNotFoundException;
    :catch_2
    move-exception v1

    .line 339
    .local v1, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    move v3, v5

    .line 340
    goto :goto_0

    .line 342
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v1

    .line 343
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    move v3, v6

    .line 344
    goto :goto_0
.end method

.method public static sendMultiMediaMessage(Landroid/content/Context;[Ljava/lang/String;Landroid/net/Uri;Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;)I
    .locals 12
    .parameter "context"
    .parameter "recipients"
    .parameter "uri"
    .parameter "mimeType"
    .annotation runtime Lcom/sec/chaton/clientapi/API;
        description = "1.10.3"
        versionCode = 0xa7dcbd
    .end annotation

    .prologue
    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    .line 351
    const-class v7, Lcom/sec/chaton/clientapi/MessageAPI;

    const-string v8, "sendMultiMediaMessage"

    new-array v9, v5, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Landroid/content/Context;

    aput-object v11, v9, v10

    const-class v10, [Ljava/lang/String;

    aput-object v10, v9, v4

    const-class v10, Landroid/net/Uri;

    aput-object v10, v9, v3

    const-class v10, Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;

    aput-object v10, v9, v6

    invoke-static {p0, v7, v8, v9}, Lcom/sec/chaton/clientapi/UtilityAPI;->isAvailableAPI(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 389
    :cond_0
    :goto_0
    return v3

    .line 354
    :cond_1
    invoke-static {p0, p2}, Lcom/sec/chaton/clientapi/MessageAPI;->CheckMultiMediaValidation(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v3

    .line 355
    .local v3, nCheckResult:I
    if-ne v3, v4, :cond_0

    .line 359
    new-instance v0, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;

    invoke-direct {v0}, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;-><init>()V

    .line 360
    .local v0, builder:Lcom/sec/chaton/clientapi/ChatONMessage$Builder;
    const-string v7, "send"

    invoke-virtual {v0, v7}, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->setAction(Ljava/lang/String;)Lcom/sec/chaton/clientapi/ChatONMessage$Builder;

    move-result-object v7

    invoke-virtual {v7, p0}, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->setContext(Landroid/content/Context;)Lcom/sec/chaton/clientapi/ChatONMessage$Builder;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->setRecipients([Ljava/lang/String;)Lcom/sec/chaton/clientapi/ChatONMessage$Builder;

    move-result-object v7

    sget-object v8, Lcom/sec/chaton/clientapi/ChatONMessage$contentType;->multimedia:Lcom/sec/chaton/clientapi/ChatONMessage$contentType;

    invoke-virtual {v7, v8}, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->setContentType(Lcom/sec/chaton/clientapi/ChatONMessage$contentType;)Lcom/sec/chaton/clientapi/ChatONMessage$Builder;

    move-result-object v7

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->setUri(Ljava/lang/String;)Lcom/sec/chaton/clientapi/ChatONMessage$Builder;

    move-result-object v7

    invoke-virtual {v7, p3}, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->setMimeType(Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;)Lcom/sec/chaton/clientapi/ChatONMessage$Builder;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->setRequiredAccessToken(Z)Lcom/sec/chaton/clientapi/ChatONMessage$Builder;

    .line 369
    :try_start_0
    invoke-virtual {v0}, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->build()Lcom/sec/chaton/clientapi/ChatONMessage;

    move-result-object v2

    .line 371
    .local v2, msg:Lcom/sec/chaton/clientapi/ChatONMessage;
    invoke-virtual {v2}, Lcom/sec/chaton/clientapi/ChatONMessage;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {p0, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move v3, v4

    .line 373
    goto :goto_0

    .line 375
    .end local v2           #msg:Lcom/sec/chaton/clientapi/ChatONMessage;
    :catch_0
    move-exception v1

    .line 376
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 377
    const/4 v3, 0x5

    goto :goto_0

    .line 379
    .end local v1           #e:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v1

    .line 380
    .local v1, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    move v3, v5

    .line 381
    goto :goto_0

    .line 383
    .end local v1           #e:Landroid/content/ActivityNotFoundException;
    :catch_2
    move-exception v1

    .line 384
    .local v1, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 385
    const/4 v3, 0x7

    goto :goto_0

    .line 387
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v1

    .line 388
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    move v3, v6

    .line 389
    goto :goto_0
.end method

.method public static sendMultiMediaMessageBG(Landroid/content/Context;J[Ljava/lang/String;Landroid/net/Uri;Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;Z)V
    .locals 7
    .parameter "context"
    .parameter "requestId"
    .parameter "recipients"
    .parameter "uri"
    .parameter "mimeType"
    .parameter "isBroadcast"
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
    .line 577
    const-class v2, Lcom/sec/chaton/clientapi/MessageAPI;

    const-string v3, "sendMultiMediaMessageBG"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-class v6, [Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-class v6, Landroid/net/Uri;

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-class v6, Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;

    aput-object v6, v4, v5

    const/4 v5, 0x5

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-static {p0, v2, v3, v4}, Lcom/sec/chaton/clientapi/UtilityAPI;->isAvailableAPI(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 578
    new-instance v2, Lcom/sec/chaton/clientapi/exception/NotActivatedClientAPIException;

    invoke-direct {v2}, Lcom/sec/chaton/clientapi/exception/NotActivatedClientAPIException;-><init>()V

    throw v2

    .line 581
    :cond_0
    if-eqz p4, :cond_1

    sget-object v2, Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;->image:Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;

    if-eq p5, v2, :cond_2

    sget-object v2, Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;->video:Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;

    if-eq p5, v2, :cond_2

    .line 582
    :cond_1
    new-instance v2, Lcom/sec/chaton/clientapi/exception/NotAvailableClientAPIException;

    invoke-direct {v2}, Lcom/sec/chaton/clientapi/exception/NotAvailableClientAPIException;-><init>()V

    throw v2

    .line 585
    :cond_2
    invoke-static {p0, p4}, Lcom/sec/chaton/clientapi/MessageAPI;->CheckMultiMediaValidation(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v1

    .line 586
    .local v1, nCheckResult:I
    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    .line 587
    new-instance v2, Lcom/sec/chaton/clientapi/exception/IllegalArgumentClientAPIException;

    invoke-direct {v2}, Lcom/sec/chaton/clientapi/exception/IllegalArgumentClientAPIException;-><init>()V

    throw v2

    .line 590
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sec.chaton.chat.background.MESSAGE_SEND"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 591
    .local v0, intent:Landroid/content/Intent;
    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    const-string v3, "chaton"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 592
    const-string v2, "request_id"

    invoke-virtual {v0, v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 594
    const/4 v2, 0x1

    if-ne p6, v2, :cond_5

    .line 595
    const-string v2, "chat_type"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 604
    :goto_0
    sget-object v2, Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;->image:Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;

    if-ne p5, v2, :cond_7

    .line 605
    const-string v2, "media_type"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 609
    :cond_4
    :goto_1
    const-string v2, "content"

    invoke-virtual {p4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 610
    const-string v2, "receivers"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 611
    const-string v2, "packageName"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 612
    const-string v2, "apiVer"

    const-string v3, "1.0"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 615
    invoke-static {p0, v0}, Lcom/sec/chaton/clientapi/ChatONAPI;->addPassword(Landroid/content/Context;Landroid/content/Intent;)V

    .line 617
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 618
    return-void

    .line 598
    :cond_5
    array-length v2, p3

    const/4 v3, 0x1

    if-le v2, v3, :cond_6

    .line 599
    const-string v2, "chat_type"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 601
    :cond_6
    const-string v2, "chat_type"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 606
    :cond_7
    sget-object v2, Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;->video:Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;

    if-ne p5, v2, :cond_4

    .line 607
    const-string v2, "media_type"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1
.end method

.method public static sendMultiMediaMessageWithText(Landroid/content/Context;Landroid/net/Uri;Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;Ljava/lang/String;)I
    .locals 12
    .parameter "context"
    .parameter "uri"
    .parameter "mimeType"
    .parameter "text"
    .annotation runtime Lcom/sec/chaton/clientapi/API;
        description = "1.10.3"
        versionCode = 0xa7dcbd
    .end annotation

    .prologue
    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    .line 396
    const-class v7, Lcom/sec/chaton/clientapi/MessageAPI;

    const-string v8, "sendMultiMediaMessageWithText"

    new-array v9, v5, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Landroid/content/Context;

    aput-object v11, v9, v10

    const-class v10, Landroid/net/Uri;

    aput-object v10, v9, v4

    const-class v10, Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;

    aput-object v10, v9, v3

    const-class v10, Ljava/lang/String;

    aput-object v10, v9, v6

    invoke-static {p0, v7, v8, v9}, Lcom/sec/chaton/clientapi/UtilityAPI;->isAvailableAPI(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 437
    :cond_0
    :goto_0
    return v3

    .line 399
    :cond_1
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x7d0

    if-le v7, v8, :cond_2

    .line 400
    const/4 v3, 0x6

    goto :goto_0

    .line 403
    :cond_2
    invoke-static {p0, p1}, Lcom/sec/chaton/clientapi/MessageAPI;->CheckMultiMediaValidation(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v3

    .line 404
    .local v3, nCheckResult:I
    if-ne v3, v4, :cond_0

    .line 408
    new-instance v0, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;

    invoke-direct {v0}, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;-><init>()V

    .line 409
    .local v0, builder:Lcom/sec/chaton/clientapi/ChatONMessage$Builder;
    const-string v7, "send"

    invoke-virtual {v0, v7}, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->setAction(Ljava/lang/String;)Lcom/sec/chaton/clientapi/ChatONMessage$Builder;

    move-result-object v7

    invoke-virtual {v7, p0}, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->setContext(Landroid/content/Context;)Lcom/sec/chaton/clientapi/ChatONMessage$Builder;

    move-result-object v7

    sget-object v8, Lcom/sec/chaton/clientapi/ChatONMessage$contentType;->multimedia_text:Lcom/sec/chaton/clientapi/ChatONMessage$contentType;

    invoke-virtual {v7, v8}, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->setContentType(Lcom/sec/chaton/clientapi/ChatONMessage$contentType;)Lcom/sec/chaton/clientapi/ChatONMessage$Builder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->setUri(Ljava/lang/String;)Lcom/sec/chaton/clientapi/ChatONMessage$Builder;

    move-result-object v7

    invoke-virtual {v7, p3}, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->setMsg(Ljava/lang/String;)Lcom/sec/chaton/clientapi/ChatONMessage$Builder;

    move-result-object v7

    invoke-virtual {v7, p2}, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->setMimeType(Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;)Lcom/sec/chaton/clientapi/ChatONMessage$Builder;

    .line 417
    :try_start_0
    invoke-virtual {v0}, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->build()Lcom/sec/chaton/clientapi/ChatONMessage;

    move-result-object v2

    .line 419
    .local v2, msg:Lcom/sec/chaton/clientapi/ChatONMessage;
    invoke-virtual {v2}, Lcom/sec/chaton/clientapi/ChatONMessage;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {p0, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move v3, v4

    .line 421
    goto :goto_0

    .line 423
    .end local v2           #msg:Lcom/sec/chaton/clientapi/ChatONMessage;
    :catch_0
    move-exception v1

    .line 424
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 425
    const/4 v3, 0x5

    goto :goto_0

    .line 427
    .end local v1           #e:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v1

    .line 428
    .local v1, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    move v3, v5

    .line 429
    goto :goto_0

    .line 431
    .end local v1           #e:Landroid/content/ActivityNotFoundException;
    :catch_2
    move-exception v1

    .line 432
    .local v1, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 433
    const/4 v3, 0x7

    goto :goto_0

    .line 435
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v1

    .line 436
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    move v3, v6

    .line 437
    goto :goto_0
.end method

.method static sendMultiMediaMessageWithText(Landroid/content/Context;[Ljava/lang/String;Landroid/net/Uri;Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;Ljava/lang/String;)I
    .locals 9
    .parameter "context"
    .parameter "recipients"
    .parameter "uri"
    .parameter "mimeType"
    .parameter "text"
    .annotation runtime Lcom/sec/chaton/clientapi/API;
        description = "1.10.3"
        versionCode = 0xa7dcbd
    .end annotation

    .prologue
    .line 444
    const-class v4, Lcom/sec/chaton/clientapi/MessageAPI;

    const-string v5, "sendMultiMediaMessageWithText"

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, [Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-class v8, Landroid/net/Uri;

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-class v8, Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {p0, v4, v5, v6}, Lcom/sec/chaton/clientapi/UtilityAPI;->isAvailableAPI(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 445
    const/4 v3, 0x2

    .line 487
    :cond_0
    :goto_0
    return v3

    .line 447
    :cond_1
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x7d0

    if-le v4, v5, :cond_2

    .line 448
    const/4 v3, 0x6

    goto :goto_0

    .line 451
    :cond_2
    invoke-static {p0, p2}, Lcom/sec/chaton/clientapi/MessageAPI;->CheckMultiMediaValidation(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v3

    .line 452
    .local v3, nCheckResult:I
    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 456
    new-instance v0, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;

    invoke-direct {v0}, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;-><init>()V

    .line 457
    .local v0, builder:Lcom/sec/chaton/clientapi/ChatONMessage$Builder;
    const-string v4, "send"

    invoke-virtual {v0, v4}, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->setAction(Ljava/lang/String;)Lcom/sec/chaton/clientapi/ChatONMessage$Builder;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->setContext(Landroid/content/Context;)Lcom/sec/chaton/clientapi/ChatONMessage$Builder;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->setRecipients([Ljava/lang/String;)Lcom/sec/chaton/clientapi/ChatONMessage$Builder;

    move-result-object v4

    sget-object v5, Lcom/sec/chaton/clientapi/ChatONMessage$contentType;->multimedia_text:Lcom/sec/chaton/clientapi/ChatONMessage$contentType;

    invoke-virtual {v4, v5}, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->setContentType(Lcom/sec/chaton/clientapi/ChatONMessage$contentType;)Lcom/sec/chaton/clientapi/ChatONMessage$Builder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->setUri(Ljava/lang/String;)Lcom/sec/chaton/clientapi/ChatONMessage$Builder;

    move-result-object v4

    invoke-virtual {v4, p4}, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->setMsg(Ljava/lang/String;)Lcom/sec/chaton/clientapi/ChatONMessage$Builder;

    move-result-object v4

    invoke-virtual {v4, p3}, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->setMimeType(Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;)Lcom/sec/chaton/clientapi/ChatONMessage$Builder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->setRequiredAccessToken(Z)Lcom/sec/chaton/clientapi/ChatONMessage$Builder;

    .line 467
    :try_start_0
    invoke-virtual {v0}, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->build()Lcom/sec/chaton/clientapi/ChatONMessage;

    move-result-object v2

    .line 469
    .local v2, msg:Lcom/sec/chaton/clientapi/ChatONMessage;
    invoke-virtual {v2}, Lcom/sec/chaton/clientapi/ChatONMessage;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 471
    const/4 v3, 0x1

    goto :goto_0

    .line 473
    .end local v2           #msg:Lcom/sec/chaton/clientapi/ChatONMessage;
    :catch_0
    move-exception v1

    .line 474
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 475
    const/4 v3, 0x5

    goto :goto_0

    .line 477
    .end local v1           #e:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v1

    .line 478
    .local v1, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 479
    const/4 v3, 0x4

    goto :goto_0

    .line 481
    .end local v1           #e:Landroid/content/ActivityNotFoundException;
    :catch_2
    move-exception v1

    .line 482
    .local v1, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 483
    const/4 v3, 0x7

    goto :goto_0

    .line 485
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v1

    .line 486
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 487
    const/4 v3, 0x3

    goto :goto_0
.end method

.method public static sendTextMessage(Landroid/content/Context;Ljava/lang/String;)I
    .locals 10
    .parameter "context"
    .parameter "text"
    .annotation runtime Lcom/sec/chaton/clientapi/API;
        description = "1.10.3"
        versionCode = 0xa7dcbd
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v4, 0x1

    .line 77
    const-class v5, Lcom/sec/chaton/clientapi/MessageAPI;

    const-string v6, "sendTextMessage"

    new-array v7, v3, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v7, v8

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v4

    invoke-static {p0, v5, v6, v7}, Lcom/sec/chaton/clientapi/UtilityAPI;->isAvailableAPI(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 112
    :goto_0
    return v3

    .line 80
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v5, 0x7d0

    if-le v3, v5, :cond_1

    .line 81
    const/4 v3, 0x6

    goto :goto_0

    .line 84
    :cond_1
    new-instance v0, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;

    invoke-direct {v0}, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;-><init>()V

    .line 85
    .local v0, builder:Lcom/sec/chaton/clientapi/ChatONMessage$Builder;
    const-string v3, "send"

    invoke-virtual {v0, v3}, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->setAction(Ljava/lang/String;)Lcom/sec/chaton/clientapi/ChatONMessage$Builder;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->setContext(Landroid/content/Context;)Lcom/sec/chaton/clientapi/ChatONMessage$Builder;

    move-result-object v3

    sget-object v5, Lcom/sec/chaton/clientapi/ChatONMessage$contentType;->text:Lcom/sec/chaton/clientapi/ChatONMessage$contentType;

    invoke-virtual {v3, v5}, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->setContentType(Lcom/sec/chaton/clientapi/ChatONMessage$contentType;)Lcom/sec/chaton/clientapi/ChatONMessage$Builder;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->setMsg(Ljava/lang/String;)Lcom/sec/chaton/clientapi/ChatONMessage$Builder;

    move-result-object v3

    sget-object v5, Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;->text:Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;

    invoke-virtual {v3, v5}, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->setMimeType(Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;)Lcom/sec/chaton/clientapi/ChatONMessage$Builder;

    .line 92
    :try_start_0
    invoke-virtual {v0}, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->build()Lcom/sec/chaton/clientapi/ChatONMessage;

    move-result-object v2

    .line 94
    .local v2, msg:Lcom/sec/chaton/clientapi/ChatONMessage;
    invoke-virtual {v2}, Lcom/sec/chaton/clientapi/ChatONMessage;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move v3, v4

    .line 96
    goto :goto_0

    .line 98
    .end local v2           #msg:Lcom/sec/chaton/clientapi/ChatONMessage;
    :catch_0
    move-exception v1

    .line 99
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 100
    const/4 v3, 0x5

    goto :goto_0

    .line 102
    .end local v1           #e:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v1

    .line 103
    .local v1, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 104
    const/4 v3, 0x4

    goto :goto_0

    .line 106
    .end local v1           #e:Landroid/content/ActivityNotFoundException;
    :catch_2
    move-exception v1

    .line 107
    .local v1, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 108
    const/4 v3, 0x7

    goto :goto_0

    .line 110
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v1

    .line 111
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 112
    const/4 v3, 0x3

    goto :goto_0
.end method

.method public static sendTextMessage(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)I
    .locals 11
    .parameter "context"
    .parameter "recipients"
    .parameter "text"
    .annotation runtime Lcom/sec/chaton/clientapi/API;
        description = "1.10.3"
        versionCode = 0xa7dcbd
    .end annotation

    .prologue
    const/4 v5, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    .line 119
    const-class v6, Lcom/sec/chaton/clientapi/MessageAPI;

    const-string v7, "sendTextMessage"

    new-array v8, v5, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v8, v9

    const-class v9, [Ljava/lang/String;

    aput-object v9, v8, v4

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v3

    invoke-static {p0, v6, v7, v8}, Lcom/sec/chaton/clientapi/UtilityAPI;->isAvailableAPI(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 156
    :goto_0
    return v3

    .line 122
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v6, 0x7d0

    if-le v3, v6, :cond_1

    .line 123
    const/4 v3, 0x6

    goto :goto_0

    .line 126
    :cond_1
    new-instance v0, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;

    invoke-direct {v0}, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;-><init>()V

    .line 127
    .local v0, builder:Lcom/sec/chaton/clientapi/ChatONMessage$Builder;
    const-string v3, "send"

    invoke-virtual {v0, v3}, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->setAction(Ljava/lang/String;)Lcom/sec/chaton/clientapi/ChatONMessage$Builder;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->setContext(Landroid/content/Context;)Lcom/sec/chaton/clientapi/ChatONMessage$Builder;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->setRecipients([Ljava/lang/String;)Lcom/sec/chaton/clientapi/ChatONMessage$Builder;

    move-result-object v3

    sget-object v6, Lcom/sec/chaton/clientapi/ChatONMessage$contentType;->text:Lcom/sec/chaton/clientapi/ChatONMessage$contentType;

    invoke-virtual {v3, v6}, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->setContentType(Lcom/sec/chaton/clientapi/ChatONMessage$contentType;)Lcom/sec/chaton/clientapi/ChatONMessage$Builder;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->setMsg(Ljava/lang/String;)Lcom/sec/chaton/clientapi/ChatONMessage$Builder;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->setRequiredAccessToken(Z)Lcom/sec/chaton/clientapi/ChatONMessage$Builder;

    move-result-object v3

    sget-object v6, Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;->text:Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;

    invoke-virtual {v3, v6}, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->setMimeType(Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;)Lcom/sec/chaton/clientapi/ChatONMessage$Builder;

    .line 136
    :try_start_0
    invoke-virtual {v0}, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->build()Lcom/sec/chaton/clientapi/ChatONMessage;

    move-result-object v2

    .line 138
    .local v2, msg:Lcom/sec/chaton/clientapi/ChatONMessage;
    invoke-virtual {v2}, Lcom/sec/chaton/clientapi/ChatONMessage;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move v3, v4

    .line 140
    goto :goto_0

    .line 142
    .end local v2           #msg:Lcom/sec/chaton/clientapi/ChatONMessage;
    :catch_0
    move-exception v1

    .line 143
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 144
    const/4 v3, 0x5

    goto :goto_0

    .line 146
    .end local v1           #e:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v1

    .line 147
    .local v1, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 148
    const/4 v3, 0x4

    goto :goto_0

    .line 150
    .end local v1           #e:Landroid/content/ActivityNotFoundException;
    :catch_2
    move-exception v1

    .line 151
    .local v1, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 152
    const/4 v3, 0x7

    goto :goto_0

    .line 154
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v1

    .line 155
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    move v3, v5

    .line 156
    goto :goto_0
.end method

.method public static sendTextMessageBG(Landroid/content/Context;J[Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9
    .parameter "context"
    .parameter "requestId"
    .parameter "recipients"
    .parameter "text"
    .parameter "isBroadcast"
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
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 539
    invoke-static {p0}, Lcom/sec/chaton/clientapi/UtilityAPI;->isChatONActivated(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 540
    new-instance v1, Lcom/sec/chaton/clientapi/exception/NotActivatedClientAPIException;

    invoke-direct {v1}, Lcom/sec/chaton/clientapi/exception/NotActivatedClientAPIException;-><init>()V

    throw v1

    .line 542
    :cond_0
    const-class v1, Lcom/sec/chaton/clientapi/MessageAPI;

    const-string v2, "sendTextMessageBG"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v7

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v6

    const-class v4, [Ljava/lang/String;

    aput-object v4, v3, v8

    const/4 v4, 0x3

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-static {p0, v1, v2, v3}, Lcom/sec/chaton/clientapi/UtilityAPI;->isAvailableAPI(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 543
    new-instance v1, Lcom/sec/chaton/clientapi/exception/NotAvailableClientAPIException;

    invoke-direct {v1}, Lcom/sec/chaton/clientapi/exception/NotAvailableClientAPIException;-><init>()V

    throw v1

    .line 545
    :cond_1
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x7d0

    if-le v1, v2, :cond_2

    .line 546
    new-instance v1, Lcom/sec/chaton/clientapi/exception/IllegalArgumentClientAPIException;

    invoke-direct {v1}, Lcom/sec/chaton/clientapi/exception/IllegalArgumentClientAPIException;-><init>()V

    throw v1

    .line 548
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.chaton.chat.background.MESSAGE_SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 549
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "chaton"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 551
    const-string v1, "request_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 553
    if-ne p5, v6, :cond_3

    .line 554
    const-string v1, "chat_type"

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 562
    :goto_0
    const-string v1, "media_type"

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 563
    const-string v1, "content"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 564
    const-string v1, "receivers"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 565
    const-string v1, "packageName"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 566
    const-string v1, "apiVer"

    const-string v2, "1.0"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 569
    invoke-static {p0, v0}, Lcom/sec/chaton/clientapi/ChatONAPI;->addPassword(Landroid/content/Context;Landroid/content/Intent;)V

    .line 571
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 572
    return-void

    .line 556
    :cond_3
    array-length v1, p3

    if-le v1, v6, :cond_4

    .line 557
    const-string v1, "chat_type"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 559
    :cond_4
    const-string v1, "chat_type"

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static sendTextMessageWithURL(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 12
    .parameter "context"
    .parameter "text"
    .parameter "url"
    .annotation runtime Lcom/sec/chaton/clientapi/API;
        description = "1.10.3"
        versionCode = 0xa7dcbd
    .end annotation

    .prologue
    const/4 v6, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    .line 211
    const-class v7, Lcom/sec/chaton/clientapi/MessageAPI;

    const-string v8, "sendTextMessageWithURL"

    new-array v9, v6, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Landroid/content/Context;

    aput-object v11, v9, v10

    const-class v10, Ljava/lang/String;

    aput-object v10, v9, v5

    const-class v10, Ljava/lang/String;

    aput-object v10, v9, v4

    invoke-static {p0, v7, v8, v9}, Lcom/sec/chaton/clientapi/UtilityAPI;->isAvailableAPI(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 250
    :goto_0
    return v4

    .line 214
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 215
    .local v3, tempMessage:Ljava/lang/StringBuilder;
    const-string v4, "\n\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const/16 v7, 0x7d0

    if-le v4, v7, :cond_1

    .line 218
    const/4 v4, 0x6

    goto :goto_0

    .line 221
    :cond_1
    new-instance v0, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;

    invoke-direct {v0}, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;-><init>()V

    .line 222
    .local v0, builder:Lcom/sec/chaton/clientapi/ChatONMessage$Builder;
    const-string v4, "send"

    invoke-virtual {v0, v4}, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->setAction(Ljava/lang/String;)Lcom/sec/chaton/clientapi/ChatONMessage$Builder;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->setContext(Landroid/content/Context;)Lcom/sec/chaton/clientapi/ChatONMessage$Builder;

    move-result-object v4

    sget-object v7, Lcom/sec/chaton/clientapi/ChatONMessage$contentType;->text_url:Lcom/sec/chaton/clientapi/ChatONMessage$contentType;

    invoke-virtual {v4, v7}, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->setContentType(Lcom/sec/chaton/clientapi/ChatONMessage$contentType;)Lcom/sec/chaton/clientapi/ChatONMessage$Builder;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->setMsg(Ljava/lang/String;)Lcom/sec/chaton/clientapi/ChatONMessage$Builder;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->setUri(Ljava/lang/String;)Lcom/sec/chaton/clientapi/ChatONMessage$Builder;

    move-result-object v4

    sget-object v7, Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;->text:Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;

    invoke-virtual {v4, v7}, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->setMimeType(Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;)Lcom/sec/chaton/clientapi/ChatONMessage$Builder;

    .line 230
    :try_start_0
    invoke-virtual {v0}, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->build()Lcom/sec/chaton/clientapi/ChatONMessage;

    move-result-object v2

    .line 232
    .local v2, msg:Lcom/sec/chaton/clientapi/ChatONMessage;
    invoke-virtual {v2}, Lcom/sec/chaton/clientapi/ChatONMessage;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move v4, v5

    .line 234
    goto :goto_0

    .line 236
    .end local v2           #msg:Lcom/sec/chaton/clientapi/ChatONMessage;
    :catch_0
    move-exception v1

    .line 237
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 238
    const/4 v4, 0x5

    goto :goto_0

    .line 240
    .end local v1           #e:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v1

    .line 241
    .local v1, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 242
    const/4 v4, 0x4

    goto :goto_0

    .line 244
    .end local v1           #e:Landroid/content/ActivityNotFoundException;
    :catch_2
    move-exception v1

    .line 245
    .local v1, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 246
    const/4 v4, 0x7

    goto :goto_0

    .line 248
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v1

    .line 249
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    move v4, v6

    .line 250
    goto :goto_0
.end method

.method public static sendTextMessageWithURL(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 9
    .parameter "context"
    .parameter "recipients"
    .parameter "text"
    .parameter "url"
    .annotation runtime Lcom/sec/chaton/clientapi/API;
        description = "1.10.3"
        versionCode = 0xa7dcbd
    .end annotation

    .prologue
    .line 163
    const-class v4, Lcom/sec/chaton/clientapi/MessageAPI;

    const-string v5, "sendTextMessageWithURL"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, [Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {p0, v4, v5, v6}, Lcom/sec/chaton/clientapi/UtilityAPI;->isAvailableAPI(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 164
    const/4 v4, 0x2

    .line 204
    :goto_0
    return v4

    .line 166
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 167
    .local v3, tempMessage:Ljava/lang/StringBuilder;
    const-string v4, "\n\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const/16 v5, 0x7d0

    if-le v4, v5, :cond_1

    .line 170
    const/4 v4, 0x6

    goto :goto_0

    .line 173
    :cond_1
    new-instance v0, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;

    invoke-direct {v0}, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;-><init>()V

    .line 174
    .local v0, builder:Lcom/sec/chaton/clientapi/ChatONMessage$Builder;
    const-string v4, "send"

    invoke-virtual {v0, v4}, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->setAction(Ljava/lang/String;)Lcom/sec/chaton/clientapi/ChatONMessage$Builder;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->setContext(Landroid/content/Context;)Lcom/sec/chaton/clientapi/ChatONMessage$Builder;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->setRecipients([Ljava/lang/String;)Lcom/sec/chaton/clientapi/ChatONMessage$Builder;

    move-result-object v4

    sget-object v5, Lcom/sec/chaton/clientapi/ChatONMessage$contentType;->text_url:Lcom/sec/chaton/clientapi/ChatONMessage$contentType;

    invoke-virtual {v4, v5}, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->setContentType(Lcom/sec/chaton/clientapi/ChatONMessage$contentType;)Lcom/sec/chaton/clientapi/ChatONMessage$Builder;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->setMsg(Ljava/lang/String;)Lcom/sec/chaton/clientapi/ChatONMessage$Builder;

    move-result-object v4

    invoke-virtual {v4, p3}, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->setUri(Ljava/lang/String;)Lcom/sec/chaton/clientapi/ChatONMessage$Builder;

    move-result-object v4

    sget-object v5, Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;->text:Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;

    invoke-virtual {v4, v5}, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->setMimeType(Lcom/sec/chaton/clientapi/ChatONAPI$MimeType;)Lcom/sec/chaton/clientapi/ChatONMessage$Builder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->setRequiredAccessToken(Z)Lcom/sec/chaton/clientapi/ChatONMessage$Builder;

    .line 184
    :try_start_0
    invoke-virtual {v0}, Lcom/sec/chaton/clientapi/ChatONMessage$Builder;->build()Lcom/sec/chaton/clientapi/ChatONMessage;

    move-result-object v2

    .line 186
    .local v2, msg:Lcom/sec/chaton/clientapi/ChatONMessage;
    invoke-virtual {v2}, Lcom/sec/chaton/clientapi/ChatONMessage;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 188
    const/4 v4, 0x1

    goto :goto_0

    .line 190
    .end local v2           #msg:Lcom/sec/chaton/clientapi/ChatONMessage;
    :catch_0
    move-exception v1

    .line 191
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 192
    const/4 v4, 0x5

    goto :goto_0

    .line 194
    .end local v1           #e:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v1

    .line 195
    .local v1, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 196
    const/4 v4, 0x4

    goto :goto_0

    .line 198
    .end local v1           #e:Landroid/content/ActivityNotFoundException;
    :catch_2
    move-exception v1

    .line 199
    .local v1, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 200
    const/4 v4, 0x7

    goto :goto_0

    .line 202
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v1

    .line 203
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 204
    const/4 v4, 0x3

    goto :goto_0
.end method
