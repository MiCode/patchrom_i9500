.class public Lcom/touchtype_fluency/util/HttpDownload;
.super Ljava/lang/Object;
.source "HttpDownload.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/touchtype_fluency/util/HttpDownload$ProgressUpdater;
    }
.end annotation


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x1000

.field private static final POLL_INTERVAL:I = 0xea60

.field private static final SLEEP_INTERVAL:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "HttpDownload"

.field private static final TIMEOUT_INTERVAL:I = 0x1d4c0

.field private static final UPDATE_DELAY_MS:J = 0x32L


# instance fields
.field private connection:Ljava/net/URLConnection;

.field private interrupted:Z

.field private timeLastDataSeen:J

.field private timeoutThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/touchtype_fluency/util/HttpDownload;)J
    .locals 2
    .parameter

    .prologue
    .line 653
    iget-wide v0, p0, Lcom/touchtype_fluency/util/HttpDownload;->timeLastDataSeen:J

    return-wide v0
.end method

.method private copyInputToOutput(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/touchtype_fluency/util/HttpDownload$ProgressUpdater;)V
    .locals 4
    .parameter "in"
    .parameter "out"
    .parameter "progressUpdater"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 546
    const/4 v1, 0x0

    .line 547
    .local v1, n:I
    const/16 v2, 0x1000

    new-array v0, v2, [B

    .line 554
    .local v0, buffer:[B
    :cond_0
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 568
    instance-of v2, p2, Ljava/io/BufferedOutputStream;

    if-eqz v2, :cond_1

    .line 570
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 572
    :cond_1
    return-void

    .line 555
    :cond_2
    if-lez v1, :cond_3

    .line 556
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/touchtype_fluency/util/HttpDownload;->timeLastDataSeen:J

    .line 558
    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 559
    if-eqz p3, :cond_0

    .line 560
    invoke-virtual {p3}, Lcom/touchtype_fluency/util/HttpDownload$ProgressUpdater;->update()V

    goto :goto_0

    .line 564
    :cond_3
    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0
.end method

.method private copyInputToOutput(Ljava/io/Reader;Ljava/io/Writer;)V
    .locals 4
    .parameter "in"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 581
    const/4 v1, 0x0

    .line 582
    .local v1, n:I
    const/16 v2, 0x1000

    new-array v0, v2, [C

    .line 583
    .local v0, buffer:[C
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/Reader;->read([C)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 592
    return-void

    .line 584
    :cond_0
    if-lez v1, :cond_1

    .line 585
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/touchtype_fluency/util/HttpDownload;->timeLastDataSeen:J

    .line 586
    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2, v1}, Ljava/io/Writer;->write([CII)V

    goto :goto_0

    .line 589
    :cond_1
    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0
.end method

.method public static createDigest(Ljava/io/File;)Ljava/lang/String;
    .locals 8
    .parameter "zipfile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 283
    const/4 v4, 0x0

    .line 284
    .local v4, in:Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 286
    .local v1, checker:Ljava/security/DigestInputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    .end local v4           #in:Ljava/io/InputStream;
    .local v5, in:Ljava/io/InputStream;
    :try_start_1
    new-instance v2, Ljava/security/DigestInputStream;

    const-string v6, "SHA-1"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    .line 291
    .end local v1           #checker:Ljava/security/DigestInputStream;
    .local v2, checker:Ljava/security/DigestInputStream;
    const/16 v6, 0x1000

    :try_start_2
    new-array v0, v6, [B

    .line 292
    .local v0, buffer:[B
    :cond_0
    invoke-virtual {v2, v0}, Ljava/security/DigestInputStream;->read([B)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_0

    .line 301
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 302
    invoke-static {v5}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    move-object v1, v2

    .end local v2           #checker:Ljava/security/DigestInputStream;
    .restart local v1       #checker:Ljava/security/DigestInputStream;
    move-object v4, v5

    .line 305
    .end local v0           #buffer:[B
    .end local v5           #in:Ljava/io/InputStream;
    .restart local v4       #in:Ljava/io/InputStream;
    :goto_0
    invoke-virtual {v1}, Ljava/security/DigestInputStream;->getMessageDigest()Ljava/security/MessageDigest;

    move-result-object v6

    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v6

    invoke-static {v6}, Lcom/touchtype_fluency/util/HttpDownload;->digestToString([B)Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 296
    :catch_0
    move-exception v3

    .line 298
    .local v3, e:Ljava/security/NoSuchAlgorithmException;
    :goto_1
    :try_start_3
    invoke-static {}, Ljunit/framework/Assert;->fail()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 301
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 302
    invoke-static {v4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto :goto_0

    .line 300
    .end local v3           #e:Ljava/security/NoSuchAlgorithmException;
    :catchall_0
    move-exception v6

    .line 301
    :goto_2
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 302
    invoke-static {v4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 303
    throw v6

    .line 300
    .end local v4           #in:Ljava/io/InputStream;
    .restart local v5       #in:Ljava/io/InputStream;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5           #in:Ljava/io/InputStream;
    .restart local v4       #in:Ljava/io/InputStream;
    goto :goto_2

    .end local v1           #checker:Ljava/security/DigestInputStream;
    .end local v4           #in:Ljava/io/InputStream;
    .restart local v2       #checker:Ljava/security/DigestInputStream;
    .restart local v5       #in:Ljava/io/InputStream;
    :catchall_2
    move-exception v6

    move-object v1, v2

    .end local v2           #checker:Ljava/security/DigestInputStream;
    .restart local v1       #checker:Ljava/security/DigestInputStream;
    move-object v4, v5

    .end local v5           #in:Ljava/io/InputStream;
    .restart local v4       #in:Ljava/io/InputStream;
    goto :goto_2

    .line 296
    .end local v4           #in:Ljava/io/InputStream;
    .restart local v5       #in:Ljava/io/InputStream;
    :catch_1
    move-exception v3

    move-object v4, v5

    .end local v5           #in:Ljava/io/InputStream;
    .restart local v4       #in:Ljava/io/InputStream;
    goto :goto_1

    .end local v1           #checker:Ljava/security/DigestInputStream;
    .end local v4           #in:Ljava/io/InputStream;
    .restart local v2       #checker:Ljava/security/DigestInputStream;
    .restart local v5       #in:Ljava/io/InputStream;
    :catch_2
    move-exception v3

    move-object v1, v2

    .end local v2           #checker:Ljava/security/DigestInputStream;
    .restart local v1       #checker:Ljava/security/DigestInputStream;
    move-object v4, v5

    .end local v5           #in:Ljava/io/InputStream;
    .restart local v4       #in:Ljava/io/InputStream;
    goto :goto_1
.end method

.method private static createExtraDataJSON(Ljava/io/InputStream;)Lorg/json/JSONObject;
    .locals 7
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 320
    new-instance v4, Ljava/io/StringWriter;

    invoke-direct {v4}, Ljava/io/StringWriter;-><init>()V

    .line 321
    .local v4, out:Ljava/io/StringWriter;
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 322
    .local v1, in:Ljava/io/InputStreamReader;
    const/4 v2, 0x0

    .line 323
    .local v2, n:I
    const/16 v5, 0x1000

    new-array v0, v5, [C

    .line 324
    .local v0, buffer:[C
    :cond_0
    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/InputStreamReader;->read([C)I

    move-result v2

    const/4 v5, -0x1

    if-ne v2, v5, :cond_1

    .line 330
    new-instance v5, Lorg/json/JSONTokener;

    invoke-virtual {v4}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v3

    .line 332
    .local v3, obj:Ljava/lang/Object;
    instance-of v5, v3, Lorg/json/JSONObject;

    if-eqz v5, :cond_2

    .line 333
    check-cast v3, Lorg/json/JSONObject;

    .end local v3           #obj:Ljava/lang/Object;
    return-object v3

    .line 325
    :cond_1
    if-lez v2, :cond_0

    .line 326
    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5, v2}, Ljava/io/StringWriter;->write([CII)V

    goto :goto_0

    .line 335
    .restart local v3       #obj:Ljava/lang/Object;
    :cond_2
    new-instance v5, Lorg/json/JSONException;

    const-string v6, "extraData.json should contain an object at the top level"

    invoke-direct {v5, v6}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public static createPreinstalledConfiguration(Lcom/touchtype_fluency/util/Storage;)Ljava/lang/String;
    .locals 9
    .parameter "storage"

    .prologue
    const/4 v6, 0x0

    .line 179
    invoke-interface {p0}, Lcom/touchtype_fluency/util/Storage;->getPreinstallDirectory()Ljava/io/File;

    move-result-object v4

    .line 180
    .local v4, preinstallDir:Ljava/io/File;
    if-nez v4, :cond_1

    .line 207
    :cond_0
    :goto_0
    return-object v6

    .line 185
    :cond_1
    :try_start_0
    new-instance v7, Lcom/touchtype_fluency/util/HttpDownload$1;

    invoke-direct {v7}, Lcom/touchtype_fluency/util/HttpDownload$1;-><init>()V

    invoke-virtual {v4, v7}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    .line 192
    .local v2, files:[Ljava/io/File;
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 193
    .local v5, root:Lorg/json/JSONArray;
    if-eqz v2, :cond_0

    .line 194
    array-length v8, v2

    const/4 v7, 0x0

    :goto_1
    if-lt v7, v8, :cond_2

    .line 200
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 201
    invoke-virtual {v5}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 194
    :cond_2
    aget-object v1, v2, v7

    .line 195
    .local v1, file:Ljava/io/File;
    invoke-static {v1}, Lcom/touchtype_fluency/util/HttpDownload;->createPreinstalledJSON(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v3

    .line 196
    .local v3, json:Lorg/json/JSONObject;
    if-eqz v3, :cond_3

    .line 197
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 203
    .end local v1           #file:Ljava/io/File;
    .end local v2           #files:[Ljava/io/File;
    .end local v3           #json:Lorg/json/JSONObject;
    .end local v5           #root:Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 205
    .local v0, e:Lorg/json/JSONException;
    invoke-static {}, Ljunit/framework/Assert;->fail()V

    goto :goto_0
.end method

.method private static createPreinstalledJSON(Ljava/io/File;)Lorg/json/JSONObject;
    .locals 18
    .parameter "zipfile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 212
    const-string v15, "HttpDownload"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "Creating preinstalled JSON from "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/touchtype_fluency/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const/4 v10, 0x0

    .line 215
    .local v10, json:Lorg/json/JSONObject;
    const/4 v5, 0x0

    .line 216
    .local v5, extraData:Lorg/json/JSONObject;
    const/4 v7, 0x0

    .line 217
    .local v7, in:Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 218
    .local v2, checker:Ljava/security/DigestInputStream;
    const/4 v12, 0x0

    .line 220
    .local v12, zip:Ljava/util/zip/ZipInputStream;
    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3

    .line 221
    .end local v7           #in:Ljava/io/InputStream;
    .local v8, in:Ljava/io/InputStream;
    :try_start_1
    new-instance v3, Ljava/security/DigestInputStream;

    const-string v15, "SHA-1"

    invoke-static {v15}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v15

    invoke-direct {v3, v8, v15}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_4

    .line 222
    .end local v2           #checker:Ljava/security/DigestInputStream;
    .local v3, checker:Ljava/security/DigestInputStream;
    :try_start_2
    new-instance v13, Ljava/util/zip/ZipInputStream;

    invoke-direct {v13, v3}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_5

    .line 225
    .end local v12           #zip:Ljava/util/zip/ZipInputStream;
    .local v13, zip:Ljava/util/zip/ZipInputStream;
    :goto_0
    :try_start_3
    invoke-virtual {v13}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v14

    .local v14, zipEntry:Ljava/util/zip/ZipEntry;
    if-nez v14, :cond_3

    .line 243
    if-eqz v5, :cond_0

    if-eqz v10, :cond_0

    .line 244
    invoke-virtual {v5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v9

    .line 245
    .local v9, it:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-nez v15, :cond_7

    .line 253
    .end local v9           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :cond_0
    const/16 v15, 0x1000

    new-array v1, v15, [B

    .line 254
    .local v1, buffer:[B
    :cond_1
    invoke-virtual {v3, v1}, Ljava/security/DigestInputStream;->read([B)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v15

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_1

    .line 271
    invoke-static {v13}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 272
    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 273
    invoke-static {v8}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    move-object v12, v13

    .end local v13           #zip:Ljava/util/zip/ZipInputStream;
    .restart local v12       #zip:Ljava/util/zip/ZipInputStream;
    move-object v2, v3

    .end local v3           #checker:Ljava/security/DigestInputStream;
    .restart local v2       #checker:Ljava/security/DigestInputStream;
    move-object v7, v8

    .line 276
    .end local v1           #buffer:[B
    .end local v8           #in:Ljava/io/InputStream;
    .end local v14           #zipEntry:Ljava/util/zip/ZipEntry;
    .restart local v7       #in:Ljava/io/InputStream;
    :goto_2
    if-eqz v10, :cond_2

    .line 277
    const-string v15, "sha1"

    invoke-virtual {v2}, Ljava/security/DigestInputStream;->getMessageDigest()Ljava/security/MessageDigest;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/touchtype_fluency/util/HttpDownload;->digestToString([B)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 279
    :cond_2
    return-object v10

    .line 227
    .end local v2           #checker:Ljava/security/DigestInputStream;
    .end local v7           #in:Ljava/io/InputStream;
    .end local v12           #zip:Ljava/util/zip/ZipInputStream;
    .restart local v3       #checker:Ljava/security/DigestInputStream;
    .restart local v8       #in:Ljava/io/InputStream;
    .restart local v13       #zip:Ljava/util/zip/ZipInputStream;
    .restart local v14       #zipEntry:Ljava/util/zip/ZipEntry;
    :cond_3
    :try_start_4
    invoke-virtual {v14}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v15

    if-eqz v15, :cond_4

    .line 228
    new-instance v15, Ljava/io/IOException;

    const-string v16, "Language pack archives should not contain directories"

    invoke-direct/range {v15 .. v16}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 237
    :catchall_0
    move-exception v15

    .line 238
    :try_start_5
    invoke-virtual {v13}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 239
    throw v15
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_5} :catch_2

    .line 258
    .end local v14           #zipEntry:Ljava/util/zip/ZipEntry;
    :catch_0
    move-exception v4

    move-object v12, v13

    .end local v13           #zip:Ljava/util/zip/ZipInputStream;
    .restart local v12       #zip:Ljava/util/zip/ZipInputStream;
    move-object v2, v3

    .end local v3           #checker:Ljava/security/DigestInputStream;
    .restart local v2       #checker:Ljava/security/DigestInputStream;
    move-object v7, v8

    .line 260
    .end local v8           #in:Ljava/io/InputStream;
    .local v4, e:Ljava/io/IOException;
    .restart local v7       #in:Ljava/io/InputStream;
    :goto_3
    const/4 v10, 0x0

    .line 271
    invoke-static {v12}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 272
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 273
    invoke-static {v7}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto :goto_2

    .line 230
    .end local v2           #checker:Ljava/security/DigestInputStream;
    .end local v4           #e:Ljava/io/IOException;
    .end local v7           #in:Ljava/io/InputStream;
    .end local v12           #zip:Ljava/util/zip/ZipInputStream;
    .restart local v3       #checker:Ljava/security/DigestInputStream;
    .restart local v8       #in:Ljava/io/InputStream;
    .restart local v13       #zip:Ljava/util/zip/ZipInputStream;
    .restart local v14       #zipEntry:Ljava/util/zip/ZipEntry;
    :cond_4
    :try_start_6
    invoke-virtual {v14}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    .line 231
    .local v6, filename:Ljava/lang/String;
    const-string v15, ".config"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 232
    invoke-static {v13}, Lcom/touchtype_fluency/util/HttpDownload;->createPreinstalledJSON(Ljava/io/InputStream;)Lorg/json/JSONObject;

    move-result-object v10

    .line 233
    const-string v15, "archive"

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 238
    :cond_5
    :goto_4
    :try_start_7
    invoke-virtual {v13}, Ljava/util/zip/ZipInputStream;->closeEntry()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_0

    .line 262
    .end local v6           #filename:Ljava/lang/String;
    .end local v14           #zipEntry:Ljava/util/zip/ZipEntry;
    :catch_1
    move-exception v4

    move-object v12, v13

    .end local v13           #zip:Ljava/util/zip/ZipInputStream;
    .restart local v12       #zip:Ljava/util/zip/ZipInputStream;
    move-object v2, v3

    .end local v3           #checker:Ljava/security/DigestInputStream;
    .restart local v2       #checker:Ljava/security/DigestInputStream;
    move-object v7, v8

    .line 264
    .end local v8           #in:Ljava/io/InputStream;
    .local v4, e:Lorg/json/JSONException;
    .restart local v7       #in:Ljava/io/InputStream;
    :goto_5
    const/4 v10, 0x0

    .line 271
    invoke-static {v12}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 272
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 273
    invoke-static {v7}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto :goto_2

    .line 234
    .end local v2           #checker:Ljava/security/DigestInputStream;
    .end local v4           #e:Lorg/json/JSONException;
    .end local v7           #in:Ljava/io/InputStream;
    .end local v12           #zip:Ljava/util/zip/ZipInputStream;
    .restart local v3       #checker:Ljava/security/DigestInputStream;
    .restart local v6       #filename:Ljava/lang/String;
    .restart local v8       #in:Ljava/io/InputStream;
    .restart local v13       #zip:Ljava/util/zip/ZipInputStream;
    .restart local v14       #zipEntry:Ljava/util/zip/ZipEntry;
    :cond_6
    :try_start_8
    const-string v15, "extraData.json"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 235
    invoke-static {v13}, Lcom/touchtype_fluency/util/HttpDownload;->createExtraDataJSON(Ljava/io/InputStream;)Lorg/json/JSONObject;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v5

    .line 237
    goto :goto_4

    .line 246
    .end local v6           #filename:Ljava/lang/String;
    .restart local v9       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :cond_7
    :try_start_9
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 247
    .local v11, key:Ljava/lang/String;
    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v10, v11, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_9 .. :try_end_9} :catch_2

    goto/16 :goto_1

    .line 266
    .end local v9           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    .end local v11           #key:Ljava/lang/String;
    .end local v14           #zipEntry:Ljava/util/zip/ZipEntry;
    :catch_2
    move-exception v4

    move-object v12, v13

    .end local v13           #zip:Ljava/util/zip/ZipInputStream;
    .restart local v12       #zip:Ljava/util/zip/ZipInputStream;
    move-object v2, v3

    .end local v3           #checker:Ljava/security/DigestInputStream;
    .restart local v2       #checker:Ljava/security/DigestInputStream;
    move-object v7, v8

    .line 268
    .end local v8           #in:Ljava/io/InputStream;
    .local v4, e:Ljava/security/NoSuchAlgorithmException;
    .restart local v7       #in:Ljava/io/InputStream;
    :goto_6
    :try_start_a
    invoke-static {}, Ljunit/framework/Assert;->fail()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 271
    invoke-static {v12}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 272
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 273
    invoke-static {v7}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto/16 :goto_2

    .line 270
    .end local v4           #e:Ljava/security/NoSuchAlgorithmException;
    :catchall_1
    move-exception v15

    .line 271
    :goto_7
    invoke-static {v12}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 272
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 273
    invoke-static {v7}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 274
    throw v15

    .line 270
    .end local v7           #in:Ljava/io/InputStream;
    .restart local v8       #in:Ljava/io/InputStream;
    :catchall_2
    move-exception v15

    move-object v7, v8

    .end local v8           #in:Ljava/io/InputStream;
    .restart local v7       #in:Ljava/io/InputStream;
    goto :goto_7

    .end local v2           #checker:Ljava/security/DigestInputStream;
    .end local v7           #in:Ljava/io/InputStream;
    .restart local v3       #checker:Ljava/security/DigestInputStream;
    .restart local v8       #in:Ljava/io/InputStream;
    :catchall_3
    move-exception v15

    move-object v2, v3

    .end local v3           #checker:Ljava/security/DigestInputStream;
    .restart local v2       #checker:Ljava/security/DigestInputStream;
    move-object v7, v8

    .end local v8           #in:Ljava/io/InputStream;
    .restart local v7       #in:Ljava/io/InputStream;
    goto :goto_7

    .end local v2           #checker:Ljava/security/DigestInputStream;
    .end local v7           #in:Ljava/io/InputStream;
    .end local v12           #zip:Ljava/util/zip/ZipInputStream;
    .restart local v3       #checker:Ljava/security/DigestInputStream;
    .restart local v8       #in:Ljava/io/InputStream;
    .restart local v13       #zip:Ljava/util/zip/ZipInputStream;
    :catchall_4
    move-exception v15

    move-object v12, v13

    .end local v13           #zip:Ljava/util/zip/ZipInputStream;
    .restart local v12       #zip:Ljava/util/zip/ZipInputStream;
    move-object v2, v3

    .end local v3           #checker:Ljava/security/DigestInputStream;
    .restart local v2       #checker:Ljava/security/DigestInputStream;
    move-object v7, v8

    .end local v8           #in:Ljava/io/InputStream;
    .restart local v7       #in:Ljava/io/InputStream;
    goto :goto_7

    .line 266
    :catch_3
    move-exception v4

    goto :goto_6

    .end local v7           #in:Ljava/io/InputStream;
    .restart local v8       #in:Ljava/io/InputStream;
    :catch_4
    move-exception v4

    move-object v7, v8

    .end local v8           #in:Ljava/io/InputStream;
    .restart local v7       #in:Ljava/io/InputStream;
    goto :goto_6

    .end local v2           #checker:Ljava/security/DigestInputStream;
    .end local v7           #in:Ljava/io/InputStream;
    .restart local v3       #checker:Ljava/security/DigestInputStream;
    .restart local v8       #in:Ljava/io/InputStream;
    :catch_5
    move-exception v4

    move-object v2, v3

    .end local v3           #checker:Ljava/security/DigestInputStream;
    .restart local v2       #checker:Ljava/security/DigestInputStream;
    move-object v7, v8

    .end local v8           #in:Ljava/io/InputStream;
    .restart local v7       #in:Ljava/io/InputStream;
    goto :goto_6

    .line 262
    :catch_6
    move-exception v4

    goto :goto_5

    .end local v7           #in:Ljava/io/InputStream;
    .restart local v8       #in:Ljava/io/InputStream;
    :catch_7
    move-exception v4

    move-object v7, v8

    .end local v8           #in:Ljava/io/InputStream;
    .restart local v7       #in:Ljava/io/InputStream;
    goto :goto_5

    .end local v2           #checker:Ljava/security/DigestInputStream;
    .end local v7           #in:Ljava/io/InputStream;
    .restart local v3       #checker:Ljava/security/DigestInputStream;
    .restart local v8       #in:Ljava/io/InputStream;
    :catch_8
    move-exception v4

    move-object v2, v3

    .end local v3           #checker:Ljava/security/DigestInputStream;
    .restart local v2       #checker:Ljava/security/DigestInputStream;
    move-object v7, v8

    .end local v8           #in:Ljava/io/InputStream;
    .restart local v7       #in:Ljava/io/InputStream;
    goto :goto_5

    .line 258
    :catch_9
    move-exception v4

    goto/16 :goto_3

    .end local v7           #in:Ljava/io/InputStream;
    .restart local v8       #in:Ljava/io/InputStream;
    :catch_a
    move-exception v4

    move-object v7, v8

    .end local v8           #in:Ljava/io/InputStream;
    .restart local v7       #in:Ljava/io/InputStream;
    goto/16 :goto_3

    .end local v2           #checker:Ljava/security/DigestInputStream;
    .end local v7           #in:Ljava/io/InputStream;
    .restart local v3       #checker:Ljava/security/DigestInputStream;
    .restart local v8       #in:Ljava/io/InputStream;
    :catch_b
    move-exception v4

    move-object v2, v3

    .end local v3           #checker:Ljava/security/DigestInputStream;
    .restart local v2       #checker:Ljava/security/DigestInputStream;
    move-object v7, v8

    .end local v8           #in:Ljava/io/InputStream;
    .restart local v7       #in:Ljava/io/InputStream;
    goto/16 :goto_3
.end method

.method private static createPreinstalledJSON(Ljava/io/InputStream;)Lorg/json/JSONObject;
    .locals 17
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 342
    new-instance v10, Ljava/io/StringWriter;

    invoke-direct {v10}, Ljava/io/StringWriter;-><init>()V

    .line 343
    .local v10, out:Ljava/io/StringWriter;
    new-instance v4, Ljava/io/InputStreamReader;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 344
    .local v4, in:Ljava/io/InputStreamReader;
    const/4 v8, 0x0

    .line 345
    .local v8, n:I
    const/16 v14, 0x1000

    new-array v1, v14, [C

    .line 346
    .local v1, buffer:[C
    :cond_0
    :goto_0
    invoke-virtual {v4, v1}, Ljava/io/InputStreamReader;->read([C)I

    move-result v8

    const/4 v14, -0x1

    if-ne v8, v14, :cond_2

    .line 353
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 354
    .local v5, json:Lorg/json/JSONObject;
    new-instance v14, Lorg/json/JSONTokener;

    invoke-virtual {v10}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v9

    .line 355
    .local v9, obj:Ljava/lang/Object;
    instance-of v14, v9, Lorg/json/JSONObject;

    if-eqz v14, :cond_7

    .line 356
    check-cast v9, Lorg/json/JSONObject;

    .end local v9           #obj:Ljava/lang/Object;
    const-string v14, "tags"

    invoke-virtual {v9, v14}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    .line 360
    .local v13, tags:Lorg/json/JSONArray;
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v7

    .line 361
    .local v7, length:I
    const/4 v2, 0x0

    .line 362
    .local v2, displayName:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-lt v3, v7, :cond_3

    .line 384
    if-eqz v2, :cond_1

    .line 385
    const-string v14, "name"

    invoke-virtual {v5, v14, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 391
    :cond_1
    return-object v5

    .line 347
    .end local v2           #displayName:Ljava/lang/String;
    .end local v3           #i:I
    .end local v5           #json:Lorg/json/JSONObject;
    .end local v7           #length:I
    .end local v13           #tags:Lorg/json/JSONArray;
    :cond_2
    if-lez v8, :cond_0

    .line 348
    const/4 v14, 0x0

    invoke-virtual {v10, v1, v14, v8}, Ljava/io/StringWriter;->write([CII)V

    goto :goto_0

    .line 363
    .restart local v2       #displayName:Ljava/lang/String;
    .restart local v3       #i:I
    .restart local v5       #json:Lorg/json/JSONObject;
    .restart local v7       #length:I
    .restart local v13       #tags:Lorg/json/JSONArray;
    :cond_3
    invoke-virtual {v13, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 364
    .local v12, tag:Ljava/lang/String;
    const-string v14, "id:"

    invoke-virtual {v12, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 365
    const-string v14, "[:_]"

    invoke-virtual {v12, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 366
    .local v11, ss:[Ljava/lang/String;
    array-length v14, v11

    const/4 v15, 0x3

    if-ne v14, v15, :cond_5

    .line 368
    new-instance v6, Ljava/util/Locale;

    const/4 v14, 0x1

    aget-object v14, v11, v14

    const/4 v15, 0x2

    aget-object v15, v11, v15

    invoke-direct {v6, v14, v15}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    .local v6, l:Ljava/util/Locale;
    const-string v14, "language"

    const/4 v15, 0x1

    aget-object v15, v11, v15

    invoke-virtual {v5, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v14

    .line 370
    const-string v15, "country"

    const/16 v16, 0x2

    aget-object v16, v11, v16

    invoke-virtual/range {v14 .. v16}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v14

    .line 371
    const-string v15, "name"

    invoke-static {v6}, Lcom/touchtype_fluency/util/HttpDownload;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 362
    .end local v6           #l:Ljava/util/Locale;
    .end local v11           #ss:[Ljava/lang/String;
    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 372
    .restart local v11       #ss:[Ljava/lang/String;
    :cond_5
    array-length v14, v11

    const/4 v15, 0x2

    if-ne v14, v15, :cond_4

    const-string v14, "language"

    invoke-virtual {v5, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 374
    new-instance v6, Ljava/util/Locale;

    const/4 v14, 0x1

    aget-object v14, v11, v14

    invoke-direct {v6, v14}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 375
    .restart local v6       #l:Ljava/util/Locale;
    const-string v14, "language"

    const/4 v15, 0x1

    aget-object v15, v11, v15

    invoke-virtual {v5, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v14

    .line 376
    const-string v15, "name"

    invoke-static {v6}, Lcom/touchtype_fluency/util/HttpDownload;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 378
    .end local v6           #l:Ljava/util/Locale;
    .end local v11           #ss:[Ljava/lang/String;
    :cond_6
    const-string v14, "name:"

    invoke-virtual {v12, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 379
    const-string v14, ":"

    invoke-virtual {v12, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    aget-object v2, v14, v15

    goto :goto_2

    .line 389
    .end local v2           #displayName:Ljava/lang/String;
    .end local v3           #i:I
    .end local v7           #length:I
    .end local v12           #tag:Ljava/lang/String;
    .end local v13           #tags:Lorg/json/JSONArray;
    .restart local v9       #obj:Ljava/lang/Object;
    :cond_7
    new-instance v14, Lorg/json/JSONException;

    const-string v15, "preinstalled zip contains .config, but it isn\'t JSON"

    invoke-direct {v14, v15}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v14
.end method

.method public static digestToString([B)Ljava/lang/String;
    .locals 9
    .parameter "digest"

    .prologue
    const/4 v4, 0x0

    .line 309
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 310
    .local v1, s:Ljava/io/StringWriter;
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 312
    .local v2, writer:Ljava/io/PrintWriter;
    array-length v5, p0

    move v3, v4

    :goto_0
    if-lt v3, v5, :cond_0

    .line 316
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 312
    :cond_0
    aget-byte v0, p0, v3

    .line 313
    .local v0, b:B
    const-string v6, "%02x"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-virtual {v2, v6, v7}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 312
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private disconnect()V
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcom/touchtype_fluency/util/HttpDownload;->connection:Ljava/net/URLConnection;

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Lcom/touchtype_fluency/util/HttpDownload;->connection:Ljava/net/URLConnection;

    instance-of v0, v0, Ljava/net/HttpURLConnection;

    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 530
    iget-object v0, p0, Lcom/touchtype_fluency/util/HttpDownload;->connection:Ljava/net/URLConnection;

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 532
    :cond_0
    return-void
.end method

.method private static getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 4
    .parameter "locale"

    .prologue
    const/4 v3, 0x1

    .line 400
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 401
    .local v1, name:Ljava/lang/StringBuilder;
    invoke-virtual {p0, p0}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 402
    .local v0, language:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private startTimeoutThread()V
    .locals 2

    .prologue
    .line 603
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/touchtype_fluency/util/HttpDownload;->timeLastDataSeen:J

    .line 605
    iget-object v0, p0, Lcom/touchtype_fluency/util/HttpDownload;->timeoutThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 606
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/touchtype_fluency/util/HttpDownload$2;

    invoke-direct {v1, p0}, Lcom/touchtype_fluency/util/HttpDownload$2;-><init>(Lcom/touchtype_fluency/util/HttpDownload;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/touchtype_fluency/util/HttpDownload;->timeoutThread:Ljava/lang/Thread;

    .line 621
    iget-object v0, p0, Lcom/touchtype_fluency/util/HttpDownload;->timeoutThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 622
    return-void

    .line 605
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private stopTimeoutThread()V
    .locals 1

    .prologue
    .line 625
    iget-object v0, p0, Lcom/touchtype_fluency/util/HttpDownload;->timeoutThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 626
    return-void
.end method


# virtual methods
.method public download(Ljava/net/URL;)Ljava/lang/String;
    .locals 6
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 53
    const-string v3, "HttpDownload"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Downloading: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/touchtype_fluency/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-direct {p0}, Lcom/touchtype_fluency/util/HttpDownload;->startTimeoutThread()V

    .line 56
    const/4 v1, 0x0

    .line 57
    .local v1, in:Ljava/io/InputStream;
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 59
    .local v2, out:Ljava/io/StringWriter;
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    iput-object v3, p0, Lcom/touchtype_fluency/util/HttpDownload;->connection:Ljava/net/URLConnection;

    .line 60
    iget-object v3, p0, Lcom/touchtype_fluency/util/HttpDownload;->connection:Ljava/net/URLConnection;

    check-cast v3, Ljava/net/HttpURLConnection;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 61
    iget-object v3, p0, Lcom/touchtype_fluency/util/HttpDownload;->connection:Ljava/net/URLConnection;

    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 63
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v3, v2}, Lcom/touchtype_fluency/util/HttpDownload;->copyInputToOutput(Ljava/io/Reader;Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    invoke-direct {p0}, Lcom/touchtype_fluency/util/HttpDownload;->stopTimeoutThread()V

    .line 73
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Writer;)V

    .line 74
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 75
    invoke-direct {p0}, Lcom/touchtype_fluency/util/HttpDownload;->disconnect()V

    .line 77
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 78
    new-instance v3, Ljava/lang/InterruptedException;

    invoke-direct {v3}, Ljava/lang/InterruptedException;-><init>()V

    throw v3

    .line 64
    :catch_0
    move-exception v0

    .line 69
    .local v0, e:Ljava/lang/RuntimeException;
    :try_start_1
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v3

    .line 72
    invoke-direct {p0}, Lcom/touchtype_fluency/util/HttpDownload;->stopTimeoutThread()V

    .line 73
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Writer;)V

    .line 74
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 75
    invoke-direct {p0}, Lcom/touchtype_fluency/util/HttpDownload;->disconnect()V

    .line 77
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 78
    new-instance v3, Ljava/lang/InterruptedException;

    invoke-direct {v3}, Ljava/lang/InterruptedException;-><init>()V

    throw v3

    .line 79
    :cond_0
    throw v3

    .line 81
    :cond_1
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public downloadGzip(Ljava/net/URL;Ljava/io/File;Lcom/touchtype_fluency/util/ProgressListener;)V
    .locals 14
    .parameter "url"
    .parameter "file"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/touchtype_fluency/util/HttpDownload;->startTimeoutThread()V

    .line 121
    const/4 v5, 0x0

    .line 122
    .local v5, in:Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 123
    .local v1, counter:Lorg/apache/commons/io/input/CountingInputStream;
    const/4 v8, 0x0

    .line 124
    .local v8, zip:Ljava/util/zip/GZIPInputStream;
    const/4 v6, 0x0

    .line 126
    .local v6, out:Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v10

    const-string v11, "https"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 127
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljavax/net/ssl/HttpsURLConnection;

    .line 128
    .local v4, https:Ljavax/net/ssl/HttpsURLConnection;
    sget-object v10, Lcom/touchtype_fluency/util/SSLTools;->DO_NOT_VERIFY_HOST:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v4, v10}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 129
    invoke-static {}, Lcom/touchtype_fluency/util/SSLTools;->getTrustAllSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 130
    iput-object v4, p0, Lcom/touchtype_fluency/util/HttpDownload;->connection:Ljava/net/URLConnection;

    .line 136
    .end local v4           #https:Ljavax/net/ssl/HttpsURLConnection;
    :goto_0
    iget-object v10, p0, Lcom/touchtype_fluency/util/HttpDownload;->connection:Ljava/net/URLConnection;

    instance-of v10, v10, Ljava/net/HttpURLConnection;

    invoke-static {v10}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 137
    iget-object v10, p0, Lcom/touchtype_fluency/util/HttpDownload;->connection:Ljava/net/URLConnection;

    check-cast v10, Ljava/net/HttpURLConnection;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 138
    iget-object v10, p0, Lcom/touchtype_fluency/util/HttpDownload;->connection:Ljava/net/URLConnection;

    const-string v11, "Accept-Encoding"

    const-string v12, "gzip,deflate"

    invoke-virtual {v10, v11, v12}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v10, p0, Lcom/touchtype_fluency/util/HttpDownload;->connection:Ljava/net/URLConnection;

    invoke-virtual {v10}, Ljava/net/URLConnection;->connect()V

    .line 140
    iget-object v10, p0, Lcom/touchtype_fluency/util/HttpDownload;->connection:Ljava/net/URLConnection;

    invoke-virtual {v10}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 141
    new-instance v2, Lorg/apache/commons/io/input/CountingInputStream;

    invoke-direct {v2, v5}, Lorg/apache/commons/io/input/CountingInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    .end local v1           #counter:Lorg/apache/commons/io/input/CountingInputStream;
    .local v2, counter:Lorg/apache/commons/io/input/CountingInputStream;
    :try_start_1
    new-instance v9, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v9, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3

    .line 144
    .end local v8           #zip:Ljava/util/zip/GZIPInputStream;
    .local v9, zip:Ljava/util/zip/GZIPInputStream;
    :try_start_2
    new-instance v7, Lcom/touchtype_fluency/util/HttpDownload$ProgressUpdater;

    iget-object v10, p0, Lcom/touchtype_fluency/util/HttpDownload;->connection:Ljava/net/URLConnection;

    invoke-virtual {v10}, Ljava/net/URLConnection;->getContentLength()I

    move-result v10

    move-object/from16 v0, p3

    invoke-direct {v7, p0, v0, v10, v2}, Lcom/touchtype_fluency/util/HttpDownload$ProgressUpdater;-><init>(Lcom/touchtype_fluency/util/HttpDownload;Lcom/touchtype_fluency/util/ProgressListener;ILorg/apache/commons/io/input/CountingInputStream;)V

    .line 146
    .local v7, progressUpdater:Lcom/touchtype_fluency/util/HttpDownload$ProgressUpdater;
    invoke-static/range {p2 .. p2}, Lorg/apache/commons/io/FileUtils;->openOutputStream(Ljava/io/File;)Ljava/io/FileOutputStream;

    move-result-object v6

    .line 148
    invoke-direct {p0, v9, v6, v7}, Lcom/touchtype_fluency/util/HttpDownload;->copyInputToOutput(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/touchtype_fluency/util/HttpDownload$ProgressUpdater;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_4

    .line 157
    if-eqz v9, :cond_0

    .line 159
    :try_start_3
    invoke-virtual {v9}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 160
    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v11, v12}, Lcom/touchtype_fluency/util/ProgressListener;->onComplete(ZZZ)V
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1

    .line 166
    :cond_0
    :goto_1
    invoke-static {v5}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 167
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 168
    invoke-static {v9}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 169
    invoke-static {v6}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 170
    invoke-direct {p0}, Lcom/touchtype_fluency/util/HttpDownload;->stopTimeoutThread()V

    .line 172
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 173
    new-instance v10, Ljava/lang/InterruptedException;

    invoke-direct {v10}, Ljava/lang/InterruptedException;-><init>()V

    throw v10

    .line 132
    .end local v2           #counter:Lorg/apache/commons/io/input/CountingInputStream;
    .end local v7           #progressUpdater:Lcom/touchtype_fluency/util/HttpDownload$ProgressUpdater;
    .end local v9           #zip:Ljava/util/zip/GZIPInputStream;
    .restart local v1       #counter:Lorg/apache/commons/io/input/CountingInputStream;
    .restart local v8       #zip:Ljava/util/zip/GZIPInputStream;
    :cond_1
    :try_start_4
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v10

    const-string v11, "http"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    invoke-static {v10}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 133
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v10

    iput-object v10, p0, Lcom/touchtype_fluency/util/HttpDownload;->connection:Ljava/net/URLConnection;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 150
    :catch_0
    move-exception v3

    .line 152
    .local v3, e:Ljava/lang/RuntimeException;
    :goto_2
    :try_start_5
    const-string v10, "HttpDownload"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Runtime exception: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/touchtype_fluency/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    new-instance v10, Ljava/io/IOException;

    const-string v11, "Download interrupted or timed out "

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 155
    .end local v3           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v10

    .line 157
    :goto_3
    if-eqz v8, :cond_2

    .line 159
    :try_start_6
    invoke-virtual {v8}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 160
    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v11, v12, v13}, Lcom/touchtype_fluency/util/ProgressListener;->onComplete(ZZZ)V
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_2

    .line 166
    :cond_2
    :goto_4
    invoke-static {v5}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 167
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 168
    invoke-static {v8}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 169
    invoke-static {v6}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 170
    invoke-direct {p0}, Lcom/touchtype_fluency/util/HttpDownload;->stopTimeoutThread()V

    .line 172
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 173
    new-instance v10, Ljava/lang/InterruptedException;

    invoke-direct {v10}, Ljava/lang/InterruptedException;-><init>()V

    throw v10

    .line 175
    :cond_3
    throw v10

    .line 176
    .end local v1           #counter:Lorg/apache/commons/io/input/CountingInputStream;
    .end local v8           #zip:Ljava/util/zip/GZIPInputStream;
    .restart local v2       #counter:Lorg/apache/commons/io/input/CountingInputStream;
    .restart local v7       #progressUpdater:Lcom/touchtype_fluency/util/HttpDownload$ProgressUpdater;
    .restart local v9       #zip:Ljava/util/zip/GZIPInputStream;
    :cond_4
    return-void

    .line 161
    :catch_1
    move-exception v10

    goto :goto_1

    .end local v2           #counter:Lorg/apache/commons/io/input/CountingInputStream;
    .end local v7           #progressUpdater:Lcom/touchtype_fluency/util/HttpDownload$ProgressUpdater;
    .end local v9           #zip:Ljava/util/zip/GZIPInputStream;
    .restart local v1       #counter:Lorg/apache/commons/io/input/CountingInputStream;
    .restart local v8       #zip:Ljava/util/zip/GZIPInputStream;
    :catch_2
    move-exception v11

    goto :goto_4

    .line 155
    .end local v1           #counter:Lorg/apache/commons/io/input/CountingInputStream;
    .restart local v2       #counter:Lorg/apache/commons/io/input/CountingInputStream;
    :catchall_1
    move-exception v10

    move-object v1, v2

    .end local v2           #counter:Lorg/apache/commons/io/input/CountingInputStream;
    .restart local v1       #counter:Lorg/apache/commons/io/input/CountingInputStream;
    goto :goto_3

    .end local v1           #counter:Lorg/apache/commons/io/input/CountingInputStream;
    .end local v8           #zip:Ljava/util/zip/GZIPInputStream;
    .restart local v2       #counter:Lorg/apache/commons/io/input/CountingInputStream;
    .restart local v9       #zip:Ljava/util/zip/GZIPInputStream;
    :catchall_2
    move-exception v10

    move-object v8, v9

    .end local v9           #zip:Ljava/util/zip/GZIPInputStream;
    .restart local v8       #zip:Ljava/util/zip/GZIPInputStream;
    move-object v1, v2

    .end local v2           #counter:Lorg/apache/commons/io/input/CountingInputStream;
    .restart local v1       #counter:Lorg/apache/commons/io/input/CountingInputStream;
    goto :goto_3

    .line 150
    .end local v1           #counter:Lorg/apache/commons/io/input/CountingInputStream;
    .restart local v2       #counter:Lorg/apache/commons/io/input/CountingInputStream;
    :catch_3
    move-exception v3

    move-object v1, v2

    .end local v2           #counter:Lorg/apache/commons/io/input/CountingInputStream;
    .restart local v1       #counter:Lorg/apache/commons/io/input/CountingInputStream;
    goto :goto_2

    .end local v1           #counter:Lorg/apache/commons/io/input/CountingInputStream;
    .end local v8           #zip:Ljava/util/zip/GZIPInputStream;
    .restart local v2       #counter:Lorg/apache/commons/io/input/CountingInputStream;
    .restart local v9       #zip:Ljava/util/zip/GZIPInputStream;
    :catch_4
    move-exception v3

    move-object v8, v9

    .end local v9           #zip:Ljava/util/zip/GZIPInputStream;
    .restart local v8       #zip:Ljava/util/zip/GZIPInputStream;
    move-object v1, v2

    .end local v2           #counter:Lorg/apache/commons/io/input/CountingInputStream;
    .restart local v1       #counter:Lorg/apache/commons/io/input/CountingInputStream;
    goto :goto_2
.end method

.method public downloadToFile(Ljava/net/URL;Ljava/io/File;)V
    .locals 7
    .parameter "url"
    .parameter "dest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 85
    const-string v4, "HttpDownload"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Downloading: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/touchtype_fluency/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-direct {p0}, Lcom/touchtype_fluency/util/HttpDownload;->startTimeoutThread()V

    .line 88
    const/4 v1, 0x0

    .line 89
    .local v1, in:Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 91
    .local v2, out:Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    iput-object v4, p0, Lcom/touchtype_fluency/util/HttpDownload;->connection:Ljava/net/URLConnection;

    .line 92
    iget-object v4, p0, Lcom/touchtype_fluency/util/HttpDownload;->connection:Ljava/net/URLConnection;

    check-cast v4, Ljava/net/HttpURLConnection;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 94
    iget-object v4, p0, Lcom/touchtype_fluency/util/HttpDownload;->connection:Ljava/net/URLConnection;

    invoke-virtual {v4}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 95
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .end local v2           #out:Ljava/io/FileOutputStream;
    .local v3, out:Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    :try_start_1
    invoke-direct {p0, v1, v3, v4}, Lcom/touchtype_fluency/util/HttpDownload;->copyInputToOutput(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/touchtype_fluency/util/HttpDownload$ProgressUpdater;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 106
    invoke-direct {p0}, Lcom/touchtype_fluency/util/HttpDownload;->stopTimeoutThread()V

    .line 107
    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 108
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 109
    invoke-direct {p0}, Lcom/touchtype_fluency/util/HttpDownload;->disconnect()V

    .line 111
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 112
    new-instance v4, Ljava/lang/InterruptedException;

    invoke-direct {v4}, Ljava/lang/InterruptedException;-><init>()V

    throw v4

    .line 98
    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 103
    .local v0, e:Ljava/lang/RuntimeException;
    :goto_0
    :try_start_2
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Download interrupted or timed out"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 105
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v4

    .line 106
    :goto_1
    invoke-direct {p0}, Lcom/touchtype_fluency/util/HttpDownload;->stopTimeoutThread()V

    .line 107
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 108
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 109
    invoke-direct {p0}, Lcom/touchtype_fluency/util/HttpDownload;->disconnect()V

    .line 111
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 112
    new-instance v4, Ljava/lang/InterruptedException;

    invoke-direct {v4}, Ljava/lang/InterruptedException;-><init>()V

    throw v4

    .line 113
    :cond_0
    throw v4

    .line 114
    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    :cond_1
    return-void

    .line 105
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    goto :goto_1

    .line 98
    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    goto :goto_0
.end method

.method public downloadZip(Ljava/net/URL;Ljava/io/File;Ljava/lang/String;Lcom/touchtype_fluency/util/ProgressListener;)Ljava/util/Vector;
    .locals 25
    .parameter "archive"
    .parameter "destination"
    .parameter "sha1"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Lcom/touchtype_fluency/util/ProgressListener;",
            ")",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;,
            Ljava/security/DigestException;
        }
    .end annotation

    .prologue
    .line 416
    const-string v22, "HttpDownload"

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "Downloading and uncompressing: "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/touchtype_fluency/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    invoke-direct/range {p0 .. p0}, Lcom/touchtype_fluency/util/HttpDownload;->startTimeoutThread()V

    .line 419
    const/4 v13, 0x0

    .line 420
    .local v13, in:Ljava/io/BufferedInputStream;
    const/4 v6, 0x0

    .line 421
    .local v6, counter:Lorg/apache/commons/io/input/CountingInputStream;
    const/4 v4, 0x0

    .line 422
    .local v4, checker:Ljava/security/DigestInputStream;
    const/16 v19, 0x0

    .line 423
    .local v19, zip:Ljava/util/zip/ZipInputStream;
    new-instance v12, Ljava/util/Vector;

    invoke-direct {v12}, Ljava/util/Vector;-><init>()V

    .line 425
    .local v12, files:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    const/4 v15, 0x0

    .line 426
    .local v15, length:I
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v22

    const-string v23, "file"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 428
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/touchtype_fluency/util/HttpDownload;->connection:Ljava/net/URLConnection;

    .line 429
    new-instance v14, Ljava/io/BufferedInputStream;

    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v14, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_5

    .line 430
    .end local v13           #in:Ljava/io/BufferedInputStream;
    .local v14, in:Ljava/io/BufferedInputStream;
    :try_start_1
    new-instance v22, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->length()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_6

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-int v15, v0

    move-object v13, v14

    .line 437
    .end local v14           #in:Ljava/io/BufferedInputStream;
    .restart local v13       #in:Ljava/io/BufferedInputStream;
    :goto_0
    :try_start_2
    new-instance v7, Lorg/apache/commons/io/input/CountingInputStream;

    invoke-direct {v7, v13}, Lorg/apache/commons/io/input/CountingInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_5

    .line 438
    .end local v6           #counter:Lorg/apache/commons/io/input/CountingInputStream;
    .local v7, counter:Lorg/apache/commons/io/input/CountingInputStream;
    :try_start_3
    new-instance v5, Ljava/security/DigestInputStream;

    const-string v22, "SHA-1"

    invoke-static/range {v22 .. v22}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v5, v7, v0}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_7

    .line 439
    .end local v4           #checker:Ljava/security/DigestInputStream;
    .local v5, checker:Ljava/security/DigestInputStream;
    :try_start_4
    new-instance v20, Ljava/util/zip/ZipInputStream;

    move-object/from16 v0, v20

    invoke-direct {v0, v5}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_c
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_8

    .line 441
    .end local v19           #zip:Ljava/util/zip/ZipInputStream;
    .local v20, zip:Ljava/util/zip/ZipInputStream;
    :try_start_5
    new-instance v18, Lcom/touchtype_fluency/util/HttpDownload$ProgressUpdater;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2, v15, v7}, Lcom/touchtype_fluency/util/HttpDownload$ProgressUpdater;-><init>(Lcom/touchtype_fluency/util/HttpDownload;Lcom/touchtype_fluency/util/ProgressListener;ILorg/apache/commons/io/input/CountingInputStream;)V

    .line 444
    .local v18, progressUpdater:Lcom/touchtype_fluency/util/HttpDownload$ProgressUpdater;
    :goto_1
    invoke-virtual/range {v20 .. v20}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v21

    .local v21, zipEntry:Ljava/util/zip/ZipEntry;
    if-nez v21, :cond_1

    .line 476
    new-instance v22, Lorg/apache/commons/io/output/NullOutputStream;

    invoke-direct/range {v22 .. v22}, Lorg/apache/commons/io/output/NullOutputStream;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v18

    invoke-direct {v0, v5, v1, v2}, Lcom/touchtype_fluency/util/HttpDownload;->copyInputToOutput(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/touchtype_fluency/util/HttpDownload$ProgressUpdater;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    .line 488
    invoke-direct/range {p0 .. p0}, Lcom/touchtype_fluency/util/HttpDownload;->stopTimeoutThread()V

    .line 490
    :try_start_6
    invoke-static/range {v20 .. v20}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 491
    invoke-static {v5}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 492
    invoke-static {v7}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 493
    invoke-static {v13}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 494
    invoke-direct/range {p0 .. p0}, Lcom/touchtype_fluency/util/HttpDownload;->disconnect()V
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_4

    .line 500
    :goto_2
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v22

    if-eqz v22, :cond_5

    .line 501
    new-instance v22, Ljava/lang/InterruptedException;

    invoke-direct/range {v22 .. v22}, Ljava/lang/InterruptedException;-><init>()V

    throw v22

    .line 432
    .end local v5           #checker:Ljava/security/DigestInputStream;
    .end local v7           #counter:Lorg/apache/commons/io/input/CountingInputStream;
    .end local v18           #progressUpdater:Lcom/touchtype_fluency/util/HttpDownload$ProgressUpdater;
    .end local v20           #zip:Ljava/util/zip/ZipInputStream;
    .end local v21           #zipEntry:Ljava/util/zip/ZipEntry;
    .restart local v4       #checker:Ljava/security/DigestInputStream;
    .restart local v6       #counter:Lorg/apache/commons/io/input/CountingInputStream;
    .restart local v19       #zip:Ljava/util/zip/ZipInputStream;
    :cond_0
    :try_start_7
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/touchtype_fluency/util/HttpDownload;->connection:Ljava/net/URLConnection;

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/touchtype_fluency/util/HttpDownload;->connection:Ljava/net/URLConnection;

    move-object/from16 v22, v0

    check-cast v22, Ljava/net/HttpURLConnection;

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 434
    new-instance v14, Ljava/io/BufferedInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/touchtype_fluency/util/HttpDownload;->connection:Ljava/net/URLConnection;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v14, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7 .. :try_end_7} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_5

    .line 435
    .end local v13           #in:Ljava/io/BufferedInputStream;
    .restart local v14       #in:Ljava/io/BufferedInputStream;
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/touchtype_fluency/util/HttpDownload;->connection:Ljava/net/URLConnection;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/net/URLConnection;->getContentLength()I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_8 .. :try_end_8} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_6

    move-result v15

    move-object v13, v14

    .end local v14           #in:Ljava/io/BufferedInputStream;
    .restart local v13       #in:Ljava/io/BufferedInputStream;
    goto/16 :goto_0

    .line 446
    .end local v4           #checker:Ljava/security/DigestInputStream;
    .end local v6           #counter:Lorg/apache/commons/io/input/CountingInputStream;
    .end local v19           #zip:Ljava/util/zip/ZipInputStream;
    .restart local v5       #checker:Ljava/security/DigestInputStream;
    .restart local v7       #counter:Lorg/apache/commons/io/input/CountingInputStream;
    .restart local v18       #progressUpdater:Lcom/touchtype_fluency/util/HttpDownload$ProgressUpdater;
    .restart local v20       #zip:Ljava/util/zip/ZipInputStream;
    .restart local v21       #zipEntry:Ljava/util/zip/ZipEntry;
    :cond_1
    :try_start_9
    invoke-virtual/range {v21 .. v21}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v22

    if-eqz v22, :cond_2

    .line 447
    new-instance v22, Ljava/io/IOException;

    const-string v23, "Language pack archives should not contain directories"

    invoke-direct/range {v22 .. v23}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v22
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 466
    :catchall_0
    move-exception v22

    .line 470
    :try_start_a
    invoke-virtual/range {v20 .. v20}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 471
    throw v22
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_1

    .line 478
    .end local v18           #progressUpdater:Lcom/touchtype_fluency/util/HttpDownload$ProgressUpdater;
    .end local v21           #zipEntry:Ljava/util/zip/ZipEntry;
    :catch_0
    move-exception v9

    move-object/from16 v19, v20

    .end local v20           #zip:Ljava/util/zip/ZipInputStream;
    .restart local v19       #zip:Ljava/util/zip/ZipInputStream;
    move-object v4, v5

    .end local v5           #checker:Ljava/security/DigestInputStream;
    .restart local v4       #checker:Ljava/security/DigestInputStream;
    move-object v6, v7

    .line 480
    .end local v7           #counter:Lorg/apache/commons/io/input/CountingInputStream;
    .restart local v6       #counter:Lorg/apache/commons/io/input/CountingInputStream;
    .local v9, e:Ljava/security/NoSuchAlgorithmException;
    :goto_3
    :try_start_b
    invoke-static {}, Ljunit/framework/Assert;->fail()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 488
    invoke-direct/range {p0 .. p0}, Lcom/touchtype_fluency/util/HttpDownload;->stopTimeoutThread()V

    .line 490
    :try_start_c
    invoke-static/range {v19 .. v19}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 491
    invoke-static {v4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 492
    invoke-static {v6}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 493
    invoke-static {v13}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 494
    invoke-direct/range {p0 .. p0}, Lcom/touchtype_fluency/util/HttpDownload;->disconnect()V
    :try_end_c
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_2

    .line 500
    .end local v9           #e:Ljava/security/NoSuchAlgorithmException;
    :goto_4
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v22

    if-eqz v22, :cond_6

    .line 501
    new-instance v22, Ljava/lang/InterruptedException;

    invoke-direct/range {v22 .. v22}, Ljava/lang/InterruptedException;-><init>()V

    throw v22

    .line 449
    .end local v4           #checker:Ljava/security/DigestInputStream;
    .end local v6           #counter:Lorg/apache/commons/io/input/CountingInputStream;
    .end local v19           #zip:Ljava/util/zip/ZipInputStream;
    .restart local v5       #checker:Ljava/security/DigestInputStream;
    .restart local v7       #counter:Lorg/apache/commons/io/input/CountingInputStream;
    .restart local v18       #progressUpdater:Lcom/touchtype_fluency/util/HttpDownload$ProgressUpdater;
    .restart local v20       #zip:Ljava/util/zip/ZipInputStream;
    .restart local v21       #zipEntry:Ljava/util/zip/ZipEntry;
    :cond_2
    :try_start_d
    invoke-virtual/range {v21 .. v21}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v11

    .line 452
    .local v11, filename:Ljava/lang/String;
    const-string v22, ".config"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_3

    .line 453
    invoke-virtual {v12, v11}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 455
    :cond_3
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v10, v0, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 456
    .local v10, file:Ljava/io/File;
    const-string v22, "HttpDownload"

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "Decompressing file: "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/touchtype_fluency/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    invoke-static {v10}, Lorg/apache/commons/io/FileUtils;->openOutputStream(Ljava/io/File;)Ljava/io/FileOutputStream;

    move-result-object v16

    .line 459
    .local v16, out:Ljava/io/FileOutputStream;
    new-instance v17, Ljava/io/BufferedOutputStream;

    const/16 v22, 0x1000

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 461
    .local v17, outBuffered:Ljava/io/BufferedOutputStream;
    :try_start_e
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/touchtype_fluency/util/HttpDownload;->copyInputToOutput(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/touchtype_fluency/util/HttpDownload$ProgressUpdater;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 463
    :try_start_f
    invoke-static/range {v17 .. v17}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 464
    invoke-static/range {v16 .. v16}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 470
    :try_start_10
    invoke-virtual/range {v20 .. v20}, Ljava/util/zip/ZipInputStream;->closeEntry()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_10 .. :try_end_10} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_1

    goto/16 :goto_1

    .line 481
    .end local v10           #file:Ljava/io/File;
    .end local v11           #filename:Ljava/lang/String;
    .end local v16           #out:Ljava/io/FileOutputStream;
    .end local v17           #outBuffered:Ljava/io/BufferedOutputStream;
    .end local v18           #progressUpdater:Lcom/touchtype_fluency/util/HttpDownload$ProgressUpdater;
    .end local v21           #zipEntry:Ljava/util/zip/ZipEntry;
    :catch_1
    move-exception v9

    move-object/from16 v19, v20

    .end local v20           #zip:Ljava/util/zip/ZipInputStream;
    .restart local v19       #zip:Ljava/util/zip/ZipInputStream;
    move-object v4, v5

    .end local v5           #checker:Ljava/security/DigestInputStream;
    .restart local v4       #checker:Ljava/security/DigestInputStream;
    move-object v6, v7

    .line 486
    .end local v7           #counter:Lorg/apache/commons/io/input/CountingInputStream;
    .restart local v6       #counter:Lorg/apache/commons/io/input/CountingInputStream;
    .local v9, e:Ljava/lang/RuntimeException;
    :goto_5
    :try_start_11
    new-instance v22, Ljava/io/IOException;

    const-string v23, "Download interrupted or timed out"

    invoke-direct/range {v22 .. v23}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v22
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 487
    .end local v9           #e:Ljava/lang/RuntimeException;
    :catchall_1
    move-exception v22

    .line 488
    :goto_6
    invoke-direct/range {p0 .. p0}, Lcom/touchtype_fluency/util/HttpDownload;->stopTimeoutThread()V

    .line 490
    :try_start_12
    invoke-static/range {v19 .. v19}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 491
    invoke-static {v4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 492
    invoke-static {v6}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 493
    invoke-static {v13}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 494
    invoke-direct/range {p0 .. p0}, Lcom/touchtype_fluency/util/HttpDownload;->disconnect()V
    :try_end_12
    .catch Ljava/lang/NullPointerException; {:try_start_12 .. :try_end_12} :catch_3

    .line 500
    :goto_7
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v23

    if-eqz v23, :cond_4

    .line 501
    new-instance v22, Ljava/lang/InterruptedException;

    invoke-direct/range {v22 .. v22}, Ljava/lang/InterruptedException;-><init>()V

    throw v22

    .line 462
    .end local v4           #checker:Ljava/security/DigestInputStream;
    .end local v6           #counter:Lorg/apache/commons/io/input/CountingInputStream;
    .end local v19           #zip:Ljava/util/zip/ZipInputStream;
    .restart local v5       #checker:Ljava/security/DigestInputStream;
    .restart local v7       #counter:Lorg/apache/commons/io/input/CountingInputStream;
    .restart local v10       #file:Ljava/io/File;
    .restart local v11       #filename:Ljava/lang/String;
    .restart local v16       #out:Ljava/io/FileOutputStream;
    .restart local v17       #outBuffered:Ljava/io/BufferedOutputStream;
    .restart local v18       #progressUpdater:Lcom/touchtype_fluency/util/HttpDownload$ProgressUpdater;
    .restart local v20       #zip:Ljava/util/zip/ZipInputStream;
    .restart local v21       #zipEntry:Ljava/util/zip/ZipEntry;
    :catchall_2
    move-exception v22

    .line 463
    :try_start_13
    invoke-static/range {v17 .. v17}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 464
    invoke-static/range {v16 .. v16}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 465
    throw v22
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 495
    .end local v5           #checker:Ljava/security/DigestInputStream;
    .end local v7           #counter:Lorg/apache/commons/io/input/CountingInputStream;
    .end local v10           #file:Ljava/io/File;
    .end local v11           #filename:Ljava/lang/String;
    .end local v16           #out:Ljava/io/FileOutputStream;
    .end local v17           #outBuffered:Ljava/io/BufferedOutputStream;
    .end local v18           #progressUpdater:Lcom/touchtype_fluency/util/HttpDownload$ProgressUpdater;
    .end local v20           #zip:Ljava/util/zip/ZipInputStream;
    .end local v21           #zipEntry:Ljava/util/zip/ZipEntry;
    .restart local v4       #checker:Ljava/security/DigestInputStream;
    .restart local v6       #counter:Lorg/apache/commons/io/input/CountingInputStream;
    .local v9, e:Ljava/security/NoSuchAlgorithmException;
    .restart local v19       #zip:Ljava/util/zip/ZipInputStream;
    :catch_2
    move-exception v9

    .line 498
    .local v9, e:Ljava/lang/NullPointerException;
    invoke-virtual {v9}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_4

    .line 495
    .end local v9           #e:Ljava/lang/NullPointerException;
    :catch_3
    move-exception v9

    .line 498
    .restart local v9       #e:Ljava/lang/NullPointerException;
    invoke-virtual {v9}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_7

    .line 502
    .end local v9           #e:Ljava/lang/NullPointerException;
    :cond_4
    throw v22

    .line 495
    .end local v4           #checker:Ljava/security/DigestInputStream;
    .end local v6           #counter:Lorg/apache/commons/io/input/CountingInputStream;
    .end local v19           #zip:Ljava/util/zip/ZipInputStream;
    .restart local v5       #checker:Ljava/security/DigestInputStream;
    .restart local v7       #counter:Lorg/apache/commons/io/input/CountingInputStream;
    .restart local v18       #progressUpdater:Lcom/touchtype_fluency/util/HttpDownload$ProgressUpdater;
    .restart local v20       #zip:Ljava/util/zip/ZipInputStream;
    .restart local v21       #zipEntry:Ljava/util/zip/ZipEntry;
    :catch_4
    move-exception v9

    .line 498
    .restart local v9       #e:Ljava/lang/NullPointerException;
    invoke-virtual {v9}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_2

    .end local v9           #e:Ljava/lang/NullPointerException;
    :cond_5
    move-object/from16 v19, v20

    .end local v20           #zip:Ljava/util/zip/ZipInputStream;
    .restart local v19       #zip:Ljava/util/zip/ZipInputStream;
    move-object v4, v5

    .end local v5           #checker:Ljava/security/DigestInputStream;
    .restart local v4       #checker:Ljava/security/DigestInputStream;
    move-object v6, v7

    .line 504
    .end local v7           #counter:Lorg/apache/commons/io/input/CountingInputStream;
    .end local v18           #progressUpdater:Lcom/touchtype_fluency/util/HttpDownload$ProgressUpdater;
    .end local v21           #zipEntry:Ljava/util/zip/ZipEntry;
    .restart local v6       #counter:Lorg/apache/commons/io/input/CountingInputStream;
    :cond_6
    invoke-virtual {v4}, Ljava/security/DigestInputStream;->getMessageDigest()Ljava/security/MessageDigest;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/touchtype_fluency/util/HttpDownload;->digestToString([B)Ljava/lang/String;

    move-result-object v8

    .line 505
    .local v8, digest:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_7

    .line 506
    new-instance v22, Ljava/security/DigestException;

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "Mismatching checksums: "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v6}, Lorg/apache/commons/io/input/CountingInputStream;->getCount()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/security/DigestException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 509
    :cond_7
    return-object v12

    .line 487
    .end local v8           #digest:Ljava/lang/String;
    .end local v13           #in:Ljava/io/BufferedInputStream;
    .restart local v14       #in:Ljava/io/BufferedInputStream;
    :catchall_3
    move-exception v22

    move-object v13, v14

    .end local v14           #in:Ljava/io/BufferedInputStream;
    .restart local v13       #in:Ljava/io/BufferedInputStream;
    goto/16 :goto_6

    .end local v6           #counter:Lorg/apache/commons/io/input/CountingInputStream;
    .restart local v7       #counter:Lorg/apache/commons/io/input/CountingInputStream;
    :catchall_4
    move-exception v22

    move-object v6, v7

    .end local v7           #counter:Lorg/apache/commons/io/input/CountingInputStream;
    .restart local v6       #counter:Lorg/apache/commons/io/input/CountingInputStream;
    goto/16 :goto_6

    .end local v4           #checker:Ljava/security/DigestInputStream;
    .end local v6           #counter:Lorg/apache/commons/io/input/CountingInputStream;
    .restart local v5       #checker:Ljava/security/DigestInputStream;
    .restart local v7       #counter:Lorg/apache/commons/io/input/CountingInputStream;
    :catchall_5
    move-exception v22

    move-object v4, v5

    .end local v5           #checker:Ljava/security/DigestInputStream;
    .restart local v4       #checker:Ljava/security/DigestInputStream;
    move-object v6, v7

    .end local v7           #counter:Lorg/apache/commons/io/input/CountingInputStream;
    .restart local v6       #counter:Lorg/apache/commons/io/input/CountingInputStream;
    goto/16 :goto_6

    .end local v4           #checker:Ljava/security/DigestInputStream;
    .end local v6           #counter:Lorg/apache/commons/io/input/CountingInputStream;
    .end local v19           #zip:Ljava/util/zip/ZipInputStream;
    .restart local v5       #checker:Ljava/security/DigestInputStream;
    .restart local v7       #counter:Lorg/apache/commons/io/input/CountingInputStream;
    .restart local v20       #zip:Ljava/util/zip/ZipInputStream;
    :catchall_6
    move-exception v22

    move-object/from16 v19, v20

    .end local v20           #zip:Ljava/util/zip/ZipInputStream;
    .restart local v19       #zip:Ljava/util/zip/ZipInputStream;
    move-object v4, v5

    .end local v5           #checker:Ljava/security/DigestInputStream;
    .restart local v4       #checker:Ljava/security/DigestInputStream;
    move-object v6, v7

    .end local v7           #counter:Lorg/apache/commons/io/input/CountingInputStream;
    .restart local v6       #counter:Lorg/apache/commons/io/input/CountingInputStream;
    goto/16 :goto_6

    .line 481
    :catch_5
    move-exception v9

    goto/16 :goto_5

    .end local v13           #in:Ljava/io/BufferedInputStream;
    .restart local v14       #in:Ljava/io/BufferedInputStream;
    :catch_6
    move-exception v9

    move-object v13, v14

    .end local v14           #in:Ljava/io/BufferedInputStream;
    .restart local v13       #in:Ljava/io/BufferedInputStream;
    goto/16 :goto_5

    .end local v6           #counter:Lorg/apache/commons/io/input/CountingInputStream;
    .restart local v7       #counter:Lorg/apache/commons/io/input/CountingInputStream;
    :catch_7
    move-exception v9

    move-object v6, v7

    .end local v7           #counter:Lorg/apache/commons/io/input/CountingInputStream;
    .restart local v6       #counter:Lorg/apache/commons/io/input/CountingInputStream;
    goto/16 :goto_5

    .end local v4           #checker:Ljava/security/DigestInputStream;
    .end local v6           #counter:Lorg/apache/commons/io/input/CountingInputStream;
    .restart local v5       #checker:Ljava/security/DigestInputStream;
    .restart local v7       #counter:Lorg/apache/commons/io/input/CountingInputStream;
    :catch_8
    move-exception v9

    move-object v4, v5

    .end local v5           #checker:Ljava/security/DigestInputStream;
    .restart local v4       #checker:Ljava/security/DigestInputStream;
    move-object v6, v7

    .end local v7           #counter:Lorg/apache/commons/io/input/CountingInputStream;
    .restart local v6       #counter:Lorg/apache/commons/io/input/CountingInputStream;
    goto/16 :goto_5

    .line 478
    :catch_9
    move-exception v9

    goto/16 :goto_3

    .end local v13           #in:Ljava/io/BufferedInputStream;
    .restart local v14       #in:Ljava/io/BufferedInputStream;
    :catch_a
    move-exception v9

    move-object v13, v14

    .end local v14           #in:Ljava/io/BufferedInputStream;
    .restart local v13       #in:Ljava/io/BufferedInputStream;
    goto/16 :goto_3

    .end local v6           #counter:Lorg/apache/commons/io/input/CountingInputStream;
    .restart local v7       #counter:Lorg/apache/commons/io/input/CountingInputStream;
    :catch_b
    move-exception v9

    move-object v6, v7

    .end local v7           #counter:Lorg/apache/commons/io/input/CountingInputStream;
    .restart local v6       #counter:Lorg/apache/commons/io/input/CountingInputStream;
    goto/16 :goto_3

    .end local v4           #checker:Ljava/security/DigestInputStream;
    .end local v6           #counter:Lorg/apache/commons/io/input/CountingInputStream;
    .restart local v5       #checker:Ljava/security/DigestInputStream;
    .restart local v7       #counter:Lorg/apache/commons/io/input/CountingInputStream;
    :catch_c
    move-exception v9

    move-object v4, v5

    .end local v5           #checker:Ljava/security/DigestInputStream;
    .restart local v4       #checker:Ljava/security/DigestInputStream;
    move-object v6, v7

    .end local v7           #counter:Lorg/apache/commons/io/input/CountingInputStream;
    .restart local v6       #counter:Lorg/apache/commons/io/input/CountingInputStream;
    goto/16 :goto_3
.end method

.method public interrupt()V
    .locals 1

    .prologue
    .line 519
    invoke-direct {p0}, Lcom/touchtype_fluency/util/HttpDownload;->disconnect()V

    .line 520
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/touchtype_fluency/util/HttpDownload;->interrupted:Z

    .line 521
    return-void
.end method

.method public isInterrupted()Z
    .locals 1

    .prologue
    .line 535
    iget-boolean v0, p0, Lcom/touchtype_fluency/util/HttpDownload;->interrupted:Z

    return v0
.end method
