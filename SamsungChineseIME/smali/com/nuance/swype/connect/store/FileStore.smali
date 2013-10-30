.class public Lcom/nuance/swype/connect/store/FileStore;
.super Ljava/lang/Object;
.source "FileStore.java"

# interfaces
.implements Lcom/nuance/swype/connect/store/PersistentDataStore;


# static fields
.field private static final PREFS_DIR:Ljava/lang/String; = "prefs"

.field private static final PREF_FILE_EXTENSION:Ljava/lang/String; = ".dat"


# instance fields
.field private ctx:Landroid/content/Context;

.field private final obfuscatedFileNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "ctx"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/connect/store/FileStore;->obfuscatedFileNames:Ljava/util/Map;

    .line 44
    iput-object p1, p0, Lcom/nuance/swype/connect/store/FileStore;->ctx:Landroid/content/Context;

    .line 45
    return-void
.end method

.method private getObfuscatedFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "key"

    .prologue
    .line 94
    iget-object v1, p0, Lcom/nuance/swype/connect/store/FileStore;->obfuscatedFileNames:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/nuance/swype/connect/store/FileStore;->obfuscatedFileNames:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 100
    :goto_0
    return-object v1

    .line 97
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/connect/util/EncryptUtils;->md5([B)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, obfuscated:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".dat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 99
    iget-object v1, p0, Lcom/nuance/swype/connect/store/FileStore;->obfuscatedFileNames:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 100
    goto :goto_0
.end method

.method private getPrefFile(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .parameter "key"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/nuance/swype/connect/store/FileStore;->getPrefsDir()Ljava/io/File;

    move-result-object v0

    .line 80
    .local v0, dataDir:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/store/FileStore;->getObfuscatedFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 81
    .local v1, f:Ljava/io/File;
    return-object v1
.end method

.method private getPrefsDir()Ljava/io/File;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 54
    iget-object v3, p0, Lcom/nuance/swype/connect/store/FileStore;->ctx:Landroid/content/Context;

    if-nez v3, :cond_1

    move-object v0, v2

    .line 66
    :cond_0
    :goto_0
    return-object v0

    .line 57
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/nuance/swype/connect/store/FileStore;->ctx:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "prefs"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 58
    .local v0, dataDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 59
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    .line 61
    .local v1, makeDirectory:Z
    if-nez v1, :cond_0

    .line 62
    const-string v3, "Unable to create prefs directory when it was missing"

    invoke-static {v3}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    move-object v0, v2

    .line 63
    goto :goto_0
.end method


# virtual methods
.method public clear()Z
    .locals 1

    .prologue
    .line 259
    const/4 v0, 0x0

    return v0
.end method

.method public delete(Ljava/lang/String;)Z
    .locals 2
    .parameter "key"

    .prologue
    .line 250
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/store/FileStore;->getPrefFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 252
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 253
    const/4 v1, 0x1

    .line 255
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    goto :goto_0
.end method

.method public exists(Ljava/lang/String;)Z
    .locals 2
    .parameter "key"

    .prologue
    .line 242
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/store/FileStore;->getPrefFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 243
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 244
    const/4 v1, 0x1

    .line 246
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public readBoolean(Ljava/lang/String;Z)Z
    .locals 3
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 218
    move v0, p2

    .line 219
    .local v0, result:Z
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/nuance/swype/connect/store/FileStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 220
    .local v1, stringValue:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 224
    .end local p2
    :goto_0
    return p2

    .line 223
    .restart local p2
    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    move p2, v0

    .line 224
    goto :goto_0
.end method

.method public readInt(Ljava/lang/String;I)I
    .locals 3
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 188
    move v0, p2

    .line 189
    .local v0, result:I
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/nuance/swype/connect/store/FileStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 191
    .local v1, stringValue:Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 195
    :goto_0
    return v0

    .line 192
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public readLong(Ljava/lang/String;J)J
    .locals 4
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 203
    move-wide v0, p2

    .line 204
    .local v0, result:J
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3}, Lcom/nuance/swype/connect/store/FileStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 206
    .local v2, stringValue:Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 210
    :goto_0
    return-wide v0

    .line 207
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public readObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "key"

    .prologue
    .line 233
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/swype/connect/store/FileStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Data;->unserializeObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 107
    move-object/from16 v9, p2

    .line 108
    .local v9, result:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/store/FileStore;->getPrefFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 109
    .local v5, f:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_0

    move-object v10, v9

    .line 143
    .end local v9           #result:Ljava/lang/String;
    .local v10, result:Ljava/lang/String;
    :goto_0
    return-object v10

    .line 113
    .end local v10           #result:Ljava/lang/String;
    .restart local v9       #result:Ljava/lang/String;
    :cond_0
    const/4 v6, 0x0

    .line 114
    .local v6, fis:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 115
    .local v11, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 117
    .local v1, bis:Ljava/io/BufferedInputStream;
    :try_start_1
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 118
    .end local v6           #fis:Ljava/io/FileInputStream;
    .local v7, fis:Ljava/io/FileInputStream;
    :try_start_2
    new-instance v2, Ljava/io/BufferedInputStream;

    const/16 v12, 0x1000

    invoke-direct {v2, v7, v12}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 119
    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .local v2, bis:Ljava/io/BufferedInputStream;
    const/4 v3, 0x0

    .line 120
    .local v3, bytesRead:I
    const/16 v12, 0x1000

    :try_start_3
    new-array v0, v12, [B

    .line 121
    .local v0, b:[B
    :goto_1
    invoke-virtual {v2, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v3

    const/4 v12, -0x1

    if-eq v3, v12, :cond_1

    .line 122
    new-instance v12, Ljava/lang/String;

    const/4 v13, 0x0

    invoke-direct {v12, v0, v13, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 132
    .end local v0           #b:[B
    :catchall_0
    move-exception v12

    move-object v1, v2

    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    move-object v6, v7

    .end local v3           #bytesRead:I
    .end local v7           #fis:Ljava/io/FileInputStream;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    :goto_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 133
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    throw v12
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 135
    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .end local v11           #sb:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v4

    .line 136
    .local v4, e:Ljava/io/FileNotFoundException;
    :goto_3
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "readStringPreference() Exception reading file. "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    .end local v4           #e:Ljava/io/FileNotFoundException;
    .end local v6           #fis:Ljava/io/FileInputStream;
    :goto_4
    move-object v10, v9

    .line 143
    .end local v9           #result:Ljava/lang/String;
    .restart local v10       #result:Ljava/lang/String;
    goto :goto_0

    .line 124
    .end local v10           #result:Ljava/lang/String;
    .restart local v0       #b:[B
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    .restart local v3       #bytesRead:I
    .restart local v7       #fis:Ljava/io/FileInputStream;
    .restart local v9       #result:Ljava/lang/String;
    .restart local v11       #sb:Ljava/lang/StringBuilder;
    :cond_1
    :try_start_5
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 125
    if-eqz v9, :cond_2

    .line 126
    invoke-static {v9}, Lcom/nuance/swype/connect/util/EncryptUtils;->decryptString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v9

    .line 128
    :cond_2
    if-nez v9, :cond_3

    .line 129
    move-object/from16 v9, p2

    .line 132
    :cond_3
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 133
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_4

    .line 135
    :catch_1
    move-exception v4

    move-object v6, v7

    .end local v7           #fis:Ljava/io/FileInputStream;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    goto :goto_3

    .line 138
    .end local v0           #b:[B
    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .end local v3           #bytesRead:I
    .end local v11           #sb:Ljava/lang/StringBuilder;
    :catch_2
    move-exception v8

    .line 139
    .local v8, io:Ljava/io/IOException;
    :goto_5
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "readStringPreference() Exception reading file. "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    goto :goto_4

    .line 138
    .end local v6           #fis:Ljava/io/FileInputStream;
    .end local v8           #io:Ljava/io/IOException;
    .restart local v0       #b:[B
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    .restart local v3       #bytesRead:I
    .restart local v7       #fis:Ljava/io/FileInputStream;
    .restart local v11       #sb:Ljava/lang/StringBuilder;
    :catch_3
    move-exception v8

    move-object v6, v7

    .end local v7           #fis:Ljava/io/FileInputStream;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    goto :goto_5

    .line 132
    .end local v0           #b:[B
    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .end local v3           #bytesRead:I
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    :catchall_1
    move-exception v12

    goto :goto_2

    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v7       #fis:Ljava/io/FileInputStream;
    :catchall_2
    move-exception v12

    move-object v6, v7

    .end local v7           #fis:Ljava/io/FileInputStream;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public saveBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 229
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/swype/connect/store/FileStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public saveInt(Ljava/lang/String;I)Z
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 199
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/swype/connect/store/FileStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public saveLong(Ljava/lang/String;J)Z
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 214
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/swype/connect/store/FileStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public saveObject(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2
    .parameter "key"
    .parameter "obj"

    .prologue
    .line 237
    invoke-static {p2}, Lcom/nuance/swype/connect/util/Data;->serializeObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, value:Ljava/lang/String;
    invoke-virtual {p0, p1, v0}, Lcom/nuance/swype/connect/store/FileStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public saveString(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .parameter "key"
    .parameter "value"

    .prologue
    .line 147
    const/4 v7, 0x0

    .line 148
    .local v7, success:Z
    if-nez p2, :cond_0

    move v8, v7

    .line 184
    :goto_0
    return v8

    .line 153
    :cond_0
    invoke-static {p2}, Lcom/nuance/swype/connect/util/EncryptUtils;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 155
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/store/FileStore;->getPrefFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 156
    .local v2, f:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 158
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :cond_1
    const/4 v3, 0x0

    .line 166
    .local v3, fos:Ljava/io/FileOutputStream;
    const/4 v6, 0x0

    .line 167
    .local v6, lock:Ljava/nio/channels/FileLock;
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    .line 169
    .local v0, buffer:[B
    :try_start_2
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 170
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .local v4, fos:Ljava/io/FileOutputStream;
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v8

    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v6

    .line 171
    invoke-virtual {v4, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 172
    invoke-virtual {v6}, Ljava/nio/channels/FileLock;->release()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 173
    const/4 v7, 0x1

    .line 175
    :try_start_4
    invoke-virtual {v6}, Ljava/nio/channels/FileLock;->release()V

    .line 176
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .end local v0           #buffer:[B
    .end local v4           #fos:Ljava/io/FileOutputStream;
    :goto_1
    move v8, v7

    .line 184
    goto :goto_0

    .line 159
    .end local v6           #lock:Ljava/nio/channels/FileLock;
    :catch_0
    move-exception v1

    .line 160
    .local v1, e:Ljava/io/IOException;
    const/4 v8, 0x0

    goto :goto_0

    .line 175
    .end local v1           #e:Ljava/io/IOException;
    .restart local v0       #buffer:[B
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    .restart local v6       #lock:Ljava/nio/channels/FileLock;
    :catchall_0
    move-exception v8

    :goto_2
    :try_start_5
    invoke-virtual {v6}, Ljava/nio/channels/FileLock;->release()V

    .line 176
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    throw v8
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 178
    .end local v0           #buffer:[B
    :catch_1
    move-exception v1

    .line 179
    .local v1, e:Ljava/io/FileNotFoundException;
    :goto_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "saveString() Exception reading file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 180
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v5

    .line 181
    .local v5, io:Ljava/io/IOException;
    :goto_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "saveString() Exception reading file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 180
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .end local v5           #io:Ljava/io/IOException;
    .restart local v0       #buffer:[B
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v5

    move-object v3, v4

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    goto :goto_4

    .line 178
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v1

    move-object v3, v4

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 175
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v8

    move-object v3, v4

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    goto :goto_2
.end method
