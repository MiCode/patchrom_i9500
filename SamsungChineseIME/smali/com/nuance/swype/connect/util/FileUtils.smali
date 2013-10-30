.class public Lcom/nuance/swype/connect/util/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# static fields
.field public static final BUFFER_SIZE:I = 0x400


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .parameter "in"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    const/16 v2, 0x400

    new-array v1, v2, [B

    .line 29
    .local v1, fileDataBuffer:[B
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .local v0, bytesRead:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 30
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 8
    .parameter "source"
    .parameter "dest"

    .prologue
    .line 44
    const/4 v6, 0x1

    .line 46
    .local v6, success:Z
    const/4 v1, 0x0

    .line 47
    .local v1, fos:Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    .line 50
    .local v4, is:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .local v2, fos:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 52
    .end local v4           #is:Ljava/io/FileInputStream;
    .local v5, is:Ljava/io/FileInputStream;
    :try_start_2
    invoke-static {v5, v2}, Lcom/nuance/swype/connect/util/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 54
    if-eqz v2, :cond_0

    .line 55
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 57
    :cond_0
    if-eqz v5, :cond_1

    .line 58
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_1
    move-object v4, v5

    .end local v5           #is:Ljava/io/FileInputStream;
    .restart local v4       #is:Ljava/io/FileInputStream;
    move-object v1, v2

    .line 67
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    :goto_0
    return v6

    .line 54
    :catchall_0
    move-exception v7

    :goto_1
    if-eqz v1, :cond_2

    .line 55
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 57
    :cond_2
    if-eqz v4, :cond_3

    .line 58
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    :cond_3
    throw v7
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, ex:Ljava/io/FileNotFoundException;
    :goto_2
    const/4 v6, 0x0

    .line 65
    goto :goto_0

    .line 63
    .end local v0           #ex:Ljava/io/FileNotFoundException;
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .end local v4           #is:Ljava/io/FileInputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    .restart local v5       #is:Ljava/io/FileInputStream;
    :catch_1
    move-exception v3

    move-object v4, v5

    .end local v5           #is:Ljava/io/FileInputStream;
    .restart local v4       #is:Ljava/io/FileInputStream;
    move-object v1, v2

    .line 64
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    .local v3, iex:Ljava/io/IOException;
    :goto_3
    const/4 v6, 0x0

    goto :goto_0

    .line 63
    .end local v3           #iex:Ljava/io/IOException;
    :catch_2
    move-exception v3

    goto :goto_3

    .line 61
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .end local v4           #is:Ljava/io/FileInputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    .restart local v5       #is:Ljava/io/FileInputStream;
    :catch_3
    move-exception v0

    move-object v4, v5

    .end local v5           #is:Ljava/io/FileInputStream;
    .restart local v4       #is:Ljava/io/FileInputStream;
    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 54
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v7

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v1           #fos:Ljava/io/FileOutputStream;
    .end local v4           #is:Ljava/io/FileInputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    .restart local v5       #is:Ljava/io/FileInputStream;
    :catchall_2
    move-exception v7

    move-object v4, v5

    .end local v5           #is:Ljava/io/FileInputStream;
    .restart local v4       #is:Ljava/io/FileInputStream;
    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public static copyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "sourcePath"
    .parameter "destPath"

    .prologue
    .line 80
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 81
    .local v1, source:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 82
    .local v0, dest:Ljava/io/File;
    invoke-static {v1, v0}, Lcom/nuance/swype/connect/util/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v2

    return v2
.end method
