.class public Lcom/android/providers/settings/cloud/util/Coder;
.super Ljava/lang/Object;
.source "Coder.java"


# static fields
.field private static final hexDigits:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 27
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "0"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "3"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "4"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "5"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "6"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "7"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "8"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "9"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "a"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "b"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "c"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "d"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "e"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "f"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/settings/cloud/util/Coder;->hexDigits:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static byteArrayToString([B)Ljava/lang/String;
    .locals 3
    .parameter "b"

    .prologue
    .line 83
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 84
    .local v1, resultSb:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 85
    aget-byte v2, p0, v0

    invoke-static {v2}, Lcom/android/providers/settings/cloud/util/Coder;->byteToHexString(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static byteToHexString(B)Ljava/lang/String;
    .locals 5
    .parameter "b"

    .prologue
    .line 91
    move v2, p0

    .line 92
    .local v2, n:I
    if-gez v2, :cond_0

    .line 93
    add-int/lit16 v2, v2, 0x100

    .line 95
    :cond_0
    div-int/lit8 v0, v2, 0x10

    .line 96
    .local v0, d1:I
    rem-int/lit8 v1, v2, 0x10

    .line 97
    .local v1, d2:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/providers/settings/cloud/util/Coder;->hexDigits:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/providers/settings/cloud/util/Coder;->hexDigits:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static final encodeMD5(Ljava/io/File;)Ljava/lang/String;
    .locals 7
    .parameter "file"

    .prologue
    const/4 v5, 0x0

    .line 50
    const/16 v6, 0x400

    new-array v0, v6, [B

    .line 51
    .local v0, buffer:[B
    const/4 v4, 0x0

    .line 54
    .local v4, numRead:I
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 61
    .local v2, fis:Ljava/io/InputStream;
    :try_start_1
    const-string v6, "MD5"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 62
    .local v3, md5:Ljava/security/MessageDigest;
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_0

    .line 63
    const/4 v6, 0x0

    invoke-virtual {v3, v0, v6, v4}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    goto :goto_0

    .line 65
    .end local v3           #md5:Ljava/security/MessageDigest;
    :catch_0
    move-exception v1

    .line 66
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    :try_start_2
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 73
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 79
    .end local v1           #e:Ljava/security/NoSuchAlgorithmException;
    .end local v2           #fis:Ljava/io/InputStream;
    :goto_1
    return-object v5

    .line 55
    :catch_1
    move-exception v1

    .line 56
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 73
    .end local v1           #e:Ljava/io/FileNotFoundException;
    .restart local v2       #fis:Ljava/io/InputStream;
    .restart local v3       #md5:Ljava/security/MessageDigest;
    :cond_0
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 79
    :goto_2
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    invoke-static {v5}, Lcom/android/providers/settings/cloud/util/Coder;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 74
    :catch_2
    move-exception v1

    .line 75
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 74
    .end local v3           #md5:Ljava/security/MessageDigest;
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    :catch_3
    move-exception v1

    .line 75
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 68
    .end local v1           #e:Ljava/io/IOException;
    :catch_4
    move-exception v1

    .line 69
    .restart local v1       #e:Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 73
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_1

    .line 74
    :catch_5
    move-exception v1

    .line 75
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 72
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 73
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 76
    :goto_3
    throw v5

    .line 74
    :catch_6
    move-exception v1

    .line 75
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method
