.class Lcom/nuance/connect/language/KLLdbInfo;
.super Ljava/lang/Object;
.source "KLLdbInfo.java"


# static fields
.field private static final ALPHA_CORE:I = 0x2

.field private static final CHINESE_CORE:I = 0xa

.field private static final ET9LDBOFFSET_BODY:I = 0x41

.field private static final ET9LDBOFFSET_CHUNK_COUNT_BYTE:I = 0x23

.field private static final ET9LDBOFFSET_CONTENTSMAJORVER:I = 0x35

.field private static final ET9LDBOFFSET_DATABASETYPE:I = 0x21

.field private static final ET9LDBOFFSET_LDBLAYOUTVER:I = 0x20

.field private static final ET9LDBOFFSET_PRIMARYLANGID:I = 0x39

.field private static final ET9LDBOFFSET_SECONDARYLANGID:I = 0x3a

.field private static final ET9NGRAM_CHUNK_ID:I = 0x5

.field private static final ET9_CP_CONTENT_VER_OFFSET:I = 0x2a

.field private static final ET9_CP_LANGUAGE_ID_OFFSET:I = 0x28


# instance fields
.field private isALM:Ljava/lang/Boolean;

.field private langId:I

.field private version:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/Boolean;I)V
    .locals 2
    .parameter "version"
    .parameter "isALM"
    .parameter "langId"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KLLdbInfo version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isALM="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " langId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 19
    iput-object p1, p0, Lcom/nuance/connect/language/KLLdbInfo;->version:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/nuance/connect/language/KLLdbInfo;->isALM:Ljava/lang/Boolean;

    .line 21
    iput p3, p0, Lcom/nuance/connect/language/KLLdbInfo;->langId:I

    .line 22
    return-void
.end method

.method private static getChunkCount(Ljava/io/RandomAccessFile;)I
    .locals 4
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 62
    const/16 v3, 0x20

    invoke-static {p0, v3}, Lcom/nuance/connect/language/KLLdbInfo;->getValueAtPosition(Ljava/io/RandomAccessFile;I)I

    move-result v1

    .line 63
    .local v1, version:I
    if-le v1, v2, :cond_1

    .line 64
    const/16 v3, 0x23

    invoke-static {p0, v3}, Lcom/nuance/connect/language/KLLdbInfo;->getValueAtPosition(Ljava/io/RandomAccessFile;I)I

    move-result v0

    .line 65
    .local v0, chunkCt:I
    if-le v0, v2, :cond_1

    .line 66
    const/4 v2, 0x3

    if-gt v1, v2, :cond_0

    .line 67
    shr-int/lit8 v0, v0, 0x2

    .line 73
    .end local v0           #chunkCt:I
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method private static getLDBEndAddress(Ljava/io/RandomAccessFile;)I
    .locals 8
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    const/4 v4, 0x0

    .line 78
    .local v4, retAddress:I
    const/4 v0, 0x0

    .line 79
    .local v0, bPosCt:B
    const/4 v2, 0x0

    .line 80
    .local v2, iSymDecodeCtByte:I
    const/4 v5, 0x0

    .line 81
    .local v5, wSymDecCt:S
    const/4 v1, 0x0

    .line 83
    .local v1, iLastIntervalOffset:I
    const/4 v3, 0x0

    .line 85
    .local v3, readValue:I
    const/16 v6, 0x41

    invoke-static {p0, v6}, Lcom/nuance/connect/language/KLLdbInfo;->getValueAtPosition(Ljava/io/RandomAccessFile;I)I

    move-result v3

    .line 86
    int-to-byte v0, v3

    .line 87
    mul-int/lit8 v6, v0, 0x4

    add-int/lit8 v6, v6, 0x41

    add-int/lit8 v2, v6, 0x1

    .line 89
    invoke-static {p0, v2}, Lcom/nuance/connect/language/KLLdbInfo;->getValueAtPosition(Ljava/io/RandomAccessFile;I)I

    move-result v6

    shl-int/lit8 v6, v6, 0x8

    const v7, 0xff00

    and-int/2addr v6, v7

    add-int/lit8 v7, v2, 0x1

    invoke-static {p0, v7}, Lcom/nuance/connect/language/KLLdbInfo;->getValueAtPosition(Ljava/io/RandomAccessFile;I)I

    move-result v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v6, v7

    int-to-short v5, v6

    .line 92
    add-int/lit8 v6, v5, 0x1

    add-int/lit16 v6, v6, 0xff

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v2

    mul-int/lit8 v7, v0, 0x3

    add-int v1, v6, v7

    .line 94
    invoke-static {p0, v1}, Lcom/nuance/connect/language/KLLdbInfo;->getValueAtPosition(Ljava/io/RandomAccessFile;I)I

    move-result v6

    shl-int/lit8 v6, v6, 0x10

    add-int/lit8 v7, v1, 0x1

    invoke-static {p0, v7}, Lcom/nuance/connect/language/KLLdbInfo;->getValueAtPosition(Ljava/io/RandomAccessFile;I)I

    move-result v7

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    add-int/lit8 v7, v1, 0x2

    invoke-static {p0, v7}, Lcom/nuance/connect/language/KLLdbInfo;->getValueAtPosition(Ljava/io/RandomAccessFile;I)I

    move-result v7

    or-int v4, v6, v7

    .line 98
    add-int/lit8 v6, v4, -0x1

    return v6
.end method

.method private static getValueAtPosition(Ljava/io/RandomAccessFile;I)I
    .locals 2
    .parameter "file"
    .parameter "position"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 58
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    return v0
.end method

.method private static isALM(Ljava/io/RandomAccessFile;)Z
    .locals 8
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    invoke-static {p0}, Lcom/nuance/connect/language/KLLdbInfo;->getLDBEndAddress(Ljava/io/RandomAccessFile;)I

    move-result v1

    .line 103
    .local v1, currReadAddress:I
    invoke-static {p0}, Lcom/nuance/connect/language/KLLdbInfo;->getChunkCount(Ljava/io/RandomAccessFile;)I

    move-result v0

    .line 104
    .local v0, chunkCt:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 105
    add-int/lit8 v1, v1, 0x1

    move v4, v1

    .line 107
    .local v4, startChunkAddress:I
    const/4 v5, 0x5

    invoke-static {p0, v4}, Lcom/nuance/connect/language/KLLdbInfo;->getValueAtPosition(Ljava/io/RandomAccessFile;I)I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 108
    const/4 v5, 0x1

    .line 118
    .end local v4           #startChunkAddress:I
    :goto_1
    return v5

    .line 111
    .restart local v4       #startChunkAddress:I
    :cond_0
    add-int/lit8 v5, v4, -0x1

    add-int/lit8 v6, v4, 0x1

    invoke-static {p0, v6}, Lcom/nuance/connect/language/KLLdbInfo;->getValueAtPosition(Ljava/io/RandomAccessFile;I)I

    move-result v6

    shl-int/lit8 v6, v6, 0x10

    add-int/lit8 v7, v4, 0x2

    invoke-static {p0, v7}, Lcom/nuance/connect/language/KLLdbInfo;->getValueAtPosition(Ljava/io/RandomAccessFile;I)I

    move-result v7

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    add-int/lit8 v7, v4, 0x3

    invoke-static {p0, v7}, Lcom/nuance/connect/language/KLLdbInfo;->getValueAtPosition(Ljava/io/RandomAccessFile;I)I

    move-result v7

    or-int/2addr v6, v7

    add-int v2, v5, v6

    .line 116
    .local v2, endChunkAddress:I
    move v1, v2

    .line 104
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 118
    .end local v2           #endChunkAddress:I
    .end local v4           #startChunkAddress:I
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public static load(Ljava/lang/String;)Lcom/nuance/connect/language/KLLdbInfo;
    .locals 12
    .parameter "path"

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 130
    const/4 v2, 0x0

    .line 132
    .local v2, ldbFile:Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 133
    .local v7, version:Ljava/lang/StringBuffer;
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v10, "r"

    invoke-direct {v3, p0, v10}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 134
    .end local v2           #ldbFile:Ljava/io/RandomAccessFile;
    .local v3, ldbFile:Ljava/io/RandomAccessFile;
    const/16 v10, 0x21

    :try_start_1
    invoke-static {v3, v10}, Lcom/nuance/connect/language/KLLdbInfo;->getValueAtPosition(Ljava/io/RandomAccessFile;I)I

    move-result v6

    .line 135
    .local v6, type:I
    sparse-switch v6, :sswitch_data_0

    .line 180
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown LDB type: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8

    .line 188
    if-eqz v3, :cond_a

    .line 190
    :try_start_2
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v2, v3

    .end local v3           #ldbFile:Ljava/io/RandomAccessFile;
    .end local v6           #type:I
    .end local v7           #version:Ljava/lang/StringBuffer;
    .restart local v2       #ldbFile:Ljava/io/RandomAccessFile;
    :cond_0
    :goto_0
    move-object v8, v9

    .line 196
    :goto_1
    return-object v8

    .line 137
    .end local v2           #ldbFile:Ljava/io/RandomAccessFile;
    .restart local v3       #ldbFile:Ljava/io/RandomAccessFile;
    .restart local v6       #type:I
    .restart local v7       #version:Ljava/lang/StringBuffer;
    :sswitch_0
    const/16 v10, 0x35

    :try_start_3
    invoke-static {v3, v10}, Lcom/nuance/connect/language/KLLdbInfo;->getValueAtPosition(Ljava/io/RandomAccessFile;I)I

    move-result v4

    .line 142
    .local v4, major:I
    if-le v4, v8, :cond_1

    .line 143
    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 156
    :cond_1
    const/16 v10, 0x3a

    invoke-static {v3, v10}, Lcom/nuance/connect/language/KLLdbInfo;->getValueAtPosition(Ljava/io/RandomAccessFile;I)I

    move-result v1

    .line 157
    .local v1, languageId:I
    if-le v1, v8, :cond_2

    .line 158
    const/16 v10, 0x39

    invoke-static {v3, v10}, Lcom/nuance/connect/language/KLLdbInfo;->getValueAtPosition(Ljava/io/RandomAccessFile;I)I

    move-result v5

    .line 159
    .local v5, offset:I
    if-le v5, v8, :cond_4

    shl-int/lit8 v8, v1, 0x8

    or-int v1, v8, v5

    .line 162
    .end local v5           #offset:I
    :cond_2
    :goto_2
    new-instance v8, Lcom/nuance/connect/language/KLLdbInfo;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3}, Lcom/nuance/connect/language/KLLdbInfo;->isALM(Ljava/io/RandomAccessFile;)Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-direct {v8, v10, v11, v1}, Lcom/nuance/connect/language/KLLdbInfo;-><init>(Ljava/lang/String;Ljava/lang/Boolean;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8

    .line 188
    if-eqz v3, :cond_3

    .line 190
    :try_start_4
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    :cond_3
    :goto_3
    move-object v2, v3

    .line 192
    .end local v3           #ldbFile:Ljava/io/RandomAccessFile;
    .restart local v2       #ldbFile:Ljava/io/RandomAccessFile;
    goto :goto_1

    .end local v2           #ldbFile:Ljava/io/RandomAccessFile;
    .restart local v3       #ldbFile:Ljava/io/RandomAccessFile;
    .restart local v5       #offset:I
    :cond_4
    move v1, v8

    .line 159
    goto :goto_2

    .line 165
    .end local v1           #languageId:I
    .end local v4           #major:I
    .end local v5           #offset:I
    :sswitch_1
    const/16 v10, 0x2a

    :try_start_5
    invoke-static {v3, v10}, Lcom/nuance/connect/language/KLLdbInfo;->getValueAtPosition(Ljava/io/RandomAccessFile;I)I

    move-result v4

    .line 168
    .restart local v4       #major:I
    if-le v4, v8, :cond_5

    .line 169
    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 171
    :cond_5
    const/16 v10, 0x29

    invoke-static {v3, v10}, Lcom/nuance/connect/language/KLLdbInfo;->getValueAtPosition(Ljava/io/RandomAccessFile;I)I

    move-result v1

    .line 172
    .restart local v1       #languageId:I
    if-le v1, v8, :cond_6

    .line 173
    const/16 v10, 0x28

    invoke-static {v3, v10}, Lcom/nuance/connect/language/KLLdbInfo;->getValueAtPosition(Ljava/io/RandomAccessFile;I)I

    move-result v5

    .line 174
    .restart local v5       #offset:I
    if-le v5, v8, :cond_8

    shl-int/lit8 v8, v1, 0x8

    or-int v1, v8, v5

    .line 177
    .end local v5           #offset:I
    :cond_6
    :goto_4
    new-instance v8, Lcom/nuance/connect/language/KLLdbInfo;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-direct {v8, v10, v11, v1}, Lcom/nuance/connect/language/KLLdbInfo;-><init>(Ljava/lang/String;Ljava/lang/Boolean;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8

    .line 188
    if-eqz v3, :cond_7

    .line 190
    :try_start_6
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    :cond_7
    :goto_5
    move-object v2, v3

    .line 192
    .end local v3           #ldbFile:Ljava/io/RandomAccessFile;
    .restart local v2       #ldbFile:Ljava/io/RandomAccessFile;
    goto :goto_1

    .end local v2           #ldbFile:Ljava/io/RandomAccessFile;
    .restart local v3       #ldbFile:Ljava/io/RandomAccessFile;
    .restart local v5       #offset:I
    :cond_8
    move v1, v8

    .line 174
    goto :goto_4

    .line 191
    .end local v1           #languageId:I
    .end local v4           #major:I
    .end local v5           #offset:I
    :catch_0
    move-exception v8

    move-object v2, v3

    .line 192
    .end local v3           #ldbFile:Ljava/io/RandomAccessFile;
    .restart local v2       #ldbFile:Ljava/io/RandomAccessFile;
    goto :goto_0

    .line 183
    .end local v6           #type:I
    .end local v7           #version:Ljava/lang/StringBuffer;
    :catch_1
    move-exception v0

    .line 184
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_6
    :try_start_7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error parsing LDB (not found): "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 188
    if-eqz v2, :cond_0

    .line 190
    :try_start_8
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_0

    .line 191
    :catch_2
    move-exception v8

    goto/16 :goto_0

    .line 185
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v0

    .line 186
    .local v0, e:Ljava/io/IOException;
    :goto_7
    :try_start_9
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error parsing LDB (exception): "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " Exception: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 188
    if-eqz v2, :cond_0

    .line 190
    :try_start_a
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    goto/16 :goto_0

    .line 191
    :catch_4
    move-exception v8

    goto/16 :goto_0

    .line 188
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_8
    if-eqz v2, :cond_9

    .line 190
    :try_start_b
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 192
    :cond_9
    :goto_9
    throw v8

    .line 191
    .end local v2           #ldbFile:Ljava/io/RandomAccessFile;
    .restart local v1       #languageId:I
    .restart local v3       #ldbFile:Ljava/io/RandomAccessFile;
    .restart local v4       #major:I
    .restart local v6       #type:I
    .restart local v7       #version:Ljava/lang/StringBuffer;
    :catch_5
    move-exception v9

    goto/16 :goto_3

    :catch_6
    move-exception v9

    goto :goto_5

    .end local v1           #languageId:I
    .end local v3           #ldbFile:Ljava/io/RandomAccessFile;
    .end local v4           #major:I
    .end local v6           #type:I
    .end local v7           #version:Ljava/lang/StringBuffer;
    .restart local v2       #ldbFile:Ljava/io/RandomAccessFile;
    :catch_7
    move-exception v9

    goto :goto_9

    .line 188
    .end local v2           #ldbFile:Ljava/io/RandomAccessFile;
    .restart local v3       #ldbFile:Ljava/io/RandomAccessFile;
    .restart local v7       #version:Ljava/lang/StringBuffer;
    :catchall_1
    move-exception v8

    move-object v2, v3

    .end local v3           #ldbFile:Ljava/io/RandomAccessFile;
    .restart local v2       #ldbFile:Ljava/io/RandomAccessFile;
    goto :goto_8

    .line 185
    .end local v2           #ldbFile:Ljava/io/RandomAccessFile;
    .restart local v3       #ldbFile:Ljava/io/RandomAccessFile;
    :catch_8
    move-exception v0

    move-object v2, v3

    .end local v3           #ldbFile:Ljava/io/RandomAccessFile;
    .restart local v2       #ldbFile:Ljava/io/RandomAccessFile;
    goto :goto_7

    .line 183
    .end local v2           #ldbFile:Ljava/io/RandomAccessFile;
    .restart local v3       #ldbFile:Ljava/io/RandomAccessFile;
    :catch_9
    move-exception v0

    move-object v2, v3

    .end local v3           #ldbFile:Ljava/io/RandomAccessFile;
    .restart local v2       #ldbFile:Ljava/io/RandomAccessFile;
    goto :goto_6

    .end local v2           #ldbFile:Ljava/io/RandomAccessFile;
    .restart local v3       #ldbFile:Ljava/io/RandomAccessFile;
    .restart local v6       #type:I
    :cond_a
    move-object v2, v3

    .end local v3           #ldbFile:Ljava/io/RandomAccessFile;
    .restart local v2       #ldbFile:Ljava/io/RandomAccessFile;
    goto/16 :goto_0

    .line 135
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/nuance/connect/language/KLLdbInfo;->version:Ljava/lang/String;

    return-object v0
.end method

.method protected getXT9LanguageId()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/nuance/connect/language/KLLdbInfo;->langId:I

    return v0
.end method

.method protected isALM()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/nuance/connect/language/KLLdbInfo;->isALM:Ljava/lang/Boolean;

    return-object v0
.end method
