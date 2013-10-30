.class public Lorg/eclipse/paho/client/mqttv3/MqttDefaultFilePersistence;
.super Ljava/lang/Object;
.source "MqttDefaultFilePersistence.java"

# interfaces
.implements Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;


# static fields
.field private static final FILE_FILTER:Ljava/io/FilenameFilter; = null

.field private static final LOCK_FILENAME:Ljava/lang/String; = ".lck"

.field private static final MESSAGE_BACKUP_FILE_EXTENSION:Ljava/lang/String; = ".bup"

.field private static final MESSAGE_FILE_EXTENSION:Ljava/lang/String; = ".msg"


# instance fields
.field private clientDir:Ljava/io/File;

.field private dataDir:Ljava/io/File;

.field private fileLock:Lorg/eclipse/paho/client/mqttv3/internal/FileLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/MqttDefaultFilePersistence$1;

    invoke-direct {v0}, Lorg/eclipse/paho/client/mqttv3/MqttDefaultFilePersistence$1;-><init>()V

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/MqttDefaultFilePersistence;->FILE_FILTER:Ljava/io/FilenameFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;
        }
    .end annotation

    .prologue
    .line 53
    const-string v0, "user.dir"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/eclipse/paho/client/mqttv3/MqttDefaultFilePersistence;-><init>(Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "directory"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttDefaultFilePersistence;->clientDir:Ljava/io/File;

    .line 43
    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttDefaultFilePersistence;->fileLock:Lorg/eclipse/paho/client/mqttv3/internal/FileLock;

    .line 61
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttDefaultFilePersistence;->dataDir:Ljava/io/File;

    .line 62
    return-void
.end method

.method private checkIsOpen()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttDefaultFilePersistence;->clientDir:Ljava/io/File;

    if-nez v0, :cond_0

    .line 121
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;

    invoke-direct {v0}, Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;-><init>()V

    throw v0

    .line 123
    :cond_0
    return-void
.end method

.method private getFiles()[Ljava/io/File;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;
        }
    .end annotation

    .prologue
    .line 240
    invoke-direct {p0}, Lorg/eclipse/paho/client/mqttv3/MqttDefaultFilePersistence;->checkIsOpen()V

    .line 241
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/MqttDefaultFilePersistence;->clientDir:Ljava/io/File;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/MqttDefaultFilePersistence;->FILE_FILTER:Ljava/io/FilenameFilter;

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .line 242
    .local v0, files:[Ljava/io/File;
    if-nez v0, :cond_0

    .line 243
    new-instance v1, Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;

    invoke-direct {v1}, Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;-><init>()V

    throw v1

    .line 245
    :cond_0
    return-object v0
.end method

.method private isSafeChar(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 249
    invoke-static {p1}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x2d

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private restoreBackups(Ljava/io/File;)V
    .locals 8
    .parameter "dir"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;
        }
    .end annotation

    .prologue
    .line 260
    new-instance v4, Lorg/eclipse/paho/client/mqttv3/MqttDefaultFilePersistence$2;

    invoke-direct {v4, p0}, Lorg/eclipse/paho/client/mqttv3/MqttDefaultFilePersistence$2;-><init>(Lorg/eclipse/paho/client/mqttv3/MqttDefaultFilePersistence;)V

    invoke-virtual {p1, v4}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    .line 265
    .local v0, files:[Ljava/io/File;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_1

    .line 266
    new-instance v2, Ljava/io/File;

    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v6, v0, v1

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const-string v7, ".bup"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 267
    .local v2, originalFile:Ljava/io/File;
    aget-object v4, v0, v1

    invoke-virtual {v4, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    .line 268
    .local v3, result:Z
    if-nez v3, :cond_0

    .line 269
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 270
    aget-object v4, v0, v1

    invoke-virtual {v4, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 265
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 274
    .end local v2           #originalFile:Ljava/io/File;
    .end local v3           #result:Z
    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;
        }
    .end annotation

    .prologue
    .line 283
    invoke-direct {p0}, Lorg/eclipse/paho/client/mqttv3/MqttDefaultFilePersistence;->checkIsOpen()V

    .line 284
    invoke-direct {p0}, Lorg/eclipse/paho/client/mqttv3/MqttDefaultFilePersistence;->getFiles()[Ljava/io/File;

    move-result-object v0

    .line 285
    .local v0, files:[Ljava/io/File;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 286
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 285
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 288
    :cond_0
    return-void
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;
        }
    .end annotation

    .prologue
    .line 126
    invoke-direct {p0}, Lorg/eclipse/paho/client/mqttv3/MqttDefaultFilePersistence;->checkIsOpen()V

    .line 127
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/MqttDefaultFilePersistence;->fileLock:Lorg/eclipse/paho/client/mqttv3/internal/FileLock;

    if-eqz v1, :cond_0

    .line 128
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/MqttDefaultFilePersistence;->fileLock:Lorg/eclipse/paho/client/mqttv3/internal/FileLock;

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/internal/FileLock;->release()V

    .line 129
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/MqttDefaultFilePersistence;->clientDir:Ljava/io/File;

    const-string v2, ".lck"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 130
    .local v0, lockFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 136
    .end local v0           #lockFile:Ljava/io/File;
    :cond_0
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/MqttDefaultFilePersistence;->clientDir:Ljava/io/File;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/MqttDefaultFilePersistence;->FILE_FILTER:Ljava/io/FilenameFilter;

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_1

    .line 137
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/MqttDefaultFilePersistence;->clientDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 139
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/MqttDefaultFilePersistence;->clientDir:Ljava/io/File;

    .line 140
    return-void
.end method

.method public containsKey(Ljava/lang/String;)Z
    .locals 4
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;
        }
    .end annotation

    .prologue
    .line 277
    invoke-direct {p0}, Lorg/eclipse/paho/client/mqttv3/MqttDefaultFilePersistence;->checkIsOpen()V

    .line 278
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/MqttDefaultFilePersistence;->clientDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".msg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 279
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public get(Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/MqttPersistable;
    .locals 13
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;
        }
    .end annotation

    .prologue
    .line 190
    invoke-direct {p0}, Lorg/eclipse/paho/client/mqttv3/MqttDefaultFilePersistence;->checkIsOpen()V

    .line 193
    :try_start_0
    new-instance v9, Ljava/io/File;

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/MqttDefaultFilePersistence;->clientDir:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".msg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v9, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 194
    .local v9, file:Ljava/io/File;
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 195
    .local v10, fis:Ljava/io/FileInputStream;
    invoke-virtual {v10}, Ljava/io/FileInputStream;->available()I

    move-result v12

    .line 196
    .local v12, size:I
    new-array v2, v12, [B

    .line 197
    .local v2, data:[B
    const/4 v11, 0x0

    .line 198
    .local v11, read:I
    :goto_0
    if-ge v11, v12, :cond_0

    .line 199
    sub-int v1, v12, v11

    invoke-virtual {v10, v2, v11, v1}, Ljava/io/FileInputStream;->read([BII)I

    move-result v1

    add-int/2addr v11, v1

    goto :goto_0

    .line 201
    :cond_0
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V

    .line 202
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/internal/MqttPersistentData;

    const/4 v3, 0x0

    array-length v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lorg/eclipse/paho/client/mqttv3/internal/MqttPersistentData;-><init>(Ljava/lang/String;[BII[BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    .local v0, result:Lorg/eclipse/paho/client/mqttv3/MqttPersistable;
    return-object v0

    .line 204
    .end local v0           #result:Lorg/eclipse/paho/client/mqttv3/MqttPersistable;
    .end local v2           #data:[B
    .end local v9           #file:Ljava/io/File;
    .end local v10           #fis:Ljava/io/FileInputStream;
    .end local v11           #read:I
    .end local v12           #size:I
    :catch_0
    move-exception v8

    .line 205
    .local v8, ex:Ljava/io/IOException;
    new-instance v1, Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;

    invoke-direct {v1, v8}, Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public keys()Ljava/util/Enumeration;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;
        }
    .end annotation

    .prologue
    .line 228
    invoke-direct {p0}, Lorg/eclipse/paho/client/mqttv3/MqttDefaultFilePersistence;->checkIsOpen()V

    .line 229
    invoke-direct {p0}, Lorg/eclipse/paho/client/mqttv3/MqttDefaultFilePersistence;->getFiles()[Ljava/io/File;

    move-result-object v1

    .line 230
    .local v1, files:[Ljava/io/File;
    new-instance v4, Ljava/util/Vector;

    array-length v5, v1

    invoke-direct {v4, v5}, Ljava/util/Vector;-><init>(I)V

    .line 231
    .local v4, result:Ljava/util/Vector;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v5, v1

    if-ge v2, v5, :cond_0

    .line 232
    aget-object v5, v1, v2

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, filename:Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    const-string v7, ".msg"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 234
    .local v3, key:Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 231
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 236
    .end local v0           #filename:Ljava/lang/String;
    .end local v3           #key:Ljava/lang/String;
    :cond_0
    invoke-virtual {v4}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v5

    return-object v5
.end method

.method public open(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "clientId"
    .parameter "theConnection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;
        }
    .end annotation

    .prologue
    .line 66
    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/MqttDefaultFilePersistence;->dataDir:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/MqttDefaultFilePersistence;->dataDir:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_0

    .line 67
    new-instance v5, Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;

    invoke-direct {v5}, Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;-><init>()V

    throw v5

    .line 68
    :cond_0
    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/MqttDefaultFilePersistence;->dataDir:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 69
    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/MqttDefaultFilePersistence;->dataDir:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_2

    .line 70
    new-instance v5, Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;

    invoke-direct {v5}, Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;-><init>()V

    throw v5

    .line 73
    :cond_1
    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/MqttDefaultFilePersistence;->dataDir:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->canWrite()Z

    move-result v5

    if-nez v5, :cond_2

    .line 74
    new-instance v5, Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;

    invoke-direct {v5}, Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;-><init>()V

    throw v5

    .line 79
    :cond_2
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 80
    .local v4, keyBuffer:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 81
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 82
    .local v0, c:C
    invoke-direct {p0, v0}, Lorg/eclipse/paho/client/mqttv3/MqttDefaultFilePersistence;->isSafeChar(C)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 83
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 80
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 86
    .end local v0           #c:C
    :cond_4
    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_6

    .line 88
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 89
    .restart local v0       #c:C
    invoke-direct {p0, v0}, Lorg/eclipse/paho/client/mqttv3/MqttDefaultFilePersistence;->isSafeChar(C)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 90
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 87
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 93
    .end local v0           #c:C
    :cond_6
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 95
    .local v3, key:Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lorg/eclipse/paho/client/mqttv3/MqttDefaultFilePersistence;->dataDir:Ljava/io/File;

    invoke-direct {v5, v6, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v5, p0, Lorg/eclipse/paho/client/mqttv3/MqttDefaultFilePersistence;->clientDir:Ljava/io/File;

    .line 97
    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/MqttDefaultFilePersistence;->clientDir:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_7

    .line 98
    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/MqttDefaultFilePersistence;->clientDir:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->mkdir()Z

    .line 103
    :cond_7
    :try_start_0
    new-instance v5, Lorg/eclipse/paho/client/mqttv3/internal/FileLock;

    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lorg/eclipse/paho/client/mqttv3/MqttDefaultFilePersistence;->clientDir:Ljava/io/File;

    const-string v8, ".lck"

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Lorg/eclipse/paho/client/mqttv3/internal/FileLock;-><init>(Ljava/io/File;)V

    iput-object v5, p0, Lorg/eclipse/paho/client/mqttv3/MqttDefaultFilePersistence;->fileLock:Lorg/eclipse/paho/client/mqttv3/internal/FileLock;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/MqttDefaultFilePersistence;->clientDir:Ljava/io/File;

    invoke-direct {p0, v5}, Lorg/eclipse/paho/client/mqttv3/MqttDefaultFilePersistence;->restoreBackups(Ljava/io/File;)V

    .line 113
    return-void

    .line 104
    :catch_0
    move-exception v1

    .line 105
    .local v1, e:Ljava/lang/Exception;
    new-instance v5, Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;

    const/16 v6, 0x7dc8

    invoke-direct {v5, v6}, Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;-><init>(I)V

    throw v5
.end method

.method public put(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttPersistable;)V
    .locals 8
    .parameter "key"
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;
        }
    .end annotation

    .prologue
    .line 149
    invoke-direct {p0}, Lorg/eclipse/paho/client/mqttv3/MqttDefaultFilePersistence;->checkIsOpen()V

    .line 150
    new-instance v2, Ljava/io/File;

    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/MqttDefaultFilePersistence;->clientDir:Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".msg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 151
    .local v2, file:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/MqttDefaultFilePersistence;->clientDir:Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".msg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".bup"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 153
    .local v0, backupFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 155
    invoke-virtual {v2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    .line 156
    .local v4, result:Z
    if-nez v4, :cond_0

    .line 157
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 158
    invoke-virtual {v2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 162
    .end local v4           #result:Z
    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 163
    .local v3, fos:Ljava/io/FileOutputStream;
    invoke-interface {p2}, Lorg/eclipse/paho/client/mqttv3/MqttPersistable;->getHeaderBytes()[B

    move-result-object v5

    invoke-interface {p2}, Lorg/eclipse/paho/client/mqttv3/MqttPersistable;->getHeaderOffset()I

    move-result v6

    invoke-interface {p2}, Lorg/eclipse/paho/client/mqttv3/MqttPersistable;->getHeaderLength()I

    move-result v7

    invoke-virtual {v3, v5, v6, v7}, Ljava/io/FileOutputStream;->write([BII)V

    .line 164
    invoke-interface {p2}, Lorg/eclipse/paho/client/mqttv3/MqttPersistable;->getPayloadBytes()[B

    move-result-object v5

    if-eqz v5, :cond_1

    .line 165
    invoke-interface {p2}, Lorg/eclipse/paho/client/mqttv3/MqttPersistable;->getPayloadBytes()[B

    move-result-object v5

    invoke-interface {p2}, Lorg/eclipse/paho/client/mqttv3/MqttPersistable;->getPayloadOffset()I

    move-result v6

    invoke-interface {p2}, Lorg/eclipse/paho/client/mqttv3/MqttPersistable;->getPayloadLength()I

    move-result v7

    invoke-virtual {v3, v5, v6, v7}, Ljava/io/FileOutputStream;->write([BII)V

    .line 167
    :cond_1
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/FileDescriptor;->sync()V

    .line 168
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 169
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 171
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 180
    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    .line 181
    .restart local v4       #result:Z
    if-nez v4, :cond_3

    .line 182
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 183
    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 187
    .end local v4           #result:Z
    :cond_3
    return-void

    .line 174
    .end local v3           #fos:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 175
    .local v1, ex:Ljava/io/IOException;
    :try_start_1
    new-instance v5, Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;

    invoke-direct {v5, v1}, Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    .end local v1           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 180
    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    .line 181
    .restart local v4       #result:Z
    if-nez v4, :cond_4

    .line 182
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 183
    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 185
    .end local v4           #result:Z
    :cond_4
    throw v5
.end method

.method public remove(Ljava/lang/String;)V
    .locals 4
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;
        }
    .end annotation

    .prologue
    .line 215
    invoke-direct {p0}, Lorg/eclipse/paho/client/mqttv3/MqttDefaultFilePersistence;->checkIsOpen()V

    .line 216
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/MqttDefaultFilePersistence;->clientDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".msg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 217
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 218
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 220
    :cond_0
    return-void
.end method
